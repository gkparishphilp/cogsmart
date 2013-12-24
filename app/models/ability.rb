class Ability

	# Used by CanCan to define abilities and access priveledges

	# super -- generic super-admin
	# admin -- owner / manager of carrerrev
	# business_manager -- a business client. Pays for a plan with max # of users
	# member -- registered user

	include CanCan::Ability

	def initialize( user )
		user ||= User.new
		if user.has_role?( :super )
			can :manage, :all
		end

	end
end