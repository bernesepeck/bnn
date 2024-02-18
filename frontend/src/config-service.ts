export type AppConfig = {
  apiUrl: string;
};

declare var process: {
  env: {
    NODE_ENV: string;
    PARCEL_API_URL?: string;
  };
};

export class ConfigService {
  private static instance: ConfigService;
  private config!: AppConfig;

  public static getInstance(): ConfigService {
    if (!ConfigService.instance) {
      ConfigService.instance = new ConfigService();
    }
    return ConfigService.instance;
  }

  public async fetchConfig() {
    if (!this.config) {
      if (process.env.NODE_ENV !== "development") {
        // In development, use environment variables directly.
        this.config = {
          apiUrl: process.env.PARCEL_API_URL || "",
        };
      } else {
        // In production or other environments, fetch the config.json.
        try {
          const response = await fetch("/config.json");
          const responseJson = await response.json();
          this.config = {
            apiUrl: responseJson.apiUrl || "",
          };
        } catch (error) {
          console.error("Failed to load config:", error);
        }
      }
    }
  }

  public getConfig(): AppConfig {
    return this.config;
  }
}
