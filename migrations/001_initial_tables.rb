# Spain ---
# Brazil -----
# Equador ----
# Portugal ---
#         Math
#                 grade 3
#                 grade 4
#                 ....
#                 grade 11
#                         Algebra
#                         Calculus
#                                 Differentiation
#                                         - sub 1
#                                         - sub 2
#                                         - ...
#                                         - sub n
#                                 Integration
#                                         - sub 1
#                                         - sub 2
#                                         - ...
#         Science
#                 Physics
#                         .....
#                 Biology
#                         ....
#                 Chemistry
#                         ....

#         Portuguese
#                 Literature
#                         ...
#                 Grammar

Sequel.migration do
  change do
    create_table(:countries) do
      primary_key :id
    end

    create_table(:field_of_studies) do
      primary_key :id
      String :name

      foreign_key :country_id, :countries
    end

    create_table(:topic) do
      primary_key :id
      String :name

      foreign_key :field_of_study_id, :field_of_studies
    end

  end
end