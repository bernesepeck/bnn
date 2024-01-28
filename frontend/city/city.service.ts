import { CityModel } from "./city.models";
import { createDirectus, readItem, rest } from '@directus/sdk';
const langFilter = {
    translations: {
        _filter: {
            languages_code: {_eq: "de"}
        }
    }
}

export class CityService {
    private client;


    constructor() {
        this.client = createDirectus('http://localhost:8055').with(rest());
        
        this.getCity = this.getCity.bind(this);
    }

    getCity(): Promise<CityModel> {
        return this.client.request(readItem('city', 2, {
            fields: [
                '*',
                'translations.*',
                'events.*',
                'events.translations.*',
                'supportlinks.*',
                'supportlinks.translations.*',
            ],
            deep: {
                ...langFilter,
                events: langFilter,
                supportlinks: langFilter
            }
        })).then(this.convertToCity);
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

