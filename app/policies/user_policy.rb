class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def index
      scope.all
    end
  end

  def create?
    return true
  end
end
