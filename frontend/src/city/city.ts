import { PropertyValueMap, html } from "lit";
import { customElement, state } from "lit/decorators.js";
import "../components/banner/banner";
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
import "../components/spinner/spinner";

@customElement("bnn-city")
export class City extends DefaultComponent {
  public static SCROLL_INTO_VIEW_EVENT = "city_scroll_into_view";

  private cityService!: CityService;

  @state()
  protected city: CityModel | undefined;

  @state()
  protected selectedCityName!: string;

  @state()
  protected isLoading: boolean = true;

  getSections() {
    const sections = [];

    if (this.city?.events?.length) {
      sections.push({ name: this.t("events"), id: "events-section" });
    }
    if (this.city?.gallery?.length) {
      sections.push({ name: this.t("gallery"), id: "gallery-section" });
    }
    if (this.city?.customSections?.length) {
      this.city.customSections.forEach((section, index) => {
        sections.push({ name: section.title, id: `custom-section-${index}` }); // Assuming each custom section has a title
      });
    }
    if (this.city?.sponsors?.length) {
      sections.push({ name: this.t("sponsors"), id: "sponsors-section" });
    }
    if (this.city?.supportlinks?.length) {
      sections.push({ name: this.t("volunteer"), id: "support-section" });
    }
    if (this.city?.flyer) {
      sections.push({ name: "Flyer", fileId: this.city.flyer });
    }

    return sections;
  }

  constructor() {
    super();
    document.addEventListener(City.SCROLL_INTO_VIEW_EVENT, (event) => this.scrollSectionIntoView((event as CustomEvent).detail))
  }

  initializeSelectedCityFromURL() {
    const pathSegments = window.location.pathname.split("/");
    const cityIndex = pathSegments.findIndex((segment) => segment === "city");
    if (cityIndex !== -1 && pathSegments.length > cityIndex + 1) {
      const cityName = pathSegments[cityIndex + 1];
      this.selectedCityName = cityName;
    }
  }

  override afterComponentInitialized(): void {
    this.cityService = new CityService(this.config);
    this.initializeSelectedCityFromURL();
    this.requestUpdate();
  }

  updated(
    changedProperties: PropertyValueMap<any> | Map<PropertyKey, unknown>
  ) {
    super.updated(changedProperties);
    if (changedProperties.has("selectedCityName")) {
      this.fetchCityData();
    }
  }

  fetchCityData() {
    if (this.selectedCityName !== null) {
      this.cityService
        .getCityByName(this.selectedCityName)
        .then((cityData) => {
          this.city = cityData;
          this.isLoading = false;
        })
        .catch((error) => {
          this.isLoading = false;
          console.error("Failed to fetch city data", error);
        });
    }
  }

  public render() {
    const sections = this.getSections(); // Dynamically generate the sections
  
    return html`
      <bnn-banner
        .cityname="${this.city?.name}"
        .sections="${sections}"
        .isLoading="${this.isLoading}"
      ></bnn-banner>
      ${
        this.isLoading
          ? html`<bnn-spinner></bnn-spinner>` // Use the spinner component
          : html` 
            ${this.renderDescription()} 
            ${this.renderEventList()} 
            ${this.renderGallery()}
            ${this.renderCustomSections()} 
            ${this.renderSupportLinks()}
            ${this.renderForm()} 
            ${this.renderSponsors()}
          ` // Render the content if not loading
      }
      <bnn-footer .isLoading="${this.isLoading}"></bnn-footer>
    `;
  }

  renderSpinner() {
    return html`<div class="spinner">Loading...</div>`;
  }

  renderForm() {
    return html`${this.city?.emailForm.map((form) => {
      return html`<bnn-form .form=${form}></bnn-form>`;
    })}`;
  }

  renderDescription() {
    return this.city?.page_title
      ? html`
      <bnn-content-container>
        <h2>${this.city?.page_title}</h2>
        <p .innerHTML="${this.city?.description}"></p>
      </bnn-content-container>
      `
      : ``;
  }

  renderEventList() {
    return this.city?.events?.length
      ? html`<bnn-event-list
          id="events-section"
          .events="${this.city?.events}"
        ></bnn-event-list>`
      : ``;
  }

  renderGallery() {
    return this.city?.gallery?.length
      ? html`<bnn-gallery
          id="gallery-section"
          .gallery="${this.city?.gallery}"
        ></bnn-gallery>`
      : ``;
  }

  renderCustomSections() {
    return this.city?.customSections?.length
      ? html`
          ${this.city.customSections.map(
            (section, index) =>
              html`<bnn-custom-section-list
                id="custom-section-${index}"
                .customSections="${[section]}"
              ></bnn-custom-section-list>`
          )}
        `
      : ``;
  }

  renderSponsors() {
    return this.city?.sponsors
      ? html`<bnn-text-content
          id="sponsors-section"
          .title="${this.t("sponsors")}"
          .text="${this.city?.sponsors}"
          .backgroundColor="${"blue"}"
        ></bnn-text-content>`
      : ``;
  }

  renderSupportLinks() {
    return this.city?.supportlinks?.length
      ? html` <bnn-support-link-list
          id="support-section"
          .supportLinks="${this.city?.supportlinks}"
        ></bnn-support-link-list>`
      : ``;
  }

  private scrollSectionIntoView(id: string): void {
    const element = this.shadowRoot?.getElementById(id);
    element?.scrollIntoView();
  }
}
