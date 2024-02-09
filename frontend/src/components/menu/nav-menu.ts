// menu-component.ts
import { LitElement, html, css } from "lit";
import { customElement, property } from "lit/decorators.js";
import "../../city/city-selector";
import { DefaultComponent } from "../default.component";
import { classMap } from 'lit/directives/class-map.js';

type MenuItem = {
  title: string;
  submenu: boolean;
  submenuSlotName?: string;
  submenuVisible?: boolean;
  link?: string;
  urlParam?: string;
};

@customElement("bnn-nav-menu")
export class NavMenu extends DefaultComponent {
  @property({ type: Array<MenuItem> }) menuItems: MenuItem[] = [
    { title: "Home", submenu: false, link: "/" },
    {
      title: "Cities",
      submenu: true,
      submenuSlotName: "bnn-city-selector",
      submenuVisible: false,
      urlParam: 'city'
    },
  ];

  static get componentStyles() {
    return css`
        /* Keyframes for the slide-down and fade-in effect */
        @keyframes slideDownFadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px); /* Start 20 pixels above its final position */
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
                & li, a {
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
            }
            }
        `;
  }

  constructor() {
    super();
    document.addEventListener("click", (e) => {
      if (this.menuItems.some((i) => i.submenuVisible)) {
        this.menuItems = this.menuItems.map((i) =>
          i.submenuVisible ? { ...i, submenuVisible: false } : i
        );
      }
    });
  }

  render() {
    return html`
      <nav class="menu">
        ${this.menuItems.map((item) =>
          item.submenu
            ? this.renderMenuItemWithSubmenu(item)
            : html`<a class="main-link" href="${item.link}">${item.title}</a>`
        )}
      </nav>
    `;
  }

  renderMenuItemWithSubmenu(item: MenuItem) {
    return html`
      <li @click="${(e) => this.toggleSubMenu(item, e)}"  class="${classMap({selected: window.location.href.includes(item.urlParam!)})}">
        ${item.title}
        ${item.submenu && item.submenuVisible
          ? html`
              <div class="submenu">
                ${item.submenuSlotName === "bnn-city-selector"
                  ? html`<bnn-city-selector></bnn-city-selector>`
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
      i === item ? { ...i, submenuVisible: !i.submenuVisible } : i
    );
  }
}
