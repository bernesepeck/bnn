import { translationLoadedEvent } from "../services/translation.service";
import sharedStyles from "../styles/shared-styles";
import { CSSResult, LitElement, css } from "lit";

export class DefaultComponent extends LitElement {
  static componentStyles: CSSResult = css``;

  static get styles() {
    return [sharedStyles, this.componentStyles];
  }

  constructor() {
    super();
    document.addEventListener(translationLoadedEvent, () => this.requestUpdate());
  }
}
