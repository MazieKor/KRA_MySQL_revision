![Coders-Lab-1920px-no-background](https://user-images.githubusercontent.com/152855/73064373-5ed69780-3ea1-11ea-8a71-3d370a5e7dd8.png)


## Zadanie 1 - rozwiązywane z wykładowcą

W pliku `Main1.java` napisz zapytania SQL, które wypełnią dwoma wpisami **każdą** tabelę w bazie danych o nazwie ```products_ex```.

## Zadanie 2 - rozwiązywane z wykładowcą

W pliku `Main2.java` napisz zapytania SQL (dla bazy danych ```products_ex```), które pobiorą:

1. pierwsze 10 produktów gdzie cena jest większa lub równa **50**,
2. wszystkich klientów z nazwiskiem zaczynającym się na literę: **J**,
3. wszystkie zamówienia gdzie opis nie jest pusty,
4. liczbę wszystkich produktów, których cena jest równa **10**.

## Zadanie 3

W pliku `Main03.java` znajdują się zapytania do bazy danych.  
Dotyczą stworzonych wcześniej baz i tabel w zadaniach z działu: `1_Tworzenie_baz_i_tabel`, jednakże są niepoprawne.  
Twoim zadaniem jest znaleźć błędy, a poprawne zapytanie zapisać do przygotowanych zmiennych.

## Zadanie 4
1. Napisz zapytania SQL, żeby wypełnić pięcioma wpisami **każdą** tabelę w bazie danych o nazwie ```cinemas_ex```.

## Zadanie 5

W pliku `Main5.java` napisz zapytania SQL (dla bazy danych ```cinemas_ex```), które pobiorą:

1. wszystkie filmy na literę **W**,  
2. wszystkie bilety, których cena jest większa niż **15.30**,  
3. wszystkie bilety, których liczba jest większa niż **3**,  
4. wszystkie filmy, które mają `rating` większy niż **6.5**,  
5. film z największą wartością `rating` (wykorzystaj `ORDER BY` oraz `LIMIT`).


## Zadanie 6

W pliku `Main6.java` napisz zapytania SQL (dla bazy danych `cinemas_ex`). Zapytania mają zwracać następujące wyniki:  

1. liczbę wszystkich biletów,
2. liczbę wszystkich płatności, grupując je po kolumnie `type`,
3. średnią cenę biletu,
4. pięć ostatnich płatności, zaczynając od drugiej,
5. listę wszystkich płatności (pogrupowanych po kolumnie `type`), których liczba będzie większa niż 2,
6. sumę ilości `SUM(quantity)` wszystkich biletów, których cena jest większa niż 23,15.


## Zadanie 7
Praca na bazie `cinemas_ex`.  

W pliku `Main7.java` napisz zapytania SQL, które:  

1. usuną wiersz z tabeli filmów o `id` = 4,
2. usuną wiersze z tabeli o nazwie `helios`,
3. ustawią dla wszystkich biletów ilość na 10,
4. usuną wszystkie płatności, których data jest wcześniejsza niż **2019-01-01**.


## Zadanie 8

Praca na bazie `cinemas_ex`.  

W pliku `Main8.java` napisz następujące zapytania do bazy:

1. zmieniające adres na `Stadion Narodowy` dla kin, których nazwa kończy się na **z**, 
2. usuwające płatności, których data jest starsza niż **4** dni od aktualnego czasu (z dokładnością do sekundy),
3. zmieniające rating filmu na `5.4` dla filmów, których opis jest dłuższy niż **40** znaków – poszukaj funkcji `MySQL`, która sprawdza liczbę znaków,
4. zmniejszające cenę biletu o **50%**, jeśli ich liczba jest większa niż **10**, zapisz je jako pojedyncze zapytanie `SQL`.

