import {
  createDirectus,
  readSingleton,
  rest,
} from "@directus/sdk";
import { AppConfig } from "./config";

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
    const languageCode = sessionStorage.getItem("selectedLanguage") || "de";
    this.langFilter = {
      translations: {
        _filter: {
          languages_code: { _eq: languageCode },
        },
      },
    };
    const response = await this.client.request(
      readSingleton("home", {
        fields: ["translations.*"],
        deep: {
          ...this.langFilter,
        },
      })
    );
    const translatedResult = response.translations[0];
    const home:HomeModel = {
        titel: translatedResult.titel,
        subtitle1: translatedResult.subtitle1,
        subtitle2: translatedResult.subtitle2,
        description: translatedResult.description,
        contentbox: translatedResult.contentbox?.map((content:any) => ({
            title: content.title,
            description: content.description,
            width: Number(content.width)
        }))
    }
    return home;
  }
}
