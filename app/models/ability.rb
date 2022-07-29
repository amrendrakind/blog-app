class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    can :read, :all
    can :add, :all

    if user.role? == 'admin'
      can :manage, User
      can :manage, Post
      can :manage, Comment
      can :manage, Like
      # can :destroy, Post
    else
      can :manage, Post, author_id: user.id
      can :manage, Comment, author_id: user.id
    end
    # cannot :manage , XXX
    # can    :read   , Tag , released: true
  end
end
