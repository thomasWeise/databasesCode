SELECT player.name AS player_name, team.name AS team_name FROM player
    LEFT JOIN team ON (player.team = team.id)
    ORDER BY player_name, team_name;
