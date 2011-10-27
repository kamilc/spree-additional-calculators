Deface::Override.new(:virtual_path => "layouts/admin",
                     :name => "admin_inside_head",
                     :insert_after => "[data-hook='admin_inside_head'], #admin_inside_head[data-hook]",
                     :partial => "shared/additional_calculators_admin_head",
                     :disabled => false)
