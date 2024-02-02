import { html } from "lit";
import { DefaultComponent } from "../../../components/default.component"
import { customElement, property } from "lit/decorators.js";
import "../../../components/content-container/content-container"
import { CustomSectionModel } from "../../city.models";

@customElement("bnn-custom-section-list")
export class CustomSectionList extends DefaultComponent {

    @property()
    customSections: CustomSectionModel[] | undefined;

    render() {
        return html`
            <bnn-content-container .backgroundColor="${'grey'}">
                <div class="custom-sections">
                ${this.customSections?.map(e => this.renderSection(e))}
                </div>
            </bnn-content-container>
        `
    }

    renderSection(section: CustomSectionModel) {
        return html`
            <h3>${section.title}</h3>
            <p href="${section.description}">${section.description}</p>
            <a target="_blank" href="${section.link}">${section.linkText}</a>
        `
    }
}