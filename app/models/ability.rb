class Ability
  include CanCan::Ability
  
  def initialize(user)
    user ||= User.new 
    if User.current_role == 'admin'
      can :manage, :all 
    elsif User.current_role == 'super-admin'
      can :manage, :all
    else
      can :manage, :all
    end
  end
end
