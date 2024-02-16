import { customElement, property, state } from "lit/decorators";
import { DefaultComponent } from "../default.component";
import { css, html } from "lit";
import "../content-container/content-container";
import "../loader/loader";
import { classMap } from "lit/directives/class-map";

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
      svg {
        width: 24px;
        display: block;
      }
      
      .path {
        stroke-dasharray: 1000;
        stroke-dashoffset: 0;
        &.circle {
          -webkit-animation: dash .9s ease-in-out;
          animation: dash .9s ease-in-out;
        }
        &.line {
          stroke-dashoffset: 1000;
          -webkit-animation: dash .9s .35s ease-in-out forwards;
          animation: dash .9s .35s ease-in-out forwards;
        }
        &.check {
          stroke-dashoffset: -100;
          -webkit-animation: dash-check .9s .35s ease-in-out forwards;
          animation: dash-check .9s .35s ease-in-out forwards;
        }
      }
      }
      @-webkit-keyframes dash {
        0% {
          stroke-dashoffset: 1000;
        }
        100% {
          stroke-dashoffset: 0;
        }
      }
      
      @keyframes dash {
        0% {
          stroke-dashoffset: 1000;
        }
        100% {
          stroke-dashoffset: 0;
        }
      }
      
      @-webkit-keyframes dash-check {
        0% {
          stroke-dashoffset: -100;
        }
        100% {
          stroke-dashoffset: 900;
        }
      }
      
      @keyframes dash-check {
        0% {
          stroke-dashoffset: -100;
        }
        100% {
          stroke-dashoffset: 900;
        }
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
              ${this.wasSuccessful ? this.renderSuccessfulTick() : html``}
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
        const response = await fetch(
          "http://localhost:8055/flows/trigger/fdcaf62f-a842-492d-9e73-c719f558a149",
          {
            method: "POST",
            headers: {
              "Content-Type": "application/json",
            },
            body: JSON.stringify(payload),
          }
        );

        if (!response.ok) {
          this.isLoading = false;
          throw new Error("Failed to send email");
        }
        this.isLoading = false;
        this.wasSuccessful = true;
        //show sucess tick for 10s
        setTimeout(() => {
          this.wasSuccessful = false;
          //Reset Form Data
        }, 3000);
      } catch (error: any) {
        this.isLoading = false;
        console.error("Error submitting form:", error);
        // On failure, set an error message
        this.message = `Error: ${error.message}`;
      }
    }
  }

  renderField(field: Field) {
    switch (field.FormFields_id.type) {
      case "text":
        return html` ${this.renderLabel(field.label)}
          <input
            type="text"
            id="${field.label}"
            name="${field.label}"
            ?disabled="${this.wasSuccessful}"
          />`;
      case "number":
        return html` ${this.renderLabel(field.label)}
          <input
            type="number"
            id="${field.label}"
            name="${field.label}"
            ?disabled="${this.wasSuccessful}"
          />`;
      case "textarea":
        return html` ${this.renderLabel(field.label)}
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
          ${this.renderLabel(field.label)}
        </div>`;
    }
  }

  renderLabel(name: string) {
    return html`<label>${name}</label>`;
  }

  renderSuccessfulTick() {
    return html`
      <svg
        version="1.1"
        xmlns="http://www.w3.org/2000/svg"
        viewBox="0 0 130.2 130.2"
      >
        <circle
          class="path circle"
          fill="none"
          stroke="#fff"
          stroke-width="8px"
          stroke-miterlimit="10"
          cx="65.1"
          cy="65.1"
          r="62.1"
        />
        <polyline
          class="path check"
          fill="none"
          stroke="#fff"
          stroke-width="8px"
          stroke-linecap="round"
          stroke-miterlimit="10"
          points="100.2,40.2 51.5,88.8 29.8,67.5 "
        />
      </svg>
    `;
  }
}
