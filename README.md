# Etap 1. Określenie scenariusza biznesowego i zakresu projektu

## Nazwa projektu

Sales Reporting System in Oracle PL/SQL

## Cel projektu

Celem projektu jest stworzenie modułu raportowego dla obszaru sprzedaży, działającego w oparciu o bazę danych Oracle oraz logikę zaimplementowaną w SQL i PL/SQL. System ma umożliwiać analizę danych sprzedażowych, generowanie podstawowych raportów biznesowych oraz prezentować podejście do optymalizacji zapytań stosowane w środowisku enterprise.

Projekt portfolio ma pokazać umiejętność projektowania struktur danych, budowy warstwy raportowej, tworzenia pakietów PL/SQL, korzystania z widoków i funkcji analitycznych SQL oraz analizowania wydajności zapytań z użyciem mechanizmów takich jak indeksy i EXPLAIN PLAN.

## Tło biznesowe

Założeniem projektu jest firma handlowa sprzedająca produkty do klientów indywidualnych i biznesowych. W systemie operacyjnym zapisywane są dane o sprzedaży, produktach oraz klientach, jednak sama baza transakcyjna nie zapewnia wygodnej warstwy analitycznej dla użytkowników biznesowych.

Firma potrzebuje modułu raportowego, który pozwoli w uporządkowany sposób analizować wyniki sprzedaży w różnych przekrojach: dziennym, miesięcznym, produktowym i klienckim. Raporty mają wspierać podejmowanie decyzji biznesowych, między innymi w zakresie oceny wyników sprzedażowych, identyfikacji najlepiej sprzedających się produktów oraz analizy wartości klientów.

System nie jest pełnym rozwiązaniem klasy BI ani hurtownią danych. Jest to wydzielony moduł raportowy oparty bezpośrednio na relacyjnej bazie danych Oracle, zaprojektowany tak, aby przypominał rzeczywiste rozwiązania spotykane w systemach biznesowych.

## Użytkownicy systemu

### Kierownik sprzedaży

Kierownik sprzedaży korzysta z raportów w celu monitorowania bieżących wyników handlowych i obserwowania trendów sprzedaży. Najważniejsze dla niego są raporty dziennej i miesięcznej sprzedaży oraz zestawienia najlepiej sprzedających się produktów.

### Analityk biznesowy

Analityk biznesowy wykorzystuje raporty do analizy struktury sprzedaży, porównywania wyników w czasie oraz oceny, którzy klienci generują największą wartość dla firmy. Szczególnie istotne są dla niego raporty agregujące dane oraz możliwość dalszej analizy wyników na podstawie widoków i zapytań SQL.

### Dział handlowy

Pracownicy działu handlowego mogą korzystać z raportów do sprawdzania, które produkty sprzedają się najlepiej oraz którzy klienci są najbardziej wartościowi. Raporty wspierają ich w planowaniu działań sprzedażowych i kontaktu z klientami.

## Główne obszary danych

### Sales

Obszar sprzedaży przechowuje informacje o pojedynczych transakcjach sprzedażowych. Dane te stanowią podstawę całego modułu raportowego. Każda sprzedaż powinna być powiązana z konkretnym produktem oraz klientem, a także zawierać informacje niezbędne do analizowania wartości i czasu sprzedaży.

### Products

Obszar produktów przechowuje dane o produktach oferowanych przez firmę. Dane produktowe są wykorzystywane w raportach sprzedaży, szczególnie przy analizie najlepiej sprzedających się produktów oraz agregacji wyników według asortymentu.

### Customers

Obszar klientów przechowuje informacje o klientach realizujących zakupy. Dane te są potrzebne do analizowania sprzedaży w podziale na klientów oraz do wyliczania wartości klienta w czasie.

### Reports Log

Obszar logów raportowych przechowuje informacje o wygenerowanych raportach. Umożliwia rejestrowanie, kiedy i jaki raport został uruchomiony, co przypomina praktykę spotykaną w środowiskach enterprise, gdzie istotne jest monitorowanie działania modułów raportowych i audyt operacji.

## Zakres raportów

### Raport dziennej sprzedaży

Raport ma pokazywać wartość sprzedaży z podziałem na dni. Jego celem biznesowym jest umożliwienie szybkiej oceny bieżącej aktywności sprzedażowej oraz porównywania wyników dzień do dnia.

Raport bazuje na danych transakcyjnych sprzedaży i agreguje je według daty sprzedaży. Wynikiem raportu jest zestawienie zawierające dzień oraz łączną wartość sprzedaży dla tego dnia.

Z raportu korzysta przede wszystkim kierownik sprzedaży oraz analityk biznesowy.

### Raport miesięcznej sprzedaży

Raport ma pokazywać wartość sprzedaży w ujęciu miesięcznym. Jego celem biznesowym jest analiza trendów oraz porównywanie wyników sprzedaży pomiędzy miesiącami.

Raport bazuje na danych sprzedażowych agregowanych według miesiąca i roku. Wynikiem raportu jest zestawienie miesięcy wraz z odpowiadającą im łączną wartością sprzedaży.

Raport jest szczególnie ważny dla kierownika sprzedaży i analityka biznesowego.

### Raport top produktów

Raport ma identyfikować produkty generujące największą sprzedaż. Jego celem biznesowym jest wskazanie najlepiej sprzedających się pozycji asortymentowych.

Raport bazuje na danych sprzedaży połączonych z danymi produktów. Wynikiem raportu jest ranking produktów według wartości sprzedaży lub liczby sprzedanych sztuk. W tym obszarze można wykorzystać funkcje analityczne SQL, takie jak `RANK()`.

Z raportu korzystają kierownik sprzedaży oraz dział handlowy.

### Raport wartości klienta

Raport ma określać, jaką wartość generują poszczególni klienci. Jego celem biznesowym jest identyfikacja najważniejszych klientów oraz analiza ich udziału w sprzedaży.

Raport bazuje na danych sprzedażowych połączonych z danymi klientów. Wynikiem raportu jest zestawienie klientów wraz z łączną wartością ich zakupów. W bardziej analitycznej wersji można dodatkowo uwzględnić ranking klientów lub udział procentowy w całości sprzedaży.

Z raportu korzystają analityk biznesowy i dział handlowy.

## Zakres projektu

Projekt obejmuje:
- zaprojektowanie relacyjnego modelu danych dla obszaru sprzedaży,
- utworzenie tabel sprzedaży, produktów, klientów i logów raportowych,
- przygotowanie przykładowych danych testowych,
- budowę widoków agregujących dane do raportowania,
- implementację pakietu PL/SQL odpowiedzialnego za generowanie raportów,
- logowanie operacji związanych z generowaniem raportów,
- przygotowanie testów w postaci skryptów SQL,
- analizę i optymalizację wybranych zapytań raportowych.

Projekt nie obejmuje:
- budowy interfejsu użytkownika,
- integracji z zewnętrznymi systemami,
- importu danych z plików CSV lub API,
- mechanizmów autoryzacji i zarządzania użytkownikami,
- pełnej hurtowni danych i procesów ETL,
- harmonogramowania raportów przez zewnętrzne narzędzia.

## Cele techniczne

Projekt ma pokazać:
- znajomość Oracle SQL i PL/SQL,
- umiejętność projektowania tabel z kluczami głównymi i obcymi,
- tworzenie widoków wspierających raportowanie,
- budowę pakietu PL/SQL zawierającego procedury i funkcje raportowe,
- stosowanie funkcji analitycznych SQL,
- przygotowanie testowych skryptów uruchomieniowych,
- rozumienie podstaw optymalizacji zapytań,
- wykorzystanie indeksów i analizy planu wykonania zapytań,
- dobrą organizację projektu w repozytorium GitHub.

## Podsumowanie

Projekt przedstawia uproszczony, ale realistyczny moduł raportowy dla systemu sprzedażowego działającego w środowisku Oracle. Łączy elementy modelowania danych, raportowania, programowania w PL/SQL oraz analizy wydajności zapytań. Dzięki temu dobrze wpisuje się w wymagania stanowiska Programista PL/SQL i stanowi wartościowy projekt portfolio pokazujący zarówno umiejętności techniczne, jak i zrozumienie biznesowego zastosowania bazy danych.