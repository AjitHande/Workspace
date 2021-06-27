class User
  # Defining custom attribut accessor
  def self.custom_attr_accessor(*attrs)
    attrs.each do |attr|
      attr_name = "@#{attr}".to_sym

      # custom getter(custom code for modifying output)
      define_method attr do
        instance_variable_get(attr_name)
      end

      # custom setter(may define validations to accept input in certain format)
      define_method "#{attr}=" do |new_value|
        instance_variable_set(attr_name, new_value)
      end
    end
  end

  custom_attr_accessor :name, :age
end

user = User.new
user.name = 'FirstName LastName'
puts user.name