json.extract! @page, :id, :title, :description, :content, :publish, :cover, :icon, :bg, :created_at, :updated_at

json.tabs @page.tabs, :content, :created_at

