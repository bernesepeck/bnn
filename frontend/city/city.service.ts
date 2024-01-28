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
                ...langFilter,
                events: langFilter,
                supportlinks: langFilter
            }
        }))
        
        return response.map(this.convertToCity);
    }

    convertToCity(city: any): CityModel {
        const translationObj = city.translations[0];
    
        return {
            id: translationObj.city_id,
            status: city.status,
            date_updated: city.date_updated,
            languages_code: translationObj.languages_code,
            name: translationObj.name,
            page_title: translationObj.page_title,
            description: translationObj.description,
            sponsors: translationObj.sponsors,
        };
    }
}

