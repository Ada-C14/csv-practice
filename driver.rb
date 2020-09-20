require_relative './lib/csv_practice'
require 'awesome_print'
OLYMPIC_DATA_FILENAME = 'data/athlete_events.csv'
olympic_athletes = get_all_olympic_athletes(OLYMPIC_DATA_FILENAME)
# ap olympic_athletes

# MEDAL_TOTALS_FILENAME = 'data/medal_totals.csv'
# team_medals = total_medals_per_team(olympic_athletes)
# ap team_medals

tall_ppl = tall_ppl_per_country(olympic_athletes)
ap tall_ppl
