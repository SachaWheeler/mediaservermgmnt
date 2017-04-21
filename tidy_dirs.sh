#!/bin/sh

cd /Volumes/moshpit/
find ./tv ./movies -iname "*.bak" -type f -delete
find ./tv ./movies -iname "*.nfo" -type f -delete
find ./tv ./movies -iname "*.part" -type f -delete

find ./tv ./movies -iname "*.txt" -type f -delete
find ./tv ./movies -iname "*.pdf" -type f -delete
find ./tv ./movies -iname "*.sfv" -type f -delete
find ./tv ./movies -iname "RARBG.com*" -type f -delete
find ./tv ./movies -iname "RARBG.avi" -type f -delete
find ./tv ./movies -iname "RARBG.mp4" -type f -delete
find ./tv ./movies -iname "ETRG.mp4" -type f -delete
find ./tv ./movies -iname "SAMPLE*" -type f -delete
find ./tv ./movies -iname "SAMPLE" -type d -exec rm -r {} \;
find ./tv ./movies -iname "Subs" -type d -exec rm -r {} \;


find ./tv ./movies -iname "*.bmp" -type f -delete
find ./tv ./movies -iname "*.jpg" -type f -delete
find ./tv ./movies -iname "*.png" -type f -delete
find ./tv ./movies -iname "*.gif" -type f -delete
find ./tv ./movies -iname "*.jpeg" -type f -delete

find ./tv ./movies -name "*.idx" -type f -delete
find ./tv ./movies -name "*.sub" -type f -delete

find ./tv ./movies -name ".DS_Store" -type f -delete

find ./tv ./movies -name '*.mp3' -exec mv {} "/Users/happy/Music/iTunes/iTunes Media/Automatically Add to iTunes.localized/" \;

find ./tv ./movies -empty -type d -delete

cd movies/
for i in * 
do
    if test -d "$i" 
    then
	no_of_files=$(ls "$i" | wc -l)
	if [$no_of_files -eq 1 ]
 	then
		single=$(ls "$i")
		if test -f "$i/$single"
		then
			mv "$i/$single" .
			rmdir "$i"
		fi
	fi
    fi
done

cd ../tv/

for i in * 
do
    if test -d "$i" 
    then
	no_of_files=$(ls "$i" | wc -l)
	if [$no_of_files -eq 1 ]
 	then
		single=$(ls "$i")
		if test -f "$i/$single"
		then
			mv "$i/$single" .
			rmdir "$i"
			if [[ $single =~ (.*\.)([[:digit:]])([[:digit:]])([[:digit:]])(\..*) ]]
			then
				echo $single
				echo 
				mv $single ${BASH_REMATCH[1]}"S0"${BASH_REMATCH[2]}"E"${BASH_REMATCH[3]}${BASH_REMATCH[4]}${BASH_REMATCH[5]}
			fi
		fi
	fi
    fi
done

# move things into their directories
mv Silicon.Valley.S0* Silicon\ Valley > /dev/null 2>&1
mv *ick.*nd.*orty.* Rick\ and\ Morty > /dev/null 2>&1
mv Preacher.S* Preacher > /dev/null 2>&1
mv *aron.* Maron > /dev/null 2>&1
mv *amily.*uy.* Family\ Guy > /dev/null 2>&1
mv *road.*ity.* Broad\ City > /dev/null 2>&1
mv Bobs.Burgers.S* Bobs\ Burgers > /dev/null 2>&1
# mv Better.Call.Saul.S* Better\ Call\ Saul > /dev/null 2>&1
mv *askets.* Baskets > /dev/null 2>&1
mv Archer.2009* Archer > /dev/null 2>&1
mv *ngie.*ribeca.* Angie\ Tribeca > /dev/null 2>&1
mv wrecked.* Wrecked > /dev/null 2>&1
mv Comedians.In.Cars.Getting.Coffee.S0*  Comedians\ in\ cars\ getting\ coffee > /dev/null 2>&1
mv Bojack\.* Bojack\ Horseman/ > /dev/null 2>&1
mv battlebots.2015.* Battlebots/ > /dev/null 2>&1
mv Last.Week.Tonight.With.John.Oliver.* John\ Oliver/ > /dev/null 2>&1
mv Documentary.Now.S02E* Documentary\ Now/ > /dev/null 2>&1
mv Better.Things.S01E* Better\ Things/ > /dev/null 2>&1
mv lucifer.* Lucifer/ > /dev/null 2>&1
mv *our.*retty.*ace.*s.*oing.*o.*ell.* Your\ Pretty\ Face\ Is\ Going\ To\ Hell/ > /dev/null 2>&1
mv American.Dad.S* American\ Dad/ > /dev/null 2>&1
mv *tan.*gainst.*evil.S* Stan\ against\ Evil > /dev/null 2>&1
mv South.Park.S* South\ Park > /dev/null 2>&1
mv *hannel.*ero* Channel\ Zero > /dev/null 2>&1
mv *aking.*istory* Making\ History\ \(2017\) > /dev/null 2>&1
mv *eview.*ith.*orrest.*acNeil* Review\ with\ Forrest\ MacNeil >  /dev/null 2>&1
mv Legion.* Legion > /dev/null 2>&1
mv Modern.Family.* Modern\ Family > /dev/null 2>&1
mv *he.*ast.*an.*n.*arth.* The\ Last\ Man\ On\ Earth > /dev/null 2>&1
mv *nside.*omedy.* Inside\ Comedy > /dev/null 2>&1
mv *he.*reat.*ndoors.* The\ Great\ Indoors > /dev/null 2>&1
mv *owerless.* Powerless > /dev/null 2>&1
mv *asy.* Easy > /dev/null 2>&1
mv *itless.* Witless > /dev/null 2>&1
mv *earch.*arty.* Search\ Party > /dev/null 2>&1
mv *nimals.* Animals > /dev/null 2>&1
mv VICE.S0* Vice > /dev/null 2>&1
mv *rashing.US.* Crashing\ US > /dev/null 2>&1
mv *nto.*he.*adlands.* Into\ The\ Badlands > /dev/null 2>&1
mv *ougar.*own.* Cougar\ Town > /dev/null 2>&1
mv *atastrophe.2015.* Catastrophe > /dev/null 2>&1
mv [iI][zZ]ombie.* iZombie > /dev/null 2>&1
mv trial.and.error.* Trial\ and\ Error > /dev/null 2>&1
mv *amurai.*ack.* Samurai\ Jack > /dev/null 2>&1
mv Brooklyn.Nine-Nine.S0* Brooklyn\ Nine-Nine > /dev/null 2>&1
mv Trial.and.Error.* Trial\ and\ Error > /dev/null 2>&1
mv Harlots.* Harlots > /dev/null 2>&1
mv *etter.*all.*aul.* Better\ Call\ Saul > /dev/null 2>&1
mv [gG]uardians.of.the.[gG]alaxy.* Guardians\ of\ the\ Galaxy > /dev/null 2>&1

cd ../
chmod -R a+rwx movies/ tv/ 
