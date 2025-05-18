import { Controller } from "@hotwired/stimulus"
import { marked } from "marked";
import DOMPurify from "dompurify";

// Connects to data-controller="markdown"
export default class extends Controller {
  static targets = ["editor", "preview", "previewSwitch"]
  static values = {
    json: String
  }

  connect() {
    if (this.hasJsonValue) {
      const markdown = JSON.parse(this.jsonValue)
      this.#renderPreview(markdown)
    }
  }

  togglePreview() {
    const isPreviewMode = this.previewSwitchTarget.checked
    if (isPreviewMode) {
      const markdown = this.editorTarget.value
      this.#renderPreview(markdown)
    }
    this.editorTarget.classList.toggle("d-none", isPreviewMode)
    this.previewTarget.classList.toggle("d-none", !isPreviewMode)
  }

  #renderPreview(markdown) {
    this.previewTarget.innerHTML = DOMPurify.sanitize(marked.parse(markdown))
  }
}
