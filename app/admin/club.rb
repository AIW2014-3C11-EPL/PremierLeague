ActiveAdmin.register Club do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :logo, :establish, :manager, :nick, :stadium, :background
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
  form do |f|
    f.inputs "Create club" do
      f.input :name
      f.input :logo
      f.input :establish
      f.input :manager
      f.input :nick
      f.input :stadium
      f.input :background
    end
    f.actions
  end


end
