import { css, html } from "lit";
import { DefaultComponent } from "../../../components/default.component";
import { customElement, property } from "lit/decorators.js";
import "../../../components/content-container/content-container";
import { GalleryModel } from "../../city.models";

@customElement("bnn-gallery")
export class Gallery extends DefaultComponent {
  @property()
  gallery: GalleryModel[] | undefined;

  static get componentStyles() {
    return css`
        .gallery {
            display: grid;
            gap: var(--gutter-m);
            grid-template-columns: repeat( auto-fit, minmax(200px, 1fr) );
        }
    `
  }

  render() {
    return html`
      <bnn-content-container>
        <div class="gallery">
          ${this.gallery?.map((e) => this.renderImage(e))}
        </div>
      </bnn-content-container>
    `;
  }

  renderImage(image: GalleryModel) {
    return html`
      <div class="gallery-image">
        <img src="http://localhost:8055/assets/${image.directus_files_id}?fit=cover&width=200&height=200&quality=80"</img>
      </div>
    `;
  }
}
