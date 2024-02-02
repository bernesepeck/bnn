import { customElement } from "lit/decorators";
import { DefaultComponent } from "./components/default.component";
import { html } from "lit";
import './components/banner/banner';
import './components/footer/footer';

@customElement('bnn-home')
export class Home extends DefaultComponent {
    public render() {
        return html`
            <bnn-banner></bnn-banner>
            <bnn-footer></bnn-footer>
        `
    }
}