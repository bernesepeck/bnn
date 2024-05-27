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
                list-style-type: none;
                & .selected {
                    background-color: var(--color-primary);
                }
                & li {
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
            <ul class="${classMap({'language-wrapper': true, 'dark-mode': this.darkMode})}">
                <li class="${classMap({selected: this.language === 'de'})}" @click="${() => this.handleLanguageChange('de')}">DE</li>
                <li class="${classMap({selected: this.language === 'fr'})}" @click="${() => this.handleLanguageChange('fr')}">FR</li>
            </ul>
        `;
    }

    handleLanguageChange(value: 'de' | 'fr') {
        this.language = value;
        sessionStorage.setItem('selectedLanguage', this.language);
        location.reload()
    }

    getInitialLanguage(): string {
        // Return selectedLanguage if in storage
        const storedLanguage = sessionStorage.getItem('selectedLanguage');
        if (storedLanguage) {
            return storedLanguage;
        }
        
        // Get browser language, if its de or fr store that as selectedLanguage, else default to de
        const browserLanguage = navigator.language.slice(0, 2);
        const selectedLanguage = (browserLanguage === 'de' || browserLanguage === 'fr') ? browserLanguage : 'de';
        sessionStorage.setItem('selectedLanguage', selectedLanguage);

        return selectedLanguage;
    }
}