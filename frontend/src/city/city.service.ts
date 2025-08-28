import { AppConfig } from "../config-service";
import { CityModel } from "./city.models";
import { createDirectus, readItem, readItems, rest } from "@directus/sdk";

export class CityService {
  private client;
  private langFilter;
  private modelsToTranslate = [
    "events",
    "supportlinks",
    "customSections",
    "emailForm",
  ]; // List of related models

  constructor(config: AppConfig) {
    this.client = createDirectus(config.apiUrl).with(rest());
  }

  async getCity(cityId: number): Promise<CityModel> {
    const languageCode = this.getValidLanguageCode();
    this.langFilter = {
      translations: {
        _filter: {
          languages_code: { _eq: languageCode },
        },
      },
    };
    return this.fetchCity({ id: cityId }, true);
  }

  async getCityByName(cityName: string): Promise<CityModel> {
    const languageCode = this.getValidLanguageCode();
      this.langFilter = {
        translations: {
          _filter: {
            languages_code: { _eq: languageCode },
          },
        },
      };
    return this.fetchCity({ name: cityName }, true);
  }

  private async fetchCity(
    criteria: {
      id?: number;
      name?: string; 
    },
    langFallback?: boolean
  ): Promise<CityModel> {
    const fields = this.getFieldsArray();
    const deep = this.getDeepFilters();

    let response;
    if (criteria.id !== undefined) {
      response = await this.client.request(
        readItem("city", criteria.id, { fields, deep })
      );
    } else if ("name" in criteria) {
      const nameFilter = {
        domainname: { _icontains: criteria.name },
      };
      response = await this.client.request(
        readItems("city", { fields, filter: nameFilter, deep })
      );
      response = response[0];
    }

    const city = this.convertToCity(response);

    if (langFallback) {
      // Check if page_title and description are empty, and refetch if necessary
      if (!city?.page_title && !city?.description) {
        const alternateLanguage = sessionStorage.getItem("selectedLanguage") === "de" ? "fr" : "de";
        this.langFilter = {
          translations: {
            _filter: {
              languages_code: { _eq: alternateLanguage },
            },
          },
        }
        return this.fetchCity({ name: city?.domainname });
      }
    }

    return city
  }

  private getFieldsArray(): string[] {
    return [
      "*",
      "translations.*",
      "gallery.*",
      "emailForm.fields.FormFields_id.type",
      "emailForm.fields.translations.*",
      ...this.modelsToTranslate.map((model) => `${model}.*`),
      ...this.modelsToTranslate.map((model) => `${model}.translations.*`),
    ];
  }

  private getDeepFilters(): any {
    return this.modelsToTranslate.reduce(
      (acc, model) => ({
        ...acc,
        [model]: this.langFilter,
      }),
      { ...this.langFilter }
    );
  }

  async getCities(): Promise<any> {
    const response = await this.client.request(
      readItems("city", {
        fields: [
          "id",
          "translations.city_id",
          "domainname",
          "translations.name",
          "country",
        ],
        deep: {
          ...this.langFilter,
          events: this.langFilter,
          supportlinks: this.langFilter,
        },
      })
    );

    return response.map(this.convertToCity);
  }

  private flattenTranslations(item: any): any {
    if (!item) {
      return;
    }
    if (item?.translations) {
      // Flatten translations into the parent object
      item = { ...item, ...item.translations[0] };
      delete item.translations; // Remove translations property
    }

    // Recursively process each property
    for (const key of Object.keys(item)) {
      if (Array.isArray(item[key])) {
        item[key] = item[key].map(this.flattenTranslations.bind(this)); // Process array items
      } else if (typeof item[key] === "object" && item[key] !== null) {
        item[key] = this.flattenTranslations(item[key]); // Process nested objects
      }
    }

    return item;
  }

  public convertToCity = (city: any): CityModel => {
    city = this.flattenTranslations(city); // Flatten translations for the top-level city object

    // Dynamically flatten translations for related models and assign to cityObj
    this.modelsToTranslate.forEach((model) => {
      if (city && city[model]) {
        city[model] = city[model].map((item: any) =>
          this.flattenTranslations(item)
        );
      }
    });

    return city as CityModel;
  };

  private getValidLanguageCode(): string {
    // Return selectedLanguage if in storage
    const storedLanguage = sessionStorage.getItem('selectedLanguage');
    if (storedLanguage && (storedLanguage === 'de' || storedLanguage === 'fr')) {
      return storedLanguage;
    }
    
    // Get browser language, if its de or fr use that, else default to de
    const browserLanguage = navigator.language.slice(0, 2);
    const selectedLanguage = (browserLanguage === 'de' || browserLanguage === 'fr') ? browserLanguage : 'de';
    
    // Store the determined language so it's consistent across services
    sessionStorage.setItem('selectedLanguage', selectedLanguage);
    
    return selectedLanguage;
  }
}
