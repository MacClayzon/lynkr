class Collection < ActiveRecord::Base


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

belongs_to :user
has_many :shared_collections, :dependent => :destroy
has_many :links , :dependent => :destroy


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

acts_as_tree     # Nested collections



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
