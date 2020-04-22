class RestaurantPolicy < ApplicationPolicy
  def show?
    true
  end

  def update?
    record.user_id == user.id
  end

  def create?
    !user.nil?
  end

  def destroy?
    record.user_id == user.id
  end

  class Scope < Scope
    def resolve
      scope.all
      # Restaurant.all => all the restaurants
      # scope.where user_id: 1
      # Restaurant.all => all the restaurants that belong to the current_user
    end
  end
end
