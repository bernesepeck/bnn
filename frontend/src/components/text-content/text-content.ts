import { customElement, property } from "lit/decorators";
import { DefaultComponent } from "../default.component"
import { PropertyValueMap, css, html } from "lit";

@customElement('bnn-text-content')
export class TextContent extends DefaultComponent {
    @property({type: String})
    title: string = ''

    @property({type: String})
    text: string = ''

    @property()
    backgroundColor:  'grey' | 'highlight' | 'blue' | undefined

    @property()
    link: string = ''

    @property()
    linkText: string = ''

    static get componentStyles() {
        return css`
            .more-content {
                display: none;
            }
        `
    }


    get colorStyles() {
        if(this.backgroundColor === 'highlight') {
            return `color: var(--color-black)`
        }
        if(this.backgroundColor === 'blue') {
            return `color: var(--color-white);`
        }
    }

    render () {
        return html`
            <bnn-content-container .backgroundColor="${this.backgroundColor}">
                <h2 .style="${this.colorStyles?.length ? this.colorStyles : ''}">${this.title}</h2>
                <p .innerHTML="${this.text}" .style="${this.colorStyles?.length ? this.colorStyles : ''}"></p>
                ${this.link?.length ? html`<a target="_blank" href="${this.link}">${this.linkText}</a>` : ``}
            </bnn-content-container>
        `
    }
}