import { customElement, property, state } from "lit/decorators";
import { DefaultComponent } from "../default.component";
import { css, html } from "lit";
import "../content-container/content-container";
import "../loader/loader";
import { classMap } from "lit/directives/class-map";
import "./successful-tick";

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
  submittedButtonText: string;
};

@customElement("bnn-form")
export class Form extends DefaultComponent {
  @property()
  public form: FormType | undefined;

  @property()
  private message: string = "";

  @state()
  private isLoading = false;

  @state()
  private wasSuccessful = false;

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
      button.submitted {
        background-color: var(--color-success);
      }
      .button-content {
        display: flex;
        align-items: center;
        gap: 4px;
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
          <button
            type="submit"
            class="${classMap({ submitted: this.wasSuccessful })}"
          >
            <div class="button-content">
              ${this.wasSuccessful ? html`<bnn-success-tick></bnn-success-tick>` : html``}
              ${this.isLoading ? html`<bnn-loader></bnn-loader>` : html``}
              ${this.wasSuccessful
                ? this.form?.submittedButtonText
                : this.form?.submitText}
            </div>
          </button>
        </form>
        <div class="${this.message.includes("Error") ? "error" : "message"}">
          ${this.message}
        </div>
      </bnn-content-container>
    `;
  }

  async submitForm(e: Event) {
    e.preventDefault();
    this.isLoading = true;
    this.message = ""; // Reset message on new submission
    const form = this.getForm();
    if (form) {
      const payload = this.createPayload(form);
      try {
        await this.sendFormData(payload);

        this.handleSuccess(form);
      } catch (error: any) {
        this.handleError(error)
      } finally {
        this.isLoading = false;
      }
    }
  }

  private getForm(): HTMLFormElement | null {
    return (this.shadowRoot?.getElementById("form") as HTMLFormElement) || null;
  }

  private createPayload(form: HTMLFormElement): any {
    const formData = new FormData(form);
    const values: { [key: string]: FormDataEntryValue } = {};

    this.form?.fields.forEach((field) => {
      const value = formData.get(field.label);
      if (value) values[field.label] = value;
    });

    return { values, ...this.form };
  }

  private async sendFormData(payload: { [key: string]: FormDataEntryValue } ): Promise<void> {
    const response = await fetch(`${this.config.apiUrl}/flows/trigger/fdcaf62f-a842-492d-9e73-c719f558a149`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(payload),
    });

    if (!response.ok) {
      throw new Error("Failed to send email");
    }
  }

  private handleSuccess(form: HTMLFormElement) {
    this.wasSuccessful = true;
    // Show success tick for 10s
    setTimeout(() => {
      this.wasSuccessful = false;
      form.reset(); // Reset Form Data
    }, 2000);
  }

  private handleError(error: any) {
    console.error("Error submitting form:", error);
    this.message = `Error: ${error.message}`;
  }

  renderField(field: Field) {
    switch (field.FormFields_id.type) {
      case "text":
        return html` ${this.renderLabel(field)}
          <input
            type="text"
            id="${field.label}"
            name="${field.label}"
            ?disabled="${this.wasSuccessful}"
          />`;
      case "number":
        return html` ${this.renderLabel(field)}
          <input
            type="number"
            id="${field.label}"
            name="${field.label}"
            ?disabled="${this.wasSuccessful}"
          />`;
      case "textarea":
        return html` ${this.renderLabel(field)}
          <textarea
            id="${field.label}"
            name="${field.label}"
            ?disabled="${this.wasSuccessful}"
          ></textarea>`;
      case "checkbox":
        return html` <div class="checkbox-wrapper">
          <input
            type="checkbox"
            id="${field.label}"
            name="${field.label}"
            ?disabled="${this.wasSuccessful}"
          />
          ${this.renderLabel(field)}
        </div>`;
    }
  }

  renderLabel(field: Field) {
    return html`<label for="${field.label}">${field.label}</label>`;
  }
}
