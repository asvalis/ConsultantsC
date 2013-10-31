json.array!(@donors) do |donor|
  json.extract! donor, :first_name, :last_name, :donations, :newsletter
  json.url donor_url(donor, format: :json)
end
