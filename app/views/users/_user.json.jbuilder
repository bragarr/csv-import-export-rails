json.extract! user, :id, :first_name, :last_name, :email_address, :favorite_food, :mobile_phone_number, :created_at, :updated_at
json.url user_url(user, format: :json)
