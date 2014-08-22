class Ability
  def initialize_report(user, ip_address = nil)
    case user.try(:role).try(:name)
    when 'Administrator'
      can :manage, ReportTemplate
    when 'Librarian'
      can :manage, ReportTemplate
    when 'User'
    end
  end
end
