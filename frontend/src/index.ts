import { customElement, state } from "lit/decorators";
import { DefaultComponent } from "./components/default.component";
import { css, html } from "lit";
import "./components/banner/banner";
import "./components/footer/footer";
import "./components/content-container/content-container";
import { HomeModel, HomeService } from "./home.service";
import { classMap } from "lit/directives/class-map.js";

@customElement("bnn-home")
export class Home extends DefaultComponent {
  private homeService!: HomeService;

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
    `;
  }

  override afterComponentInitialized(): void {
    this.homeService = new HomeService(this.config);
    this.homeService.getHome().then((home: HomeModel) => {
      this.home = home;
    })
    .catch((error: any) => {
      console.error("Failed to fetch home data", error);
    });
    this.requestUpdate();
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
