import { css, html } from "lit";
import { customElement, state } from "lit/decorators.js";
import { CityService } from "./city.service"; // Adjust the path as necessary
import { CityModel } from "./city.models";
import { DefaultComponent } from "../components/default.component";
import { classMap } from 'lit/directives/class-map.js';

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
          color: white;
          font-size: var(--font-size-m);
          font-weight: normal;
          padding: 0;
          &::after {
            content: none;
          }
          &.selected {
            text-decoration: underline;
            text-underline-offset: 4px;
          }
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

  render() {
    return html`
      <nav>
        ${this.cities.map(
          (city) =>
            html`<a
            class="${classMap({selected: this.getCurrentCity() === city.id})}"
              href="${`/city/${city.id}`}"
              @click="${(e) => e.stopPropagation()}"
              >${city.name}</a
            >`
        )}
      </nav>
    `;
  }

  getCurrentCity() {
    const currentUrl = window.location.href;
    const parsedUrl = new URL(currentUrl);
    const pathSegments = parsedUrl.pathname.split('/');
    const lastPart = pathSegments.filter(segment => segment !== "").pop();
    return Number(lastPart);
  }
  
}