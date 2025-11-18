# Poradnik Rodzica

Streszczenia video z kanału YouTube [@EmmaHubbard](https://www.youtube.com/@EmmaHubbard) (do listopada 2025 włącznie).

## Jak używać

Gotowe pdfy są w folderze `renders`, a poniżej instrukcja jak stworzyć od zera

### 1. Połączenie plików Markdown w jeden dokument

Użyj skryptu `concatenate.sh` do połączenia wszystkich plików ze streszczeniami:

```bash
./concatenate.sh streszczenia-raw concatenated.md
```

To połączy wszystkie pliki `.md` z katalogu `streszczenia-raw` w jeden plik `concatenated_part_1.md`.

### 2. Konwersja do formatu Word (.docx)

Użyj `pandoc` do przekonwertowania połączonego pliku Markdown na dokument Word ze spisem treści:

```bash
pandoc concatenated.md -o poradnik.docx --toc --toc-depth=1
```

Parametry:
- `--toc` - generuje spis treści
- `--toc-depth=1` - ustawia głębokość spisu treści na 1 poziom

## Jak powstały streszczenia

Streszczenia zostały wygenerowane przy użyciu Gemini 2.5 Pro korzystając z tego prompta:

https://gist.github.com/PtrZjc/8851d597fb102890d16f676d2e904c92
