class Admin::AdminFormBuilder < ActionView::Helpers::FormBuilder
  alias :orig_label :label

  def label(method, text = nil, options = {})
    if (@object.errors[method].any?)
      text = ((text ? text : "") + error_message(method)).html_safe
    end
    super(method, text, options)
  end

  private

  def error_message(method)
    if (@object.errors[method].any?)
      (" <span class=\"error_description\">" + @object.errors[method].join(' and ') + "</span>").html_safe
    else
      ""
    end
  end
end