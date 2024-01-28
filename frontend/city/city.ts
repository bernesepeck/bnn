import { html } from "lit";
import { customElement, state } from "lit/decorators.js";
import "../components/banner/banner";
import "../components/language/languageSelector";
import "../components/menu/nav-menu";
import { CityModel } from "./city.models";
import { CityService } from "./city.service";
import { DefaultComponent } from "../components/default.component";
import "../components/content-container/content-container";
import "./components/event-list/event-list"

@customElement("bnn-city")
export class City extends DefaultComponent {
  private cityService: CityService;

    constructor() {
        super();
        this.cityService = new CityService();
        this.handleCitySelection = this.handleCitySelection.bind(this);
        this.initializeSelectedCityFromURL();
    }

    @state()
    protected city: CityModel | undefined;
    @state()
    protected selectedCity!: number;

    connectedCallback() {
        super.connectedCallback();
        window.addEventListener('city-selected', this.handleCitySelection);
        this.fetchCityData();
    }

    initializeSelectedCityFromURL() {
        const pathSegments = window.location.pathname.split('/');
        const cityIndex = pathSegments.findIndex(segment => segment === 'city');
        if (cityIndex !== -1 && pathSegments.length > cityIndex + 1) {
            const cityId = parseInt(pathSegments[cityIndex + 1]);
            if (!isNaN(cityId)) {
                this.selectedCity = cityId;
            }
        }
    }

    handleCitySelection(e) {
        console.log("handleCitySelection", e)
        this.selectedCity = e.detail.cityId;
        this.fetchCityData();
    }

    fetchCityData() {
        if (this.selectedCity !== null) {
            this.cityService.getCity(this.selectedCity).then(cityData => {
                this.city = cityData;
            }).catch(error => {
                console.error("Failed to fetch city data", error);
            });
        }
    }

  public render() {
    console.log(this.city?.events)
    return html`
      <bnn-banner .cityname="${this.city?.name}"></bnn-banner>
      <bnn-content-container>
        <h2>${this.city?.page_title}</h2>
        <p>${this.city?.description}</p>
      </bnn-content-container>
      <bnn-event-list .events="${this.city?.events}"></bnn-event-list>
    `;
  }
}
