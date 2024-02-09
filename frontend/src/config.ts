// config.ts
// Inform TypeScript about the `process.env` variables.
declare var process: {
    env: {
        NODE_ENV: string;
        PARCEL_API_URL?: string;
    }
};

// Define a type for your configuration for better type-checking.
type AppConfig = {
    apiUrl: string;
};

// Function to load the configuration based on the environment.
async function getConfig(): Promise<AppConfig> {
    if (process.env.NODE_ENV === 'development') {
        console.log("NODE_ENV: ", process.env.NODE_ENV)
        console.log("PARCEL_API_URL: ", process.env.PARCEL_API_URL)
        // In development, use environment variables.
        return {
            apiUrl: process.env.PARCEL_API_URL || '',
        };
    } else {
        // In other environments, fetch the config.json.
        const response = await fetch('/config.json');
        if (!response.ok) {
            throw new Error(`Failed to load configuration: ${response.status}`);
        }
        const config = await response.json();
        return {
            apiUrl: config.apiUrl || '',
        };
    }
}

export {
    getConfig, 
    AppConfig
}
