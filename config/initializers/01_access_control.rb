# Redmine::AccessControl.map do |map|
#
#   # ---------------------------------------------------------------------------
#   # Global level
#
#   # View on global
#
#   map.permission(:view_redmine_mautics, {
#     redmine_mautic: [:index, :show]
#   }, read: true, global: true)
#
#   # Manage on global
#
#   map.permission(:manage_redmine_mautics, {
#     redmine_mautic: [:new, :create, :edit, :update, :destroy]
#   }, require: :loggedin, global: true)
#
#   # ---------------------------------------------------------------------------
#   # Project level
#
#   map.project_module :redmine_mautic do |pmap|
#
#     # View on project
#
#     pmap.permission(:view_redmine_mautic, {
#       redmine_mautic: [:index, :show]
#     }, read: true)
#
#     # Edit on project
#
#     pmap.permission(:manage_redmine_mautic, {
#       redmine_mautic: [:new, :create, :edit, :update, :destroy]
#     }, require: :loggedin)
#
#   end
#
# end
