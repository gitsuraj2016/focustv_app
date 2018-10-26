class HomeController < ApplicationController
  def index
  	# @cats = Category.all
  	# @items = NewsItem.paginate(page: params[:page], per_page: 20)
    @items = NewsItem.all

  	# dashboarddata_data = {}
  	# sub_cat_latest_array = []
  	# sub_cat_break_array = []
   #  sub_cat_ids = []
  	# # @items.each do | item |
  	# 	all_cats = Category.all
  	# 	cat_array = []
  	#   cat_hash = {}
  	# 	all_cats.each do | cat |
  	# 		sub_cats = Subcategory.where(:category_id => cat.id)
  	# 		sub_cat_array = []
  	# 		sub_cat_hash = {}
  	# 		sub_cats.each do | sub_cat |
   #              sub_item = @items.where(:subcategory_id=> sub_cat.id)
   #              puts ">>>>>>>>>>>>>>>sub_item>>>>>>>>>>>#{sub_item.inspect}"
   #              sub_cat_ids.push sub_cat.id 
   #              sub_item.each do | sub_item |
   #              	lsub_h = {}
   #              	lsub_h['id'] = sub_item.id 
		 #  			lsub_h['title'] = sub_item.title 
		 #  			lsub_h['subtitle'] = sub_item.subtitle 
		 #  			lsub_h['description'] = sub_item.description 
		 #  			lsub_h['photo'] = sub_item.photo.url
		 #  			lsub_h['videolink'] = sub_item.videolink
		 #  			sub_cat_array.push lsub_h
   #              end
   #              sub_cat_hash['sub-category'] = "#{sub_cat.name}"
   #              sub_cat_hash['subdata'] = sub_cat_array
  	# 		end
  	# 		if sub_cat_hash.present?
  	# 		  cat_hash['category'] = cat.name 
  	# 		  cat_hash['data'] = sub_cat_hash
  	# 		  cat_array.push cat_hash
  	# 		end
  	# 		cat_arra_l = []
  	# 		cat_items = @items.select { |attachment| !attachment.subcategory_id.present? }
  	# 		puts ">>>>>>>>>>>>>>cat_item>>>>>>>>>>>>#{cat_items.inspect}"
  	# 		cat_items.each do | cat_item |
  	# 			    lsub_h = {}
   #              	lsub_h['id'] = cat_item.id 
		 #  			lsub_h['title'] = cat_item.title 
		 #  			lsub_h['subtitle'] = cat_item.subtitle 
		 #  			lsub_h['description'] = cat_item.description 
		 #  			lsub_h['photo'] = cat_item.photo.url
		 #  			lsub_h['videolink'] = cat_item.videolink
		 #  			cat_arra_l.push lsub_h
  	# 		end
  	# 		cat_array.push cat_arra_l
  	# 		dashboarddata_data['dashboarddata'] = cat_array

  	# 	end
  	# # end
  	# # finnal_data['sub-category'] = "latest-news"
  	# # finnal_data['subdata'] = sub_cat_array
  	# puts "***********#{dashboarddata_data.inspect}"


      # all_cats = Category.all
      # cat_array = []
      # cat_hash = {}
      # sub_cat_ids = []
      # all_cats.each do | cat |
      #     sub_cats = Subcategory.where(:category_id => cat.id)
      #     sub_cat_array = []
      #     sub_cat_hash = {}
      #     sub_cats.each do | sub_cat |
      #           sub_item = @items.where(:subcategory_id=> sub_cat.id)
      #           puts ">>>>>>>>>>>>>>>>>>>>>>>>>>#{sub_item.length}"
      #           # if sub_item.length == 1
      #           sub_cat_ids.push sub_cat.id 
      #           sub_item.each do | sub_item |
      #               lsub_h = {}
      #               lsub_h['id'] = sub_item.id 
      #               lsub_h['title'] = sub_item.title 
      #               lsub_h['subtitle'] = sub_item.subtitle 
      #               lsub_h['description'] = sub_item.description 
      #               lsub_h['photo'] = sub_item.photo.url
      #               lsub_h['videolink'] = sub_item.videolink
      #               sub_cat_array.push lsub_h
      #           end
      #           sub_cat_hash['sub-category'] = "#{sub_cat.name}"
      #           sub_cat_hash['subdata'] = sub_cat_array
      #           # cat_hash['category'] = cat.name 
      #           # cat_hash['data'] = sub_cat_hash
      #           cat_array.push sub_cat_hash
      #     end
      #     # if sub_cat_hash.present?
      #     #    cat_hash['category'] = cat.name 
      #     #    cat_hash['data'] = sub_cat_hash
      #     #    cat_array.push cat_hash
      #     # end
      # end

      # puts "******************* #{cat_array.inspect}"
   #              sub_cats = Subcategory.all
   #              sub_cat_array = []
   #               # sub_cat_array = []
   #              sub_cat_hash = {}
   #              sub_cats.each do | xx |
   #                  sub_item = @items.where(:subcategory_id=> xx.id)
   #                  sub_item.each do | sub_item |
   #                      lsub_h = {}
   #                      lsub_h['id'] = sub_item.id 
   #                      lsub_h['title'] = sub_item.title 
   #                      lsub_h['subtitle'] = sub_item.subtitle 
   #                      lsub_h['description'] = sub_item.description 
   #                      lsub_h['photo'] = sub_item.photo.url
   #                      lsub_h['videolink'] = sub_item.videolink
   #                      sub_cat_array.push lsub_h
   #                  end
   #                  sub_cat_hash.store('sub-category', "#{xx.name}")
   #                  sub_cat_hash.store('subdata', sub_cat_array)
   #                  # sub_cat_hash['sub-category'] << "#{xx.name}"
   #                  # sub_cat_hash['subdata'] << sub_cat_array
   #              end
                

  	

  	# render :json => sub_cat_hash.to_json();
  end
end
