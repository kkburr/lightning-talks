# 1. Sort by Grade
# 2. Sort by Teammate Preference
# 3. Sort by School
# 4. Sort by Coach


# *****************************************************************
# Component

class Sort
end


# *****************************************************************
# Composite

class CreateLeague < Sort
  def run(players)
    sections_array = SortIntoSections.new(players)
    teams_array = SortIntoTeams.new(sections_array)
    teams_array
  end
end

class SortIntoSections < Sort
  # calls SortByGrade
end

class SortIntoTeams < Sort
  # calls SortByTeammatePreference, SortBySchool, SortByCoach
end


# *****************************************************************
# Leaf

class SortByGrade < Sort
end

class SortByTeammatePreference < Sort
end

class SortBySchool < Sort
end

class SortByCoach < Sort
end


CreateLeague.new.run(players_hash)
# returns an array of teams
