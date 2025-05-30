import { css, html } from "lit";
import { DefaultComponent } from "../../../components/default.component";
import { customElement, property } from "lit/decorators.js";
import "../../../components/content-container/content-container";
import { SupportLinkModel } from "../../city.models";

@customElement("bnn-support-link-list")
export class SupportLinksList extends DefaultComponent {
  @property()
  supportLinks: SupportLinkModel[] | undefined;

  static get componentStyles() {
    return css`
      .support-links {
        display: grid;
        gap: var(--gutter-m);
        grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
      }
    `;
  }

  render() {
    return html`
      <bnn-content-container .backgroundColor="${"grey"}">
        <h2>${this.t("volunteer")}</h2>
        <div class="support-links">
          ${this.supportLinks?.map((e) => this.renderSupportLink(e))}
        </div>
      </bnn-content-container>
    `;
  }

  renderSupportLink(link: SupportLinkModel) {
    return html`
      <div class="support-link">
        <h3>${link.title}</h3>
        <p>${link.description}</p>
        <a target="_blank" href="${link.link}">${link.linkText}</a>
      </div>
    `;
  }
}
