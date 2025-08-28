export type AppConfig = {
  apiUrl: string;
  environment: string;
  backendUrls?: string[];
  frontendUrls?: string[];
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
      
      // Parse backend and frontend URLs from comma-separated strings
      const backendUrls = responseJson.backendUrls ? responseJson.backendUrls.split(',').map((url: string) => url.trim()) : [];
      const frontendUrls = responseJson.frontendUrls ? responseJson.frontendUrls.split(',').map((url: string) => url.trim()) : [];
      
      // Determine the appropriate backend URL based on current domain
      const currentDomain = window.location.origin;
      const apiUrl = this.selectBackendUrl(currentDomain, frontendUrls, backendUrls);
      
      this.config = {
        apiUrl: apiUrl,
        environment: responseJson.environment || "",
        backendUrls: backendUrls,
        frontendUrls: frontendUrls,
      };
    } catch (error) {
      console.error("Failed to load config.json:", error);
      // Set a default/fallback config to prevent the app from crashing
      this.config = {
        apiUrl: "http://localhost:8055", // Default API URL
        environment: "development", // Default environment
      };
    }
  }

  private selectBackendUrl(currentDomain: string, frontendUrls: string[], backendUrls: string[]): string {
    console.log('Selecting backend URL:', { currentDomain, frontendUrls, backendUrls });
    
    // If no URLs provided, use fallback
    if (!frontendUrls.length || !backendUrls.length) {
      console.log('Using fallback URL (no URLs provided)');
      return backendUrls[0] || "http://localhost:8055";
    }

    // Find the index of the current domain in frontend URLs
    const domainIndex = frontendUrls.findIndex(url => url === currentDomain);
    console.log('Domain index:', domainIndex);
    
    // If current domain is found and corresponding backend exists, use it
    if (domainIndex !== -1 && domainIndex < backendUrls.length) {
      const selectedUrl = backendUrls[domainIndex];
      console.log('Selected backend URL by index:', selectedUrl);
      return selectedUrl;
    }
    
    // Special handling for Fly.dev domains
    if (currentDomain.includes('.fly.dev')) {
      // Look for corresponding fly.dev backend URL
      const flyBackend = backendUrls.find(url => url.includes('.fly.dev'));
      if (flyBackend) {
        console.log('Selected fly.dev backend URL:', flyBackend);
        return flyBackend;
      }
    }
    
    // Fallback to first backend URL
    const fallbackUrl = backendUrls[0] || "http://localhost:8055";
    console.log('Using fallback URL (no match found):', fallbackUrl);
    return fallbackUrl;
  }

  public getConfig(): AppConfig {
    if (!this.config) {
        console.warn("Config not loaded yet. Returning fallback empty config.");
        return { apiUrl: "", environment: "" };
    }
    return this.config;
  }
}