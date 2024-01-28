import { CityModel } from "./city.models";
import { createDirectus, readItem, readItems, rest } from '@directus/sdk';

export class CityService {
    private client;
    private langFilter;


    constructor(languageCode: string) {
        this.client = createDirectus('http://localhost:8055').with(rest());
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
        // Handle missing translations
        const translationObj = city.translations?.[0] || {};
    
        // Flatten events translations
        const events = city.events?.map((event: any) => ({
            ...event,
            ...event.translations?.[0]
        })) || [];
    
        // Flatten supportlinks translations
        const supportlinks = city.supportlinks?.map((link: any) => ({
            ...link,
            ...link.translations?.[0]
        })) || [];
    
        return {
            id: city.id || null,
            status: city.status || null,
            date_updated: city.date_updated || null,
            languages_code: translationObj.languages_code || null,
            name: translationObj.name || '',
            page_title: translationObj.page_title || '',
            description: translationObj.description || '',
            sponsors: translationObj.sponsors || '',
            events: events,
            supportlinks: supportlinks
        };
    }
}

