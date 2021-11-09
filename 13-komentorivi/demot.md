# Demo 1

Vertaillaan kahta 1800-luvun lopun henkikirjoitusasetusta. Nämä löytyvät esimerkiksi Kotuksen sivuilta.

1. Kopioi vuoden 1878 asetuksen teksti Voyantiin.
2. Kopioi myös vuoden 1894 asetusten teksti **Documents > Modify > Add**
3. Lisää poistettavien sanojen lista (https://github.com/stopwords-iso/stopwords-fi/blob/master/stopwords-fi.txt). 
4. Lisää Summary-välilehti. Mitä Distinctive words -kohta kertoo tekstien eroista?

# Demo 2

Tässä demossa tarkoituksena on oppia lukemaan ja kirjoittamaan tekstejä tiedostoon.
Kirjoita nämä komennot komentokehotteeseen yksi kerrallaan.

`pwd`

`echo ”Saksa on paska maa” > raty_1.txt`

`cat raty_1.txt`

`cat raty_1.txt > raty_2.txt`

`cat raty_2.txt`

`echo “Caterpillar” > raty_2.txt`

`echo “Ooppera?” > raty_3.txt`

`cat raty_3.txt`

`echo ”Hyi saatana!” >> raty_3.txt`

`cat raty_3.txt`

Kaksi seuraavaa komentoa tekevät samat asiat:

`cat raty_1.txt, raty_2.txt, raty_3.txt > raty_kaikki.txt`

`cat raty_*.txt > raty_kaikki.txt`

Systemaattinen nimeäminen kannattaa!

# Demo 3

Measure-komennon avulla voidaan laskea rivien, sanojen ja merkkien määrää tekstitiedostoissa.

`cat raty_1.txt | measure`

`cat raty_1.txt | measure -l -w -c -ig`

`cat raty_1.txt, raty_2.txt | measure -l -w -c -ig`

`cat raty_*.txt | measure -l -w -c -ig`

`ls | foreach {cat $_ | measure -l -w -c -ig}`

# Demo 4

Lataa riksdagtryckistä säätyvaltiopäivien talonpoikaissäädyn valtiopäiväaineisto ja pura se kansion **data** sisään.
Kansion nimi kannattaa lyhentää, esimerkiksi `bondeståndet` koko nimen sijaan.

`sls -Path .\data\bondeståndet\*.txt -Pattern “finland” | echo`

`sls -Path .\data\bondeståndet\*1720*.txt -Pattern “finland” > finland_bonde_1720-1727.txt`

`cat finland_bonde_1720-1727.txt`

`sls -Path .\data\bondeståndet\*.txt -Pattern "[LilI]an(d)tdag" | select Filename, LineNumber, Line, Path > lantdag.csv`

`Import-Csv lantdag.csv`

# Demo 5

Lisää tietokoneelle käyttäjätilisi ympäristömuuttujiin uusi muuttuja nimeltä
`MALLET_HOME` ja aseta sen arvoksi mallet-kansion sijainti.

`cd ~\mallet-2.0.8`

`bin\mallet import-dir 
--input sample-data\web\en 
--output tutorial.mallet 
--keep-sequence 
--remove-stopwords`

`bin\mallet train-topics 
--input tutorial.mallet 
--num-topics 20 
--optimize-interval 20 
--output-state topic-state.gz 
--output-topic-keys tutorial_keys.txt 
--output-doc-topics tutorial_composition.txt`

# Demo 6

`cd ~\mallet-2.0.8`

`bin\mallet import-dir 
--input runot 
--output kalevala 
--keep-sequence 
--remove-stopwords
--stoplist-file stoplists\fi.txt`

`bin\mallet train-topics 
--input kalevala 
--num-topics 20 
--optimize-interval 20 
--output-state runot_state.gz 
--output-topic-keys runot_keys.txt 
--output-doc-topics runot_composition.txt`
