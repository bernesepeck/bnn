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
  private fetchPromise: Promise<void> | null = null;

  public static getInstance(): ConfigService {
    if (!ConfigService.instance) {
      ConfigService.instance = new ConfigService();
    }
    return ConfigService.instance;
  }

  public async fetchConfig() {
    if (this.config) {
      return;
    }
    if (!this.fetchPromise) {
      this.fetchPromise = this.loadConfig();
    }
    await this.fetchPromise;
  }

  private async loadConfig() {
    if (process.env.NODE_ENV === "development") {
      this.config = {
        apiUrl: process.env.PARCEL_API_URL || "",
      };
    } else {
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

  public getConfig(): AppConfig {
    return this.config;
  }
}

