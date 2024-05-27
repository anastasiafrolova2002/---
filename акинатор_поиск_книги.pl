more_genre(one_hundred_years_of_solitude, 1).
more_genre(flat_world, 1).
more_genre(the_woman_in_white, 3).
more_genre(the_wizard_of_empire, 1).
more_genre(dune, 2).
more_genre(a_short_history_of_nearly_everything, 2).
more_genre(the_star_diaries, 1).
more_genre(lord_of_the_rings, 2).
more_genre(essay_about_drama, 2).
more_genre(treasure_island, 2).
more_genre(misery, 2).
more_genre(ocean_in_the_end_of_the_road, 2).
more_genre(the_murder_on_the_Morg_street, 2).
more_genre(frafments, 2).
more_genre(the_hitchhikers_guide_to_the_galaxy, 1).

more_genre(the_secret_history, 2).
more_genre(fairy_tails, 2).
more_genre(harry_potter, 1).
more_genre(lockwood_and_co, 1).
more_genre(death_souls, 3).
more_genre(the_howls_moving_castle, 1).
more_genre(the_little_prince, 3).

genre(one_hundred_years_of_solitude, 4).
genre(flat_world, 6).
genre(the_woman_in_white, 5).
genre(the_wizard_of_empire, 4).
genre(dune, 8).
genre(a_short_history_of_nearly_everything, 9).
genre(the_star_diaries, 8).
genre(lord_of_the_rings, 6).
genre(essay_about_drama, 1).
genre(treasure_island, 2).
genre(misery, 3).
genre(ocean_in_the_end_of_the_road, 4).
genre(the_murder_on_the_Morg_street, 5).
genre(frafments, 7).
genre(the_hitchhikers_guide_to_the_galaxy, 8).
genre(the_secret_history, 1).
genre(fairy_tails, 4).
genre(harry_potter, 2).
genre(lockwood_and_co, 2).
genre(death_souls, 1).
genre(the_howls_moving_castle, 6).
genre(the_little_prince, 1).

for_all_people(one_hundred_years_of_solitude, 4).
for_all_people(flat_world, 1).
for_all_people(the_woman_in_white, 3).
for_all_people(the_wizard_of_empire, 1).
for_all_people(dune, 3).
for_all_people(a_short_history_of_nearly_everything, 4).
for_all_people(the_star_diaries, 4).
for_all_people(lord_of_the_rings, 1).
for_all_people(essay_about_drama, 2).
for_all_people(treasure_island, 1).
for_all_people(misery, 2).
for_all_people(ocean_in_the_end_of_the_road, 4).
for_all_people(the_murder_on_the_Morg_street, 4).
for_all_people(frafments, 3).
for_all_people(the_hitchhikers_guide_to_the_galaxy, 4).
for_all_people(the_secret_history, 2).
for_all_people(fairy_tails, 1).
for_all_people(harry_potter, 1).
for_all_people(lockwood_and_co, 1).
for_all_people(death_souls, 3).
for_all_people(the_howls_moving_castle, 1).
for_all_people(the_little_prince, 3).

part_of_the_serie(one_hundred_years_of_solitude, 2).
part_of_the_serie(flat_world, 1).
part_of_the_serie(the_woman_in_white, 2).
part_of_the_serie(the_wizard_of_empire, 1).
part_of_the_serie(dune, 1).
part_of_the_serie(a_short_history_of_nearly_everything, 2).
part_of_the_serie(the_star_diaries, 2).
part_of_the_serie(lord_of_the_rings, 1).
part_of_the_serie(essay_about_drama, 2).
part_of_the_serie(treasure_island, 2).
part_of_the_serie(misery, 2).
part_of_the_serie(ocean_in_the_end_of_the_road, 2).
part_of_the_serie(the_murder_on_the_Morg_street, 2).
part_of_the_serie(frafments, 2).
part_of_the_serie(the_hitchhikers_guide_to_the_galaxy, 1).
part_of_the_serie(the_secret_history, 2).
part_of_the_serie(fairy_tails, 1).
part_of_the_serie(harry_potter, 1).
part_of_the_serie(lockwood_and_co, 1).
part_of_the_serie(death_souls, 2).
part_of_the_serie(the_howls_moving_castle, 1).
part_of_the_serie(the_little_prince, 2).

has_adaptation(one_hundred_years_of_solitude, 2).
has_adaptation(flat_world, 2).
has_adaptation(the_woman_in_white, 2).
has_adaptation(the_wizard_of_empire, 4).
has_adaptation(dune, 2).
has_adaptation(a_short_history_of_nearly_everything, 4).
has_adaptation(the_star_diaries, 4).
has_adaptation(lord_of_the_rings, 2).
has_adaptation(essay_about_drama, 4).
has_adaptation(treasure_island, 1).
has_adaptation(misery, 2).
has_adaptation(ocean_in_the_end_of_the_road, 4).
has_adaptation(the_murder_on_the_Morg_street, 4).
has_adaptation(frafments, 4).
has_adaptation(the_hitchhikers_guide_to_the_galaxy, 2).
has_adaptation(the_secret_history, 4).
has_adaptation(fairy_tails, 1).
has_adaptation(harry_potter, 2).
has_adaptation(death_souls, 2).
has_adaptation(the_howls_moving_castle, 1).
has_adaptation(the_little_prince, 2).
has_adaptation(lockwood_and_co, 2).


is_philosophy(death_souls, 2).
is_philosophy(the_little_prince, 1).

multi_POV(harry_potter, 2).
multi_POV(lockwood_and_co, 1).

% question_more_genre(-X)
question_more_genre(X_more_genre):-	write("Does the book have more than one genre?"),nl,
				            write("1. Yes"),nl,
				            write("2. No"),nl,
				            write("3. Can be both"),nl,
				            read(X_more_genre).

% question_genre(-X)
question_genre(X_genre):- write("What is the main genre of the book?"),nl,
                    write("1. Prose"),nl,
                    write("2. Adventure"),nl,
                    write("3. Thriller"),nl,
                    write("4. Magical Realism"),nl,
                    write("5. Detective"),nl,
                    write("6. Fantasy"),nl,
                    write("7. Philosophy"),nl,
                    write("8. Sci-fi"),nl,
                    write("9. Non-fiction"),nl,
                    read(X_genre).

% question_all_people(-X)
question_all_people(X_all_people):-  write("Can the book be read by all people (of all ages: kids, teens, adults and etc.) ?"),nl,
                    write("1. Yes"),nl,
                    write("2. No"),nl,
                    write("3. Rather yes"),nl,
                    write("4. Probably not"),nl,
                    read(X_all_people).

% question_part_of_the_serie(-X)
question_part_of_the_serie(X_part_of_the_serie):-  write("Does the book belong to a series?"),nl,
                    write("1. Yes"),nl,
                    write("2. No"),nl,
                    read(X_part_of_the_serie).

% question_has_adaptations(-X)
question_has_adaptations(X_has_adaptation):-  write("What kind of adaptation the book has?"),nl,
                    write("1. Cartoon"),nl,
                    write("2. Movie"),nl,
                    write("3. Series"),nl,
                    write("4. No adaptation"),nl,
                    read(X_has_adaptation).

% question_is_philosophy(-X)
question_is_philosophy(X_is_philosophy):-  write("Doed the book have some kind of philosophy connotations?"),nl,
                    write("1. Yes"),nl,
                    write("2. No"),nl,
                    read(X_is_philosophy).

% question_multi_POV(-X)
question_multi_POV(X_multi_POV):-  write("Doed the book have multi POV?"),nl,
                    write("1. Yes"),nl,
                    write("2. No"),nl,
                    read(X_multi_POV).

% more_genre_genre(?Y, +X_more_genre, +X_genre)
% проверка ответа по жанру и нескольким жанрам
more_genre_genre(Y, X_more_genre, X_genre):- more_genre(Y, X_more_genre), genre(Y, X_genre).

% genre_more_genre_all_people(?Y, +X_more_genre, +X_genre, +X_all_people)
% проверка ответа по жанру, много жанров и аудитории
genre_more_genre_all_people(Y, X_more_genre, X_genre, X_all_people):- more_genre(Y, X_more_genre),
                                                            genre(Y, X_genre),
                                                            for_all_people(Y, X_all_people).

% genre_more_genre_all_people_part_of_the_serie(?Y, +X_more_genre, +X_genre, +X_all_people, +X_part_of_the_serie)
% проверка ответа по жанру, много жанров, аудитории и серии
genre_more_genre_all_people_part_of_the_serie(Y, X_more_genre, X_genre, X_all_people, X_part_of_the_serie):- more_genre(Y, X_more_genre),
                                                                                        genre(Y, X_genre),
                                                                                        for_all_people(Y, X_all_people),
                                                                                        part_of_the_serie(Y, X_part_of_the_serie).

% genre_more_genre_all_people_part_of_the_serie(?Y, +X_more_genre, +X_genre, +X_all_people, +X_part_of_the_serie, +X_has_adaptation)
% проверка ответа по жанру, много жанров, киберспорту, серии и адаптации
genre_more_genre_all_people_part_of_the_serie_has_adaptation(Y, X_more_genre, X_genre, X_all_people, X_part_of_the_serie, X_has_adaptation):- more_genre(Y, X_more_genre),
                                                                                                            genre(Y, X_genre),
                                                                                                            for_all_people(Y, X_all_people),
                                                                                                            part_of_the_serie(Y, X_part_of_the_serie),
                                                                                                            has_adaptation(Y, X_has_adaptation).

% genre_more_genre_all_people_part_of_the_serie(?Y, +X_more_genre, +X_genre, +X_all_people, +X_part_of_the_serie, +X_has_adaptation, +X_is_philosophy)
% проверка ответа по жанру, много жанров, аудитории, серии, адаптации и доп вопросу про филосифию
genre_all_and_extra_q(Y, X_more_genre, X_genre, X_all_people, X_part_of_the_serie, X_has_adaptation, X_is_philosophy):- more_genre(Y, X_more_genre),
                                                                                                            genre(Y, X_genre),
                                                                                                            for_all_people(Y, X_all_people),
                                                                                                            part_of_the_serie(Y, X_part_of_the_serie),
                                                                                                            has_adaptation(Y, X_has_adaptation),
                                                                                                            is_philosophy(Y, X_is_philosophy).

% genre_more_genre_all_people_part_of_the_serie(?Y, +X_more_genre, +X_genre, +X_all_people, +X_part_of_the_serie, +X_has_adaptation, +X_multi_POV)
% проверка ответа по жанру, мультиплееру, франшизе, адаптации и доп
% вопросу про изменение POV
genre_more_genre_all_people_part_of_the_serie_has_adaptation_change_char(Y, X_more_genre, X_genre, X_all_people, X_part_of_the_serie, X_has_adaptation, X_multi_POV):- more_genre(Y, X_more_genre),
                                                                                                            genre(Y, X_genre),
                                                                                                            for_all_people(Y, X_all_people),
                                                                                                            part_of_the_serie(Y, X_part_of_the_serie),
                                                                                                            has_adaptation(Y, X_has_adaptation),
                                                                                                            multi_POV(Y, X_multi_POV).

% play/0 - начать игру
play:-	question_more_genre(X_more_genre),
        findall(Y, more_genre(Y, X_more_genre), Res_more_genre),
        length(Res_more_genre, Len_more_genre),
        (Len_more_genre =:= 1 -> writeln(Res_more_genre), false ; true),

        question_genre(X_genre),
        findall(Y, more_genre_genre(Y, X_more_genre, X_genre), Res_genre),
        length(Res_genre, Len_genre),
        (Len_genre =:= 1 -> writeln(Res_genre), false ; true),

        question_all_people(X_all_people),
        findall(Y, genre_more_genre_all_people(Y, X_more_genre, X_genre, X_all_people), Res_esport),
        length(Res_esport, Len_esport),
        (Len_esport =:= 1 -> write(Res_esport), false ; true),

        question_part_of_the_serie(X_part_of_the_serie),
        findall(Y, genre_more_genre_all_people_part_of_the_serie(Y, X_more_genre, X_genre, X_all_people, X_part_of_the_serie), Res_part_of_the_serie),
        length(Res_part_of_the_serie, Len_part_of_the_serie),
        (Len_part_of_the_serie =:= 1 -> write(Res_part_of_the_serie), false ; true),

		question_has_adaptations(X_has_adaptation),
        % первое условие - комбинация для проверки вопроса question_is_philosophy
        ((X_more_genre =:= 3, X_genre =:= 1, X_all_people =:= 3, X_part_of_the_serie =:= 2, X_has_adaptation =:= 2)  ->
        (question_is_philosophy(X_is_philosophy),
        genre_all_and_extra_q(Y, X_more_genre, X_genre, X_all_people, X_part_of_the_serie, X_has_adaptation, X_is_philosophy)) ;
        % второе условие - комбинация для проверки вопроса question_multi_POV
        ((X_more_genre =:= 1, X_genre =:= 2, X_all_people =:= 1, X_part_of_the_serie =:= 1, X_has_adaptation =:= 2)  ->
        (question_multi_POV(X_multi_POV),
        genre_more_genre_all_people_part_of_the_serie_has_adaptation_change_char(Y, X_more_genre, X_genre, X_all_people, X_part_of_the_serie, X_has_adaptation, X_multi_POV)) ;
        % стандартный сценарий
        genre_more_genre_all_people_part_of_the_serie_has_adaptation(Y, X_more_genre, X_genre, X_all_people, X_part_of_the_serie, X_has_adaptation)
        )),
		write(Y).

