class LogSerializer < ActiveModel::Serializer
  attributes :id, :action, :type, :target, :request
end
