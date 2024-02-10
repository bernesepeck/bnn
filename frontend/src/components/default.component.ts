import { TranslationService, translationLoadedEvent } from "../services/translation.service";
import sharedStyles from "../styles/shared-styles";
import { CSSResult, LitElement, css } from "lit";

export class DefaultComponent extends LitElement {
  static componentStyles: CSSResult = css``;
  translationLoaded = false

  static get styles() {
    return [sharedStyles, this.componentStyles];
  }

  constructor() {
    super();
    document.addEventListener(translationLoadedEvent, () => {
      this.translationLoaded = true
      this.requestUpdate()
    });
  }

  /**
   * Return translation from translation service with given key
   * @param key 
   * @returns 
   */
  t(key: string) {
    if (this.translationLoaded) {
      return TranslationService.getInstance().getTranslation(key)
    }
    return ""
  }
}
