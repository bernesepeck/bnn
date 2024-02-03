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
          <button type="submit">${this.form?.submitText}</button>
        </form>
      </bnn-content-container>
    `;
  }

  async submitForm(e: Event) {
    e.preventDefault();
    
    // Assuming this.shadowRoot and this.form are defined in your component's context
    const form: HTMLFormElement = this.shadowRoot?.getElementById("form") as HTMLFormElement;
    
    if (form) {
      const formData = new FormData(form);
      const values: { [key: string]: FormDataEntryValue } = {};
      
      // Extract values from the form based on this.form.fields
      this.form?.fields.forEach((f) => {
        const value = formData.get(f.label);
        if (value) {
          values[f.label] = value;
        }
      });
      
      // Construct the payload
      const payload = {
        values: values,
        emailTo: this.form?.emailTo,
        subject: this.form?.subject
      };
      
      try {
        // Send the POST request
        const response = await fetch('http://localhost:8055/flows/trigger/fdcaf62f-a842-492d-9e73-c719f558a149', {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json'
          },
          body: JSON.stringify(payload)
        });
        
        if (!response.ok) {
          throw new Error('Network response was not ok');
        }
        
        const responseData = await response.json();
        console.log('Form submitted successfully:', responseData);
        // Handle success response
      } catch (error) {
        console.error('Error submitting form:', error);
        // Handle error
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
