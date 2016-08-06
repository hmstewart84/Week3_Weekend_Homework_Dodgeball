require_relative( 'models/match' )
require_relative( 'models/team' )
require( 'pry-byebug' )

Match.delete_all()
Team.delete_all()


team1 = Team.new({'name' => 'The Artful Dodgers'})
team2 = Team.new({'name' => 'The Dodgefathers'})
team3 = Team.new({'name' => 'Ball-Der-Dash'})
team4 = Team.new({'name' => 'Much Ado About Balls'})

team1.save()
team2.save()
team3.save()
team4.save()

match1 = Match.new({'home_team_id' => team1.id, 'away_team_id' => team2.id, 'home_team_score' => 10, 'away_team_score' => 2})
match2 = Match.new({'home_team_id' => team1.id, 'away_team_id' => team3.id, 'home_team_score' => 14, 'away_team_score' => 15})
match3 = Match.new({'home_team_id' => team1.id, 'away_team_id' => team4.id, 'home_team_score' => 12, 'away_team_score' => 8})
match4 = Match.new({'home_team_id' => team2.id, 'away_team_id' => team1.id, 'home_team_score' => 11, 'away_team_score' => 7})
match5 = Match.new({'home_team_id' => team2.id, 'away_team_id' => team3.id, 'home_team_score' => 6, 'away_team_score' => 13})
match6 = Match.new({'home_team_id' => team2.id, 'away_team_id' => team4.id, 'home_team_score' => 19, 'away_team_score' => 20})
match7 = Match.new({'home_team_id' => team3.id, 'away_team_id' => team1.id, 'home_team_score' => 16, 'away_team_score' => 18})
match8 = Match.new({'home_team_id' => team3.id, 'away_team_id' => team2.id, 'home_team_score' => 21, 'away_team_score' => 16})
match9 = Match.new({'home_team_id' => team3.id, 'away_team_id' => team4.id, 'home_team_score' => 15, 'away_team_score' => 17})
match10 = Match.new({'home_team_id' => team4.id, 'away_team_id' => team1.id, 'home_team_score' => 11, 'away_team_score' => 9})
match11 = Match.new({'home_team_id' => team4.id, 'away_team_id' => team2.id, 'home_team_score' => 8, 'away_team_score' => 16})
match12 = Match.new({'home_team_id' => team4.id, 'away_team_id' => team3.id, 'home_team_score' => 12, 'away_team_score' => 17})

match1.save()
match2.save()
match3.save()
match4.save()
match5.save()
match6.save()
match7.save()
match8.save()
match9.save()
match10.save()
match11.save()
match12.save()


binding.pry
nil