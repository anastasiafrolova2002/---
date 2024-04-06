
%in_list(?List, ?El) - если El унифицирована, то проверить, входит ли данный элемент в массив
% если El не унифицирован, будут возвращать все элементы по очереди, до точки.
% если List не унифицирован, будет возвращён список с El.
in_list([El|_], El).
in_list([_|T], El):-in_list(T, El).


% Три друга заняли первое, второе, третье места в соревнованиях
% универсиады. Друзья разной национальности, зовут их по-разному, и
% любят они разные виды спорта. Майкл предпочитает баскетбол и играет
% лучше, чем американец. Израильтянин Саймон играет лучше теннисиста.
% Игрок в крикет занял первое место. Кто является австралийцем? Каким
% спортом увлекается Ричард?

% names: Richard, Simon, Michael
% sports: criket, backetball, tennis
% countries: america, austia, israel
% places: 1, 2, 3

pr_sport_friends:-
    Friends = [_, _, _],
    in_list(Friends, [_, cricket, _, 1]),

    in_list(Friends, [richard, _, _, _]),
    in_list(Friends, [simon, _, israel, PlaceSim]),
    in_list(Friends, [michael, basketball, _, PlaceMic]),

    in_list(Friends, [_, _, _, 2]),
    in_list(Friends, [_, _, _, 3]),

    in_list(Friends, [_, _, austria, _]),
    in_list(Friends, [_, _, america, PlaceAmer]),

    in_list(Friends, [_, tennis, _, TennPos]),


    in_list(Friends, [richard, SportRich, CountryRich, PlaceRich]),
    in_list(Friends, [NameAustr, SportAustr, austria, PlaceAustr]),

    PlaceMic < PlaceAmer,
    PlaceSim < TennPos,

    write("austria:"),write(NameAustr), nl,
    write("sport rich:"),write(SportRich),nl,!.

