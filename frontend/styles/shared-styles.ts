import { css } from "lit";

export default css`
  :host {
    --color-primary: #940d0d;
    --color-highlight: #efe9b0;
    --color-grey: #f3f3f3;
    --color-secondary: #121351;
    --color-white: white;
    --color-black: black;
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
    font-family: "Roboto", sans-serif;
    font-size: 18px;
  }
  h1,
  h2,
  h3,
  h4,
  h5 {
    color: var(--color-primary);
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
    max-width: 200px;
    background-color: var(--color-primary);
    color: var(--color-white);
    opacity: 0.9;
    cursor: pointer;
    &:hover {
      opacity: 1;
    }
  }
  a {
    position: relative;
    overflow: hidden;
    text-decoration: none;
    color: var(--color-primary);
    font-weight: bold;
    &::after {
      content: "";
      background: rgba(200, 130, 130, 0.4);
      position: absolute;
      left: 12px;
      bottom: -6px;
      width: calc(100% - 8px);
      height: calc(100% - 8px);
      transition: 0.35s cubic-bezier(0.25, 0.1, 0, 2.05);
    }
    &:hover:after {
      left: 0;
      bottom: -2px;
      width: 100%;
      height: 100%;
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
    }
  }
`;
