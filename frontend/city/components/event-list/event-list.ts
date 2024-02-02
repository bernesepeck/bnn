import { html } from "lit";
import { DefaultComponent } from "../../../components/default.component"
import { customElement, property } from "lit/decorators.js";
import "../../../components/content-container/content-container"
import { EventModel } from "../../city.models";

@customElement("bnn-event-list")
export class EventList extends DefaultComponent {

    @property()
    events: EventModel[] | undefined;

    render() {
        return html`
            <bnn-content-container .backgroundColor="${'grey'}">
                <h2>Veranstaltungen</h2>
                <div class="events">
                ${this.events?.map(e => this.renderEvent(e))}
                </div>
            </bnn-content-container>
        `
    }

    renderEvent(event: EventModel) {
        return html`
            <h3>${event.name}</h3>
            <p .innerHTML="${event.description}"></p>
        `
    }


}