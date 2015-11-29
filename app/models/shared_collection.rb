class SharedCollection < ActiveRecord::Base

    

# ------------------------------------------------------------------------------
# Includes & Extensions
# ------------------------------------------------------------------------------



# ------------------------------------------------------------------------------
# Constants
# ------------------------------------------------------------------------------



# ------------------------------------------------------------------------------
# Attributes
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# Associations
# ------------------------------------------------------------------------------

  #this is for the user to whom the owner has shared collections to 
   belongs_to :user

   belongs_to :shared_user, :class_name => "User", :foreign_key => "shared_user_id"

    
  #for the collection being shared 
  belongs_to :collection


# ------------------------------------------------------------------------------
# Validations
# ------------------------------------------------------------------------------



# ------------------------------------------------------------------------------
# Callbacks
# ------------------------------------------------------------------------------

after_create :check_and_assign_shared_ids_to_shared_collections
  

# ------------------------------------------------------------------------------
# Nested Attributes
# ------------------------------------------------------------------------------



# ------------------------------------------------------------------------------
# Scopes
# ------------------------------------------------------------------------------



# ------------------------------------------------------------------------------
# Other
# ------------------------------------------------------------------------------



# ------------------------------------------------------------------------------
# Class Methods
# ------------------------------------------------------------------------------

#this is to make sure the new user ,of which the email addresses already used to share collections by others, to have access to those collections 
def check_and_assign_shared_ids_to_shared_collections     
    #First checking if the new user's email exists in any of Sharecollection records 
    shared_collections_with_same_email = SharedCollection.find_all_by_shared_email(self.email) 
  
    if shared_collections_with_same_email       
      #loop and update the shared user id with this new user id  
      shared_collections_with_same_email.each do |shared_collection| 
        shared_collection.shared_user_id = self.id 
        shared_collection.save 
      end
    end    
end


# ------------------------------------------------------------------------------
# Instance Methods
# ------------------------------------------------------------------------------



# ------------------------------------------------------------------------------
protected
# ------------------------------------------------------------------------------



# ------------------------------------------------------------------------------
private
# ------------------------------------------------------------------------------




end
