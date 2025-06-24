import { createDirectus, readItems, rest } from "@directus/sdk";
import { AppConfig } from "../config";

export interface TranslationModel {
  key: string;
  text: string;
}

export class TranslationService {
  private static instance: TranslationService;
  private client;
  private langFilter;
  private translations: TranslationModel[] | undefined;
  private fetchPromise: Promise<void> | null = null;

  constructor(config: AppConfig) {
    this.client = createDirectus(config.apiUrl).with(rest());
  }

  public static getInstance(config: AppConfig): TranslationService {
    if (!TranslationService.instance) {
      TranslationService.instance = new TranslationService(config);
    }
    return TranslationService.instance;
  }

  public async fetchTranslations(forceRefetch = false) {
    if (forceRefetch) {
      this.fetchPromise = null;
      this.translations = undefined;
    }

    if (this.fetchPromise) {
      return this.fetchPromise;
    }
    
    this.fetchPromise = this.loadTranslations();
    await this.fetchPromise;
  }

  private async loadTranslations() {
    const languageCode = sessionStorage.getItem("selectedLanguage") || navigator.language;
    this.langFilter = {
      translations: {
        _filter: {
          languages_code: { _eq: languageCode },
        },
      },
    };
    try {
      console.log("Loading general strings...");
      const response = await this.client.request(
        readItems("GeneralTranslations", {
          fields: ["key", "translations.text"],
          deep: {
            ...this.langFilter,
          },
        })
      );
      this.translations = response.map((t) => ({
        key: t.key,
        text: t.translations[0]?.text,
      }));
    } catch (error) {
      console.error("Failed to load translations:", error);
      // In case of an error, reset the promise to allow for a retry.
      this.fetchPromise = null; 
    }
  }

  getTranslations(): TranslationModel[] {
    return this.translations ?? [];
  }

  getTranslation(key: string): string {
    const translation = this.translations?.find((t) => t.key === key);
    if (translation) {
      return translation.text;
    } else {
      return ""; 
    }
  }
}