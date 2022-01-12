

valid_team_names <- c( "Toronto Raptors", "New Orleans Pelicans", "LA Clippers",    
                       "Los Angeles Lakers", "Charlotte Hornets", "Chicago Bulls", 
                       "Dallas Mavericks","Washington Wizards", "Indiana Pacers", 
                       "Detroit Pistons", "Portland Trail Blazers", "Denver Nuggets", 
                       "Oklahoma City Thunder",  "Utah Jazz", "Memphis Grizzlies",
                       "Orlando Magic", "Cleveland Cavaliers", "Brooklyn Nets",
                       "Minnesota Timberwolves","San Antonio Spurs", "New York Knicks",
                       "Boston Celtics", "Philadelphia 76ers", "Atlanta Hawks",         
                       "Milwaukee Bucks", "Houston Rockets", "Golden State Warriors")

render_function <- function(team_name) {
  
  team_name_clean <- gsub(pattern = " ", replacement = "_",
                  tolower(team_name))
  outfile <- paste0("reports/",team_name_clean, ".Rmd")
  
  rmarkdown::render("03_parametrized_report.Rmd",
                    params = list(nameTeam=team_name),
                    output_file = outfile)
  
}

for(i in valid_team_names) {
  render_function(i)
}



