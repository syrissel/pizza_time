ActiveAdmin.register Deal do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

permit_params :name,
              :price,
              pizza_ids: []

form do |f|
  f.inputs 'Deal Details' do
    f.input :name
    f.input :price
  end
  f.inputs 'Pizzas' do
    f.input :pizzas, as: :check_boxes, collection: Pizza.all, :member_label => :name
  end
  f.actions
end
end