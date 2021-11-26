# Demo 1

Tämän harjoituksen tarkoituksena on tehdä yksinkertainen havainnollistava kartta QGIS-ohjelmistolla. 
Kuvitellaan, että teet opinnäytetyötä legendaarisesta keihäänheittäjästä Seppo Rädystä ja haluat esittää hänen
kotikuntansa Suomen kartalla.

1. Tarkista, että koneelle on asennettu QGIS 3.x
2. Tee itsellesi karttaa varten projektikansio sopivaan paikkaan.
3. Avaa QGIS ja luo uusi projekti (**Projekti > Uusi**). Tallenna projekti nimellä Harjoitus 1. 
4. Mene Paituli-paikkatietopalveluun ja lataa Tilastokeskuksen _Kuntien avainluvut vuodelta 2017_. 
Pura zip-tiedosto projektikansioon. 
5. Lisää _kuntienAvainluvut_2017.shp_ tasoksi karttaan (**Selain > oikea klikkaus > Add selected layer to canvas**).
Ruudulla pitäisi nyt näkyä Suomen kartta kuntarajoineen. 
6. Voit liikutella karttaa **raahaus**- ja **zoomaus**-työkaluilla. Jos kartta häviää näkyvistä,
saat sen takaisin komennolla **hiiren oikea päällä > Zoomaa tasoon**. 
7. Kokeile vaihtaa kartan projektiota 
(**Projekti > Ominaisuudet > Koordinaattijärjestelmä** >
![koordinaatistopainike](../img/koordinaatistopainike.png)).
Mitkä projektiot sopivat mihinkin parhaiten? 
8. Vaihda karttatason väriä: **Oikea klikkaus tasosta > Ominaisuudet > Kuvaustekniikka > Yksinkertainen täyttö > Täyttöväri**. 
9. Luodaan tulostuskelpoinen karttaesitys QGISin taittotyökalulla. Luo uusi taitto (**Projekti > Uusi taitto**). 
Anna taitolle nimi Tohmajärvi. 
10. Tee kartasta pystyssä oleva A4. Klikkaa taiton keskeltä hiiren oikealla näppäimellä, ja valitse Sivun ominaisuudet.
Valitse kooksi A4 ja suunnaksi pysty. 
11. Klikkaa ![Uusi karttaelementti](../img/uusi_karttaelementti.png) ja piirrä hiirellä koko arkin kokoinen karttaelementti. 
Suomen kartan pitäisi ilmestyä keskelle. 
12. Kavenna karttaelementtiä 40 mm oikealta, jotta pienemmälle kartalle jäisi enemmän tilaa. 
13. Valitse kartta, mene **Elementin ominaisuudet** –kohtaan ja aseta mittakaavaksi _1:4 000 000_. 
Paina sen jälkeen **Update Preview**. 
14. Lukitse taso: **Elementin ominaisuudet > Taso > Lukitse taso**
15. Klikkaa ![Uusi karttaelementti](../img/uusi_karttaelementti.png) ja piirrä hiirellä uusi karttaelementti 
Suomen kartan viereen. 
16. Mene takaisin karttaikkunaan, ja laita nimiöt päälle. Käytä nimiöiden perustana NIMI-saraketta 
(**hiiren oikea näppäin > Ominaisuudet > Nimiöt**). Aseta teksti-kohdasta nimiöiden kooksi 12. 
17. Jotta kuntien nimet eivät näkyisi muualla kuin pienessä kartassa, asetetaan nimiöille rajoitettu mittakaava. 
**Ominaisuudet > Nimiöt > Piirtäminen > Nimiön valinnat > Mittakaavaperustainen näkyvyys**. 
Aseta pienimmäksi näkyväksi mittakaavaksi _1:1 000 000_. 
18. Zoomaa karttaikkunassa Tohmajärven kunnan kohdalle. 
19. Mene takaisin taittoon, aseta mittakaavaksi _1:1 000 000_ ja klikkaa uudestaan **Update preview**. 
20. Valitse isompi kartta ja mene **Elementin ominaisuudet > Yleiskatsaukset**. 
Paina merkkiä ![Lisää yleiskatsaus](../img/lisaa_yleiskatsaus.png), 
jolloin alla olevaan laatikkoon ilmestyy Yleisnäkymä 1. Aseta Kartan kehys –kohtaan pienempi kartta. 
21. Kun olet tyytyväinen karttaikkunoihin, lukitse molemmat. 
22. Lisää mittakaavajana karttaan ![lisaa mittakaavajana](../img/lisaa_mittakaavajana.png). 
Käytä mittakaavan perusteena isompaa karttaa, 
ja säädä janan kokoa säätämällä kohtaa **kiinteä leveys**. Kun olet tyytyväinen, lukitse mittakaavataso. 
23. Lisää pohjoisnuoli ![Lisää uusi kuva taittoon](../img/lisaa_uusi_kuva_taittoon.png) –painikkeesta.
Piirrä nuolen alue ja mene kohtaan **Elementin ominaisuudet > Hakemistopolut** ja valitse sopiva nuoli. 
24. Tallenna kartta kuvaksi kohdasta **Taitto > Vie kuvaksi**. Valmiin kartan pitäisi näyttää suunnilleen tältä:

![Tohmajärven sijainti Suomen kartalla](../img/kartta_demo_1.png)

# Demo 2

Tässä harjoituksessa opetellaan käyttämään WFS- ja WMS-rajapintoja sekä tekemään vektoritiedostoista valintoja eri 
menetelmillä.

1. Avaa uusi projekti QGISillä. 
2. Etsi ja kopioi netistä Paikkatietopalvelu Paitulin WMS-rajapinnan URL-osoite. 
3. Paina QGISin painiketta ![lisää taso](../img/lisaa_taso.png) ja valitse **WMS/WMTS**. 
Luo uusi tietolähde, anna sille nimeksi Paituli, ja URLiksi etsimäsi rajapinnan osoite. 
4. Lisää Tilastokeskuksen WFS-palvelu
([http://geo.stat.fi/geoserver/tilastointialueet/wfs](http://geo.stat.fi/geoserver/tilastointialueet/wfs)) 
nimellä Tilastointialueet. Tämä toimii samalla tavalla kuin edellinen kohta, paitsi että valikosta valitaan **WFS**.
5. Lisää samalla tavalla Tilastokeskuksen WFS-palvelu 
([http://geo.stat.fi/geoserver/vaestoalue/wfs](http://geo.stat.fi/geoserver/vaestoalue/wfs)) nimellä Väestöalueet. 
6. Lisää _Väestö 2017 vuoden 2018 kuntajaolla ja maakuntajaolla_ –tasot karttaan. 
7. Siirrä kuntataso päällimmäiseksi ja muuta ontoksi 
(**Ominaisuudet > Kuvaustekniikka > Täyttö > Yksinkertainen täyttö > Symbolitason tyyppi > Ääriviivat**). 
Valitse viiva ja aseta sen leveydeksi 1 mm. 
8. Valitse Pohjois-Karjalan maakunta maakuntatasosta. Avaa **Valitse kohteita kentän arvon perusteella** 
![valitse kentän arvon perusteella](../img/valitse_kentan_mukaan.png) ja pane nimikenttään Pohjois-Karjala. 
9. Tallenna valittu Pohjois-Karjala projektikansioosi GeoPackage-tiedostona 
(**hiiren oikea näppäin > Vie > Tallenna valitut kohteet nimellä**). 
10. Valitse Pohjois-Karjalan kunnat käyttämällä luomaasi GeoPackage-tiedostoa. Avaa **Vektori > Tutkimuksen työkalut > 
Valitse sijainnin perusteella** ja valitse ainoastaan sisältyvät kohteet. 
11. Aktivoi kuntataso Tasot-valikosta ja klikkaa ∑-symbolia. 
12. Valitse vaesto-sarake valikosta. Klikkaa **Käytetään vain valittuja kohteita**. 
13. Kopio tilastoyhteenveto, ja tallenna se vapaavalintaisella taulukkolaskentaohjelmistolla. 
14. Toista vaiheet 8–13, tällä kertaa Pirkanmaan maakunnalla. 
Lisää Pirkanmaan tilastoyhteenveto Pohjois-Karjalan rinnalle ja tallenna taulukko. 
15. Tallenna Pohjois-Karjalan kunnat omaksi GeoPackage-tiedostokseen. 
16. Tee Pohjois-Karjalan kartta edellisen demon ohjeiden mukaan.

![Pohjois-Karjalan kartta](../img/pk_kartta.png)

# Demo 3

Tässä harjoituksessa opetellaan luomaan omaa vektorimuotoista dataa vanhoista kartoista tai ilmakuvista.

1. Mene Digitaaliarkiston sivulle, tee haku sanoilla joensuu kartat ja avaa [Joensuun kaupungin asemakaava. 
(Joensuu Ieb* 3/- -)](http://digi.narc.fi/digi/slistaus.ka?ay=225980). 
2. Lataa asemakaava projektikansioon. 
3. Mikäli georeferointi-työkalu ei ole näkyvissä (**Rasteri > Georeferointi**), se on aktivoitava Lisäosat-valikosta
**Lisäosat > Hallitse ja asenna lisäosia** ruksaamalla listalta **Georeferoija**-lisäosa.
4. Georeferointia varten tarvitaan oikaisupisteitä. Helpointa tämä on toisen kartan avulla. Etsi jostain lähteestä 
valmis paikkatietoaineisto georeferointia varten. Vertailuaineiston on oltava niin tarkka, että siitä erottaa 
rakennusten sijainnin.
5. Avaa **Rasteri > Georeferointi** ja lisää napista ![lisää rasteri](../img/lisaa_rasteri.png) Joensuun kaava 
georeferoitavaksi. Aseta koordinaattijärjestelmäksi _ETRS 1989 TM35_. 
6. Lisää oikaisupiste käyttämällä nappia ![lisää oikaisupiste](../img/lisaa_oikaisupiste.png). 
Pisteitä voi poistaa napista ![poista oikaisupiste](../img/poista_oikaisupiste.png) ja 
siirtää napista ![siirrä oikaisupiste](../img/siirra_oikaisupiste.png). 
7. Kun olet lisännyt 5-10 hyvää pistettä, voit tallentaa pisteet napista 
![tallenna oikaisupisteet](../img/tallenna_oikaisupisteet.png). 
8. Tee oikaisu painamalla ![tee oikaisu](../img/oikaisu.png). Lisää oikaistu kuva karttaan. 
9. Luo uusi GeoPackage-tiedosto nimeltä korttelit. Katso että sen tyyppi on _polygoni_ ja lisää uudeksi 
attribuuttikentäksi _numero_.
Aseta tallennuspaikaksi projektin kansio. 
10. Tee samanlainen taso nimellä tontit. 
11. Digitoi Pielisen itäpuolisen alueen korttelit ja tontit. Aloita valitsemalla taso ja painamalla 
![muokkaa](../img/muokkaa.png). Painikkeesta ![lisää monikulmio](../img/lisaa_polygoni.png) pääset piirtämään 
uusia monikulmioita. Muista tallentaa tekemäsi muutokset välillä. 
12. Kun olet digitoinut joen itäpuolen, poista alkuperäinen kartta näkymästä,
ja lisää karttaan Paitulin WMS:n kautta Maanmittauslaitoksen peruskartta vuodelta 2015. 
13. Muuta korttelit ja tontit läpinäkyviksi ja vertaa niitä peruskarttaan ja OpenStreetMapin rakennuksen.
