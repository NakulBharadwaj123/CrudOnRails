module PacecomTechnologiesHelper
    def show_errors(object,first_Name)
        if object.errors.any?
          object.errors.add(:first_Name, '*Name should be unique').join(',')
        end
          if !object.errors.messages[first_Name].blank?
            #object.errors.messages[first_Name].join(', ')
            object.errors.add(:first_Name, '*cannot be blank').join(',')

        end
      end
      
      def show_errorsa(object,last_Name)
        if object.errors.any?
          if !object.errors.messages[last_Name].blank?
            #object.errors.messages[last_Name].join(", ")
           object.errors.add(:last_Name, '*cannot be blank.').join('')
          end
        end
      end  


      def show_errorsb(object,phone)
        if object.errors.any?
          if !object.errors.messages[phone].blank?
            #object.errors.messages[phone].join(", ")
            object.errors.add(:phone, '*cannot be blank,  *only numbers').join(',')
          end
        end
      end

      def show_errorsc(object,job_Role)
        if object.errors.any?
          if !object.errors.messages[job_Role].blank?
           # object.errors.messages[job_Role].join(", ")
           object.errors.add(:job_Role, '*cannot be blank.').join('')
          end
        end
        end

        def show_errorsd(object,place)
          if object.errors.any?
            if !object.errors.messages[place].blank?
              #object.errors.messages[place].join(", ")
              object.errors.add(:place, '*cannot be blank.').join('')
            end
          end
          end
end
