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
        console.log(this.events)
        return html`
            <bnn-content-container>
                <h2>Veranstaltungen</h2>
                <div class="events">
                ${this.events?.map(e => this.renderEvent(e))}
                </div>
            </bnn-content-container>
        `
    }

    renderEvent(event: EventModel) {
        console.log(event)
        return html`
            <h3>${event.name}</h3>
            <p>${event.description}</p>
        `
    }


}