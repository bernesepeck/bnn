// menu-component.ts
import { html, css } from "lit";
import { customElement, property, state } from "lit/decorators.js";
import "../../city/city-selector";
import { DefaultComponent } from "../default.component";
import { classMap } from "lit/directives/class-map.js";
import { CityService } from "../../city/city.service";
import { CityModel, getCurrentCity } from "../../city/city.models";
import "../language/language-selector";

type MenuItem = {
  translationKey: string;
  submenu: boolean;
  submenuSlotName?: string;
  submenuVisible?: boolean;
  link?: string;
  urlParam?: string;
  key?: string;
};

@customElement("bnn-nav-menu")
export class NavMenu extends DefaultComponent {
  private cityService!: CityService;

  @property({ type: Array<MenuItem> }) menuItems: MenuItem[] = [
    { translationKey: "home", submenu: false, link: "/" },
    {
      translationKey: "swiss_cities",
      submenu: true,
      submenuSlotName: "bnn-city-selector",
      key: "ch",
      submenuVisible: false,
      urlParam: "city",
    },
    {
      translationKey: "german_cities",
      submenu: true,
      submenuSlotName: "bnn-city-selector",
      key: "de",
      submenuVisible: false,
      urlParam: "city",
    },
  ];

  @state()
  cities: CityModel[] = [];

  @state()
  isMenuOpen = false;

  @state()
  isInitialised = false;

  static get componentStyles() {
    return css`
      /* Keyframes for the slide-down and fade-in effect */
      @keyframes slideDownFadeIn {
        from {
          opacity: 0;
          transform: translateY(
            -20px
          ); /* Start 20 pixels above its final position */
        }
        to {
          opacity: 1;
          transform: translateY(0); /* End at its final position */
        }
      }

      .menu {
        list-style: none;
        display: flex;
        gap: 32px;
        padding: 8px;
        background-color: var(--color-primary);
        & .main-link::after {
          content: none;
        }
        & li,
        a {
          font-size: var(--font-size-l);
          text-decoration: none;
          color: white;
          cursor: pointer;
          text-transform: uppercase;
          font-weight: normal;
          padding: 0;
          &.selected {
            text-decoration: underline;
            text-underline-offset: 4px;
          }
        }
        & .submenu {
          position: absolute;
          background-color: var(--color-primary);
          padding: 16px;
          opacity: 0; /* Start from invisible */
          animation: slideDownFadeIn 0.2s ease-out forwards; /* Apply the animation */
        }
      }
      @media screen and (max-width: 820px) {
        .menu {
          position: fixed;
          top: 0;
          left: 0;
          width: 100vw;
          height: 100vh;
          background-color: var(--color-primary);
          display: flex;
          flex-direction: column;
          justify-content: center;      /* vertical centering */
          align-items: center;          /* horizontal centering */
          overflow-y: auto;             /* allow vertical scroll if needed */
          max-height: 100vh;            /* ensure does not exceed viewport */
          opacity: 0;
          visibility: hidden;
          z-index: 1000;
          transition: opacity 0.5s, visibility 0s linear 0.5s; /* delay visibility change */
          & .submenu {
            position: unset;
          }
        }
        /* Open state for the menu */
        .menu.open {
          opacity: 1;
          visibility: visible;
          transition: opacity 0.5s;
          margin-top: 0;
          height: 100%;
        }
        .hamburger-menu {
          display: flex;
          flex-direction: column;
          gap: 8px;
          z-index: 2000;
          position: fixed;
          top: 16px;
          right: 16px;
          & div {
            width: 40px;
            height: 4px;
            background-color: white;
          }
        }
        .desktop-lang {
          display: none !important;
        }
        .mobile-lang {
          display: block !important;
          padding: 20px;
          position: fixed;
          top: 0;
          left: 0;
        }
      }
      @media screen and (min-width: 821px) {
        .menu {
          display: flex;
        }
        .hamburger-menu {
          display: none;
        }
        .mobile-lang {
          display: none !important;
        }
        .desktop-lang {
          display: block !important;
          position: absolute;
          top: 0;
          right: -10vw;
        }
      }
    `;
  }

  override async afterComponentInitialized(): Promise<void> {
    document.addEventListener("click", (e) => {
      if (this.menuItems.some((i) => i.submenuVisible)) {
        this.menuItems = this.menuItems.map((i) =>
          i.submenuVisible ? { ...i, submenuVisible: false } : i
        );
      }
    });
    await this.fetchCities();
    this.isInitialised = true;
  }

  render() {
    return this.isInitialised
      ? html`
          <menu
            class="menu"
            class="${classMap({ open: this.isMenuOpen, menu: true })}"
          >
          ${this.menuItems.map((item) =>
            item.submenu
              ? this.renderMenuItemWithSubmenu(item)
              : html`<a class="main-link" href="${item.link}"
                  >${this.t(item.translationKey!)}</a
                >`
          )}
            <bnn-language-selector class="mobile-lang" .darkMode=${true}></bnn-language-selector>
          </menu>
          <bnn-language-selector class="desktop-lang"></bnn-language-selector>
          <button
            class="hamburger-menu"
            @click="${() => (this.isMenuOpen = !this.isMenuOpen)}"
          >
            <div></div>
            <div></div>
            <div></div>
          </button>
        `
      : ``;
  }

  renderMenuItemWithSubmenu(item: MenuItem) {
    return html`
      <li
        @click="${(e) => this.toggleSubMenu(item, e)}"
        class="${classMap({
          selected: this.isCityItemSelected(item),
        })}"
      >
        ${this.t(item.translationKey!)}
        ${item.submenu && (item.submenuVisible)
          ? html`
              <div class="submenu">
                ${item.submenuSlotName === "bnn-city-selector"
                  ? html`<bnn-city-selector
                      .country="${item.key}"
                      .cities="${this.cities}"
                    ></bnn-city-selector>`
                  : html`<slot name="${item.submenuSlotName}"></slot>`}
              </div>
            `
          : ""}
      </li>
    `;
  }

  toggleSubMenu(item: MenuItem, e: PointerEvent) {
    //Important so menu doesn't get closed immediately
    e.preventDefault();
    e.stopPropagation();
    this.menuItems = this.menuItems.map((i) =>
      i === item
        ? { ...i, submenuVisible: !i.submenuVisible }
        : { ...i, submenuVisible: false }
    );
  }

  async fetchCities() {
    this.cityService = new CityService(this.config);
    try {
      const cities = await this.cityService.getCities();
      this.cities = cities;
      this.requestUpdate();
    } catch (error) {
      console.error("Error fetching cities:", error);
    }
  }

  private isCityItemSelected(item: MenuItem): boolean {
    const selected = window.location.href.includes(item.urlParam!);
    return (
      selected &&
      this.cities.find((c) => c.id === getCurrentCity())?.country === item.key
    );
  }
}
