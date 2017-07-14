module Merit
  class RankRules
    include Merit::RankRulesMethods

    def initialize
      # set_rank :level => 1, :to => Commiter.active do |commiter|
      #   commiter.repositories.count > 1 && commiter.followers >= 10
      # end
      #
      # set_rank :level => 2, :to => Commiter.active do |commiter|
      #   commiter.branches.count > 1 && commiter.followers >= 10
      # end
      #
      # set_rank :level => 3, :to => Commiter.active do |commiter|
      #   commiter.branches.count > 2 && commiter.followers >= 20
      # end
    end
  end
end
