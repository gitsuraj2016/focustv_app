ActiveAdmin.register NewsItem do
  menu false
  menu parent: "News"
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
permit_params do
        permitted = [:title, :subtitle, :description,:photo, :photolink, :videolink,:category_id,:subcategory_id]
        permitted
    end

 index do
    selectable_column
    id_column
    column :title
    column :subtitle
    column :description
    column :category
    column :subcategory
    column 'Photo', sortable: :photo_file_name do |firmware| link_to firmware.photo_file_name, firmware.photo.url end
    column :photolink
    column :videolink
    actions
  end

  form do |f|
   f.inputs "Details" do
   	f.input :category, :input_html => {
  :onchange => "
    var selVal = $(this).val();
    if(selVal == '1'){
      $('#sub_title').prop('disabled', true);
      $('#sub_cat').prop('disabled', false);
      $('#sub_cat').val(0);
    }else{
      $('#sub_title').prop('disabled', false);
      $('#sub_cat').prop('disabled', true);
      $('#sub_cat').val(0);
    }
  "
}
   	f.input :subcategory,:input_html => { :disabled => true , :id => 'sub_cat' }
    f.input :title
    f.input :subtitle, :input_html => { :disabled => false , :id => 'sub_title' }
    f.input :description
    f.input :photo, :as => :file
    f.input :photolink, :as => :url
    f.input :videolink, :as => :url
  end
  f.actions
 end

end