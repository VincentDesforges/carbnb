class CarPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all # if we want users to log in before looking at the index
    end
  end

  def create?
    return true
  end

  def update?
    is_user
  end

  def destroy?
    is_user
  end

  private

  def is_user
    record.user == user
  end
end
