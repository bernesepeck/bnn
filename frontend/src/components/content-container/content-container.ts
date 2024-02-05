import {css, html} from 'lit';
import { DefaultComponent } from "../default.component";
import { customElement, property } from "lit/decorators.js";

@customElement("bnn-content-container")
export class ContentContainer extends DefaultComponent {
    static get componentStyles() {
        return css`
            .container {
                padding: 3em var(--content-padding);
            }
        `
    }

    @property()
    backgroundColor:  'grey' | 'highlight' | 'blue' | undefined

    get colorStyles() {
        if(this.backgroundColor === 'grey') {
            return `background-color: var(--color-grey)`
        } 
        if(this.backgroundColor === 'highlight') {
            return `background-color: var(--color-highlight)`
        }
        if(this.backgroundColor === 'blue') {
            return `background-color: var(--color-secondary);`
        }
    }

    render() {
        return html`
            <div class="container" .style="${this.colorStyles?.length ? this.colorStyles : ''}" >
                <slot></slot>
            </div>
        `
    }
}