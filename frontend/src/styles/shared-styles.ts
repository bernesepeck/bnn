import { css } from "lit";

export default css`
  :host {
    --color-primary: #522015;
    --color-highlight: #636e91;
    --color-grey: #dadfed;
    --color-secondary: #1e2148;
    --color-white: white;
    --color-black: black;
    --content-padding: 10%;
    --font-size-s: 16px;
    --font-size-m: 20px;
    --font-size-l: 28px;
    --font-size-xl: 60px;
    --header-size: 400px;
    --gutter-s: 16px;
    --gutter-m: 32px;
    --breakpoint-medium: 768px;
    --breakpoint-large: 1024px;
  }
  * {
    font-family: 'Libre Franklin', sans-serif;
    font-size: 18px;
  }
  h1,
  h2,
  h3,
  h4,
  h5 {
    color: var(--color-primary);
    text-transform: uppercase;
    font-weight: normal;
  }
  h3 {
    font-size: var(--font-size-m);
    color: black;
  }
  h2 {
    font-size: var(--font-size-l);
  }
  h1 {
    font-size: var(--font-size-xl);
  }
  input,
  textarea {
    padding: 16px;
    background-color: var(--color-grey);
    border: none;
  }
  input:focus,
  textarea:focus {
    outline-color: var(--color-primary);
  }
  button {
    border: none;
    padding: 16px;
    max-width: max-content;
    background-color: var(--color-primary);
    color: var(--color-white);
    opacity: 1;
    cursor: pointer;
    text-transform: uppercase;
    &:hover {
      font-weight: bold;
    }
  }
  a {
    text-underline-offset: 2px;
    color: var(--color-primary);
    width: max-content;
    &:hover {
      background-color: var(--color-primary);
      color: white;
    }
  }
  @media screen and (max-width: 480px) {
    //variables for mobile

  }
  @media screen and (max-width: 768px) {
    :host {
      --header-size: auto;
      --gutter-s: 8px;
      --gutter-m: 16px;
      --font-size-l: 1.5rem;
      --font-size-xl: 4rem;
      --content-padding: 16px;
    }
  }
`;
