import { customElement, state } from "lit/decorators.js";
import { DefaultComponent } from "./components/default.component";
import { css, html } from "lit";
import "./components/banner/banner";
import "./components/footer/footer";
import "./components/content-container/content-container";
import { HomeModel, HomeService } from "./home.service";
import { classMap } from "lit/directives/class-map.js";
import { initializeSentry } from "./services/sentry.service";

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
      @media screen and (max-width: 480px) {
        .half-width {
          grid-column: span 2;
        }
      }
      .proca-widget-wrapper {
        display: flex;
        justify-content: center;
        margin-top: 20px;
      }
      .max-content {
        max-width: 800px;
        width: 100%;
      }
    `;
  }

  override afterComponentInitialized(): void {
    initializeSentry(this.config);
    this.homeService = new HomeService(this.config);
    this.homeService.getHome().then((home: HomeModel) => {
      this.home = home;
    }).catch((error: any) => {
      console.error("Failed to fetch home data", error);
    });
    this.requestUpdate();
  }

  private loadPetitionForm(language: string = "de") {
    // Remove existing script if any
    const existingScript = document.querySelector("script[src^='https://widget.proca.app/d/']");
    if (existingScript) {
      existingScript.remove();
    }

    // Create and append the new script
    const script = document.createElement("script");
    let scriptSrc = ""
    const languageCode = sessionStorage.getItem("selectedLanguage") || "fr";
    if (languageCode == "fr") {
      scriptSrc = `https://widget.proca.app/d/beim_namen_nennen/beim_namen_nennen/fr`
    } else {
      scriptSrc = `https://widget.proca.app/d/beim_namen_nennen/beim_namen_nennen/`
    }
    
    script.src = scriptSrc;
    script.async = true;
    script.onload = () => {
      console.log('Petition form script loaded successfully');
      this.applyStylesToProcaWidget();
    };
    script.onerror = () => console.error('Failed to load the petition form script');
    
    const procaWidgetDiv = document.querySelector('.proca-widget');
    if (procaWidgetDiv) {
      procaWidgetDiv.appendChild(script);
    } else {
      console.error('proca-widget div not found');
    }
  }

  private applyStylesToProcaWidget() {
    const style = document.createElement('style');
    style.textContent = `
      .proca-MuiButton-fullWidth {
          background-color: var(--color-primary) !important;
      }
      .proca-MuiLinearProgress-colorPrimary {
          background-color: var(--color-highlight) !important;
      }
      .proca-MuiLinearProgress-barColorPrimary {
          background-color: var(--color-secondary) !important;
      }
      .proca-MuiFab-primary {
          background-color: var(--color-primary) !important;
      }
    `;
    const procaWidgetDiv = document.querySelector('.proca-widget');
    if (procaWidgetDiv) {
      procaWidgetDiv.appendChild(style);
    }
  }

  override firstUpdated() {
    this.loadPetitionForm();  // Load the default language script initially
  }

  public render() {
    return html`
      <bnn-banner
        .cityname="${this.home?.titel}"
        .description="${this.home?.description}"
      ></bnn-banner>
      <bnn-content-container>
        <div class="grid-container">
          ${this.home?.contentbox?.map((content) => {
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
