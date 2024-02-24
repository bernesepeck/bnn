import { html, css } from 'lit';
import { customElement, property, state } from 'lit/decorators.js';
import { DefaultComponent } from '../default.component';
import { classMap } from 'lit/directives/class-map';

@customElement('bnn-language-selector')
export class LanguageSelector extends DefaultComponent {
    @state()
    private language: string;

    @property()
    private darkMode = false;

    constructor() {
        super();
        this.language = this.getInitialLanguage();
    }

    static get componentStyles() {
        return css`
            .language-wrapper {
                display: flex;
                gap: 8px;
                color: var(--color-white);
                text-transform: uppercase;
                & .selected {
                    background-color: var(--color-primary);
                }
                & span {
                    cursor: pointer;
                }
            }
            .dark-mode {
                & .selected {
                    background-color: var(--color-secondary);
                }
            }
        `;
    }

    render() {
        return html`
            <li class="${classMap({'language-wrapper': true, 'dark-mode': this.darkMode})}">
                <span class="${classMap({selected: this.language === 'de'})}" @click="${() => this.handleLanguageChange('de')}">DE</span>
                <span class="${classMap({selected: this.language === 'fr'})}" @click="${() => this.handleLanguageChange('fr')}">FR</span>
            </li>
        `;
    }

    handleLanguageChange(value: 'de' | 'fr') {
        this.language = value;
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