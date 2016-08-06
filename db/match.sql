DROP TABLE Matches;
DROP TABLE Teams;


CREATE TABLE Teams (
  id serial4 primary key,
  name VARCHAR(255)
);

CREATE TABLE Matches (
  id serial4 primary key,
  home_team_id serial4 references teams(id) on delete cascade,
  away_team_id serial4 references teams(id) on delete cascade,
  home_team_score int4,
  away_team_score int4

);

