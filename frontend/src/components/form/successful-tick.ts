import { LitElement, css, html } from "lit";
import { customElement } from "lit/decorators";

@customElement("bnn-success-tick")
export class successTick extends LitElement {
  static get styles() {
    return css`
      .success-tick {
        width: 24px;
        margin-right: 8px;
      }
      svg {
        width: 24px;
        display: block;
      }

      .path {
        stroke-dasharray: 1000;
        stroke-dashoffset: 0;
        &.circle {
          -webkit-animation: dash 0.9s ease-in-out;
          animation: dash 0.9s ease-in-out;
        }
        &.line {
          stroke-dashoffset: 1000;
          -webkit-animation: dash 0.9s 0.35s ease-in-out forwards;
          animation: dash 0.9s 0.35s ease-in-out forwards;
        }
        &.check {
          stroke-dashoffset: -100;
          -webkit-animation: dash-check 0.9s 0.35s ease-in-out forwards;
          animation: dash-check 0.9s 0.35s ease-in-out forwards;
        }
      }
      @-webkit-keyframes dash {
        0% {
          stroke-dashoffset: 1000;
        }
        100% {
          stroke-dashoffset: 0;
        }
      }

      @keyframes dash {
        0% {
          stroke-dashoffset: 1000;
        }
        100% {
          stroke-dashoffset: 0;
        }
      }

      @-webkit-keyframes dash-check {
        0% {
          stroke-dashoffset: -100;
        }
        100% {
          stroke-dashoffset: 900;
        }
      }

      @keyframes dash-check {
        0% {
          stroke-dashoffset: -100;
        }
        100% {
          stroke-dashoffset: 900;
        }
      }
    `;
  }
  render() {
    return html`
      <div class="success-tick">
        <svg
          version="1.1"
          xmlns="http://www.w3.org/2000/svg"
          viewBox="0 0 130.2 130.2"
        >
          <circle
            class="path circle"
            fill="none"
            stroke="#fff"
            stroke-width="8px"
            stroke-miterlimit="10"
            cx="65.1"
            cy="65.1"
            r="62.1"
          />
          <polyline
            class="path check"
            fill="none"
            stroke="#fff"
            stroke-width="8px"
            stroke-linecap="round"
            stroke-miterlimit="10"
            points="100.2,40.2 51.5,88.8 29.8,67.5 "
          />
        </svg>
      </div>
    `;
  }
}
