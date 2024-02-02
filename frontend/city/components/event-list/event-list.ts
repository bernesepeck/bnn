import { css, html } from "lit";
import { DefaultComponent } from "../../../components/default.component";
import { customElement, property } from "lit/decorators.js";
import "../../../components/content-container/content-container";
import { EventModel } from "../../city.models";

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
        & p,
        h3 {
          margin: 0;
        }
      }
    `;
  }

  render() {
    return html`
      <bnn-content-container .backgroundColor="${"grey"}">
        <h2>Veranstaltungen</h2>
        <div class="events">
          ${this.events?.map((e) => this.renderEvent(e))}
        </div>
      </bnn-content-container>
    `;
  }

  renderEvent(event: EventModel) {
    return html`
      <div class="event">
        <h3>${event.name}</h3>
        ${event.customDates
          ? html`<p .innerHTML="${event.customDates}" class="dates"></p>`
          : html``}
        ${event.location
          ? html`<p .innerHTML="${event.location}" class="location"></p>`
          : html``}
        <p .innerHTML="${event.description}"></p>
      </div>
    `;
  }
}
