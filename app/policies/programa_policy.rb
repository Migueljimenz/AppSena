class ProgramaPolicy < ApplicationPolicy
  attr_reader :user, :programa
  
  def initialize(user, programa)
    @user = user
    @programa = programa
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
