export class City extends HTMLElement {
    constructor() {
        super();
    }
    connectedCallback() {
        console.log('iwashere')
    }

}

customElements.define("bnn-city",City);