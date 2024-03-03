import { css, html } from "lit";
import { customElement, property, state } from "lit/decorators.js";
import { CityModel } from "./city.models";
import { DefaultComponent } from "../components/default.component";
import { classMap } from "lit/directives/class-map.js";

@customElement("bnn-city-selector")
export class CitySelector extends DefaultComponent {
  @property() cities: CityModel[] = [];

  @property()
  country: string = "ch";

  static get componentStyles() {
    return css`
      @media screen and (max-width: 480px) {
        nav {
          align-items: center;
        }
      }
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

  render() {
    return html`
      <nav>
        ${this.cities
          .filter((c) => c.country === this.country)
          .map(
            (city) =>
              html`<a
                class="${classMap({
                  selected: this.getCurrentCity() === city.id,
                })}"
                href="${`/city/${city.domainname?.toLowerCase()}`}"
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
    const pathSegments = parsedUrl.pathname.split("/");
    const lastPart = pathSegments.filter((segment) => segment !== "").pop();
    return Number(lastPart);
  }
}
