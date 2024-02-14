import { html, css } from "lit";
import { customElement, property } from "lit/decorators.js";
import { DefaultComponent } from "../default.component";
import "../menu/nav-menu";
import { classMap } from "lit/directives/class-map";

@customElement("bnn-banner")
export class Banner extends DefaultComponent {
  @property({ type: String })
  cityname?: string;

  @property({ type: String })
  description?: string;

  static get componentStyles() {
    return css`
      .header-wrapper {
        background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(30, 33, 72, 0.6)), url(/bnn-banner.webp);
          url(/bnn-banner.webp);
        height: min-content;
        padding: 0px var(--content-padding);
        padding-top: 16px;
        display: flex;
        justify-content: center;
        background-size: cover;
      }

      .has-description {
        --header-size: 650px;
        --font-size-xl: 40px;
        & h1 {
          background-color: var(--color-primary)
        }
        & p {
          color: white;
          font-size: var(--font-size-l);
        }
      }
      .max-content {
        width: 100%;
        max-width: 1000px;
        display: flex;
        flex-direction: column;
      }
      bnn-nav-menu {
        margin-left: auto;
      }
      h1 {
        margin-top: 0;
        color: white;
        margin-top: 2em;
      }
    `;
  }

  public render() {
    return html`
      <div
        class="${classMap({
          "header-wrapper": true,
          "has-description": !!this.description?.length,
        })}"
      >
        <div class="max-content">
          <bnn-nav-menu></bnn-nav-menu>
          <h1>${this.cityname}</h1>
          ${this.description?.length
            ? html` <p>${this.description}</p> `
            : html``}
        </div>
      </div>
    `;
  }
}
