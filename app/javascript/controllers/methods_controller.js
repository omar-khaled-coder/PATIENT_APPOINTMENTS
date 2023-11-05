// app/javascript/controllers/your_controller_name_controller.js
// app/javascript/controllers/delete-confirmation-controller.js
import { Controller } from 'stimulus'

export default class extends Controller {
  confirm(event) {
    if (!window.confirm('Are you sure you want to delete this patient?')) {
      event.preventDefault()
    }
  }
}
