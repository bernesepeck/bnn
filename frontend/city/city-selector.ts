import { LitElement, html, css } from 'lit';
import { customElement, state } from 'lit/decorators.js';
import { CityService } from './city.service'; // Adjust the path as necessary
import { CityModel } from './city.models';

@customElement('bnn-city-selector')
export class CitySelector extends LitElement {
    private cityService: CityService;
    @state() cities: CityModel[] = [];

    constructor() {
        super();
        this.cityService = new CityService();
        this.fetchCities();
    }

    async fetchCities() {
        try {
            const cities = await this.cityService.getCities();
            this.cities = cities;
        } catch (error) {
            console.error('Error fetching cities:', error);
        }
    }

    handleCityChange(e) {
        const cityId = e.target.value;
        // Dispatch an event or perform actions based on the selected city
        this.dispatchEvent(new CustomEvent('city-selected', {
            detail: { cityId },
            bubbles: true,
            composed: true
        }));
    }

    render() {
        return html`
            <select @change="${this.handleCityChange}">
                <option value="">Select a City</option>
                ${this.cities.map(city => html`<option value="${city.id}">${city.name}</option>`)}
            </select>
        `;
    }
}