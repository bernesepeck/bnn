import { AppConfig, getConfig } from './config'; // Adjust the import path as needed

export class ConfigService {
  private static instance: ConfigService;
  private config!: AppConfig;

  private constructor() {}

  static getInstance(): ConfigService {
    if (!ConfigService.instance) {
      ConfigService.instance = new ConfigService();
    }
    return ConfigService.instance;
  }

  async loadConfig(): Promise<void> {
    try {
      const config = await getConfig();
      this.config = config;
    } catch (error) {
      console.error("Failed to load config:", error);
    }
  }

  getConfig(): AppConfig {
    if (!this.config) {
      throw new Error("Config has not been loaded.");
    }
    return this.config;
  }
}