library(baseballr)

seasons = c(2000:2019,2021:2025)
dir.create("data", showWarnings=FALSE)
dir.create("data/aaa", showWarnings=FALSE)
dir.create("data/mlb", showWarnings=FALSE)

for (year in seasons) {
  aaa = mlb_stats(
    stat_type="season",
    season=year,
    stat_group="hitting",
    player_pool="ALL",
    sport_ids=11,
    limit=10000
  )
  mlb = mlb_stats(
    stat_type="season",
    season=year,
    stat_group="hitting",
    player_pool="ALL",
    sport_ids=1,
    limit=10000
  )
  saveRDS(aaa, paste0("data/aaa/aaa_", year, ".rds"))
  saveRDS(mlb, paste0("data/mlb/mlb_", year, ".rds"))
}