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
    backgroundColor:  'grey' | 'highlight' | undefined

    get backgroundColorClass() {
        if(this.backgroundColor === 'grey') {
            return '--color-grey'
        } 
        if(this.backgroundColor === 'highlight') {
            return '--color-highlight'
        }
    }

    render() {
        return html`
            <div class="container" .style="${this.backgroundColor?.length ? `background-color: var(${this.backgroundColorClass})` : ''}" >
                <slot></slot>
            </div>
        `
    }
}