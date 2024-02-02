import { CityModel } from "./city.models";
import { createDirectus, readItem, readItems, rest } from '@directus/sdk';

export class CityService {
    private client;
    private langFilter;
    private modelsToTranslate = ['events', 'supportlinks', 'customSections']; // List of related models

    constructor() {
        this.client = createDirectus('http://localhost:8055').with(rest());
        const languageCode = sessionStorage.getItem('selectedLanguage') || 'de';
        this.langFilter = {
            translations: {
                _filter: {
                    languages_code: {_eq: languageCode}
                }
            }
        }
    }

    async getCity(cityId: number): Promise<CityModel> {
        const fields = [
            '*',
            'translations.*',
            ...this.modelsToTranslate.map(model => `${model}.*`),
            ...this.modelsToTranslate.map(model => `${model}.translations.*`),
        ];

        const response = await this.client.request(readItem('city', cityId, {
            fields: fields,
            // Dynamically add all fields from modelsToTranslate
            deep: this.modelsToTranslate.reduce((acc, model) => ({
                ...acc,
                [model]: this.langFilter,
            }), {...this.langFilter}),
        }));

        return this.convertToCity(response);
    }

    async getCities(): Promise<any> {
        const response = await this.client.request(readItems('city', {
            fields: [
                'id',
                'translations.city_id',
                'translations.name',
            ],
            deep: {
                ...this.langFilter,
                events: this.langFilter,
                supportlinks: this.langFilter
            }
        }))
        
        return response.map(this.convertToCity);
    }

    convertToCity = (city: any): CityModel => {
        console.log("FetchedData", city);
        const translationObj = city.translations?.[0] || {};

        const flattenTranslations = (items: any[]) => items?.map(item => ({
            ...item,
            ...item.translations?.[0]
        })) || [];

        const cityObj: CityModel = {
            id: city.id || null,
            status: city.status || null,
            date_updated: city.date_updated || null,
            languages_code: translationObj.languages_code || null,
            name: translationObj.name || '',
            page_title: translationObj.page_title || '',
            description: translationObj.description || '',
            sponsors: translationObj.sponsors || '',
            events: [],
            supportlinks: [],
            customSections: []
        };

        // Dynamically flatten translations for related models and assign to cityObj
        this.modelsToTranslate.forEach(model => {
            cityObj[model] = flattenTranslations(city[model]);
        });

        console.log("ParsedCityObj", cityObj);
        return cityObj;
    }
}