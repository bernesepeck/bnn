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
      .gallery-image img {
        object-fit: cover;
        width: 100%;
        height: 100%;
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
        display: flex;
        justify-content: center;
        align-items: center;
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0.5);
        z-index: 1000;
      }
      
      .lightbox-container {
        display: flex; /* This will be the direct container for the image and navigation areas */
        max-width: 80%;
        max-height: 80%;
        width: auto; /* Adjust based on your needs */
        height: auto; /* Adjust based on your needs */
        position: relative; /* To position arrows */
      }
      
      .lightbox img {
        object-fit: contain;
        width: 100%; /* Let it fill the container */
        height: auto; /* Maintain aspect ratio */
      }
      
      .lightbox-left, .lightbox-right {
        position: absolute;
        top: 0;
        bottom: 0;
        width: 50%; /* Or any desired width */
        cursor: pointer;
        background-color: rgba(0, 0, 0, 0.2); /* For visibility, adjust as needed */
      }
      
      .lightbox-left {
        left: -50%;
      }
      
      .lightbox-right {
        right: -50%;
      }
      
      .arrow {
        position: fixed;
        cursor: pointer;
        top: 50%;
        transform: translateY(-50%);
        font-size: 24px;
        color: white;
        z-index: 1010;
      }
      .arrow.left {
        left: 4%;
      }
      .arrow.right {
        right: 4%;
      }
    `;
  }

  render() {
    return this.config ? html`
      <bnn-content-container .wide=${true}>
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
        <div class="lightbox-container">
          <div class="lightbox-left" @click="${this.prevImage}">
            <span class="arrow left">&#10094;</span>
          </div>
          <img src="${this.config?.apiUrl}/assets/${image.directus_files_id}?quality=80">
          <div class="lightbox-right" @click="${this.nextImage}">
            <span class="arrow right">&#10095;</span>
          </div>
        </div>
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