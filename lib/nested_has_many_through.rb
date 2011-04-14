require "nested_has_many_through/association"
require "nested_has_many_through/reflection"

module NestedHasManyThrough
  autoload :Association, 'nested_has_many_through/association'
  autoload :Reflection, 'nested_has_many_through/reflection'
end

ActiveRecord::Associations::HasManyThroughAssociation.send :include, NestedHasManyThrough::Association

if defined?(ActiveRecord::Reflection::ThroughReflection)
  ActiveRecord::Reflection::ThroughReflection.send :include, NestedHasManyThrough::Reflection
else
  ActiveRecord::Reflection::AssociationReflection.send :include, NestedHasManyThrough::Reflection
end
