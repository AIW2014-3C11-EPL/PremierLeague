ActiveAdmin.register Player do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :club_id, :name, :avatar, :number, :position, :birthday, :age, :nationality, :height, :weight, :appear, :goal, :yellow, :red
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
  form do |f|
    f.inputs "Create Player" do
      f.input :club_id ,label:"Thuộc đội:", :as =>:select,:collection =>Club.all
      f.input :name
      f.input :avatar
      f.input :number
      f.input :position
      f.input :birthday
      f.input :age
      f.input :nationality
      f.input :height
      f.input :weight
      f.input :appear
      f.input :goal
      f.input :yellow
      f.input :red
    end
    f.actions
  end


end
