class CarphotoPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end

    def destroy?
      user.admin || record.car.user == user
      # record.car.user == user
    end
  end
end
