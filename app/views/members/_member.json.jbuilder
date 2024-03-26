json.extract! member, :id, :name, :portrait, :created_at, :updated_at
json.url member_url(member, format: :json)
json.portrait url_for(member.portrait)
