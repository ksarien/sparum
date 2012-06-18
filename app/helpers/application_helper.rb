module ApplicationHelper
  #TODO: refactoring
  def show_flash(name, msg)
    html_class = 'alert'
    html_class += ' alert-success' if name == :notice
    html_class += ' alert-error' if name == :error

    btn_close = button_tag '&times;'.html_safe, 'data-dismiss'.to_sym => 'alert', type: 'button', class: 'close'

    content_tag :div, btn_close + msg, class: html_class
  end
end
