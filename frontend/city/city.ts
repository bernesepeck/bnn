export class City extends HTMLElement {
    constructor() {
        super();
        
        this.fetchCityData().then(city => {
            console.log('City Data:', city);
        }).catch(error => {
            console.error('Error:', error);
        });
        
    }
    connectedCallback() {
        console.log('iwashere')
    }

    private async fetchCityData(): Promise<any> {
        const url = 'http://localhost:8055/items/city/1?deep[translations][_filter][languages_code][_eq]=de&fields=*,translations.*';
        
        try {
            const response = await fetch(url);
            if (!response.ok) {
                throw new Error(`HTTP error! status: ${response.status}`);
            }
            const data = await response.json();
            return data;
        } catch (error) {
            console.error('Error fetching city data:', error);
            throw error;
        }
    }

}

customElements.define("bnn-city",City);