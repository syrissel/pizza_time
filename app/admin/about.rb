ActiveAdmin.register_page "About" do
  content do
    para "Hello World"
  end

  page_action :foo, method: :post do
    # do some logic using params['my_field']
    @description = params['my_field']
  end

  content do
    form action: admin_root_path, method: :post do |f|
      f.input :my_field, type: :text, name: 'my_field'
      f.input :submit, type: :submit
    end
  end
end