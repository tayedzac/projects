data <- read_csv("~/projects/proj1/inputs/data/raw_data.csv")

#### CLEANING DATASET #####
clean_data <- clean_names(data) |>
  select(postal_code, ward_name) |>
  drop_na(ward_name)

#### REMOVING DUPLICATE TERMS ####
clean_data <- clean_data |>
  mutate(
    ward_name =
      recode(
        ward_name,
        "Toronto-St. Paul's" = "St.Paul's"
      )
  )

clean_data <- clean_data |>
  mutate(
    ward_name =
      recode(
        ward_name,
        "Toronto-St.Paul's" = "St.Paul's"
      )
  )

clean_data <- clean_data |>
  mutate(
    ward_name =
      recode(
        ward_name,
        "Toronto-St. Paul’s" = "St.Paul's"
      )
  )
      

write_csv(clean_data, "~/projects/proj1/inputs/data/clean_data.csv")