import { CityModel } from "./city.models";
import { createDirectus, readItem, readItems, rest } from '@directus/sdk';

export class CityService {
    private client;
    private langFilter;


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

    getCity(cityId: number): Promise<CityModel> {
        return this.client.request(readItem('city', cityId, {
            fields: [
                '*',
                'translations.*',
                'events.*',
                'events.translations.*',
                'supportlinks.*',
                'supportlinks.translations.*',
                'customSections.*',
                'customSections.translations.*',
            ],
            deep: {
                ...this.langFilter,
                events: this.langFilter,
                supportlinks: this.langFilter
            }
        })).then(this.convertToCity);
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

    convertToCity(city: any): CityModel {
        console.log("FetchedData", city)
        // Flatten city translations
        const translationObj = city.translations?.[0] || {};

        // Flatten translations of related models
        const events = city.events?.map((item: any) => ({
            ...item,
            ...item.translations?.[0]
        })) || [];
        const supportlinks = city.supportlinks?.map((item: any) => ({
            ...item,
            ...item.translations?.[0]
        })) || [];
        const customSections = city.customSections?.map((item: any) => ({
            ...item,
            ...item.translations?.[0]
        })) || [];

        const cityObj = {
            id: city.id || null,
            status: city.status || null,
            date_updated: city.date_updated || null,
            languages_code: translationObj.languages_code || null,
            name: translationObj.name || '',
            page_title: translationObj.page_title || '',
            description: translationObj.description || '',
            sponsors: translationObj.sponsors || '',
            events: events,
            supportlinks: supportlinks,
            customSections: customSections
        }
        console.log("ParsedCityObj", cityObj)
        return cityObj;
    }
}
