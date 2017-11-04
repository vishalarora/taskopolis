module Merit
  class BadgeRules
    include Merit::BadgeRulesMethods

    def initialize
      # If it creates user, grant badge
      # Should be "current_user" after registration for badge to be granted.
      # Find badge by badge_id, badge_id takes presidence over badge
      # grant_on 'users#create', badge_id: 7,
      #                          badge: 'just-registered',
      #                          to: :itself

      # If it has 10 comments, grant commenter-10 badge
      # grant_on 'comments#create', badge: 'commenter', level: 10 do |comment|
      #   comment.user.comments.count == 10
      # end

      # If it has 5 votes, grant relevant-commenter badge
      # grant_on 'comments#vote', badge: 'relevant-commenter',
      #   to: :user do |comment|
      #
      #   comment.votes.count == 5
      # end

      # Changes his name by one wider than 4 chars (arbitrary ruby code case)
      # grant_on 'registrations#update', badge: 'autobiographer',
      #   temporary: true, model_name: 'User' do |user|
      #
      #   user.name.length > 4
      # end
    end
  end
end
