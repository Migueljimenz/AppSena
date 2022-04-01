class CursoPolicy < ApplicationPolicy
  attr_reader :user, :curso
  
  def initialize(user, curso)
    @user = user
    @curso = curso
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