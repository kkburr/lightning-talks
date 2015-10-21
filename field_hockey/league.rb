class League
  attr_accessor :players, :sections, :teams

  def initialize(players_hashes, sections_hash)
    @players = players_hashes # an initial array of hashes
    @sections = sections_hash # {"3"=>[], "6"=>[]}
    @teams = [] #to be array of teams (arrays) of players (hashes)
  end

  def run
    sort_by_grades
    sort_by_teammate_preference
    sort_by_school
    sort_by_coach
  end

  def sort_by_grades
    grades_array = sections.keys # ["3", "6"]
    players.each do |player|
      grades_array.each do |grade|
        sections[grade] << player if (grade..(grade + 2)).include? player[:grade]
      end
    end
  end

  def sort_by_teammate_preference
    sections.each do |section|
      temp_teams = []
      section.each do |player|
        teammate = Player.find_by_name(player[:preference])
        if teammate
          team = [player, teammate]
          temp_teams << team
        end
      end

      temp_teams.each do |team|
        temp_team = []
        temp_team
      end
      # combine arrays that overlap
    end
  end

end
