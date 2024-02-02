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
import "./components/support-links-list/support-links-list"
import "./components/custom-section-list/custom-section-list"
import "./components/gallery/gallery"
import "../components/footer/footer"
import "../components/text-content/text-content"

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
        this.selectedCity = e.detail.cityId;
        this.fetchCityData();
    }

    fetchCityData() {
        if (this.selectedCity !== null) {
            this.cityService.getCity(this.selectedCity).then(cityData => {
                this.city = cityData;
                console.log("render", cityData)
            }).catch(error => {
                console.error("Failed to fetch city data", error);
            });
        }
    }

  public render() {
    return html`
      <bnn-banner .cityname="${this.city?.name}"></bnn-banner>
      <bnn-content-container>
        <h2>${this.city?.page_title}</h2>
        <p .innerHTML="${this.city?.description}"></p>
      </bnn-content-container>
      <bnn-event-list .events="${this.city?.events}"></bnn-event-list>
      <bnn-gallery .gallery="${this.city?.gallery}"></bnn-gallery>
      <bnn-custom-section-list .customSections="${this.city?.customSections}"></bnn-custom-section-list>
      <bnn-support-link-list .supportLinks="${this.city?.supportlinks}"></bnn-support-link-list>
      <bnn-text-content .title="${"Organisation | Trägerschaft"}" .text="${this.city?.sponsors}" .backgroundColor="${"blue"}"></bnn-text-content>
      <bnn-footer></bnn-footer>
    `;
  }
}
