# NFL-Injury-Analysis-Challenge
## Datasets
### Concussion Injuries 2012-2014.csv
This dataset contains detailed information on concussion injuries sustained by NFL players from 2012 to 2014, covering 392 cases. It includes data on the player, team, game, injury details, and the impact on the player's performance and participation in subsequent games.
ID: Unique identifier for each injury.
Player: Name of the player who was injured.
Team: Team to which the player belongs.
Game: The specific game in which the injury occurred.
Date: Date of the game.
Opposing Team: The team against which the injury occurred.
Position: Position of the player.
Pre-Season Injury?: Indicates if the injury occurred in the pre-season (Yes/No).
Winning Team?: Indicates if the player's team won the game (Yes/No).
Week of Injury: Week number of the season when the injury occurred.
Season: The season in which the injury occurred.
Weeks Injured: Number of weeks the player was injured.
Games Missed: Number of games the player missed due to the injury.
Unknown Injury?: Indicates if the injury was unknown (Yes/No).
Reported Injury Type: Type of injury reported (e.g., concussion, head injury).
Total Snaps: Total snaps played in the game where the injury occurred.
Play Time After Injury: Amount of playtime after the injury occurred.
Average Playtime Before Injury: Average playtime before the injury.

### Head Injured Players.csv
The dataset contains detailed information on NFL players who sustained head injuries between 2012 and 2014, including the number of injuries, games missed, and their associated teams and roles. It also includes player demographics, such as age, date of birth, and a brief biography, with some records missing for certain seasons.
Player: The name of the player.
2012/2013 - Number of Injuries: Number of injuries sustained by the player during the 2012/2013 season.
2012/2013 - Games Missed: Number of games missed due to injuries during the 2012/2013 season.
2013/2014 - Number of Injuries: Number of injuries sustained by the player during the 2013/2014 season.
2013/2014 - Games Missed: Number of games missed due to injuries during the 2013/2014 season.
2014/2015 - Number of Injuries: Number of injuries sustained by the player during the 2014/2015 season.
2014/2015 - Games Missed: Number of games missed due to injuries during the 2014/2015 season.
Total Number of Injuries (2012-2014): Total number of injuries sustained by the player over the 2012-2014 period.
Total Games Missed (2012-2014): Total number of games missed due to injuries over the 2012-2014 period.
Age first concussion (2012-2014): The player's age at the time of their first concussion during the 2012-2014 period.
Team(s) during concussion incidents 2012-2014: The team(s) the player was part of during the concussion incidents.
Roles during injuries: The player's role/position during the injuries.
Current Age (approx.): The player's approximate current age.
Date of Birth: The player's date of birth.
Biography: A brief biography of the player.
Wikipedia Url: The Wikipedia URL for the player.

### Match Dates.csv
This dataset contains records of match dates along with the corresponding number of injuries, week of the season, and season year. It tracks injury data across different weeks and seasons, providing insights into injury occurrences during specific time periods.
Date: The dates are recorded as strings (object type).
Number of Injuries: This column contains integer values representing the number of injuries during a particular match or time period.
Week: An integer representing the week of the season.
Season: A string indicating the season (e.g., "2012/2013").

### Matches-2012-2015.csv
The dataset contains information on 791 football matches from the 2012 to 2015 seasons, detailing the participating teams, match dates, scores, and season weeks. It includes match outcomes for most games, although some entries have missing score data.
Match: Description of the match, including the teams and date.
Teams: A string listing both teams in the match.
Team 1: The name of the first team.
Team 2: The name of the second team.
Score Team 1: The score of Team 1.
Score Team 2: The score of Team 2.
Date: The date the match took place.
Week: The week of the season when the match occurred.
Season: The season in which the match took place.

### NFL Teams.csv
The dataset contains injury data for 32 NFL teams across three seasons (2012/2013, 2013/2014, 2014/2015), including the number of injuries and total weeks of injury for each season. Additionally, it includes descriptive information such as team logos, Wikipedia links, and locations.
Team: Name of the NFL team.
2012/2013 - Number of Injuries: Number of injuries in the 2012/2013 season.
2012/2013 - Weeks of Injury, by all its players: Total weeks of injury for all players in the 2012/2013 season.
2013/2014 - Number of Injuries: Number of injuries in the 2013/2014 season (31 entries).
2013/2014 - Weeks of Injury, by all its players: Total weeks of injury for all players in the 2013/2014 season (31 entries).
2014/2015 - Number of Injuries: Number of injuries in the 2014/2015 season (28 entries).
2014/2015 - Weeks of Injury, by all its players: Total weeks of injury for all players in the 2014/2015 season (28 entries).
Total Number of Injuries (2012-2014): Total number of injuries over the three seasons.
Total Weeks of Injury, by all its players (2012-2014): Total weeks of injury for all players over the three seasons.
Logo: Link or identifier for the team's logo.
Wikipedia page: Link to the team's Wikipedia page.
Description: Descriptive text about the team.
Location: The team's location.

### Seasons.csv
The dataset records injury statistics for multiple sports seasons, detailing the total number of injuries, games missed, and weeks of injury for all players in each season. It provides insight into how player injuries impact game participation over time
Season: The season for which the data is recorded (e.g., 2012/2013).
Total Number of Injuries: The total number of injuries reported during the season.
Total Games Missed, by all players: The total number of games missed by all players due to injuries.
Total Weeks of Injury, all its players: The total number of weeks players were injured across the season.