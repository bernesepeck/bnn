import { css, html } from "lit";
import { guard } from 'lit/directives/guard.js';
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

  @state()

  patternCounter: { count: any; target: any; } = { count: 0, target: 0 };

  constructor() {
    super();
    this.patternCounter.target = this.getRandomSmallImagesCount();
  }

  static get componentStyles() {
    return css`
    .gallery {
        display: grid;
        gap: 16px; /* Adjust gap size as needed */
        grid-template-columns: repeat(auto-fill, minmax(200px, 1fr)); /* Creates a more flexible grid */
        grid-auto-flow: dense; /* Ensures that the grid fills in holes */
      }
      .gallery-image {
        cursor: pointer;
        position: relative;
        overflow: hidden;
        transition: transform 0.5s ease;
      }
      .gallery-image.large { 
        grid-column: span 2; 
        grid-row: span 2;
      }
      .gallery-image.small { 
        grid-column: span 1; 
        grid-row: span 1;
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
    return this.config ? html`
      <bnn-content-container>
      ${guard([this.gallery], () => html`
        <div class="gallery">
          ${this.gallery?.map((e, index) => this.renderImage(e, index))}
        </div>
      `)}
        ${this.activeImageIndex !== undefined
          ? this.renderLightbox(this.gallery![this.activeImageIndex])
          : ''}
      </bnn-content-container>
    `: ``;
  }

  renderImage(image: GalleryModel, index: number) {
    // Calculate size class dynamically
    const imageSize = this.getImageSize();
    return html`
      <div class="gallery-image ${imageSize.class}" @click="${() => this.setActiveImage(index)}">
        <img src="${this.config?.apiUrl}/assets/${image.directus_files_id}?fit=cover&width=${imageSize.sizeX}&height=${imageSize.sizeY}&quality=80">
      </div>
    `;
  }

  renderLightbox(image: GalleryModel) {
    return html`
      <div class="lightbox" @click="${this.clearActiveImage}">
        <span class="arrow left" @click="${this.prevImage}">&#10094;</span>
        <img src="${this.config?.apiUrl}/assets/${image.directus_files_id}?quality=80">
        <span class="arrow right" @click="${this.nextImage}">&#10095;</span>
      </div>
    `;
  }

  getRandomSmallImagesCount() {
    // Always returns the same sequence of "random" numbers for each session
    return Math.floor(Math.random() * 3) + 2;
  }

  getImageSize() {
    // Define the size mapping for large and small images
    const sizeMapping = {
      'large': { class: 'large', sizeX: '400', sizeY: '400' },
      'small': { class: 'small', sizeX: '200', sizeY: '200' }
    };
  
    let imageSize;
  
    // If count is 0, we are placing a large image
    if (this.patternCounter.count === 0) {
      imageSize = sizeMapping['large'];
      // Set the next target for small images
      this.patternCounter.target = Math.floor(Math.random() * 3) + 2;
      this.patternCounter.count = 1; // Reset the count to start counting small images
    } else {
      imageSize = sizeMapping['small'];
      // Increment the count and check if we reached the target number of small images
      if (++this.patternCounter.count > this.patternCounter.target) {
        this.patternCounter.count = 0; // Reset the count for the next large image
      }
    }
  
    return imageSize;
  }

  setActiveImage(index: number) {
    this.activeImageIndex = index;
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