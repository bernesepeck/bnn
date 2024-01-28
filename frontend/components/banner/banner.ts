import { LitElement, html, css } from "lit";
import { customElement, property } from "lit/decorators.js";
import { DefaultComponent } from "../default.component";

@customElement("bnn-banner")
export class Banner extends DefaultComponent {
  @property({ type: String })
  cityname?: string;

  static get componentStyles() {
    return css`
    .header-wrapper {
        background-image: url("/bnn-banner.webp");
        height: 400px;
        padding: 0px var(--content-padding);
    }
    h1 {
        margin-top: 0;
        color: white;
        padding-top: 2em;
    }
  `
  }

  public render() {
    return html`
      <div class="header-wrapper">
        <h1>${this.cityname}</h1>
      </div>
    `;
  }
}
