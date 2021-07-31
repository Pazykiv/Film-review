class Ability

  include CanCan::Ability

  def initialize(user)

    user ||= User.new
    can :manage, :all
  if user.superadmin_role?
      can :manage, :all
      can :access, :rails_admin
      can :manage, :dashboard       
    end
  if user.supervisor_role?
      can :manage, User
    end
  end
end
