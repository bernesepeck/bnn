import {
  createDirectus,
  readSingleton,
  rest,
} from "@directus/sdk";
import { AppConfig } from "./config-service";

export interface HomeModel {
  titel: string;
  subtitle1: string;
  subtitle2: string;
  description: string;
  contentbox: { title: string; description: string; width: 1 | 0.5 }[];
}

export class HomeService {
  private client;
  private langFilter;

  constructor(config: AppConfig) {
    this.client = createDirectus(config.apiUrl).with(rest());
  }

  async getHome(): Promise<HomeModel> {
    const languageCode = sessionStorage.getItem("selectedLanguage") || navigator.language;
    this.langFilter = {
      translations: {
        _filter: {
          languages_code: { _eq: languageCode },
        },
      },
    };
    
    try {
      const response = await this.client.request(
        readSingleton("home", {
          fields: ["translations.*"],
          deep: {
            ...this.langFilter,
          },
        })
      );
      
      if (!response || !response.translations || !Array.isArray(response.translations) || response.translations.length === 0) {
        throw new Error("No home translations found");
      }
      
      const translatedResult = response.translations[0];
      
      if (!translatedResult) {
        throw new Error("No translated result found");
      }
      
      const home: HomeModel = {
        titel: translatedResult.titel || "",
        subtitle1: translatedResult.subtitle1 || "",
        subtitle2: translatedResult.subtitle2 || "",
        description: translatedResult.description || "",
        contentbox: translatedResult.contentbox?.map((content: any) => ({
          title: content.title || "",
          description: content.description || "",
          width: Number(content.width) || 1
        })) || []
      };
      
      return home;
    } catch (error) {
      console.error("Error fetching home data:", error);
      throw error;
    }
  }
}
