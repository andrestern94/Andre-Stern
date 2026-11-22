# Bash-eksperiment

Eksperimendis genereerisin Pythoniga juhuslikke täisarve vahemikus 1–100.
Bash-skript käivitab Python-skripti kümme korda ning salvestab iga
käivituse tulemused eraldi faili. Igas failis on 200 arvu, kokku 2000.

Seejärel ühendasin andmefailide sisu, sorteerisin arvud ja loendasin,
mitu korda iga arv esineb.

## Failid ja kaustad

- `scripts/generate_data.py` – genereerib 200 juhuslikku täisarvu.
- `scripts/generate_data.sh` – käivitab Python-skripti kümme korda.
- `data/` – genereeritud andmefailid.
- `results/summary_total_unique_numbers_counted.txt` – arvude esinemissagedused.

Kaustad `data/` ja `results/` on `.gitignore` abil Gitist välistatud.
Tulemused saab skriptide ja allolevate käskudega uuesti luua.

## Kasutatud käsud

Käsud käivitasin repositooriumi põhikaustas.

Olemasolevate failide kontrollimine:

```bash
ls -la bash_eksperiment bash_eksperiment/scripts
```

Alamkaustade loomine:

```bash
mkdir -p bash_eksperiment/{data,scripts,results}
```

Skriptide kirjutamine nano editoriga:

```bash
nano bash_eksperiment/scripts/generate_data.py
nano bash_eksperiment/scripts/generate_data.sh
```

Andmete genereerimine:

```bash
bash bash_eksperiment/scripts/generate_data.sh
```

Ridade arvu kontrollimine:

```bash
wc -l bash_eksperiment/data/data*.txt
```

Kontroll näitas igas failis 200 rida ja kokku 2000 rida.

Arvude esinemissageduste leidmine ja salvestamine:

```bash
cat bash_eksperiment/data/data*.txt | sort -n | uniq -c > bash_eksperiment/results/summary_total_unique_numbers_counted.txt
```

Tulemuse esimese kümne rea vaatamine:

```bash
head bash_eksperiment/results/summary_total_unique_numbers_counted.txt
```

Tulemuseks on igal real kõigepealt esinemiste arv ja seejärel arv ise.
Näiteks minu käivituses esines arv 1 kokku 14 korda.
Uuel käivitamisel võivad tulemused juhuslikkuse tõttu muutuda.

Giti välistuste lisamine:

```bash
nano .gitignore
```

Faili lisasin järgmised read:

```gitignore
/bash_eksperiment/data/
/bash_eksperiment/results/
```