import * as Sentry from "@sentry/browser";
import { AppConfig } from "../config-service";

export function initializeSentry(config: AppConfig) {
  Sentry.init({
    dsn: "https://b2190aac5c941a081b00e8f2ae396e9d@o4506940162834432.ingest.us.sentry.io/4506940182560768",
    environment: config.environment,
    integrations: [
      Sentry.browserTracingIntegration(),
      Sentry.replayIntegration({
        maskAllText: false,
        blockAllMedia: false,
      }),
    ],
    tracesSampleRate: 0.2,
    tracePropagationTargets: ["localhost", /^https:\/\/beimnamennennen\.ch\/api/],
    replaysSessionSampleRate: 0.1,
    replaysOnErrorSampleRate: 1.0,
  })
}