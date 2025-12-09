import TextareaAutogrow from "stimulus-textarea-autogrow"

export default class extends TextareaAutogrow {
  connect() {
    super.connect()
    console.log("Do what you want here.")
  }
}