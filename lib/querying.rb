def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM books WHERE books.series_id=1 GROUP BY books.year ORDER BY books.year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name,characters.motto FROM characters WHERE length(characters.motto) =
(select max(length(characters.motto)) FROM characters);"
end


def select_value_and_count_of_most_prolific_species
  "SELECT MAX(characters.species),COUNT(characters.species) FROM characters GROUP BY characters.species ORDER BY characters.species DESC limit 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name,subgenres.name FROM authors JOIN subgenres ON authors.id=subgenres.id;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series JOIN characters ON characters.series_id=series.id GROUP BY series.title ORDER BY series.title limit 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name,COUNT(character_books.character_id) FROM characters JOIN character_books WHERE characters.id=character_books.character_id GROUP BY characters.name ORDER BY COUNT(character_books.character_id) DESC;"
end
