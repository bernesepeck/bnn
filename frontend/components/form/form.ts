import { customElement, property } from "lit/decorators";
import { DefaultComponent } from "../default.component";
import { css, html } from "lit";
import "../content-container/content-container";

type Field = {
  type: "text" | "textarea" | "number" | "checkbox";
  label: string;
};

export type FormType = {
  fields: Field[];
  submitLabel: string;
  title: string;
  description: string;
  email: string;
  emailSubject: string;
};

@customElement("bnn-form")
export class Form extends DefaultComponent {
  @property()
  public form: FormType | undefined;

  static get componentStyles() {
    return css`
      form {
        display: flex;
        flex-direction: column;
        gap: var(--gutter-s);
      }
      .checkbox-wrapper {
        display: flex;
        gap: 8px;
      }
    `;
  }

  render() {
    return html`
      <bnn-content-container>
        <h2>${this.form?.title}</h2>
        <p>${this.form?.description}</p>
        <form id="form" @submit="${(e) => this.submitForm(e)}">
          ${this.form?.fields.map((field) => this.renderField(field))}
          <button type="submit">${this.form?.submitLabel}</button>
        </form>
      </bnn-content-container>
    `;
  }

  submitForm(e: Event) {
    e.preventDefault();
    const form: HTMLFormElement = this.shadowRoot?.getElementById(
      "form"
    ) as HTMLFormElement;
    if (form) {
      const formData = new FormData(form);
      const values: { [key: string]: FormDataEntryValue } = {};
      this.form?.fields.forEach((f) => {
        const value = formData.get(f.label);
        if (value) {
          values[f.label] = value;
        }
      });
      //TODO: Post Email
      console.log(values)
    }
  }

  renderField(field: Field) {
    switch (field.type) {
      case "text":
        return html` ${this.renderLabel(field.label)}
          <input type="text" id="${field.label}" name="${field.label}" />`;
      case "number":
        return html` ${this.renderLabel(field.label)}
          <input type="number" id="${field.label}" name="${field.label}" />`;
      case "textarea":
        return html` ${this.renderLabel(field.label)}
          <textarea id="${field.label}" name="${field.label}"></textarea>`;
      case "checkbox":
        return html` <div class="checkbox-wrapper">
          <input type="checkbox" id="${field.label}" name="${field.label}" />
          ${this.renderLabel(field.label)}
        </div>`;
    }
  }

  renderLabel(name: string) {
    return html`<label>${name}</label>`;
  }
}
