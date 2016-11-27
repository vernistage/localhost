class UserTag < ApplicationRecord
  belongs_to :host, class_name: "User", foreign_key: :host_id
  belongs_to :tag, class_name: "Tag", foreign_key: :tag_id
end
