import { LitElement, css, CSSResult } from "lit";
import { ConfigService, AppConfig } from "../config-service";
import {
  TranslationModel,
  TranslationService,
} from "../services/translation.service";
import sharedStyles from "../styles/shared-styles";

export class DefaultComponent extends LitElement {
  static componentStyles: CSSResult = css``;
  config!: AppConfig;
  translations!: TranslationModel[];
  translationService!: TranslationService;
  configService!: ConfigService;

  static get styles() {
    return [sharedStyles, this.componentStyles];
  }

  connectedCallback() {
    super.connectedCallback();
    this.initializeComponent().then(() => this.afterComponentInitialized());
  }

  async initializeComponent() {
    try {
      await this.initializeConfig();
      await this.initializeTranslations();
      this.requestUpdate();
    } catch (error) {
      console.error("Error initializing component:", error);
    }
    return true;
  }

  /**
   * Gets the config which is needed for all the API requests
   */
  async initializeConfig() {
    this.configService = ConfigService.getInstance();
    await this.configService.fetchConfig();
    this.config = this.configService.getConfig();
    console.log("initializeConfig: config", this.config)
  }

  /**
   * Gets the translations
   */
  async initializeTranslations() {
    this.translationService = TranslationService.getInstance(this.config);
    await this.translationService.fetchTranslations();
    this.translations = this.translationService.getTranslations();
  }

  /**
   * Returns translation of a given key from the general translations
   * @param key of needed translation
   * @returns the translation
   */
  t(key: string) {
    return this.translationService?.getTranslation(key);
  }

  /**
   * Is called when config and translations are fetched. So any requets to apis should be done in this lifecycle hook. 
   */
  afterComponentInitialized() {}
}
