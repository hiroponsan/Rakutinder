json.array!(@calenders) do |calender|
  json.extract! calender, :id, :date_1, :date_2, :user_id
  json.url calender_url(calender, format: :json)
end
