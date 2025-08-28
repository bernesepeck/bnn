import {
  createDirectus,
  readSingleton,
  rest,
} from "@directus/sdk";
import { AppConfig } from "./config-service";

export interface HomeModel {
  titel: string;
  subtitle1: string;
  subtitle2: string;
  description: string;
  contentbox: { title: string; description: string; width: 1 | 0.5 }[];
}

export class HomeService {
  private client;
  private langFilter;

  constructor(config: AppConfig) {
    this.client = createDirectus(config.apiUrl).with(rest());
  }

  async getHome(): Promise<HomeModel> {
    // Use the same language detection logic as LanguageSelector
    const languageCode = this.getValidLanguageCode();
    console.log("Fetching home data with language code:", languageCode);
    
    this.langFilter = {
      translations: {
        _filter: {
          languages_code: { _eq: languageCode },
        },
      },
    };
    
    try {
      console.log("Making API request to fetch home data...");
      const response = await this.client.request(
        readSingleton("home", {
          fields: ["translations.*"],
          deep: {
            ...this.langFilter,
          },
        })
      );
      
      console.log("Raw API response:", response);
      
      if (!response || !response.translations || !Array.isArray(response.translations) || response.translations.length === 0) {
        console.warn("No translations found for language:", languageCode, "Trying fallback...");
        
        // Try without language filter as fallback
        const fallbackResponse = await this.client.request(
          readSingleton("home", {
            fields: ["translations.*"],
          })
        );
        
        console.log("Fallback API response:", fallbackResponse);
        
        if (!fallbackResponse || !fallbackResponse.translations || !Array.isArray(fallbackResponse.translations) || fallbackResponse.translations.length === 0) {
          throw new Error("No home translations found even without language filter");
        }
        
        // Use the first available translation
        const translatedResult = fallbackResponse.translations[0];
        console.log("Using fallback translation:", translatedResult);
        
        return this.buildHomeModel(translatedResult);
      }
      
      const translatedResult = response.translations[0];
      console.log("Using filtered translation:", translatedResult);
      
      return this.buildHomeModel(translatedResult);
    } catch (error) {
      console.error("Error fetching home data:", error);
      throw error;
    }
  }

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

  private buildHomeModel(translatedResult: any): HomeModel {
    if (!translatedResult) {
      throw new Error("No translated result provided");
    }
    
    const home: HomeModel = {
      titel: translatedResult.titel || "",
      subtitle1: translatedResult.subtitle1 || "",
      subtitle2: translatedResult.subtitle2 || "",
      description: translatedResult.description || "",
      contentbox: translatedResult.contentbox?.map((content: any) => ({
        title: content.title || "",
        description: content.description || "",
        width: Number(content.width) || 1
      })) || []
    };
    
    console.log("Built home model:", home);
    return home;
  }
}
