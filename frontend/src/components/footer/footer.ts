import { css, html } from "lit";
import { DefaultComponent } from "../default.component";
import { customElement, property } from "lit/decorators.js";
import "../content-container/content-container";

@customElement("bnn-footer")
export class Footer extends DefaultComponent {
  @property({ type: Boolean })
  protected isLoading: boolean = false;

  static get componentStyles() {
    return css`
      .footer-content {
        display: flex;
        gap: var(--gutter-m);
        justify-content: space-between;
        flex-wrap: wrap;
        & div {
          gap: var(--gutter-s);
          display: flex;
          flex-direction: column;
          & a {
            padding-bottom: 6px;
            cursor: pointer;
          }
        }
      }
      .sticky-footer {
        position: fixed;
        left: 0;
        bottom: 0;
        width: 100%;
        z-index: 1000; /* Ensures footer is above other content */
      }
      `;
  }

  public render() {
    // Conditional class based on isLoading
    const footerClass = this.isLoading ? 'sticky-footer' : '';

    return html`
      <footer class=${footerClass}>
        <bnn-content-container .backgroundColor="${"grey"}">
          <div class="footer-content">
            <div>
              <h3>${this.t('about_us')}</h3>
              <a href="https://www.offene-kirche.ch/">offene kirche bern</a>
              <a href="https://unitedagainstrefugeedeaths.eu/"
                >UNITED against Refugee Deaths</a
              >
            </div>
            <div>
              <h3>${this.t('contact')}</h3>
              <!--Social Media Icons-->
              <a href="mailto:info@beimnamennennen.ch">info@beimnamennennen.ch</a>
            </div>
          </div>
        </bnn-content-container>
      </footer>
    `;
  }
}
