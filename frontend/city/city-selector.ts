import { css, html } from "lit";
import { customElement, state } from "lit/decorators.js";
import { CityService } from "./city.service"; // Adjust the path as necessary
import { CityModel } from "./city.models";
import { DefaultComponent } from "../components/default.component";

@customElement("bnn-city-selector")
export class CitySelector extends DefaultComponent {
  private cityService: CityService;
  @state() cities: CityModel[] = [];

  constructor() {
    super();
    this.cityService = new CityService();
    this.fetchCities();
  }

  static get componentStyles() {
    return css`
      nav {
        display: flex;
        flex-direction: column;
        font-size: 1.5em;
        gap: 8px;
        & a {
            text-decoration: none;
            color: var(--color-primary);
            font-size: var(--font-size-m);
        }
      }
    `;
  }

  async fetchCities() {
    try {
      const cities = await this.cityService.getCities();
      this.cities = cities;
    } catch (error) {
      console.error("Error fetching cities:", error);
    }
  }

  handleCityChange(cityId: number) {
    // Dispatch an event or perform actions based on the selected city
    this.dispatchEvent(
      new CustomEvent("city-selected", {
        detail: { cityId },
        bubbles: true,
        composed: true,
      })
    );
  }

  render() {
    return html`
      <nav>
        ${this.cities.map(
          (city) =>
            html`<a href="${`/city/${city.id}`}">${city.name}</a>`
        )}
      </nav>
    `;
  }
}
