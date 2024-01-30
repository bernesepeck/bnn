import { html } from "lit";
import { customElement, state } from "lit/decorators.js";
import "../components/banner/banner";
import "../components/language/languageSelector";
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
    const languageCode = sessionStorage.getItem("selectedLanguage");
    this.cityService = new CityService(languageCode);
  }

  @state()
  protected city: CityModel | undefined;

  connectedCallback() {
    super.connectedCallback();

    this.cityService
      .getCity(2)
      .then((cityData) => {
        this.city = cityData;
        console.log(cityData);
      })
      .catch((error) => {
        console.error("Failed to fetch city data", error);
        // Handle the error appropriately
      });
  }

  public render() {
    console.log(this.city?.events)
    return html`
      <bnn-banner .cityname="${this.city?.name}"></bnn-banner>
      <bnn-content-container>
        <h2>${this.city?.page_title}</h2>
        <p .innerHTML="${this.city?.description}"></p>
      </bnn-content-container>
      <bnn-event-list .events="${this.city?.events}"></bnn-event-list>
    `;
  }
}
