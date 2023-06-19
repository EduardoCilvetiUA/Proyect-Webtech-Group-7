class Ability
  include CanCan::Ability

  def initialize(user)
    # Define las habilidades para el usuario actual (user). El parámetro "user" representa al usuario actualmente autenticado.

    # Habilidades para el usuario administrador
    

    # Habilidades para el usuario normal
    if user.role == 'normal'
      can :read, Ticket
      can :create, Ticket
      can [:update, :destroy], Ticket, user_id: user.id
      cannot :manage, Report
    end

    if user.role == 'admin'
      can :manage, :all
      can :create, User
    end

    if user.role == 'exec'
      can :manage, :all
    end
    if user.role == 'super'
      can :manage, :all
    end
    
  end
end
