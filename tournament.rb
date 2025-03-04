input = <<~INPUT
  Allegoric Alaskans;Blithering Badgers;loss
  Allegoric Alaskans;Blithering Badgers;win
	Allegoric Alaskans;Blithering Badgers;win
  Blithering Badgers;Courageous Californians;win
  Courageous Californians;Allegoric Alaskans;loss
	Allegoric Alaskans;Blithering Badgers;win 
	Devastating Donkeys;Courageous Californians;draw
	Devastating Donkeys;Allegoric Alaskans;win
	Courageous Californians;Blithering Badgers;loss
	Blithering Badgers;Devastating Donkeys;loss
	Allegoric Alaskans;Courageous Californians;win
INPUT

class Tournament
  @@teams = []

  def self.tally(input)
    @@teams.clear 
    input.each_line do |line|
      team1, team2, result = line.strip.split(";")
      add_match(team1, team2, result) if team1 && team2 && result 
    end
    expected
  end

  def self.add_match(team1, team2, result)
    case result
    when "win"
      update_team(team1, 1, 1, 0, 0, 3)
      update_team(team2, 1, 0, 0, 1, 0)
    when "loss"
      update_team(team1, 1, 0, 0, 1, 0)
      update_team(team2, 1, 1, 0, 0, 3)
    when "draw"
      update_team(team1, 1, 0, 1, 0, 1)
      update_team(team2, 1, 0, 1, 0, 1)
    else
      puts "Resultado desconocido: #{result}"
    end
  end

  def self.update_team(team_name, mp, w, d, l, p)
    team = @@teams.find { |t| t[0] == team_name }
    if team
      team[1] += mp
      team[2] += w
      team[3] += d
      team[4] += l
      team[5] += p
    else
      @@teams << [team_name, mp, w, d, l, p]
    end
  end

  def self.expected
    sorted_teams = @@teams.sort_by { |team| [-team[5], team[0]] }
    result = "Team                           | MP |  W |  D |  L |  P\n"
    sorted_teams.each do |team|
      result += format("%-30s |  %d |  %d |  %d |  %d | %2d\n",
                       team[0], team[1], team[2], team[3], team[4], team[5])
    end
    result
  end
end

puts Tournament.tally(input)
