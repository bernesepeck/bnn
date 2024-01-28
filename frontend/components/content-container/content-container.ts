import {css, html} from 'lit';
import { DefaultComponent } from "../default.component";
import { customElement } from "lit/decorators.js";

@customElement("bnn-content-container")
export class ContentContainer extends DefaultComponent {
    static get componentStyles() {
        return css`
            .container {
                padding: 0 var(--content-padding);
            }
        `
    }

    render() {
        return html`
            <div class="container">
                <slot></slot>
            </div>
        `
    }
}