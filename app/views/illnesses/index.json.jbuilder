json.array!(@illnesses) do |illness|
  json.extract! illness, :id, :user, :start, :end, :congestion, :fever, :headache, :shits
  json.url illness_url(illness, format: :json)
end
