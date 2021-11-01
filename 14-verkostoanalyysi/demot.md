# Demo 1

Tuotetaan verkosto Palladion avulla ja analysoidaan sitä.
1. Kopioi tiedosto [verkosto.csv](../data/verkosto.csv) ja liitä se Palladion datakenttään. Paina `Load`. 
2. Mene **Graph**-välilehteen ja aseta **Source**- ja **Target**-kohtiin oikeiden sarakkeiden nimet. 
Verkoston pitäisi tulla näkyviin. 
3. Voit muokata verkoston esitystä paremmaksi raahaamalla solmuja hiirellä. 
4. Pohdi, mitkä verkoston solmuista ovat tärkeimpiä ja miksi. 
Kokeile poistaa linkkejä solmujen välillä, ja katso kuinka se vaikuttaa verkoston rakenteeseen.

# Demo 2

Tämän harjoituksen tarkoituksena on tehdä yksinkertainen visualisointi Palladio-ohjelmiston avulla. 
1. Mene Tilastokeskuksen sivuille ja sieltä StatFin tietokantaan. 
2. Etsi väestötilastoista tilasto _11a1 -- Kuntien välinen muutto tulo- ja lähtöalueittain, 1990–2020_. 
3. Tee PX-Webin kautta haku, jossa valitset tuloalueeksi kaikki kunnat ja lähtöalueeksi Tohmajärven. 
4. Lataa data excel-tiedostona. 
5. Käytä Excelin etsi ja korvaa –työkaluja kuntien nimien yksinkertaistamiseen. 
6. Hanki kuntakeskusten koordinaatit muodossa `lat,lon` (piste desimaalierottimena). 
Lisää ne dataan sarakkeisiin Lähtöpaikka ja Tulopaikka. 
7. Mene Palladion sivulle ja aloita uusi projekti. 
8. Kopio data ja lataa se Palladio-sovellukseen. Anna datalle nimeksi *Muutto*. 
9. Tee graafi, jossa esitetään muuttoliike Tohmajärveltä. Painota solmujen koko *Yhteensä*-sarakkeen mukaan. 
10. Tee kartta, jonne sijoitat kunnat koon mukaan. 
11. Lisää kuntarajat [geojson-tiedostosta](../data/kunnat.geojson), ja sijoita ne karttaan.
