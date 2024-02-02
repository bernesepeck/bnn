import {css} from 'lit';

export default css`
    :host {
        --color-primary: #940D0D;
        --color-highlight: #efe9b0;
        --color-grey: #e3e3e3;
        --content-padding: 10%;
    }
    * {
    font-family: 'Roboto', sans-serif;
    font-size: 18px;
    }
    h1, h2, h3, h4, h5 {
        color: var(--color-primary);

    }
    h2 {
        font-size: 40px;
    }
    h1 {
        font-size: 48px;
    }
`;