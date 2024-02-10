import { css, html } from "lit";
import { DefaultComponent } from "../../../components/default.component";
import { customElement, property } from "lit/decorators.js";
import "../../../components/content-container/content-container";
import { SupportLinkModel } from "../../city.models";
import { TranslationService } from "../../../services/translation.service";

@customElement("bnn-support-link-list")
export class SupportLinksList extends DefaultComponent {
  @property()
  supportLinks: SupportLinkModel[] | undefined;

  static get componentStyles() {
    return css`
        .support-links {
            display: grid;
            gap: var(--gutter-m);
            grid-template-columns: repeat( auto-fit, minmax(200px, 1fr) );
        }
    `
  }

  render() {
    return html`
      <bnn-content-container>
        <h2>${TranslationService.getInstance().getTranslation('volunteer')}</h2>
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
        <a href="${link.link}">${link.linkText}</a>
      </div>
    `;
  }
}
