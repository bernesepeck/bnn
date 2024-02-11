import { customElement, property } from "lit/decorators";
import { DefaultComponent } from "../default.component";
import { css, html } from "lit";
import "../content-container/content-container";

type Field = {
  type: "text" | "textarea" | "number" | "checkbox";
  label: string;
  FormFields_id: any;
};

export type FormType = {
  fields: Field[];
  submitText: string;
  title: string;
  description: string;
  emailTo: string;
  subject: string;
};

@customElement("bnn-form")
export class Form extends DefaultComponent {
  @property()
  public form: FormType | undefined;

  @property()
  private message: string = '';

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
        <form id="form" @submit="${this.submitForm}">
          ${this.form?.fields.map((field) => this.renderField(field))}
          <button type="submit">${this.form?.submitText}</button>
        </form>
        <div class="${this.message.includes('Error') ? 'error' : 'message'}">
          ${this.message}
        </div>
      </bnn-content-container>
    `;
  }

  async submitForm(e: Event) {
    e.preventDefault();
    this.message = ''; // Reset message on new submission
    const form = this.shadowRoot?.getElementById("form") as HTMLFormElement;

    if (form) {
      const formData = new FormData(form);
      const values: { [key: string]: FormDataEntryValue } = {};
      
      this.form?.fields.forEach((f) => {
        const value = formData.get(f.label);
        if (value) {
          values[f.label] = value;
        }
      });
      
      const payload = {
        values: values,
        ...this.form,
      };

      try {
        const response = await fetch('http://localhost:8055/flows/trigger/fdcaf62f-a842-492d-9e73-c719f558a149', {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json'
          },
          body: JSON.stringify(payload)
        });

        if (!response.ok) {
          throw new Error('Failed to send email');
        }
        
        // On success, set a success message
        this.message = 'Email sent successfully.';
      } catch (error: any) {
        console.error('Error submitting form:', error);
        // On failure, set an error message
        this.message = `Error: ${error.message}`;
      }
    }
  }

  renderField(field: Field) {
    switch (field.FormFields_id.type) {
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
