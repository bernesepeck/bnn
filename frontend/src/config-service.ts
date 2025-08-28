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
      console.log("Loading config.json...");
      const response = await fetch("/config.json");
      if (!response.ok) {
        throw new Error(`Failed to fetch config: ${response.statusText}`);
      }
      const responseJson = await response.json();
      console.log("Raw config.json response:", responseJson);
      
      // Parse backend and frontend URLs from comma-separated strings
      const backendUrls = responseJson.backendUrls ? responseJson.backendUrls.split(',').map((url: string) => url.trim()) : [];
      const frontendUrls = responseJson.frontendUrls ? responseJson.frontendUrls.split(',').map((url: string) => url.trim()) : [];
      
      console.log("Parsed URLs:", { backendUrls, frontendUrls });
      
      // Determine the appropriate backend URL based on current domain
      const currentDomain = window.location.origin;
      const apiUrl = this.selectBackendUrl(currentDomain, frontendUrls, backendUrls);
      
      this.config = {
        apiUrl: apiUrl,
        environment: responseJson.environment || "",
        backendUrls: backendUrls,
        frontendUrls: frontendUrls,
      };
      
      console.log("Final config:", this.config);
    } catch (error) {
      console.error("Failed to load config.json:", error);
      // Set a default/fallback config to prevent the app from crashing
      this.config = {
        apiUrl: "https://api.beimnamennennen.ch", // Default API URL
        environment: "production", // Default environment
      };
      console.log("Using fallback config:", this.config);
    }
  }

  private selectBackendUrl(currentDomain: string, frontendUrls: string[], backendUrls: string[]): string {
    console.log('Selecting backend URL:', { currentDomain, frontendUrls, backendUrls });
    
    // If no URLs provided, use fallback
    if (!frontendUrls.length || !backendUrls.length) {
      console.log('Using fallback URL (no URLs provided)');
      return backendUrls[0] || "https://api.beimnamennennen.ch";
    }

    // Find exact match first
    const domainIndex = frontendUrls.findIndex(url => url === currentDomain);
    console.log('Exact domain index:', domainIndex);
    
    if (domainIndex !== -1 && domainIndex < backendUrls.length) {
      const selectedUrl = backendUrls[domainIndex];
      console.log('Selected backend URL by exact match:', selectedUrl);
      return selectedUrl;
    }
    
    // Try to find a partial match for the domain name
    const currentHost = new URL(currentDomain).hostname;
    console.log('Current hostname:', currentHost);
    
    for (let i = 0; i < frontendUrls.length; i++) {
      const frontendHost = new URL(frontendUrls[i]).hostname;
      // Remove www prefix for comparison
      const normalizedCurrent = currentHost.replace(/^www\./, '');
      const normalizedFrontend = frontendHost.replace(/^www\./, '');
      
      if (normalizedCurrent === normalizedFrontend && i < backendUrls.length) {
        const selectedUrl = backendUrls[i];
        console.log('Selected backend URL by hostname match:', selectedUrl);
        return selectedUrl;
      }
    }
    
    // Special handling for Fly.dev domains
    if (currentDomain.includes('.fly.dev')) {
      const flyBackend = backendUrls.find(url => url.includes('.fly.dev'));
      if (flyBackend) {
        console.log('Selected fly.dev backend URL:', flyBackend);
        return flyBackend;
      }
    }
    
    // Domain-specific fallbacks
    if (currentHost.includes('beimnamennennen') || currentHost.includes('lesnommerparleurnom')) {
      // For production domains, prefer the API subdomain
      const productionBackend = backendUrls.find(url => 
        url.includes('api.beimnamennennen') || url.includes('api.lesnommerparleurnom')
      );
      if (productionBackend) {
        console.log('Selected production backend URL:', productionBackend);
        return productionBackend;
      }
    }
    
    // Fallback to first backend URL, but prefer HTTPS
    const httpsBackend = backendUrls.find(url => url.startsWith('https://')) || backendUrls[0];
    const fallbackUrl = httpsBackend || "https://api.beimnamennennen.ch";
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