import { LitElement, html } from "lit";
import { customElement, state } from "lit/decorators.js";
import "../components/banner/banner";
import "../components/language/languageSelector";
import { CityModel } from "./city.models";
import { CityService } from "./city.service";

@customElement("bnn-city")
export class City extends LitElement {
    private cityService: CityService;

    constructor() {
        super();
        const languageCode = sessionStorage.getItem('selectedLanguage')
        this.cityService = new CityService(languageCode);
    }

    @state()
    protected city: CityModel | undefined;

    connectedCallback() {
        super.connectedCallback();
        
        this.cityService.getCity(2).then(cityData => {
            this.city = cityData;
        }).catch(error => {
            console.error("Failed to fetch city data", error);
            // Handle the error appropriately
        });
    }

    public render() {
        return html`
            <bnn-banner .cityname="${this.city?.name}"></bnn-banner>
            <div class="header">
                <h2>${this.city?.page_title}</h2>
                <p>${this.city?.description}</p>
            </div>
        `;
    }
}