import { css, html } from "lit";
import { DefaultComponent } from "../../../components/default.component";
import { customElement, property } from "lit/decorators.js";
import "../../../components/content-container/content-container";
import { EventModel } from "../../city.models";
import { TranslationService } from "../../../services/translation.service";

@customElement("bnn-event-list")
export class EventList extends DefaultComponent {
  @property()
  events: EventModel[] | undefined;

  static get componentStyles() {
    return css`
      .dates {
        font-weight: bold;
      }
      .dates,
      .location {
        font-size: var(--font-size-m);
      }
      .events {
        display: flex;
        flex-direction: column;
        gap: var(--gutter-m);
      }
      .event {
        display: flex;
        flex-direction: column;
        gap: var(--gutter-s);
        padding: 16px;
        background-color: white;
        & p,
        h3 {
          margin: 0;
        }
      }
      img {
        max-height: 400px;
        max-width: -webkit-fill-available;
        object-fit: contain;
        align-self: flex-start;
      }
      }
      h2 {
        background-color: var(--color-primary);
        color: white;
        padding: 4px;
        width: max-content;
      }
    `;
  }

  render() {
    return html`
      <bnn-content-container .backgroundColor="${"grey"}">
        <h2>${this.t("events")}</h2>
        <div class="events">
          ${this.events?.sort((a,b) => a.sort > b.sort ? 1 : -1).map((e) => this.renderEvent(e))}
        </div>
      </bnn-content-container>
    `;
  }

  renderEvent(event: EventModel) {
    return html`
      <div class="event">
        ${event.location
          ? html`<p .innerHTML="${event.location}" class="location"></p>`
          : html``}
        <h3>${event.name}</h3>
        ${event.teaser
          ? html`<img src="${this.config?.apiUrl}/assets/${event.teaser}" alt="${`image ${event.name}`}"/>`
          : html``}
        ${event.customDates
          ? html`<p .innerHTML="${event.customDates}" class="dates"></p>`
          : html``}
        <p .innerHTML="${event.description}"></p>
        ${event.link
          ? html`<a .href="${event.link}" target="_blank">Mehr</a>`
          : html``}
      </div>
    `;
  }
}
