class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    return true
  end

  def create?
    return true
  end

  def update?
    is_user_or_admin_or_owner
  end

  def destroy?
    is_user_or_admin_or_owner
  end

  private

  def is_user_or_admin_or_owner
    record.user == user || user.admin || record.car.user == user
  end
end
