import { css, html } from 'lit';
import { DefaultComponent } from "../default.component";
import { customElement, property } from "lit/decorators.js";

@customElement("bnn-content-container")
export class ContentContainer extends DefaultComponent {
    static get componentStyles() {
        return css`
            .container {
                padding: 3em var(--content-padding);
                display: flex;
                justify-content: center;
            }
            .max-content {
                max-width: 1000px;
                width: 100%;
                margin: 0;
            }
            .wide {
                max-width: 1600px;
            }
        `;
    }

    @property({type: String})
    backgroundColor: 'grey' | 'highlight' | 'blue' | undefined;

    @property({type: Boolean})
    wide: boolean = false; // New property to control wide mode

    get colorStyles() {
        if(this.backgroundColor === 'grey') {
            return `background-color: var(--color-grey)`;
        } 
        if(this.backgroundColor === 'highlight') {
            return `background-color: var(--color-highlight)`;
        }
        if(this.backgroundColor === 'blue') {
            return `background-color: var(--color-secondary);`;
        }
    }

    render() {
        // Apply the 'wide' class conditionally based on the 'wide' property
        return html`
            <div class="container" .style="${this.colorStyles?.length ? this.colorStyles : ''}">
            <div class="${this.wide ? 'max-content wide' : 'max-content'}">
                <slot></slot>
            </div>
            </div>
        `;
    }
}
