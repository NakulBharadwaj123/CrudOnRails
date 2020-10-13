class PacecomTechnology < ApplicationRecord
    has_one_attached :image

    validates :First_Name, :Last_Name, :Phone, :Job_Role, :Place, :presence => true
   validates :Phone, presence: true
    validate :correct_image_type
   # validates_uniqueness_of :First_Name, :message =>'should be unique'
   validates_uniqueness_of :First_Name, message:"should be unique"
   #validates_uniqueness_of :First_Name, scope: :Last_Name
   #add_index :pacecom_technologies, [ :First_Name, :Last_Name ], :unique => true, message 'noooo'
  
    
    private

    def correct_image_type
        if image.attached? && !image.content_type.in?(%w(image/jpeg image/png))
            errors.add(:image, 'must be jpeg or png.')
        elsif image.attached? == false
            errors.add(:image, 'Not attached')
        end
    end  
    
      
end
