seasons = c(2000:2019, 2021:2025)

aaa = lapply(
  seasons,
  function(year) {
    readRDS(paste0("data/aaa/aaa_", year, ".rds"))
  }
)

mlb = lapply(
  seasons,
  function(year) {
    readRDS(paste0("data/mlb/mlb_", year, ".rds"))
  }
)

names(aaa) = seasons
names(mlb) = seasons

summary_table = data.frame(
  season=seasons,
  aaa_rows = sapply(aaa, nrow),
  mlb_rows = sapply(mlb, nrow),
  aaa_cols = sapply(aaa, ncol),
  mlb_cols = sapply(mlb, ncol)
)

print(summary_table)