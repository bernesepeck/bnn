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

  override connectedCallback(): void {
    super.connectedCallback();
    // Add the event listener when the component is connected to the DOM
    window.addEventListener('refetch-data', this.handleRefetchWidget);
  }

  override disconnectedCallback(): void {
    super.disconnectedCallback();
    // Clean up the event listener when the component is removed
    window.removeEventListener('refetch-data', this.handleRefetchWidget);
  }

  /**
   * Handles the global data refetch event.
   */
  private handleRefetchWidget = () => {
    console.log("Refetching home content and petition widget...");
    this.fetchHome();
    this.loadPetitionForm();
  };

  override afterComponentInitialized(): void {
    initializeSentry(this.config);
    this.fetchHome();
  }

  private fetchHome() {
    this.homeService = new HomeService(this.config);
    this.homeService.getHome().then((home: HomeModel) => {
      this.home = home;
    }).catch((error: any) => {
      console.error("Failed to fetch home data", error);
    });
  }

  /**
   * Injects CSS into the page to style the dynamically loaded iframe.
   * This is called after the script has successfully loaded.
   */
  private applyStylesToPetitionWidget() {
    // This style tag will be appended to the widget's container div.
    const style = document.createElement('style');
    style.textContent = `
      .petition-widget iframe {
        width: 100%;
        border: none;
        min-height: 600px; /* Adjust as needed */
      }
    `;
    const petitionWidgetDiv = document.querySelector('.petition-widget');
    if (petitionWidgetDiv) {
      // Append styles directly to the container to ensure they apply
      // to the iframe created by the script.
      petitionWidgetDiv.appendChild(style);
    }
  }

  /**
   * Loads the third-party petition form script into a container outside the component.
   * It cleans up any existing widget before loading the new one.
   */
  private async loadPetitionForm() {
    // Wait for the component's update cycle to complete before manipulating the DOM.
    // @ts-ignore: updateComplete is available on LitElement
    await (this as any).updateComplete;

    // Find the container div in the global document, not the shadowRoot.
    const petitionWidgetDiv = document.querySelector(".petition-widget");
    if (!petitionWidgetDiv) {
      console.error(".petition-widget div not found in document. Cannot load form.");
      return;
    }

    // Clear any old content (script, iframe, style tags, etc.) to ensure a clean reload.
    petitionWidgetDiv.innerHTML = '';

    // Create and append the new script
    const script = document.createElement("script");
    script.id = "controlsfhift-embed-sign-form-script";
    script.src = "https://act.campax.org/assets/embed_sign_form.js";
    script.async = true;

    // Set the petition URL based on the selected language
    const languageCode = sessionStorage.getItem("selectedLanguage") || navigator.language;
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
    
    // When the script loads, apply the necessary styles.
    script.onload = () => {
      this.applyStylesToPetitionWidget();
    };
    
    script.onerror = () => console.error("Failed to load the petition form script.");

    petitionWidgetDiv.appendChild(script);
  }

  override firstUpdated() {
    this.loadPetitionForm();
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