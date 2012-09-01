# encoding: utf-8

module Capybara
  class Session

    #Flash messages section

    #page.should have_flash_notice("Model created")
    def has_flash_notice?(text)
      has_selector?(".alert-info", :text => text)
    end


    #Validation errors section

    #check the dom elements and text
    def has_validation_error_on?(field, text=nil)
      if text.nil?
        has_selector?("div.error input##{field}")
      else
        has_selector?("div.error input##{field}") and has_selector?("div.error span.help-inline", text => text)
      end
    end
  end
end

