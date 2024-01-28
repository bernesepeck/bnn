// menu-component.ts
import { LitElement, html, css } from 'lit';
import { customElement, property } from 'lit/decorators.js';
import "../../city/city-selector";

@customElement('bnn-nav-menu')
export class NavMenu extends LitElement {
    @property({ type: Array }) menuItems = [
        { title: 'Home', submenu: false },
        { title: 'Cities', submenu: true, submenuSlotName: 'bnn-city-selector' }
    ];

    constructor() {
        super();
        console.log(this.menuItems)
    }

    render() {
        return html`
            <ul class="menu">
                ${this.menuItems.map(item => html`
                    <li @click="${() => this.toggleSubMenu(item)}">${item.title}
                        ${item.submenu ? html`
                            <div class="submenu">
                                ${item.submenuSlotName === 'bnn-city-selector' ? html`<bnn-city-selector></bnn-city-selector>` : html`<slot name="${item.submenuSlotName}"></slot>`}
                            </div>
                        ` : ''}
                    </li>
                `)}
            </ul>
        `;
    }

    toggleSubMenu(item: any) {
        console.log(item)
    }
}