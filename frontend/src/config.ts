// config.ts
// Inform TypeScript about the `process.env` variables.
declare var process: {
    env: {
        NODE_ENV: string;
        PARCEL_API_URL?: string;
    }
};

type AppConfig = {
    apiUrl: string;
};

// Function to load the configuration based on the environment.
async function fetchConfig(): Promise<AppConfig> {
    if (process.env.NODE_ENV === 'development') {
        // In development, use environment variables.
        return {
            apiUrl: process.env.PARCEL_API_URL || '',
        };
    } else {
        // In other environments, fetch the config.json.
        const response = await fetch('/config.json');
        const config = await response.json();
        console.log("fetchConfig: config", config)
        return {
            apiUrl: config.apiUrl || '',
        };
    }
}

export {
    fetchConfig, 
    AppConfig
}
