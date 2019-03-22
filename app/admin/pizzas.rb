ActiveAdmin.register Pizza do
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
              :size,
              :price,
              topping_ids: []

form do |f|
  f.inputs 'Pizza Details' do
    f.input :name
    f.input :size
    f.input :price
  end
  f.inputs 'Toppings' do
    f.input :toppings, as: :check_boxes, collection: Topping.all, :member_label => :name
  end
  f.actions
end

remove_filter :pizza_toppings
remove_filter :pizza_deals
remove_filter :pizza_orders


# form do |f|
#   f.input :toppings, as:check_boxes, :collection => Topping.all.map{ |top| [top.name, top.id] }
# end

end
