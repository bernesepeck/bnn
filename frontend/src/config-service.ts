export type AppConfig = {
  apiUrl: string;
  environment: string;
};


export class ConfigService {
  private static instance: ConfigService;
  private config: AppConfig | null = null;
  private fetchPromise: Promise<void> | null = null;

  public static getInstance(): ConfigService {
    if (!ConfigService.instance) {
      ConfigService.instance = new ConfigService();
    }
    return ConfigService.instance;
  }

  public async fetchConfig(): Promise<void> {
    // If config is already fetched, do nothing.
    if (this.config) {
      return;
    }

    // If a fetch is already in progress, wait for it to complete.
    if (this.fetchPromise) {
      return this.fetchPromise;
    }

    // Start the fetch operation.
    this.fetchPromise = this.loadConfig();
    await this.fetchPromise;
  }

  private async loadConfig(): Promise<void> {
    try {
      const response = await fetch("/config.json");
      if (!response.ok) {
        throw new Error(`Failed to fetch config: ${response.statusText}`);
      }
      const responseJson = await response.json();
      this.config = {
        apiUrl: responseJson.apiUrl || "",
        environment: responseJson.environment || "",
      };
    } catch (error) {
      console.error("Failed to load config.json:", error);
      // Set a default/fallback config to prevent the app from crashing
      this.config = {
        apiUrl: "localhost:8055", // Default API URL
        environment: "development", // Default environment
      };
    }
  }

  public getConfig(): AppConfig {
    if (!this.config) {
        console.warn("Config not loaded yet. Returning fallback empty config.");
        return { apiUrl: "", environment: "" };
    }
    return this.config;
  }
}