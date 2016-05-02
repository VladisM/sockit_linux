Linux examples for SoCkit
==========
	
Ukázkový projekt jak používat Linux na HPS. Je přiložen celý projekt
pro Quartus ve složce HW_SoCkit kde je nakonfigurovaný základní HPS.

V FPGA jsou dále na lw H2F sběrnici dva paralelní porty, se šířkou 
8bitů. V následující konfiguraci:

* výstupní port - 4x LED  		offset 0x0000 0010
* vstupní port	- 4x Tlačítko	offset 0x0000 0000	

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
