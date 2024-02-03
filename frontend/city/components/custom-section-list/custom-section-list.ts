import { html } from "lit";
import { DefaultComponent } from "../../../components/default.component";
import { customElement, property } from "lit/decorators.js";
import "../../../components/content-container/content-container";
import "../../../components/text-content/text-content";
import { CustomSectionModel } from "../../city.models";

@customElement("bnn-custom-section-list")
export class CustomSectionList extends DefaultComponent {
  @property()
  customSections: CustomSectionModel[] | undefined;

  render() {
    return html`
      <div class="custom-sections">
        ${this.customSections?.map((e) => this.renderSection(e))}
      </div>
    `;
  }

  renderSection(section: CustomSectionModel) {
    return html`
      <bnn-text-content
        .title="${section.title}"
        .text="${section.description}"
        .link="${section.link}"
        .linkText="${section.linkText}"
      >
      </bnn-text-content>
    `;
  }
}
