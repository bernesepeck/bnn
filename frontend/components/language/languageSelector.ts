import { LitElement, html, css } from 'lit';
import { customElement, state } from 'lit/decorators.js';

@customElement('language-selector')
export class LanguageSelector extends LitElement {
    @state()
    private language: string;

    constructor() {
        super();
        this.language = this.getInitialLanguage();
    }

    static get styles() {
        return css`
            select {
                padding: 5px;
                margin: 10px;
            }
        `;
    }

    render() {
        return html`
            <div>
                <select @change="${this.handleLanguageChange}">
                    <option value="de" ?selected="${this.language === 'de'}">Deutsch</option>
                    <option value="fr" ?selected="${this.language === 'fr'}">Français</option>
                </select>
            </div>
        `;
    }

    handleLanguageChange(e: Event) {
        const select = e.target as HTMLSelectElement;
        this.language = select.value;
        sessionStorage.setItem('selectedLanguage', this.language);
        location.reload()
    }

    getInitialLanguage(): string {
        const storedLanguage = sessionStorage.getItem('selectedLanguage');
        if (storedLanguage) {
            return storedLanguage;
        }

        const browserLanguage = navigator.language.slice(0, 2);
        return browserLanguage === 'de' || browserLanguage === 'fr' ? browserLanguage : 'de';
    }
}