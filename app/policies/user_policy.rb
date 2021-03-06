class UserPolicy < ApplicationPolicy
  
  def index?
    user.admin?
  end
  
  def show?
    user.admin? || user.id == record.id
  end
  
  def update?
    user.admin?
  end
  
  def destroy?
    user.admin?
  end
  
end
