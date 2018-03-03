def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year ORDER BY year WHERE series_id=1;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto FROM characters ORDER BY length(characters.motto) DESC LIMIT 1"
end
select projects.title
from projects
order by length(projects.title) desc LIMIT 1;

def select_value_and_count_of_most_prolific_species
  "SELECT serires.name, COUNT(series.name) FROM series
  INNER JOIN series ON books.series_id=series.id
  ORDER BY COUNT(series.name;"
end

def select_name_and_series_subgenres_of_authors #what is it asking???
  "SELECT authors.name, sub_genres.name FROM authors
  INNER JOIN authors ON series.author_id=authors.id
  INNER JOIN sub_genres ON sub_genres.id=serires.sub_genre_id;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title, COUNT FROM series
  INNER JOIN series ON characters.series_id=series.id
   "
end

def select_character_names_and_number_of_books_they_are_in
  "Write your SQL query here"
end
