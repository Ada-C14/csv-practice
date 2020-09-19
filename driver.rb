require_relative './lib/csv_practice'
require 'awesome_print'
OLYMPIC_DATA_FILENAME = 'data/athlete_events.csv'
olympic_athletes = get_all_olympic_athletes(OLYMPIC_DATA_FILENAME)


MEDAL_TOTALS_FILENAME = 'data/medal_totals.csv'
team_medals = total_medals_per_team(olympic_athletes)
ap team_medals