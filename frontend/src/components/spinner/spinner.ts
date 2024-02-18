import { html, css } from 'lit';
import { DefaultComponent } from '../default.component';
import { customElement } from 'lit/decorators.js';

@customElement("bnn-spinner")
export class Spinner extends DefaultComponent {
  static get componentStyles() {
    return css`
      .spinner-wrapper {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100%;
        width: 100%;
        margin: 10% 0 10%; 
      }
      .spinner {
        display: inline-block;
        width: 50px;
        height: 50px;
        border: 12px solid rgba(0, 0, 0, 0.3);
        border-radius: 50%;
        border-top-color: var(--color-primary);
        animation: spin 1s ease-in-out infinite;
      }

      @keyframes spin {
        to {
          transform: rotate(360deg);
        }
      }
    `;
  }

  render() {
    return html`
    <div class="spinner-wrapper">
      <div class="spinner"></div>
    </div>
    `;
  }
}
