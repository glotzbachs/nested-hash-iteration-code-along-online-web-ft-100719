require 'pry'

  # This is the array we will be passing into the remove_strawberry method
  # contacts = {
  #   "Jon Snow" => {
  #     name: "Jon",
  #     email: "jon_snow@thewall.we", 
  #     favorite_ice_cream_flavors: ["chocolate", "vanilla"]
  #   },
  #   "Freddy Mercury" => {
  #     name: "Freddy",
  #     email: "freddy@mercury.com",
  #     favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
  #   }
  # }
  
def remove_strawberry(contacts)
  contacts.each {|person,contact_details|
    if person=="Freddy Mercury"
      contact_details.each {|attributes,value|
        if attributes==:favorite_ice_cream_flavors
          value.delete_if{|ice_cream| ice_cream=="strawberry"}
        end
      }
    end
  }
end
