import { LitElement, html } from "lit";
import { customElement } from "lit/decorators.js";

@customElement("bnn-city")
export class City extends LitElement {
  constructor() {
    super();

    this.fetchCityData()
      .then((city) => {
        console.log("City Data:", city);
      })
      .catch((error) => {
        console.error("Error:", error);
      });
  }


  // Render the UI as a function of component state
  public render() {
    return html`
      <div class="banner"></div>
      <div class="content"></div>
    `;
  }

  private async fetchCityData(): Promise<any> {
    const url =
      "http://localhost:8055/items/city/1?deep[translations][_filter][languages_code][_eq]=de&fields=*,translations.*";

    try {
      const response = await fetch(url);
      if (!response.ok) {
        throw new Error(`HTTP error! status: ${response.status}`);
      }
      const data = await response.json();
      return data;
    } catch (error) {
      console.error("Error fetching city data:", error);
      throw error;
    }
  }
}
