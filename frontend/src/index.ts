import { customElement, state } from "lit/decorators";
import { DefaultComponent } from "./components/default.component";
import { css, html } from "lit";
import "./components/banner/banner";
import "./components/footer/footer";
import "./components/content-container/content-container";
import { ConfigService } from "./config-service";
import { HomeModel, HomeService } from "./home.service";
import { classMap } from "lit/directives/class-map.js";
import { TranslationService } from "./services/translation.service";

@customElement("bnn-home")
export class Home extends DefaultComponent {
  @state()
  home: HomeModel | undefined;

  static get componentStyles() {
    return css`
      .grid-container {
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        gap: var(--gutter-m);
      }
      .full-width {
        grid-column: span 2;
      }

      .half-width {
        grid-column: span 1;
      }
      @media screen and (max-width: 480px) {
        .half-width {
          grid-column: span 2;
        }
      }
    `;
  }

  constructor() {
    super();
    const configService = ConfigService.getInstance();
    configService
      .loadConfig()
      .then(() => TranslationService.getInstance().getTranslations())
      .then(async () => {
        console.log("Configuration loaded successfully.");
        const homeService = new HomeService();
        this.home = await homeService.getHome();
        this.requestUpdate();
      })
      .catch((error) => {
        console.error("Failed to load configuration:", error);
      });
  }
  public render() {
    return html`
      <bnn-banner
        .cityname="${this.home?.titel}"
        .description="${this.home?.description}"
      ></bnn-banner>
      <bnn-content-container>
        <div class="grid-container">
          ${this.home?.contentbox.map((content) => {
            return html`<div
              class="${classMap({
                "content-box": true,
                "full-width": content.width === 1,
                "half-width": content.width === 0.5,
              })}"
            >
              <h2>${content.title}</h2>
              <p .innerHTML="${content.description}"></p>
            </div>`;
          })}
        </div>
      </bnn-content-container>
      <bnn-footer></bnn-footer>
    `;
  }
}
