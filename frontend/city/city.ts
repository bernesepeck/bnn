import { LitElement, html } from "lit";
import { customElement, state } from "lit/decorators.js";
import "../components/banner/banner";
import { CityModel } from "./city.models";
import { CityService } from "./city.service";

@customElement("bnn-city")
export class City extends LitElement {
    private cityService: CityService;

  constructor() {
    super();
    this.cityService = new CityService();

    this.cityService.fetchCityData()
      .then((city) => {
        console.log("City Data:", city);
        this.city = city;
      })
      .catch((error) => {
        console.error("Error:", error);
      });
  }

  @state()
  protected city: CityModel | undefined;

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
