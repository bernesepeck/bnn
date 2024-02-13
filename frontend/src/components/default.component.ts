import { LitElement, css, CSSResult } from "lit";
import { ConfigService, AppConfig } from "../config-service";
import { TranslationModel, TranslationService } from "../services/translation.service";
import sharedStyles from "../styles/shared-styles";

export class DefaultComponent extends LitElement {
  static componentStyles: CSSResult = css``;
  config!: AppConfig
  translations!: TranslationModel[]
  translationService!: TranslationService
  configService!: ConfigService

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
        //await this.initializeTranslations();
        this.requestUpdate();
    } catch (error) {
        console.error("Error initializing component:", error);
    }
}

  async initializeConfig() {
    this.configService = ConfigService.getInstance();
    if (!this.configService.configLoaded) {
      await this.configService.fetchConfig();
    }
    this.config = this.configService.getConfig()
    console.log('config', this.config)
    this.requestUpdate()
  }

  async initializeTranslations() {
    this.translationService = TranslationService.getInstance(this.config);
    if (!this.translationService.translationsLoaded) {
      await this.translationService.fetchTranslations();
    }
    this.translations = this.translationService.getTranslations()
  }
  

  t(key: string) {
    return this.translationService?.getTranslation(key)
  }

  afterComponentInitialized() {}
}
