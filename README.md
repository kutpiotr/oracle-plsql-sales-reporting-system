# Sales Reporting System in Oracle PL/SQL

## Opis projektu

Projekt przedstawia moduł raportowy sprzedaży oparty o bazę danych Oracle.
System umożliwia analizę danych sprzedażowych przy użyciu SQL, widoków raportowych oraz pakietu PL/SQL.

Projekt pokazuje:

* budowę modelu danych,
* tworzenie warstwy raportowej,
* implementację logiki biznesowej w PL/SQL,
* optymalizację zapytań z użyciem indeksów i EXPLAIN PLAN.

---

## Cel projektu

Celem projektu jest stworzenie uproszczonego, ale realistycznego systemu raportowego, który:

* agreguje dane sprzedażowe,
* umożliwia analizę wyników w czasie,
* pokazuje wykorzystanie Oracle SQL i PL/SQL w praktyce,
* demonstruje podstawy optymalizacji zapytań.

---

## Funkcje

* przechowywanie danych:

  * produkty
  * klienci
  * sprzedaż
* widoki raportowe:

  * dzienna sprzedaż
  * miesięczna sprzedaż
  * top produkty
  * wartość klientów
* pakiet PL/SQL:

  * funkcje raportowe
  * procedury raportowe
  * logowanie raportów
* optymalizacja:

  * indeksy na kluczowych kolumnach
  * analiza planu wykonania zapytań
* testy:

  * skrypty SQL do weryfikacji działania systemu

---

## Technologie

* Oracle Database
* SQL
* PL/SQL
* Oracle SQL Developer

---

## Model danych

Projekt zawiera następujące tabele:

* `products` – przechowuje informacje o produktach
* `customers` – przechowuje dane klientów
* `sales` – przechowuje dane transakcji sprzedażowych
* `reports_log` – przechowuje logi wykonania raportów

---

## Widoki raportowe

Zaimplementowano widoki raportowe:

* `vw_daily_sales` – suma sprzedaży per dzień
* `vw_monthly_sales` – suma sprzedaży per miesiąc
* `vw_top_products` – ranking produktów według liczby sprzedaży
* `vw_customer_value` – wartość klientów na podstawie sprzedaży

---

## Pakiet PL/SQL

Pakiet `reporting_pkg` zawiera logikę raportową:

* funkcje:

  * pobieranie sprzedaży dziennej
  * pobieranie sprzedaży miesięcznej
* procedury:

  * prezentacja raportów
  * logowanie wykonania raportów

Pakiet korzysta z widoków oraz zapisuje dane do tabeli `reports_log`.

---

## Optymalizacja zapytań

W projekcie zastosowano optymalizację zapytań:

* indeksy:

  * `sales.sale_date`
  * `sales.product_id`
  * `sales.customer_id`

* analiza wykonania zapytań:

  * użycie `EXPLAIN PLAN`
  * analiza przy pomocy `DBMS_XPLAN.DISPLAY`

Przykład:
zastosowanie indeksu pozwoliło na użycie operacji `INDEX RANGE SCAN` zamiast `TABLE ACCESS FULL`.

---

## Jak uruchomić projekt

1. Uruchom skrypt tworzący strukturę:

```sql
@sql/schema.sql
```

2. Dodaj dane testowe:

```sql
@sql/inserts.sql
```

3. Utwórz widoki:

```sql
@sql/views.sql
```

4. Utwórz indeksy:

```sql
@sql/index.sql
```

5. Utwórz pakiet PL/SQL:

```sql
@packages/reporting_pkg.sql
```

Lub użyj:

```sql
@sql/run_all.sql
```

---

## Testy

Testy znajdują się w katalogu `tests/`.

### Widoki:

```sql
@tests/test_views.sql
```

### Pakiet PL/SQL:

```sql
@tests/test_reporting_pkg.sql
```

---


## Podsumowanie

Projekt przedstawia kompletny moduł raportowy oparty o Oracle SQL i PL/SQL, obejmujący model danych, warstwę raportową, logikę biznesową oraz podstawową optymalizację zapytań.
