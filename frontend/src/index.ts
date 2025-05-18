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
    const existingScript = document.querySelector("#controlsfhift-embed-sign-form-script");
    if (existingScript) {
      existingScript.remove();
    }

    // Create and append the new script
    const script = document.createElement("script");
    script.id = "controlsfhift-embed-sign-form-script";
    script.src = "https://act.campax.org/assets/embed_sign_form.js";
    script.async = true;
    script.onload = () => {
      this.applyStylesToPetitionWidget();
    };

    // Set the petition URL based on the selected language
    const languageCode = sessionStorage.getItem("selectedLanguage") || "de";
    if (languageCode === "fr") {
      script.setAttribute(
        "data-petition-url",
        "https://act.campax.org/petitions/convention-des-droits-de-l-enfant-de-l-onu/embed?source=partner-homepage&bucket=partner-org"
      );
    } else {
      script.setAttribute(
        "data-petition-url",
        "https://act.campax.org/petitions/uno-kinderrechtskonvention/embed?source=partner-homepage&bucket=partner-org"
      );
    }

    script.onerror = () => console.error("Failed to load the petition form script");

    const petitionWidgetDiv = document.querySelector(".petition-widget");
    if (petitionWidgetDiv) {
      petitionWidgetDiv.appendChild(script);
    } else {
      console.error("petition-widget div not found");
    }
  }

  private applyStylesToPetitionWidget() {
    const style = document.createElement('style');
    style.textContent = `
      .petition-widget iframe {
        width: 100%;
      }
    `;
    const procaWidgetDiv = document.querySelector('.petition-widget');
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
        .title="${this.home?.titel}"
        .subtitle1="${this.home?.subtitle1}"
        .subtitle2="${this.home?.subtitle2}"
        .isHome="${true}"
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
    `;
  }
}
