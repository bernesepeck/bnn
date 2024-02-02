import {css} from 'lit';

export default css`
    :host {
        --color-primary: #940D0D;
        --color-highlight: #efe9b0;
        --color-grey: #f3f3f3;
        --content-padding: 10%;
        --font-size-s: 16px;
        --font-size-m: 20px;
        --font-size-l: 28px;
        --font-size-xl: 40px;
        --font-size-xxl: 48px;
        --header-size: 400px;
        --gutter-s: 16px;
        --gutter-m: 32px;
        --breakpoint-medium: 768px;
        --breakpoint-large: 1024px;
    }
    * {
    font-family: 'Roboto', sans-serif;
    font-size: 18px;
    }
    h1, h2, h3, h4, h5 {
        color: var(--color-primary);

    }
    h3 {
        font-size: var(--font-size-m);
    }
    h2 {
        font-size: var(--font-size-xl);
    }
    h1 {
        font-size: var(--font-size-xxl);
    }
    @media screen and (max-width: 480px) {
        //variables for mobile
    }
    @media screen and (max-width: 768px) {
        :host {
            --header-size: auto;
            --gutter-s: 8px;
            --gutter-m: 16px;
        }
    }
`;