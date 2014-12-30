class Favorite
  attr_accessor :package, :activities

  def initialize(package, activities)
    @package = package
    @activities = activities
  end
end
