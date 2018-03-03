def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM books
  ORDER BY books.year WHERE series_id=1;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto FROM characters ORDER BY length(characters.motto) DESC LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT series.name, COUNT(series.name) FROM series
  INNER JOIN series ON books.series_id=series.id
  ORDER BY COUNT(series.name);"
end

def select_name_and_series_subgenres_of_authors #what is it asking???
  "SELECT authors.name, subgenres.name FROM authors
  INNER JOIN authors ON series.author_id=authors.id
  INNER JOIN subgenres ON subgenres.id=serires.sub_genre_id;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title, COUNT(characters.species) FROM series
  INNER JOIN series ON characters.series_id=series.id
  GROUP BY characters.species ORDER BY COUNT(characters.speices) DESC LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(books.title) FROM characters
  INNER JOIN characters ON books.series_id=characters.series_id
  ORDER BY COUNT(books.title) DESC;
  " #would books.title be the right thing to put into count? just want to count books
end
