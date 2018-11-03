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
    var selVal = $(this).find('option:selected').text();
    if(selVal == 'NEWS'){
      $('#sub_title').prop('disabled', true);
      $('#sub_cat').prop('disabled', false);
      $('#sub_cat').val(0);
      $('#photo_upload_select').prop('disabled', false);
    }else if(selVal == 'VIRAL VIDEO'){
       $('#photo_upload_select').prop('disabled', true);
    }else{
      $('#sub_title').prop('disabled', false);
      $('#sub_cat').prop('disabled', true);
      $('#sub_cat').val(0);
      $('#photo_upload_select').prop('disabled', false);
    }
  "
}
   	f.input :subcategory,:input_html => { :disabled => true , :id => 'sub_cat' }
    f.input :title
    # f.input :subtitle, :input_html => { :disabled => false , :id => 'sub_title' }
    f.input :description
    f.input :id, include_blank: false , label: "Select Photo Option", :as => :select, :collection => ["Select Option","Upload","Link"],:input_html => { :disabled => false,
  :id => 'photo_upload_select',:onchange => "
    var selVal = $(this).val();
    if(selVal == 'Upload'){
      $('#photo_upload').prop('disabled', false);
      $('#photo_link').prop('disabled', true);
      $('#photo_link').val('');
      $('#video_link').val('');
      $('#video_link').prop('disabled', true);
    }else if(selVal == 'Select Option'){
       $('#video_link').prop('disabled', false);
       $('#photo_link').prop('disabled', true);
    }else{
      $('#photo_link').prop('disabled', false);
      $('#photo_upload').prop('disabled', true);
      $('#video_link').val('');
      $('#video_link').prop('disabled', true);
    }
  "
}
    f.input :photo, :as => :file ,:input_html => { :disabled => true , :id => 'photo_upload' }
    f.input :photolink, :as => :url ,:input_html => { :disabled => true , :id => 'photo_link' }
    f.input :videolink, :as => :url ,:input_html => { :disabled => false , :id => 'video_link' }
  end
  f.actions
 end

end