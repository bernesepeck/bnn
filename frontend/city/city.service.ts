import { CityModel } from "./city.models";
import { createDirectus, readItem, rest } from '@directus/sdk';

export class CityService {

    private url = "http://localhost:8055/items/city/1?deep[translations][_filter][languages_code][_eq]=de&fields=*,translations.*";

    private client;

    constructor() {
        const client = createDirectus('http://localhost:8055').with(rest());
        client.request(readItem('city',2, {
            fields: ['*', { translations: ['*'], events: ['*', {translations: ['*']}], supportlinks: ['*', {translations: ['*']}]}],
        })).then(test => console.log(test));
    }


    public fetchCityData(): Promise<CityModel> {
        return fetch(this.url).then(response => {
            if (!response.ok) {
                throw new Error(`HTTP error! status: ${response.status}`);
              }
              return response.json()
        }).then(city => this.convertToCity(city))
    }

    convertToCity(originalObject: any): CityModel {
        const dataObj = originalObject.data;
        const translationObj = dataObj.translations[0];
    
        return {
            id: translationObj.city_id,
            status: dataObj.status,
            date_updated: dataObj.date_updated,
            languages_code: translationObj.languages_code,
            name: translationObj.name,
            page_title: translationObj.page_title,
            description: translationObj.description,
            sponsors: translationObj.sponsors,
        };
    }
}