json.extract! contact, :id, :first_name, :last_name, :fb_url, :pic_url, :fb_id, :tw_url, :ig_url, :in_url, :created_at, :updated_at
json.url contact_url(contact, format: :json)
