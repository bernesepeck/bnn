import { createDirectus, readItems, rest } from "@directus/sdk";
import { ConfigService } from "../config-service";

export interface TranslationModel {
    key: string, 
    text: string
}

export const translationLoadedEvent = 'translation-loaed';

export class TranslationService {
    private static instance: TranslationService;
    public translationLoaded = false;
    private client;
    private langFilter;
    private configService = ConfigService.getInstance();
    private config = this.configService.getConfig();
    private translations: TranslationModel[] = [];

    constructor() {
        this.client = createDirectus(this.config.apiUrl).with(rest());
        const languageCode = sessionStorage.getItem('selectedLanguage') || 'de';
        this.langFilter = {
            translations: {
                _filter: {
                    languages_code: {_eq: languageCode}
                }
            }
        }
    }

    public static getInstance(): TranslationService {
        if (!TranslationService.instance) {
            TranslationService.instance = new TranslationService();
        }
        return TranslationService.instance;
    }

    async getTranslations() {
        const response = await this.client.request(readItems('GeneralTranslations', {
            fields: [
                'key',
                'translations.text'
            ],
            deep: {
                ...this.langFilter,
            }
        }))
        
        this.translations = response.map(t => ({key: t.key, text: t.translations[0].text}))
        this.translationLoaded = true;
        document.dispatchEvent(new CustomEvent(translationLoadedEvent))
    }

    getTranslation(key: string): string {
        if(!this.translations.length) {
            return '';
        }
        const translation = this.translations.find(t => t.key === key);
        if(translation) {
            return translation.text;
        } else {
            console.error('translation doesnt exist')
            return '';
        }
    }
    

}