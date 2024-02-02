// menu-component.ts
import { LitElement, html, css } from "lit";
import { customElement, property } from "lit/decorators.js";
import "../../city/city-selector";
import { DefaultComponent } from "../default.component";

type MenuItem = {
  title: string;
  submenu: boolean;
  submenuSlotName?: string;
  submenuVisible?: boolean;
};

@customElement("bnn-nav-menu")
export class NavMenu extends DefaultComponent {
  @property({ type: Array<MenuItem> }) menuItems: MenuItem[] = [
    { title: "Home", submenu: false },
    {
      title: "Cities",
      submenu: true,
      submenuSlotName: "bnn-city-selector",
      submenuVisible: false,
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
                opacity: 0.8;
                transform: translateY(0); /* End at its final position */
            }
        }

            .menu {
                list-style: none;
                display: flex;
                gap: 16px;
                color: var(--color-primary);
                & li {
                    font-size: var(--font-size-l);
                }
                & .submenu {
                    position: absolute;
                    background-color: white;
                    padding: 16px;
                    opacity: 0; /* Start from invisible */
                    animation: slideDownFadeIn 0.5s ease-out forwards; /* Apply the animation */
                }
                }
            }
            }
        `;
  }

  constructor() {
    super();
  }

  render() {
    return html`
      <ul class="menu">
        ${this.menuItems.map(
          (item) => html`
            <li @click="${() => this.toggleSubMenu(item)}">
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
          `
        )}
      </ul>
    `;
  }

  toggleSubMenu(item: MenuItem) {
    this.menuItems = this.menuItems.map((i) =>
      i === item ? { ...i, submenuVisible: !i.submenuVisible } : i
    );
    console.log("toggleSubMenu", item);
  }
}
