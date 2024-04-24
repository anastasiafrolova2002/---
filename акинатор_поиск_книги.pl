%FACTS
book(one_hundred_years_of_solitude).
book(flat_world).
book(the_woman_in_white).
book(the_wizard_of_empire).
book(dune).
book(a_short_history_of_nearly_everything).
book(the_star_diaries).
book(essay_about_drama).
book(treasure_island).
book(misery).
book(ocean_in_the_end_of_the_road).
book(the_murder_on_the_Morg_street).
book(frafments).
book(the_hitchhikers_guide_to_the_galaxy).

author(gabriel_garcia_marquez,one_hundred_years_of_solitude).
author(terry_pratchett,flat_world).
author(wilkie_collins,the_woman_in_white).
author(victor_dashkevich,the_wizard_of_empire).
author(frank_helpert,dune).
author(bill_bryson,a_short_history_of_nearly_everything).
author(stanislaw_lem,the_star_diaries).
author(vladimir_nabokov,essay_about_drama).
author(luise_stevenson,treasure_island).
author(steven_king,misery).
author(nil_gayman,ocean_in_the_end_of_the_road).
author(nil_gayman,the_murder_on_the_Morg_street).
author(heraclit,frafments).
author(duglas_adams,the_hitchhikers_guide_to_the_galaxy).


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
book_author(lord_of_the_rings,8).
book_author(essay_about_drama,10).
book_author(treasure_island,11).
book_author(misery,12).
book_author(ocean_in_the_end_of_the_road,13).
book_author(the_murder_on_the_Morg_street,14).
book_author(frafments,15).
book_author(the_hitchhikers_guide_to_the_galaxy,16).

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
book_genre(the_wizard_of_empire,4).
book_genre(the_wizard_of_empire,5).
book_genre(essay_about_drama,1).
book_genre(treasure_island,2).
book_genre(misery,3).
book_genre(ocean_in_the_end_of_the_road,4).
book_genre(the_murder_on_the_Morg_street,5).
book_genre(frafments,7).
book_genre(the_hitchhikers_guide_to_the_galaxy,8).
book_genre(the_hitchhikers_guide_to_the_galaxy,9).


more_genre(one_hundred_years_of_solitude,1).
more_genre(flat_world,1).
more_genre(the_woman_in_white,1).
more_genre(dune,0).
more_genre(a_short_history_of_nearly_everything,0).
more_genre(the_star_diaries,1).
more_genre(the_wizard_of_empire,1).
more_genre(the_wizard_of_empire,1).
more_genre(lord_of_the_rings,0).
more_genre(essay_about_drama,0).
more_genre(treasure_island,0).
more_genre(misery,0).
more_genre(ocean_in_the_end_of_the_road,0).
more_genre(the_murder_on_the_Morg_street,0).
more_genre(frafments,0).
more_genre(the_hitchhikers_guide_to_the_galaxy,1).


question1(X1):-	write("What genre your book is?"),nl,
				write("1. Prose"),nl,
				write("2. Adventure"),nl,
                                write("3. Thriller"),nl,
                                write("4. Magical Realism"),nl,
                                write("5. Detective"),nl,
                                write("6. Fantasy"),nl,
                                write("7. Philosophy"),nl,
                                write("8. Sci-fi"),nl,
                                write("9. Non-fiction"),nl,
				read(X1).

question2(X2):-	write("Does the book have more than one ganre?"),nl,
				write("1. Yes"),nl,
				write("0. No"),nl,
                                read(X2).

question3(X3):-	write("Who is the author of the book?"),nl,
				write("1. Gabriel Garcia Marquez"),nl,
				write("2. Terry Pratchett"),nl,
                                write("3. Wilkie Collins"),nl,
                                write("4. Victor Dashkevich"),nl,
                                write("5. Frank Helpert"),nl,
                                write("6. Bill Bryson"),nl,
                                write("7. Stanislaw Lem"),nl,
                                write("8. John Tolkien"),nl,
                                write("9. Vladimir Nabokov"),nl,
				write("10. Louis Stevenson"),nl,
                                write("11. Steven King"),nl,
                                write("12. Neil Gaiman"),nl,
                                write("13. Edgar Allan Poe"),nl,
                                write("14. Heraclite"),nl,
                                write("15. Douglas Adams"),nl,
                                read(X3).


one_genre_only(G,O,B):- book_genre(B,G),more_genre(B,O).

pr2:-	question1(X1),question2(X2),
     book_genre(X,X1),more_genre(X,X2),(X2=:=0->write(X),true,!;
    question3(X3),
        book_genre(X,X1),more_genre(X,X2),book_author(X,X3),
        write("The book you've been thinking of is " = X)).
