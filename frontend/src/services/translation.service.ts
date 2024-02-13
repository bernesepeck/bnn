import { createDirectus, readItems, rest } from "@directus/sdk";
import { AppConfig } from "../config";

export interface TranslationModel {
    key: string, 
    text: string
}

export class TranslationService {
    private static instance: TranslationService;
    public translationsLoaded: boolean = false;
    private client;
    private langFilter;
    private translations: TranslationModel[] = [];

    constructor(config: AppConfig) {
        this.client = createDirectus(config.apiUrl).with(rest());
        console.log('constructor', config)
        const languageCode = sessionStorage.getItem('selectedLanguage') || 'de';
        this.langFilter = {
            translations: {
                _filter: {
                    languages_code: {_eq: languageCode}
                }
            }
        }
    }

    public static getInstance(config: AppConfig): TranslationService {
        if (!TranslationService.instance) {
            TranslationService.instance = new TranslationService(config);
        }
        return TranslationService.instance;
    }

    async fetchTranslations() {
        this.translationsLoaded = true;
        const response = await this.client.request(readItems('GeneralTranslations', {
            fields: [
                'key',
                'translations.text'
            ],
            deep: {
                ...this.langFilter,
            }
        })).catch(() => this.translationsLoaded = false)
        
        this.translations = response.map(t => ({key: t.key, text: t.translations[0].text}))
    }
    
    getTranslations(): TranslationModel[] {
        return this.translations;
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