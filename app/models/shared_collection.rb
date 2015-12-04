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
