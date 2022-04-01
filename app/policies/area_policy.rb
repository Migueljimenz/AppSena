class AreaPolicy < ApplicationPolicy
  attr_reader :user, :area
  
  def initialize(user, area)
    @user = user
    @area = area
  end
  
  def index
   
  end 
  
  def new
   
  end
  
  def create?
    user.has_role? :admin
  end
  
  def update?
    user.has_role? :admin
  end
  
  def destroy?
    user.has_role? :admin
  end
  
  end
