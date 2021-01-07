module Findable
    module ClassMethods

        def get_by_id(id)
            self.all.find { | object | object.id == id }
        end

        def get_by_name(name)
            self.all.find { | object | object.name == name }
        end

    end
end