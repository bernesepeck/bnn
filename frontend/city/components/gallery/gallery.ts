import { css, html } from "lit";
import { DefaultComponent } from "../../../components/default.component";
import { customElement, property, state } from "lit/decorators.js";
import "../../../components/content-container/content-container";
import { GalleryModel } from "../../city.models";

@customElement("bnn-gallery")
export class Gallery extends DefaultComponent {
  @property()
  gallery: GalleryModel[] | undefined;

  @state()
  activeImageIndex: number | undefined;

  static get componentStyles() {
    return css`
      .gallery {
        display: grid;
        gap: var(--gutter-m);
        grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
      }
      .gallery-image {
        cursor: pointer;
      }
      .lightbox {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0.5);
        display: flex;
        justify-content: center;
        align-items: center;
        z-index: 1000;
      }
      .lightbox img {
        max-width: 80%;
        max-height: 80%;
      }
      .arrow {
        cursor: pointer;
        position: absolute;
        top: 50%;
        transform: translateY(-50%);
        font-size: 24px;
        color: white;
        z-index: 1010;
      }
      .arrow.left {
        left: 10px;
      }
      .arrow.right {
        right: 10px;
      }
    `;
  }

  render() {
    return html`
      <bnn-content-container>
        <div class="gallery">
          ${this.gallery?.map((e, index) => this.renderImage(e, index))}
        </div>
        ${this.activeImageIndex !== undefined
          ? this.renderLightbox(this.gallery![this.activeImageIndex])
          : ''}
      </bnn-content-container>
    `;
  }

  renderImage(image: GalleryModel, index: number) {
    return html`
      <div class="gallery-image" @click="${() => this.setActiveImage(index)}">
        <img src="http://localhost:8055/assets/${image.directus_files_id}?fit=cover&width=200&height=200&quality=80">
      </div>
    `;
  }

  setActiveImage(index: number) {
    this.activeImageIndex = index;
  }

  renderLightbox(image: GalleryModel) {
    return html`
      <div class="lightbox" @click="${this.clearActiveImage}">
        <span class="arrow left" @click="${this.prevImage}">&#10094;</span>
        <img src="http://localhost:8055/assets/${image.directus_files_id}?quality=80">
        <span class="arrow right" @click="${this.nextImage}">&#10095;</span>
      </div>
    `;
  }

  clearActiveImage() {
    this.activeImageIndex = undefined;
  }

  prevImage(event: MouseEvent) {
    event.stopPropagation(); // Prevent lightbox from closing
    if (this.activeImageIndex !== undefined && this.activeImageIndex > 0) {
      this.activeImageIndex--;
    }
  }

  nextImage(event: MouseEvent) {
    event.stopPropagation(); // Prevent lightbox from closing
    if (this.activeImageIndex !== undefined && this.activeImageIndex < this.gallery!.length - 1) {
      this.activeImageIndex++;
    }
  }
}
