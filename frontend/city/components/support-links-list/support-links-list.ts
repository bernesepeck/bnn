import { html } from "lit";
import { DefaultComponent } from "../../../components/default.component"
import { customElement, property } from "lit/decorators.js";
import "../../../components/content-container/content-container"
import { SupportLinkModel } from "../../city.models";

@customElement("bnn-support-link-list")
export class SupportLinksList extends DefaultComponent {

    @property()
    supportLinks: SupportLinkModel[] | undefined;

    render() {
        return html`
            <bnn-content-container .backgroundColor="${'grey'}">
                <h2>Mitmachen</h2>
                <div class="support-links">
                ${this.supportLinks?.map(e => this.renderSupportLink(e))}
                </div>
            </bnn-content-container>
        `
    }

    renderSupportLink(link: SupportLinkModel) {
        return html`
            <h3>${link.title}</h3>
            <a href="${link.link}">${link.linkText}</a>
        `
    }
}