import { html, css } from "lit";
import { customElement, property } from "lit/decorators.js";
import { DefaultComponent } from "../default.component";
import "../menu/nav-menu";
import { classMap } from "lit/directives/class-map";
import { Section } from "../../types/types";
import { City } from "../../city/city";
import "../language/language-selector";

@customElement("bnn-banner")
export class Banner extends DefaultComponent {
  @property({ type: String })
  title?: string;

  @property({ type: String })
  subtitle1?: string;

  @property({ type: String })
  subtitle2?: string;
  
  @property({ type: Boolean })
  isHome: boolean = false;

  @property({ type: Array })
  sections: Section[] = [];

  static get componentStyles() {
    return css`
      .header-wrapper {
        background-image: url(/bnn-banner.png);
          url(/bnn-banner.png);
        height: min-content;
        padding: 0px var(--content-padding);
        padding-top: 16px;
        display: flex;
        justify-content: center;
        background-size: cover;
      }

      .has-description {
        --header-size: 650px;
        --font-size-xl: 40px;
        & p {
          color: white;
          font-size: var(--font-size-l);
        }
      }

      .home {
        display: grid;
        grid-template-columns: 1fr 1fr;
        grid-template-rows: 1fr 1fr;
        margin-top: 2em;
        gap: 0 2em;
        & h1 {
          grid-row: span 2;
          font-size: 90px;
          margin-top: 0;
        }
      }

      .home .subtitle-1, .home .subtitle-2 {
        color: var(--color-white);
        font-size: var(--font-size-xl);
        width: 75%;
      }

      .max-content {
        width: 100%;
        max-width: var(--max-content);
        display: flex;
        flex-direction: column;
      }

      .logo-nav-container {
        display: flex;
        justify-content: space-between;
        width: 100%;
        gap: 16px;
      }

      .logo-nav-container img {
        height: 120px;
      }

      bnn-nav-menu {
        margin-left: auto;
      }

      h1 {
        margin-top: 0;
        color: white;
        margin-top: 2em;
      }

      .sections-list {
        list-style: none;
        padding: 0;
        margin-top: 1em; /* Adjust as needed */
      }
      
      .sections-list li {
        margin-bottom: 0.5em; /* Adjust spacing between items as needed */
      }
      
      .sections-link {
        display: block;
        text-transform: uppercase;
        white-space: nowrap; 
        overflow: hidden; 
        text-overflow: ellipsis;
        width: max-content;
        max-width: 250px;
        color: white; 
        text-decoration: none;
        cursor: pointer;
        &:hover {
          background-color: var(--color-primary);
        }
      }

      bnn-language-selector {
        position: absolute;
        right: 16px;
        top: 16px;
      }

      .placeholder {
        background-color: rgba(255, 255, 255, 0.3);
        height: 24px;
        width: 25%; 
        border-radius: 5px;
        animation: pulsate 2s ease-in-out infinite;
        &.placeholder-short {
          width: 20%; 
        }
      }
      
      h1.placeholder {
        height: var(--font-size-xl);
      }

      @keyframes pulsate {
        0% { background-color: rgba(255, 255, 255, 0.3); }
        50% { background-color: rgba(255, 255, 255, 0.5); }
        100% { background-color: rgba(255, 255, 255, 0.3); }
      }

      @media screen and (max-width: 768px) {
        .home {
          grid-template-columns: 1fr;
          grid-template-rows: auto auto auto;
          gap: 1em 0;
        }
  
        .home .home-title {
          grid-row: 1;
          font-size: 60px;
          margin-top: 0;
        }
  
        .home .subtitle-1, .home .subtitle-2 {
          width: 100%;
          font-size: var(--font-size-l);
        }
      }
    `;
  }

  public render() {
    return html`
      <div
        class="${classMap({
          "header-wrapper": true,
          "has-description": this.isHome,
        })}"
      >
        <div class="max-content">
          <div class="logo-nav-container">
            <img src="/logo.webp" alt="Beimnamennennen Logo">
            <bnn-nav-menu></bnn-nav-menu>
            <bnn-language-selector></bnn-language-selector>
          </div>
          ${this.isHome ? html`
          <div class="home">
            <span class="subtitle-1">${this.subtitle1}</span>
            <h1 class="home-title">${this.title}</h1>
            <span class="subtitle-2">${this.subtitle2}</span>
          </div>
          ` : this.title ? html`<h1>${this.title}</h1>` : html`<h1 class="placeholder"></h1>`}

          ${this.sections.length > 0 || this.title
            ? html`<ul class="sections-list">
                ${this.sections.map((section) =>
                  section.fileId
                    ? html`<li>
                        <a
                          href="${this.config?.apiUrl}/assets/${section.fileId}"
                          target="_blank"
                          rel="noopener noreferrer"
                          class="sections-link"
                          >${section.name}</a
                        >
                      </li>`
                    : html`<li>
                        <span @click="${() => this.goTo(section.id)}" class="sections-link">${section.name}</span>
                      </li>`
                )}
              </ul>`
            : html`
            <ul class="sections-list">
              <li class="placeholder placeholder-short"></li>
              <li class="placeholder"></li>
              <li class="placeholder"></li>
              <li class="placeholder"></li>
              <li class="placeholder"></li>
              <li class="placeholder"></li>
            </ul>
            `
          }
        </div>
      </div>
    `;
  }

  private goTo(id: string): void {
    const event = new CustomEvent(City.SCROLL_INTO_VIEW_EVENT, { detail: id });
    document.dispatchEvent(event);
  }
}
