Linux examples for SoCkit
==========
	
Ukázkový projekt jak používat Linux na HPS. Je přiložen celý projekt
pro Quartus ve složce HW_SoCkit kde je nakonfigurovaný základní HPS.

V FPGA jsou dále na lw H2F sběrnici dva paralelní porty, se šířkou 
8bitů, jeden generátor náhodných čísel (32bit) a filtr fir v následující
konfiguraci.

* výstupní port - nastavení banky fir filtru offset 0x0000 0030
* vstupní port	- generátor		offset 0x0000 0020
* výstupní port - 4x LED  		offset 0x0000 0010
* vstupní port	- 4x Tlačítko	offset 0x0000 0000	

Filtr fir používá kartu Data Conversion HSCM, která je vybavena DA, AD
převodníky a audiokodekem. Vstup filtru je napojen na AD převodník kanál
A. Výstup filtru je na převodníku DA taktéž na kanálu A. Filtr má 8 bank,
následujících vlastností.

* banka 1 - dolní propust do 2MHz
* banka 2 - dolní propust do 4MHz
* banka 3 - horní propust od 2MHz
* banka 4 - horní propust od 4MHz
* banka 5 - pásmová propust 2MHz až 4MHz
* banka 6 - pásmová propust 4MHz až 8MHz
* banka 7 - pásmová zádrž 2MHz až 4MHz
* banka 8 - pásmová zádrž 4MHz až 8MHz 

OS Linux pro HPS
--------------

Operačním systémem pro HPS je Linux, konkrétně distribuce na 
přiloženém CD ke kitu revize C, která je na CD umístěna v 
Tools/Factory_SD_image/SoCKit_SD.rar. 

Instalace je provede rozbalením výše zmíněného archivu a poté jeho 
naklonováním na paměťovou kartu která musí být minimálně 2GB velká. V
OS Linux se toto dá udělat například následovně:

	~$ sudo dd if=./SoCKit_SD.img of=/dev/mmcblk0
	
přičemž upravte cíl (./dev/mmcblk0) tak aby odpovídal vaší paměťové 
kartě (užitečný příkaz je lsblk).

Instalace ukázkových programů
--------------

Ukázkové příklady naleznete ve složce examples pro jejich kompilaci
potřebujete toolchain, pro jeho nainstalování (pokud používat distribuci
s apt-get) můžete použít skript install_toolchain.sh. Celou kompilace 
včetně instalace toolchainu provede následovně.

	~$ sudo sh ./install_toolchain.sh
	~$ cd ./examples/led_test/
	~/examples/led_test/$ make
	
Obdobně postupujte pro ostatní ukázky s tím že toolchain samozřejmě stačí
instalovat jen jednou. Po zkompilování programů je umístěte na vhodné 
místo na paměťové kartě.

Jinou možností je použítí skriptu který zpompiluje všechny programy ve
složce examples a přesune výsledné binárky do složky bin. Skript spustíte
následovně.

	~$ sh ./make_examples.sh

Nahrazení přiložené distribuce, distribucí Debian
---------------

Pro spoustu činností může být základní distribuce linuxu instalovaná
z dodaného CD ke kitu, příliš omezující. V tomto případě je vhodné
tuto distribuci vyměnit za některou rozšířenější a s většími možnostmi.

Jako vhodná distribuce se jeví například Debian. Nejjednodušší možný
postup je prosté nahrazení rootfs. To lze učinit například generováním
vlastního rootfs za pomoci programu debootstrap. 

Celá náhrada rootfs spočívá v připojení paměťové karty s již zprovozněnou
distribucí zmíněnou výše, smazáním celého obsahu oddílu s rootfs a poté
vygenerování nového rootfs. Generování nového rootfs je dostatečně dobře popsáno
například [zde](https://olimex.wordpress.com/2014/07/21/how-to-create-bare-minimum-debian-wheezy-rootfs-from-scratch/).
