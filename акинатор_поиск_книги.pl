%FACTS
book(one_hundred_years_of_solitude).
book(flat_world).
book(the_woman_in_white).
book(the_wizard_of_empire).
book(dune).
book(a_short_history_of_nearly_everything).
book(the_star_diaries).

author(gabriel_garcia_marquez,one_hundred_years_of_solitude).
author(terry_pratchett,flat_world).
author(wilkie_collins,the_woman_in_white).
author(victor_dashkevich,the_wizard_of_empire).
author(frank_helpert,dune).
author(bill_bryson,a_short_history_of_nearly_everything).
author(stanislaw_lem,the_star_diaries).

genre(prose).
genre(magic_realism).
genre(adventure).
genre(fantasy).
genre(detective).
genre(thriller).
genre(sci_fi).
genre(non_fiction).
genre(philosophy).

%FOR QUESTIONS
book_author(one_hundred_years_of_solitude,1).
book_author(flat_world,2).
book_author(the_woman_in_white,3).
book_author(the_wizard_of_empire,4).
book_author(dune,5).
book_author(a_short_history_of_nearly_everything,6).
book_author(the_star_diaries,7).

book_genre(one_hundred_years_of_solitude,1).
book_genre(one_hundred_years_of_solitude,2).
book_genre(flat_world,3).
book_genre(flat_world,4).
book_genre(the_woman_in_white,5).
book_genre(the_woman_in_white,6).
book_genre(dune,7).
book_genre(a_short_history_of_nearly_everything,8).
book_genre(the_star_diaries,7).
book_genre(the_star_diaries,9).
book_genre(the_star_diaries,1).

more_genre(one_hundred_years_of_solitude,1).
more_genre(flat_world,1).
more_genre(the_woman_in_white,1).
more_genre(dune,0).
more_genre(a_short_history_of_nearly_everything,0).
more_genre(the_star_diaries,1).
more_genre(the_wizard_of_empire,1).



question1(X1):-	write("What genre your book is?"),nl,
				write("1. Prose"),nl,
				write("2. Magical Realism"),nl,
                                write("3. Adventure"),nl,
                                write("4. Fantasy"),nl,
                                write("5. Detective"),nl,
                                write("6. Thriller"),nl,
                                write("7. Sci-fi"),nl,
                                write("8. Non-fiction"),nl,
                                write("9. Philosophy"),nl,
				read(X1).

question2(X2):-	write("Who is the author of the book?"),nl,
				write("1. Gabriel Garcia Marquez"),nl,
				write("2. Terry Pratchett"),nl,
                                write("3. Wilkie Collins"),nl,
                                write("4. Victor Dashkevich"),nl,
                                write("5. Frank Helpert"),nl,
                                write("6. Bill Bryson"),nl,
                                write("7. Stanislaw Lem"),nl,
				read(X2).

question3(X3):-	write("Does the book have more than one ganre?"),nl,
				write("1. Yes"),nl,
				write("0. No"),nl,
                                read(X3).


pr:-	question1(X1),question2(X2),question3(X3),
        book_genre(X,X1),book_author(X,X2),more_genre(X,X3),
        write(X).
