import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "output" ]

  connect() {
    $('i').raty({
      path: '/assets/',
      scoreName: 'review[rating]'
    });
  }
}
