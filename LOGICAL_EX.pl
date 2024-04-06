
%in_list(?List, ?El) - ���� El �������������, �� ���������, ������ �� ������ ������� � ������
% ���� El �� ������������, ����� ���������� ��� �������� �� �������, �� �����.
% ���� List �� ������������, ����� ��������� ������ � El.
in_list([El|_], El).
in_list([_|T], El):-in_list(T, El).


% ��� ����� ������ ������, ������, ������ ����� � �������������
% �����������. ������ ������ ��������������, ����� �� ��-�������, �
% ����� ��� ������ ���� ������. ����� ������������ ��������� � ������
% �����, ��� ����������. ������������ ������ ������ ����� ����������.
% ����� � ������ ����� ������ �����. ��� �������� ������������? �����
% ������� ���������� ������?

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

