Deface::Override.new(:virtual_path => "admin/configurations/index",
                     :name => "admin_configurations_menu",
                     :insert_after => "[data-hook='admin_configurations_menu'], #admin_configurations_menu[data-hook]",
                     :text => "<%= configurations_menu_item(t(\"additional_calculator_rates\"), admin_additional_calculator_rates_path, t(\"additional_calculator_rates_description\")) %>",
                     :disabled => false)
