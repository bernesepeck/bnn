import {  html, css } from "lit";
import { customElement, property } from "lit/decorators.js";
import { DefaultComponent } from "../default.component";
import "../menu/nav-menu";

@customElement("bnn-banner")
export class Banner extends DefaultComponent {
  @property({ type: String })
  cityname?: string;

  static get componentStyles() {
    return css`
    .header-wrapper {
        background-image: linear-gradient(rgba(0, 0, 0, 0.25), rgba(165, 147, 160, 0.73)), url(/bnn-banner.webp);
        height: var(--header-size);
        padding: 0px var(--content-padding);
        padding-top: 16px;
        display: flex;
        flex-direction: column;
        background-size: 100%;
    }
    bnn-nav-menu {
      margin-left: auto;
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
      <bnn-nav-menu></bnn-nav-menu>
        <h1>${this.cityname}</h1>
      </div>
    `;
  }
}
