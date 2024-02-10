import { ConfigService } from "./config-service";
import {
  createDirectus,
  readCollection,
  readItem,
  readItems,
  readSingleton,
  rest,
} from "@directus/sdk";

export interface HomeModel {
  titel: string;
  description: string;
  contentbox: { title: string; description: string; width: 1 | 0.5 }[];
}

export class HomeService {
  private client;
  private langFilter;
  private configService = ConfigService.getInstance();
  private config = this.configService.getConfig();

  constructor() {
    this.client = createDirectus(this.config.apiUrl).with(rest());
    const languageCode = sessionStorage.getItem("selectedLanguage") || "de";
    this.langFilter = {
      translations: {
        _filter: {
          languages_code: { _eq: languageCode },
        },
      },
    };
  }

  async getHome(): Promise<HomeModel> {
    const response = await this.client.request(
      readSingleton("home", {
        fields: ["translations.*"],
      })
    );
    const translatedResult = response.translations[0];
    const home:HomeModel = {
        titel: translatedResult.titel,
        description: translatedResult.description,
        contentbox: translatedResult.contentbox.map((content:any) => ({
            title: content.title,
            description: content.description,
            width: Number(content.width)
        }))
    } 
    return home;
  }
}
