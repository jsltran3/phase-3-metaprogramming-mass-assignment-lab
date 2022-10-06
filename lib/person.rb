# class Person
#   attr_accessor :name, :birthday, :hair_color, :eye_color, :height, :weight, :handed, :complexion, :t_shirt_size, :wrist_size, :glove_size, :pant_length, :pant_width

#   def initialize(...all that stuff)
#     @all that stuff = all that stuff
#   end
# end

# refactored
class Person
  def initialize(attributes)
    attributes.each do |key, value|
      #create getter/setter by calling the attr_accessor method instead of writing all the args and assigning them
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end 
  end 
end

# :name, :birthday, :hair_color, :eye_color, :height,
# :weight, :handed, :complexion, :t_shirt_size,
# :wrist_size, :glove_size, :pant_length, :pant_width