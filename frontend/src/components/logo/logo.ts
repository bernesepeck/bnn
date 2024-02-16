import { html } from 'lit';
import { customElement, property } from 'lit/decorators.js';
import { createDirectus, readSingleton, rest } from '@directus/sdk';
import { DefaultComponent } from '../default.component';

@customElement('bnn-logo')
export class Logo extends DefaultComponent {
  @property({ type: String })
  logoUrl = ''; // Initialize an empty string for the logo URL

  override async afterComponentInitialized(): Promise<void> {
    const client = createDirectus(this.config.apiUrl).with(rest());
    const response = await client.request(
      readSingleton('logo', {
        fields: ['logo'],
      })
    );
    this.logoUrl = `${this.config?.apiUrl}/assets/${response.logo}?height=100&width=120`;
  }

  render() {
    return html`
      <img src="${this.logoUrl}" alt="Beimnamennennen Logo">
    `;
  }
}
