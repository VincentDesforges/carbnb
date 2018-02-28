class CarPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    return true
  end

  def update?
    is_user_or_admin
  end

  def destroy?
    is_user_or_admin
  end

  private

  def is_user_or_admin
    record.user == user || (user.admin if user)
  end
end
