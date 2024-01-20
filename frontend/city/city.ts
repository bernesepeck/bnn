class City extends HTMLElement {
    constructor() {
        super();
        console.log('constructor')
    }
    connectedCallback() {
        console.log('iwashere')
    }

}

customElements.define("city",City);