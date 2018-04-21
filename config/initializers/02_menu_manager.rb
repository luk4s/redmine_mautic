# Redmine::MenuManager.map :admin_menu do |menu|
#   menu.push :redmine_mautic,
#             :redmine_mautics_path,
#             caption: :label_redmine_mautics,
#             html: { class: 'icon icon-invoice' },
#             if: proc { |p| User.current.admin? }
# end

# Redmine::MenuManager.map :project_menu do |menu|
#   menu.push :redmine_mautic,
#             :redmine_mautics_path,
#             caption: :label_redmine_mautics,
#             param: :project_id,
#             html: { class: 'icon icon-invoice' },
#             if: proc { |p| User.current.admin? }
# end

# Redmine::MenuManager.map :top_menu do |menu|
#   menu.push :redmine_mautic,
#             :redmine_mautics_path,
#             caption: :label_redmine_mautics,
#             html: { class: 'icon icon-invoice' },
#             if: proc { |p| User.current.admin? }
# end
