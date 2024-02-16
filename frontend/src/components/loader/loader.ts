import { LitElement, css, html } from "lit";
import { customElement } from "lit/decorators";

@customElement("bnn-loader")
export class Loader extends LitElement {
  static get styles() {
    return css`
      .loader {
        width: 24px;
        height: 24px;
        border: 3px solid #fff;
        border-bottom-color: transparent;
        border-radius: 50%;
        display: inline-block;
        box-sizing: border-box;
        animation: rotation 1s linear infinite;
      }

      @keyframes rotation {
        0% {
          transform: rotate(0deg);
        }
        100% {
          transform: rotate(360deg);
        }
      }
    `;
  }

  render() {
    return html` <span class="loader"></span> `;
  }
}
