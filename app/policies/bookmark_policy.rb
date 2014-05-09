class BookmarkPolicy < ApplicationPolicy
  def destroy?
    user.present?
  end
end