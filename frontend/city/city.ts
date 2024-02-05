import { PropertyValueMap, html } from "lit";
import { customElement, state } from "lit/decorators.js";
import "../components/banner/banner";
import "../components/language/languageSelector";
import "../components/menu/nav-menu";
import { CityModel } from "./city.models";
import { CityService } from "./city.service";
import { DefaultComponent } from "../components/default.component";
import "../components/content-container/content-container";
import "./components/event-list/event-list";
import "./components/support-links-list/support-links-list";
import "./components/custom-section-list/custom-section-list";
import "./components/gallery/gallery";
import "../components/footer/footer";
import "../components/text-content/text-content";
import "../components/form/form";
import { ConfigService } from '../config-service'; // Adjust the import path as needed

@customElement("bnn-city")
export class City extends DefaultComponent {
  private cityService!: CityService;

  @state()
  protected city: CityModel | undefined;
  @state()
  protected selectedCity!: number;

  constructor() {
    super();
    const configService = ConfigService.getInstance();
    
    configService.loadConfig().then(() => {
      console.log("Configuration loaded successfully.");
      this.cityService = new CityService();
      this.initializeSelectedCityFromURL();
    }).catch(error => {
      console.error("Failed to load configuration:", error);
    });
  }

  updated(changedProperties: PropertyValueMap<any> | Map<PropertyKey, unknown>) {
    super.updated(changedProperties);
    if (changedProperties.has('selectedCity')) {
      this.fetchCityData();
    }
  }

  initializeSelectedCityFromURL() {
    const pathSegments = window.location.pathname.split("/");
    const cityIndex = pathSegments.findIndex((segment) => segment === "city");
    if (cityIndex !== -1 && pathSegments.length > cityIndex + 1) {
      const cityId = parseInt(pathSegments[cityIndex + 1]);
      if (!isNaN(cityId)) {
        this.selectedCity = cityId;
      }
    }
  }

  fetchCityData() {
    if (this.selectedCity !== null) {
      this.cityService
        .getCity(this.selectedCity)
        .then((cityData) => {
          this.city = cityData;
        })
        .catch((error) => {
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
      ${this.renderEventList()} ${this.renderGallery()}
      ${this.renderCustomSection()} ${this.renderSupportLinks()}
      ${this.renderForm()} ${this.renderSponsors()}
      <bnn-footer></bnn-footer>
    `;
  }

  renderForm() {
    return html`${this.city?.emailForm.map(form => {
      return html`<bnn-form .form=${form}></bnn-form>`;
    })}`;
  }

  renderEventList() {
    return this.city?.events?.length
      ? html`<bnn-event-list .events="${this.city?.events}"></bnn-event-list>`
      : ``;
  }

  renderGallery() {
    return this.city?.gallery?.length
      ? html`<bnn-gallery .gallery="${this.city?.gallery}"></bnn-gallery>`
      : ``;
  }

  renderCustomSection() {
    return this.city?.customSections?.length
      ? html` <bnn-custom-section-list
          .customSections="${this.city?.customSections}"
        ></bnn-custom-section-list>`
      : ``;
  }

  renderSponsors() {
    return this.city?.sponsors
      ? html`<bnn-text-content
          .title="${"Organisation | Trägerschaft"}"
          .text="${this.city?.sponsors}"
          .backgroundColor="${"blue"}"
        ></bnn-text-content>`
      : ``;
  }

  renderSupportLinks() {
    return this.city?.supportLinks?.length
      ? html` <bnn-support-link-list
          .supportLinks="${this.city?.supportlinks}"
        ></bnn-support-link-list>`
      : ``;
  }
}
