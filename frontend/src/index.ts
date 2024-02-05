import { customElement } from "lit/decorators";
import { DefaultComponent } from "./components/default.component";
import { html } from "lit";
import './components/banner/banner';
import './components/footer/footer';
import { ConfigService } from "./config-service";

@customElement('bnn-home')
export class Home extends DefaultComponent {
    constructor() {
        super();
        const configService = ConfigService.getInstance();
        configService.loadConfig().then(() => {
          console.log("Configuration loaded successfully.");
        }).catch(error => {
          console.error("Failed to load configuration:", error);
        });
      }
    public render() {
        return html`
            <bnn-banner></bnn-banner>
            <bnn-footer></bnn-footer>
        `
    }
}