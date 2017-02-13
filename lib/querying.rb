def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM books join series on series.id=books.series_id where series.id=1"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto From characters ORDER BY LENGTH(characters.motto) DESC LIMIT 1"
end

def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, count(characters.species) FROM characters GROUP BY characters.species ORDER BY count(characters.species) DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM authors join series on series.author_id = authors.id join subgenres on subgenres.id=series.subgenre_id"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series join characters on series.id = characters.series_id where species = 'human' GROUP BY series.id ORDER BY count(characters.species) DESC LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, count(character_books.book_id) FROM character_books JOIN characters on characters.id = character_books.character_id GROUP BY characters.name ORDER BY count(character_books.book_id) DESC"
end
