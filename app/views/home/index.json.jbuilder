
	json.dashboarddata @items do |t|
    	    json.id t.id
            json.title t.title
            json.subtitle t.subtitle
            json.description t.description
            json.photo "http://localhost:3000#{t.photo.url}"
            json.category t.category.name if t.category.present?
            json.subcategory t.subcategory.name if t.subcategory.present?
            json.videolink t.videolink if t.videolink.present?
    end
