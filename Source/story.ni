"A travers la forêt" by Julien Frison

[ Copyright (C) 2013  Julien Frison

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>. ]
Include GNU General Public License v3 by Free Software Foundation. [extension modifié: blorb bug si "Release along with the source text" demandé dans une extension]
[The COPYING file included is true. ]
Release along with the source text. 


Include French by Eric Forgeot.
Use French Language.

Include Basic Screen Effects by Emily Short.
Include Menus by Emily Short.

[ Notes de Sindarin et toponymie :

sîr(rivière)->sirion(fleuve)
ethir : embouchure
loth (divers préfixes) : fleur
eryn/taur / tawar : forêt ; litt. tawar=bois-le-matériau
barad : tour/forteresse
ost : cité entourée de murs
naith : quoique ce soit qui ressemble à une pointe
meren : joyeux
tirith : surveillance, garde
tirn/dirn : gardien/sentinelle
fale : coeur noble, généreux
athrad : traversée de rivière
nesta/nestad/nestedrin : guérir/guérison/relatif à la guérison
dôr : région d'habitation
brethil : hêtre/bouleau
tol : île/îlot
ninglor : iris d'eau
sant : jardin/pré/propriété privée
aur: jour/lumière du soleil/matin
ael : lac / étang / mare
lô : lac peu profond / marais
lain : libre/libéré
daur : pause/arrêt
taeg : frontière/limite/ligne frontaliere
gland : limite/frontiere
hae : lointain
glîn : lueur/reflet
lim : clair/etincellant/lunimeux
curon/ithil : lune (croissant/pleine)
gobel : maison ou village entouré d'un mur, ville
sennas : hôtellerie
galada : lumière/éclat/réflexion
orod : montagne
gwann : mort/disparu
nîd : mouillé/humide/larmoyant
naug ( et variations) : Nain
morn : noir/sombre
fëa: esprit
hröa: corps

Nom utilisés en inventant:

forêt de Saenor
collines de Silbermold
ville de Faassin (haut-seigneur puissant, sans sang royal, riche grâce charbon de tréant)
ville de Daeghel
buisson de Dalrin (avec fleurs)
Tha'daril: roi (père du prince)

Cavernes de Mandos -> là où sont envoyé les esprits elfes tués
]

Part 0 - Définitions

Chapter 1 - Definitions techniques 

To say nt: [pluriel des verbes]
	if the noun is plural-named, say "nt".

To say to_the (obj - a thing) :
	(- 
	print (to_the) t_0;
	-).
	[if noun is plural-named:
		say "aux [obj]";
	otherwise if noun is female or noun is proper-named:
		say "à [the obj]";
	otherwise: [manque "à l'"]
		say "au [the obj]";]

To say some (obj - a thing):
	(-
	print (DeDuDes) t_0;
	-).

Chapter 2 - Types de base et phrases simples

Partie de la forêt is a kind of room.
Pièce intérieure is a kind of room. 

A fake door is a kind of door. It is not openable. It is open. 

A poids is a kind of value. 1kg specifies a poids. 
A thing has a poids. The poids is usually 0kg. 

To decide which poids is the capacité de transport:
	let x be the force of the player;
	decide on 4kg * x + 10kg. 

A person can be hostile, méfiant, sans opinion, bienveillant, amical or allié (this is its opinion property). A person is usually sans opinion.  

A person can be mauvais, neutreM or bon (this is its morale property). A person is usually neutreM. 
A person can be chaotique, neutreE or loyal (this is its éthique property). A person is usually neutreE.
A person can be miséreux, pauvre, modeste, à l'aise or riche (this is its richesse property). A person is usually modeste.

Definition: a person is neutre if it is neutreM and it is neutreE.

To say morale:
	if the player is bon:
		say "bon";
	otherwise if the player is neutreM:
		say "neutre";
	otherwise if the player is mauvais: 
		say "mauvais".

To say éthique:
	if the player is loyal: 
		say "loyal";
	otherwise if the player is neutreE: 
		say "neutre";
	otherwise if the player is chaotique: 
		say "chaotique".

To say richesse:
	if the player is miséreux: 
		say "miséreux";
	otherwise if the player is pauvre: 
		say "pauvre";
	otherwise if the player is modeste: 
		say "modeste";
	otherwise if the player is à l'aise: 
		say "à l'aise";
	otherwise if the player is riche: 
		say "riche".

Table of Caractéristiques
numéro		nom	
1			"force"	
2			"dextérité"
3			"endurance"
4			"sagesse"
5			"intelligence"
6			"charisme"

[To decide which number is image par ( foo - a phrase number -> number) de caractéristique numéro (car-num - a number):
	if car-num is:
		-- 1: decide on foo applied to force of the player;
		-- 2: decide on foo applied to dextérité of the player;
		-- 3: decide on foo applied to endurance of the player;
		-- 4: decide on foo applied to sagesse of the player;
		-- 5: decide on foo applied to intelligence of the player;
		-- 6: decide on foo applied to charisme of the player.

To appliquer ( foo - a phrase number -> nothing) à caractéristique numéro (car-num - a number):
	if car-num is:
		-- 1: apply foo to force of the player;
		-- 2: apply foo to dextérité of the player;
		-- 3: apply foo to endurance of the player;
		-- 4: apply foo to sagesse of the player;
		-- 5: apply foo to intelligence of the player;
		-- 6: apply foo to charisme of the player.]

To decide which number is la caractéristique numéro (car-num - a number):
	if car-num is:
		-- 1: decide on force of the player;
		-- 2: decide on dextérité of the player;
		-- 3: decide on endurance of the player;
		-- 4: decide on sagesse of the player;
		-- 5: decide on intelligence of the player;
		-- 6: decide on charisme of the player.

To say caractéristique numéro (car-num - a number):
	say la caractéristique numéro car-num. 
[	if car-num is:
		-- 1: say force of the player;
		-- 2: say dextérité of the player;
		-- 3: say endurance of the player;
		-- 4: say sagesse of the player;
		-- 5: say intelligence of the player;
		-- 6: say charisme of the player.]
	

A person has a number called force. The force is usually 10.  
A person has a number called dextérité. The dextérité is usually 10.  
A person has a number called endurance. The endurance is usually 10.  
A person has a number called sagesse. The sagesse is usually 10.  
A person has a number called intelligence. The intelligence is usually 10.  
A person has a number called charisme. The charisme is usually 10.  

maximum de compétences is a number which varies. The maximum de compétences is 5.

To decide which number is compétences actuelles:
	let n be 0;
	repeat through Table of Compétences:
		increase n by known entry;
	decide on n.
	

Table of Compétences
compétence	known	description
"secourisme"	0	"Une connaissances des plantes utiles et la connaissance de quelques gestes de premier secours peuvent facilement sauver la vie d'un aventurier. "
"orientation"	1	"Pour le profane rien ne ressemble plus à un arbre qu'à un autre arbre. Pas pour vous, qui avez appris à faire attention au moindre détail permettant de vous repérer, collectionnant les astuces. "
"camouflage" 	1	"Tout elfe sait se camoufler dans la forêt, mais vous avez su pousser cette spécialité jusqu'à un niveau de particulièrement remarquable. "
"observation"	1	"Le bon rôdeur ne doit pas seulement savoir se cacher, il doit aussi savoir quand se cacher, et juger en un éclair de la situation et des opportunités. "
"chasse"	0	"Les elfes ont souvent la réputation d'être végétariens, mais il n'en est rien : la chasse est une activité parfaitement licite si elle se fait dans le respect et préserve l'équilibre de la nature. C'est une source d'alimentation particulièrement utile pour un rôdeur. "
"communication animale"	1	"Une extrême attention au comportement des animaux de votre forêt vous a appris à interpréter finement leurs gestes et à établir une sorte de dialogue rudimentaire. "
"rituels druidiques"	0	"Vous avez passé de longues heures auprès des anciens, vous impregnant des traditions multi-millénaires de votre peuple. Ceci a pû vous valoir les moqueries de vos jeunes camarades, mais vous êtes maintenant respecté et plus que jamais lié avec les forces de la nature."
"tir à l'arc"	1	"Les elfes ont toujours été réputés pour leurs excellentes compétences de tir à l'arc. Vous vous appliquez à honorer cette réputation. "
"combat rapproché"	0	"Armé de dagues ou à mains nues, le combat rapproché permet une intervention puissante au rôdeur qui surprend son ennemi. Dans d'autres situations il vous sera tout simplement imposé. "
"escrime"	0	"Contrairement à ce que prétendent ces humains prétentieux, un elfe est tout-à-fait capable de se défendre avec une épée. Pour autant qu'il ait à sa disposition une arme de qualité, car il est vrai que personne n'envie l'acier de nos forgerons. "
"armes d'hast et à deux mains"	0	"Les elfes, particulièrement leurs druides, se défendent souvent avec de grands bâtons de bois, mais ces techniques peuvent plus ou moins être adaptées à une large famille d'armes de grande dimension. "

Definition: a text (called T) is a compétence connue if the known corresponding to a compétence of T in Table of Compétences is 1.

To decide whether secourisme est connue: [utile dans un say]
	if "secourisme" is a compétence connue :
		decide yes;
	otherwise:
		decide no.
To decide whether orientation est connue: [utile dans un say]
	if "orientation" is a compétence connue :
		decide yes;
	otherwise:
		decide no.
To decide whether camouflage est connue: [utile dans un say]
	if "camouflage" is a compétence connue :
		decide yes;
	otherwise:
		decide no.
To decide whether observation est connue: [utile dans un say]
	if "observation" is a compétence connue :
		decide yes;
	otherwise:
		decide no.
To decide whether chasse est connue: [utile dans un say]
	if "chasse" is a compétence connue :
		decide yes;
	otherwise:
		decide no.
To decide whether communication animale est connue: [utile dans un say]
	if "communication animale" is a compétence connue :
		decide yes;
	otherwise:
		decide no.
To decide whether rituels druidiques est connue: [utile dans un say]
	if "rituels druidiques" is a compétence connue :
		decide yes;
	otherwise:
		decide no.
To decide whether tir à l'arc est connue: [utile dans un say]
	if "tir à l'arc" is a compétence connue :
		decide yes;
	otherwise:
		decide no.
To decide whether combat rapproché est connue: [utile dans un say]
	if "combat rapproché" is a compétence connue :
		decide yes;
	otherwise:
		decide no.
To decide whether escrime est connue: [utile dans un say]
	if "escrime" is a compétence connue :
		decide yes;
	otherwise:
		decide no.
To decide whether armes d'hast et à deux mains est connue: [utile dans un say]
	if "armes d'hast et à deux mains" is a compétence connue :
		decide yes;
	otherwise:
		decide no.
To decide whether peut observer les animaux:
	if observation est connue or communication animale est connue, yes;
	otherwise no.

A dieu is a kind of object. The plural of dieu is dieux. 
Some dieux are defined by the Table of Vénération des Dieux.
[ rituels druidiques, et potentiellement certains artefacts, donneront un bonus à la relation, ce n'est ici qu'un chiffre brut ]
[ un dieu majeur sera choisi à la création du personnage ]

Table of Vénération des Dieux
dieu	majeur	vénération	attribution	capa-prim	description
Mornlim	1	100	"Dieu de l'équilibre et des cycles naturels"	"chasse"	"Chrondirn a la responsabilité d'oeuvrer à l'équilibre des forces créatrices et destructrices afin de permettre un bon enchaînement des cycles naturels. Naturellement tourné vers l'harmonie, ce dieu n'en a pas moins ses côtés sombres."
Faethirith	0	0	"Dieu de la prévoyance et du devoir"	"observation"	"Faethirith..."
Galathil	0	0	"Déesse de la dissimulation"	"camouflage"	"Epouse de Faethirith, Galathil est une spécialiste de la dissimulation. De [italic type]toutes[roman type] les dissimulations."

[TODO: terminer cette listes des dieux + essayer d'automatiser au moins les vénérations + neutralisation de capacités si -100]

To dégrader relation avec a dieu:
	do nothing.

points d'équipement utilisés is a number which varies. The points d'équipement utilisés is 40. [arc+épée par défaut]

To decide which number is points d'équipement maximum:
	if the player is riche:
		decide on 300;
	otherwise if the player is à l'aise:
		decide on 150;
	otherwise if the player is modeste:
		decide on 100;
	otherwise if the player is pauvre:
		decide on 70;
	otherwise if the player is miséreux:
		decide on 40.

To decide which number is points d'équipement restant:
	decide on points d'équipement maximum minus points d'équipement utilisés.

An arme is a kind of thing. It has a number called qualité. The qualité is usually 1. 
An arc is a kind of arme. The poids is usually 3kg. 
An arme de combat rapproché is a kind of arme.
A dague is a kind of arme de combat rapproché.
An épée is a kind of arme. The poids is usually 6kg. 
An arme d'hast is a kind of arme. The poids is usually 10kg.

A protection is a kind of thing. It has a number called qualité.  It is usually wearable. The qualité is usually 1. 
A bouclier is a kind of protection. The poids is usually 6kg.
An armure is a kind of protection. The poids is usually 4kg. [on suppose ici que ce n'est pas metallique]
A casque is a kind of protection. The poids is usually 2kg. 

Definition: an arme is quality if its qualité is 1 or more.
Definition: a protection is quality if its qualité is 1 or more.


Before wearing a bouclier:
	while at least one bouclier is worn by the player:
		try taking off a random bouclier worn by the player.

Before wearing a armure:
	while at least one armure is worn by the player:
		try taking off a random armure worn by the player.

Before wearing a casque:
	while at least one casque is worn by the player:
		try taking off a random casque worn by the player.

To decide which poids is the poids porté:
	decide on total poids of things enclosed by the player.
 
 To decide which poids is the capacité de transport restante:
	decide on capacité de transport minus poids porté.

Definition: a thing is available if it is not enclosed by the player. 

A person has a number called points de vie. The points de vie is usually 100. 
Definition: a person is mort if its points de vie <= 0.

A person has a number called bonus d'attaque. [fait pour les PNJ, doit équivaloir au bonus de qualité d'équipement sans avoir à préciser l'équipement, ou à des bonus situationnels. ]
A person has a number called bonus de défense. 
A person has a number called facteur de foule. The facteur de foule is usually 1. [1 = 1 personne ; n personnes entraîne en général dégâts divisés(répartis) par n et attaque multipliée par n]

To blesser de (n - a number) saying (msg - a text):
	decrease points de vie of the player by n;
	if points de vie of the player < 0, end the game saying msg.
To blesser de (n - a number):
	blesser de n saying "Vous avez péri. ".
To blesser:
	blesser de 1. 

To soigner de (n - a number):
	increase points de vie of the player by n;
	if points de vie of the player > 100, now points de vie of the player is 100.


An aliment is a kind of thing. It is usually edible. It has a time called durée de satisfaction. the durée de satisfaction is usually 30 minutes. 
A ration de survie is a kind of aliment. The plural of ration de survie is rations de survie. 

Durée de satisfaction maximale is a time which varies. Durée de satisfaction maximale is 100 minutes. 

A person has a time called temps avant repas. Temps avant repas is usually 50 minutes.
Definition:  A person is repu if its temps avant repas > 0 minutes .
Definition: A person is affamé if its temps avant repas <= 0 minutes .

After eating an aliment:
	increase temps avant repas of the player by durée de satisfaction of noun;
	if temps avant repas of the player >  Durée de satisfaction maximale :
		say "Vous avez trop mangé, rien ne sert de vous goinfrer à ce point ! Peut-être devriez faire une petite sieste maintenant ? [line break]";
		now temps avant repas of the player is Durée de satisfaction maximale;
	otherwise:
		say "Vous savourez un repas bien mérité. Maintenant vous allez pouvoir penser un peu à autre chose qu'à votre estomac qui vous démange. [line break]".

To être torturé par la faim:
	let minutes be 0 minus minutes part of temps avant repas of the player;
	let heures be 0 minus hours part of temps avant repas of the player;
	let n be 60 times heures plus minutes;
	if n is 1:
		say "Vous commencez à avoir une petite faim. [line break]";
	otherwise if n is 4:
		say "Il va vraiment falloir que vous vous arrêtiez quelque part pour manger, vous commencez à faiblir. [line break]";
	otherwise if n is 8:
		say "Vos pensées sont de plus en plus monopolisées par la faim féroce qui vous tenaille. [line break]";
	otherwise if n is 12:
		say "Vous êtes mal en point. Il n'y a pas cher à donner de votre peau si vous ne mettez pas rapidement la main sur quelque nourriture. [line break]";
	otherwise if the remainder after dividing n by 4 is 0:
		say "Vous mourrez littéralement de faim, ce n'est plus qu'une question d'heures avant qu'elle ait raison de vous. [line break]";
	decrease n by 5; [pas de dégâts pour les 5 premiers tours, le temps de s'arrêter manger]
	if n > 0 :
		blesser de n.

A plante is a kind of thing. A plante can be either comestible or non comestible. It is usually non comestible. A plante can be either médicinale or quelconque. It is usually quelconque.  It is usually scenery. The description is usually "[if noun is comestible][The noun] semble[nt] susceptible[s] de vous fournir de quoi vous nourrir, peut-être devriez-vous fouiller un peu. [otherwise if noun is médicinale and secourisme est connue]Vous vous rappelez que les druides vous ont déjà parlé de ces plantes. Peut-être devriez-vous fouiller un peu. [otherwise]Vous ne voyez rien de bien intéressant quant [to_the noun]. [end if]".
Partie comestible is a kind of container. It is scenery. It is usually not openable. It is usually open. A partie comestible can be either plein or récolté. It is usually plein. One partie comestible is a part of every plante. 
Partie médicinale is a kind of container. It is scenery. It is usually not openable. It is usually open. A partie médicinale can be either plein or récolté. It is usually plein. A partie médicinale can be either wideknown or méconnue. It is usually méconnue. One partie médicinale is a part of every plante.

Definition: a plante is holistique if it is comestible and it is médicinale.

Instead of searching a comestible plante (called obj):
	let p be a random partie comestible which is part of obj;
	try searching p.
 Instead of searching a médicinale plante (called obj):
	let connu be the known corresponding to a compétence of "secourisme" in the Table of Compétences;
	if connu is 0 and every partie médicinale which is part of obj is méconnue:
		say "Les plantes, ça n'a jamais été votre domaine. Vous jettez un coup d'oeil rapide mais vous êtes bien incapable d'identifier quoi que ce soit d'intéressant. [line break]";
	otherwise :
		let p be a random partie médicinale which is part of obj;
		try searching p.
Instead of searching a holistique plante (called obj):
	let x be a random number between 0 and 1;
	if the known corresponding to a compétence of "secourisme" in the Table of Compétences is 0  and every partie médicinale which is part of obj is méconnue :
		now x is 0;
	if x is 0 :
		let p be a random partie comestible which is part of obj;
		try searching p;
	otherwise:
		let p be a random partie médicinale which is part of obj;
		try searching p.

To decide whether (obj - a plante) is récoltable:
	let pcom be a random partie comestible which is part of obj;
	let pmed be a random partie médicinale which is part of obj;
	if at least one thing is enclosed by pcom or at least one thing is enclosed by pmed:
		decide yes;
	otherwise:
		decide no.
To decide which plante is the parent de (obj - a thing) :
	if obj is part of something (called the parent) :
		decide on the parent;
	otherwise:
		decide on nothing.
			

Instead of searching a partie comestible (called p):
	let obj be a random thing enclosed by p;
	if obj is not nothing:
		say "Vous avez trouvé [some obj], que vous rangez soigneusement dans votre besace avec le reste de vos provisions. [line break]";
		move obj to the player;
		now p is récolté;
	otherwise if p is récolté:
		say "Il semble qu'il n'y ait rien de plus de comestible à récolter ici. [line break]";
	otherwise:
		say "Vous ne trouvez rien de comestible ici, peut-être n'est-ce pas encore la saison. [line break]".

Instead of searching a partie médicinale (called p):
	let obj be a random thing enclosed by p;
	let par be the parent de p;
	if obj is not nothing:
		say "Vous avez trouvé [some obj], que vous rangez soigneusement avec le reste de vos plantes médicinales. [line break]";
		move obj to the player;
		now p is récolté;
	otherwise if the par is récoltable:
		let p2 be a random partie comestible in the par;
		try searching p2;
	otherwise if p is récolté:
		say "Il semble qu'il n'y ait rien de plus à récolter ici qui contienne des principes actifs intéressants. [line break]";
	otherwise:
		say "Vous ne trouvez rien ici qui contienne des principes actifs intéressants, peut-être n'est-ce pas encore la saison. [line break]".

Definition: a room is borgne if number of rooms adjacent to it is 1.
Definition: a room is vers l'intérieur if it is in Intérieur and the location is not in Intérieur.
Definition: a room is vers l'extérieur if it is not in Intérieur and the location is in Intérieur.
Definition: a room is où entrer if it is borgne or it is vers l'intérieur. 
Definition: a room is vers où sortir if it is vers l'extérieur.
To decide whether sortie possible:
	if at least one adjacent room is vers où sortir, yes;
	otherwise no.
To decide whether entrée possible:
	if at least one adjacent room is où entrer, yes;
	otherwise no. 
To decide whether sortie triviale:
	if exactly one adjacent room is vers où sortir, yes;
	otherwise no.
To decide whether entrée triviale:
	if exactly one adjacent room is où entrer, yes;
	if exactly one adjacent room is vers l'intérieur, yes;
	otherwise no. 
Instead of exiting when sortie triviale:
	let R be a random adjacent vers où sortir room;
	let the way be the best route from the location to R; 
	say "(c'est-à-dire vers [the way])[command clarification break]"; 
	try going the way.
To decide which room is the meilleure entrée:
	if exactly one adjacent room is où entrer:
		decide on a random adjacent où entrer room;
	otherwise:
		decide on a random adjacent vers l'intérieur room;
Instead of InGoing when entrée triviale:
	let R be the meilleure entrée;
	let the way be the best route from the location to R; 
	say "(c'est-à-dire vers [the way])[command clarification break]"; 
	try going the way.

Chapter 3 - Combat

To decide which number is le bonus d'arme :
	let b_armes be the qualité of the qualitiest arme carried by the player;
	if at least one arme is carried by the player :
		increment b_armes;
	otherwise if combat rapproché est connue :
		increase b_armes by ( 1 + 2 ) ;
	if tir à l'arc est connue and the qualitiest arme matches arc :
		increase b_armes by 2;
	otherwise if combat rapproché est connue and the qualitiest arme matches arme de combat rapproché :
		increase b_armes by 2;
	otherwise if escrime est connue and the qualitiest arme matches épée :
		increase b_armes by 2;
	otherwise if armes d'hast et à deux mains est connue and the qualitiest arme matches arme d'hast :
		increase b_armes by 2;
	decide on b_armes;

To résoudre combat contre (adv - a person) :
	say "[conditional paragraph break] *** Un combat s'engage contre [the adv] *** [paragraph break]";
	let oldpv be the points de vie of player;
	while points de vie of adv > 0 and points de vie of player > 0 :
		let b_armes be le bonus d'arme;
		let b_armure be the total qualité of protection worn by the player;
		let prec_moi be the dextérité of player plus b_armes minus bonus de défense of adv;
		let x_moi be a random number between 0 and prec_moi;
		let prec_lui be the dextérité of adv plus bonus d'attaque of adv minus b_armure;
		let x_lui be a random number between 0 and prec_lui;
		if x_moi > x_lui :
			tour d'attaque contre adv;
		otherwise if x_moi < x_lui :
			tour de défense contre adv;
		otherwise :
			tour d'attaque contre adv;
			tour de défense contre adv;
	if points de vie of the player > 0 :
		say "Vous avez gagné le combat, avec [points de vie of player] points de vie restant. [line break]";
	if secourisme est connue :
		let recup be ( oldpv - points de vie of the player ) / 4 ;
		if recup > 0:
			soigner de recup;
			say "Vos compétences de secouriste vous permettent de soulager quelque peu vos blessures. Assez rapidement vous regagnez [recup] points de vie et évitez que ces blessures s'agravent. [line break]".

To tour d'attaque contre (adv - a person) :
	let b_armes be le bonus d'arme;
	let deg be the force of the player plus b_armes;
	let x_moi be a random number between 0 and 10 ;
	if x_moi is 10 : [ coup critique ; aide à éviter boucles sans fin ]
		if bonus de défense of adv < 0 :
			decrease deg by bonus de défense of adv;
	otherwise :
		decrease deg by bonus de défense of adv;
	if deg < 0 :
		now deg is 0;
	now deg is ( deg * 10 ) divided by endurance of adv;
	now deg is deg divided by facteur de foule of adv;
	now deg is a random number between 0 and ( 2 * deg );
	decrease points de vie of adv by deg;
	say "Vous assénez [deg] points de dégats à [if facteur de foule of adv > 1 ]vos adversaires[otherwise]votre adversaire[end if], restent [points de vie of adv]. [noclear-pause]".

To tour de défense contre (adv - a person) :
	let b_armure be the total qualité of protection worn by the player;
	let deg be the force of adv;
	let x_lui be a random number between 0 and 10 ;
	if x_lui is 10 : [ coup critique ; aide à éviter boucles sans fin ]
		if bonus d'attaque of adv > 0 :
			increase deg by bonus d'attaque of adv;
	otherwise :
		decrease deg by b_armure;
		increase deg by bonus d'attaque of adv;
	if deg < 0 :
		now deg is 0;
	now deg is ( deg * 10 ) divided by endurance of the player;
	[now deg is deg multiplied by facteur de foule of adv;]
	now deg is a random number between 0 and ( 2 * deg );
	decrease points de vie of the player by deg;
	say "Vous subissez [deg] points de dégats, restent [points de vie of the player]. [noclear-pause]";
	blesser de 0.

Part 1 - Le départ

Chapter 1 - Lieux et objets

Section 1 - Avant la bifurcation

Plateforme d'observation is  a partie de la forêt. "[first time]Tout en balayant du regard le paysage sylvestre à la recherche du meilleur itinéraire, vous pestez contre le dernier caprice du prince. Vous, un des membres de la prestigieuse unité d[']élite des Ombres de Danariel, envoyé comme un vulgaire coursier pour aller acheter une couronne qui convienne à sa majesté ! Croît-il vraiment que ce sont les orfèvres de ces hideux nains qui vont lui apporter la légitimité dont il manque aux yeux de notre peuple ?[pause the game]Quoi qu'il en soit, vous êtes obligé de lui obéir. Aussi fragile que soit sa position, il reste le prince. Et bientôt roi, couronné par les druides avec cette couronne qu'il exige de vous. [line break]Si toutefois vous revenez en vie. Car, bien que peu glorieuse, votre mission n'est pas pour autant dénuée de dangers. En effet, depuis la mort du roi Tha'daril, le père du jeune prince, le royaume jadis immense est découpé entre de nombreux prétendants et seigneurs de guerre. Son héritier a pû se maintenir dans la cité royale et ses environs immédiats en profitant des dissensions et en opposants les prétendants les uns aux autres pour les neutraliser, mais cet équilibre est fragile. La cité royale est sous blocus et toute tentative de forcer ce blocus serait vue comme une provocation qui pourrait pousser vos ennemis à s'unir contre le prince pour maintenir le status quo. A fortiori s'ils apprennent la raison de cela : chercher une couronne dont le seul rôle est de symboliser de façon tapageuse la volonté du prince de récupérer le contrôle de tout le royaume. Vous devez donc le traverser seul, en toute discrétion, à travers toute la forêt de Saenor jusqu'aux collines de Silbermold. [paragraph break]Mais avant de commencer, nous devons passer en revue votre personne... [pause the game][créer le joueur][clear the screen][only][potentiellement créer joueur]Vous êtes dans une petite plateforme construite sur les hauteurs d'un séquoia géant qui perce la canopée, point d'observation situé à la lisière de la capitale. Devant vous s[']étend à perte de vue la dense forêt de Saenor, que les humains appellent la forêt maudite. ".
[Moi is a person in Plateforme d'observation. The player is moi.]
The player carries two rations de survie.

Ascenseur à pédales is a fake door. It is down of Plateforme d'observation and above Lisière nord de la cité royale.

Lisière nord de la cité royale is a Partie de la forêt. The description is "Au pied du grand séquoia prospèrent fougères géantes et arbrisseaux, tant est si bien que vous ne pouvez y voir à plus de quelques mètres à travers. Mais cette dense végétation s'ouvre vers le nord pour laisser place à un large chemin de terre mal entretenu. ".
The fougères géantes is a plante in Lisière nord de la cité royale. It is female and plural-named. 
The arbrissaux is a plante in Lisière nord de la cité royale.  It is plural-named. It is comestible. Some petites baies orangées are an aliment in the arbrissaux's partie comestible. Petites baies orangées is female. It is plural-named.

Route du nord is a kind of room. 
The description is usually "Jadis ce chemin était un axe commercial important, rejoignant tout d'abord la cité royale avec les capitales régionales de Faassin et Daeghel puis plus loin Silbermold, capitale des nains du Royaume du Nord aux alliages recherchés. Aujourd'hui plus aucun marchand n'ose s'aventurer sur ces routes dangereuseuses et les herbes folles commencent à envahir la terre battue jusqu'au milieu même du chemin. ". 
One route du nord is north of Lisière nord de la cité royale and south of Poste de garde abandonné.

Poste de garde abandonné is a route du nord. [It is north of Route du nord.] "Au temps du commerce florissant, la route du nord était parsemée de tels postes de garde à intervalles réguliers. Une petite barraque en bois sur le côté, et un portail sommaire permettant d'arrêter les chariots de marchants au besoin. Ils sont maintenant tous abandonnés sans exception. [if observation est connue][first time][line break]Vraiment abandonné ? Cette barraque vous paraît quand même suspecte, un pressentiment. [only][end if]". 

Barraque du poste de garde is a Pièce intérieure. It is east of Poste de garde abandonné.  "Les herbes qui envahissaient l'entrée de la barraque ont récemment été piétinées. [if observation est connue]Il s'agit clairement d'empreintes elfiques. Une escouade d[']éclaireurs ennemis a dû passer par là il y a quelques jours tout au plus, vous devriez rester sur vos gardes. [otherwise]Est-ce l'oeuvre d'un homme ou d'un animal ? [end if]".
Herbes écrasées is a médicinale plante. It is in barraque du poste de garde. It is female and plural-named. Some herbe à chat is in the herbes écrasées's partie médicinale. It is singular-named and female. The herbes écrasées's partie médicinale is wideknown. 

Bifurcation sur la route nord is a route du nord. It is north of Poste de garde abandonné. "Ici vous pouvez voir l'embranchement d'un petit chemin de forestier qui s'enfonce vers l'ouest. Un détour par ce côté est une possibilité, qui vous aidera sans doute à rester inaperçu. Ou bien vous pouvez continuer tout droit sur la grande route du nord, indéniablement le chemin le plus rapide. "

Section 2 - Le détour par l'ouest après la bifurcation

Petit chemin de forestier is a Partie de la forêt. It is west of Bifurcation sur la route nord. "Des orties ont envahi un côté du chemin en une sorte de grande flaque verte que vous évitez soigneusement. Juste après l'embranchement avec la grande route du nord,  un symbole peint sur un grand saule confirme que cet étroit passage est bien un chemin. ".
The orties is a plante. It is  comestible and médicinale. It is in Petit chemin de forestier. It is female and plural-named. The feuilles d'orties is an aliment in the orties's partie comestible. It is female and plural-named.
The grand saule is a plante. It is médicinale . It is in Petit chemin de forestier. The écorce de saule is in the grand saule's partie médicinale. It is female. 

Sentier innondé is a Partie de la forêt. It is west of Petit chemin de forestier.  "Le petit chemin forestier continue tout droit en perçant laborieusement la dense végétation, principalement des mûriers lunaires. Au beau milieu du sentier, une énorme mare stagnante vous oblige à vous faufiler entre les arbres pour la contourner. ". 
The mûriers lunaires is a plante. It is in Sentier innondé. It is plural-named. The description is "Les mûriers lunaires ont cette particularité de ne mûrir que lors d'une d'éclipse de Lune totale. Autrement dit, à cet instant ces buissons ne sont pour vous qu'un dense tas d'épine qui menace de lacérer votre peau si vous n'y prêtez pas garde. ".
Instead of searching mûriers lunaires :
	say "Vous vous écorchez les mains à fouiller ces buissons pleins d'épines mais vous n'y trouvez rien d'intéressant... en fait vous ne savez même pas vraiment ce que vous cherchez. [line break]";
	blesser de 10.
Mare stagnante is a thing in Sentier innondé. It is scenery. The description is "Cette mare stagnante est le témoignage d'une averse déjà fort ancienne puisqu'il n'a pas plu depuis des semaines. Le sol argileux et la rétention de l'humidité par la dense végétation expliquent cette persistance. L'eau est devenue verdâtre et attire tout une collection d'insectes et d'amphibiens. [if rainette écarlate is in the location]Le coassement d'une grenouille près de vous attire tout particulièrement votre attention. [end if]".
Rainette écarlate is an animal in Sentier innondé. It is scenery. The description is "Une rainette écarlate, espèce de grenouille particulièrement rare. La substance visqueuse qui recouvre sa peau contient un poison particulièrement recherché[if secourisme est connue] : suffisant pour tuer une personne par simple contact s'il est raffiné, et doté de nombreuses propriétés médicinales une fois convenablement dilué[end if]. ".
Understand "grenouille" as rainette écarlate.  
Instead of taking or touching rainette écarlate for the first time :
	if secourisme est connue :
		say "Toucher cette grenouille semble être une très mauvaise idée tant vous connaissez bien les propriétés foudroyantes du poison qui la recouvre. Vous enfoncez une main dans votre manche et contemplez la possibilité de réessayer une nouvelle fois d'attraper la grenouille, à travers votre manche cette fois. [line break]";
	otherwise if communication animale est connue :
		say "Alors que vous vous approchez de la grenouille pour la saisir vous voyez qu'elle ne cherche absolument pas à s'enfuir, votre connaissance des animaux vous permet même d'associer son coassement à une certaine forme de bravade. Vous ne tardez pas à comprendre que ce comportement vous indique que le poison est bien plus puissant que ce vous pensiez, et ramenez votre main à vous. Vous enfoncez une main dans votre manche et contemplez la possibilité de réessayer une nouvelle fois d'attraper la grenouille, à travers votre manche cette fois. [line break]";
	otherwise :
		say "Alors que vous tentez de saisir la grenouille qui vous glisse entre les doigts, vous sentez une violente brûlure et plongez instinctivement votre main dans la mare pour la soulager. Vous la retirez rapidement d'un air dégoûté en espérant que cette eau malsaine ne vous vaille pas une infection. L'intensité de la douleur vous fait finalement fermer les yeux quelques secondes, et quand vous les rouvrez la grenouille a disparu. [line break]";
		now the rainette écarlate is off-stage;
		blesser de 30.
Instead of taking or touching rainette écarlate :
	if secourisme est connue or communication animale est connue :
		say "A travers votre manche cette fois, vous tentez d'attraper l'animal. Votre tentative maladroite échoue tant la peau de l'animal glisse, tandis que vous évitez de justesse de tomber dans la mare. Cependant, une bonne quantité de la substance visqueuse est restée sur votre manche. Vous la raclez consciencieusement et la déposez dans une feuille d'arbre que vous pliez soigneusement avant de ranger dans votre sac. ";
		now the rainette écarlate is off-stage;
	otherwise :
		say "Ceci est un bug ! ".
[ TODO: Je dois trouver un moyen de permettre à un joueur qui a déjà compris le truc de ne pas avoir besoin que la compétence le lui donne... par un verbe facile à deviner ! ]
[Taking with is an action applying to two things and requiring a carried second noun.
Understand "take [something] with [something]" as taking with;
Instead of taking rainette écarlate with ;
Instead of rubbing rainette écarlate with something :]

Clairière lumineuse is a Partie de la forêt. It is northwest of Sentier innondé. The description is "Une large clairière perce la forêt, cernée par d'immenses arbres reprenant alors brusquement possession de la forêt. Du haut des cîmes de ces arbres centenaires, quelques rayons de soleil chutent verticalement sur la clairière et illuminent l'herbe dense, non sans avoir au passage fait briller les courants de poussière qui virevoltent le long de ce puit de lumière. Vous vous arrêtez quelques temps pour profiter de la chaleur envoûtante du soleil sur votre peau, baigné dans le chant relaxant des grillons.". 
The grillons is an animal in Clairière lumineuse. It is scenery. It is plural-named. The description is "Les grillons sautillent ça et là hors de l'herbe, trop rapidement pour que vous puissez vraiment les examiner.".
Instead of listening when in Clairière lumineuse:
	say "Rien mis à part le son envahissant des grillons.".
Instead of listening to grillons:
	say "Certains humains trouvent le chant des grillons agaçant. Quoi de plus relaxant pourtant?".
Instead of taking grillons:
	say "Impossible d'attraper ces bestioles qui sautent dans tous les sens dès que votre main s'en approche à peine.".

Ruisseau rocailleux is a Partie de la forêt. It is north of Clairière lumineuse. The description is "Un petit ruisseau se faufile à travers les rochers, qu'il fouette et éclabousse. Probablement un affluent de la rivière jaune, un peu plus au nord. Sur ses rives agitées s'agite une masse de roseaux dorés. Certains portent des traces de piétinement, par des animaux. C'est sans doute un endroit de choix pour tous ceux  qui aux alentours souhaitent se désaltérer.".
The roseaux dorés is in Ruisseau rocailleux. It is undescribed. It is plural-named. 
The ours sylvestre is an animal. The ours sylvestre can be dans le coin, ici or parti. It is dans le coin. 
To apparition d'un ours:
	if Ours sylvestre is dans le coin:
		say "Un ours surgit soudain de la dense végétation. [if camouflage est connue]Immédiatement, vous vous allongez et vous camouflez dans les herbes hautes, tandis que l'ours boit paisiblement l'eau du ruisseau.[otherwise]Il ne semble pas encore vous avoir vu, mais sans doute serait-il prudent de dégarpir rapidement[end if]";
		now Ours sylvestre is ici;
		move Ours sylvestre to ruisseau rocailleux;
		The ours attaque peut-être in one turn from now;
		The ours s'en va in two turns from now.
At the time when the ours attaque peut-être:
	unless camouflage est connue or communication animale est connue or Ours sylvestre is mort or the player is not in the location of Ours sylvestre:
		say "Sa soif satisfaite, l'ours relève la tête. C'est alors qu'il vous remarque, ceci le mettant de fort mauvaise humeur. L'animal est trop rapide pour que vous puissiez espérer fuir, il va falloir se défendre.";
		combattre l'ours.
At the time when the ours s'en va:
	if Ours sylvestre is not mort and Ours sylvestre is ici:
		say "N'ayant plus rien à faire par ici, l'ours finit par s'enfoncer de nouveau dans la forêt, et disparaît aussi vite qu'il est apparu.";
		now the Ours sylvestre is parti;
		now the Ours sylvestre is off-stage.
Instead of examining Ours sylvestre when Ours sylvestre is not mort and communication animale est connue:
	say "Ce vieil ours de demande qu'à être laissé en paix. Il n'attaquera que s'il sent en vous une menace.".
To combattre l'ours:
	résoudre combat contre ours sylvestre;
	now the printed name of Ours sylvestre is "carcasse d'ours sylvestre";
	now Ours sylvestre is female.  
Instead of attacking Ours sylvestre:
	if chasse est connue and player encloses at least one arc :
		say "Pendant que l'ours  boit tranquillement l'eau du ruisseau sans suspecter quoi que ce soit, vous prenez le temps d'ajuster votre arc et visez le cou de l'animal. A l'instant où la flèche sifflante atteint sa cible, une puissante plainte déchire. Mais il en faut plus pour arrêter le robuste animal qui fonce désormais sur vous furieux.";
		now points de vie of ours sylvestre is 30; 
		combattre l'ours;
	otherwise:
		say "A peine dégainez-vous votre arme que l'ours émet un puissant grognement et s[']élance vers vous.";
		combattre l'ours.  
Understand "carcasse" as Ours sylvestre when points de vie of Ours sylvestre <= 0.
The eau du ruisseau is in ruisseau rocailleux. It is scenery. It is female. The description is "L'eau claire, purifiée par son bouillonnement permanent, semble parfaitement potable.".
Understand "eau" as eau du ruisseau. 
Instead of drinking eau du ruisseau when in Ruisseau rocailleux:
	say "Vous vous penchez à genoux et goutez l'eau fraîche du ruisseau.";
	apparition d'un ours.
After waiting when in Ruisseau rocailleux:
	apparition d'un ours.
Instead of searching Ours sylvestre when Ours sylvestre is mort:
	say "FIXME: trouver viande & med.".

Grotte druidique is a Partie de la forêt. It is northeast of Ruisseau rocailleux and west of Sirsennas. 

Section 3 - Tout droit après la bifurcation

[déclenche Passage des Eclaireurs]
Tronçon sinueux is a route du nord. It is north of Bifurcation sur la route nord. "La route du nord continue de s[']étendre indéfiniment[if peut observer les animaux and Passage des Eclaireurs is happening]. Cependant, vous entendez des bruits d'animaux inquiets et voyez quelques oiseaux s'agiter peu après l'endroit où la route fait un coude. Peut-être serait-il prudent de se cacher dans ce buisson le temps que l'agitation se dissipe. [otherwise if Première Rencontre is happening], mais voilà que la rencontre d'une patrouille d[']éclaireurs en a soudainement brisé la monotonie. [otherwise], toujours plus monotone. Votre voyage est uniquement distrait par les magnifiques fleurs de ce buisson de Dalrin. [end if]". 
A buisson de Dalrin is a plante in tronçon sinueux. L'intérieur du buisson is a container. It is part of buisson de Dalrin. It is enterable. 
Instead of entering the buisson de Dalrin:
	try entering L'intérieur du buisson. 

One route du nord is north of tronçon sinueux and south of Sirsennas.

Section 4 - Convergence sur Sirsennas

Sirsennas is a route du nord. "Le petit village du Sirsennas marque la fin de la zone restée plus ou moins sous l'influence de la cité royale. De l'autre côté de la rivière jaune les troupes de Faassin se sont positionnées pour établir un blocus sur une ligne facilement défendable. Vers le nord, la grande route continue par un large pont de pierre. Mais aujourd'hui seuls peuvent y accéder les paysans de Sirsennas dotés d'un laisser-passer pour fournir les troupes an nourriture. "

Chapter 2 - Scenes

Section 1 - Les éclaireurs de Faassin

Passage des Eclaireurs is a scene.
Passage des Eclaireurs begins when the player is in Tronçon sinueux for the first time. 
Passage des Eclaireurs ends avec contact when time since Passage des Eclaireurs began >= 2 minute and the location is Tronçon sinueux. 
Passage des Eclaireurs ends avec interception when we are going south or we are going north.

Première Rencontre is a scene. 
Première Rencontre begins when Passage des Eclaireurs ends avec contact.
Première Rencontre begins when Passage des Eclaireurs ends avec interception.
To decide whether est bien caché:
	if the player is in L'intérieur du buisson or panthère is not méfiant, yes;
	if camouflage est connue, yes;
	decide no.
To decide whether les éclaireurs s'éloignent:
	if the time since Première Rencontre began is 8 minutes, yes;
	if the location of patrouille d'éclaireurs is not the location of the player, yes;
	decide no.
Première Rencontre ends dans le calme when est bien caché and les éclaireurs s'éloignent. 
Première Rencontre ends en combat when the patrouille d'éclaireurs is hostile. 
When Première Rencontre begins:
	move patrouille d'éclaireurs to the location;
	move panthère apprivoisée to the location;
	say "Soudain, une patrouille d[']éclaireurs elfes surgit du virage au nord. [line break]";
	if player is in Tronçon sinueux and camouflage est connue:
		say "De justesse vous plongez furtivement dans le buisson de Dalrin avant que les éclaireurs vous voient. ";
		move the player to L'intérieur du buisson, without printing a room description ;
	otherwise:
		say "Instinctivement, vous vous cachez derrière l'arbre le plus proche. ";
	say "Retenant votre respiration, vous voyez la patrouille passer devant vous, puis s'arrêter. Un instant vous croyez avoir été repéré, mais vous vous rendez vite compte qu'ils ne se sont arrêtés que pour monter leur camp. ";
	if player is in L'intérieur du buisson:
		say "Installé confortablement sur un tapis de feuilles entre deux branches de ce large buisson, vous laissez le temps passer jusqu[']à la tombée de la nuit. ";
	otherwise:
		say "Serré contre votre maigre bouleau, la perspective de passer plusieurs heures dans cette position ne vous enchante pas vraiment davantage. Après une attente interminable, le soleil se couche enfin et vous cherchez à quitter votre cachette. ";
	say "Les éclaireurs sont maintenant endormis et seule leur panthère monte la garde. [line break]";
	if the player is in L'intérieur du buisson :
		try looking.

The patrouille d'éclaireurs is a woman. The facteur de foule is 3. The description is "A leur blason vous pouvez reconnaître que cette patrouille a été envoyée par le haut-seigneur de Faassin. Bien qu'il n'ait aucun sang royal, ce seigneur extrêmement puissant a décidé qu'il était celui dont avait besoin le royaume. Ce sont ses troupes qui contrôlent l'essentiel de la partie nord de la ligne de blocus, quelques lieues plus au nord. N'hésitant pas à piétiner les traditions elfiques pour s'enrichir, les seigneurs de Faassin ont fait fortune dans le commerce de charbon de tréant avec les nains, et leurs troupes sont toujours très bien équipées. ". It is méfiant. 
Understand "éclaireurs" as patrouille d'éclaireurs. 
The panthère apprivoisée is an animal. It is female. The description is  "Les elfes utilisent quelquefois des panthères comme animal de garde ou de guerre. Elles n'ont pas le nez des chiens qu'utilisent les humains, et sont plus difficiles à apprivoiser, mais elles sont aussi beaucoup moins pataudes et sont un compagnon de choix pour tout rôdeur. ". It is méfiant. 

Every turn during Première Rencontre:
	if time since Première Rencontre began >= 4 minutes and player is not in L'intérieur du buisson and panthère apprivoisée is méfiant:
		now the panthère apprivoisée is hostile;
		now the patrouille d'éclaireurs is hostile; 
		say "Des heures que vous êtes planté derrière ce bouleau. Il commence à être impossible de rester immobile plus longtemps, vous êtes déjà tout courbaturé. Manque de chance, à peine sortez vous de votre cachette pour en rejoindre une plus confortable, que la panthère vous remarque et sonne l'alarme. [line break]".

Instead of waiting when the player is in L'intérieur du buisson during Première Rencontre :
	while Première Rencontre is happening and the time since Première Rencontre began < 8 minutes :
		increment the time of day;
		follow report waiting;

Instead of giving herbe à chat to panthère apprivoisée :
	say "Sortant tout doucement de votre cachette, vous amadouez la panthère à l'aide de l'herbe à chat. Vous sentez encore votre coeur affolé rebondir dans votre cage thoracique, mais finalement c'est un pari réussi : la panthère déguste calmement son herbe à chat et se désintéresse complètement de vous. [line break]";
	now herbe à chat is off-stage;
	now the panthère apprivoisée is sans opinion.

Instead of waving hands to or talking to panthère apprivoisée :
	say "Vous essayez d'amadouer la panthère en lui chuchotant des paroles appaisantes et vous dévoilez lentement. ";
	if communication animale est connue :
		say "Grace à vos talents exceptionnels avec les animaux, la panthère finit par sa frotter à vos jambes en ronronnant. Vous voilà complètement soulagé. [line break]";
		now the panthère apprivoisée is amical;
	otherwise :
		say "Elle vous répond par des grognements et un bruyant grognement qui réveille immédiatement la patrouille. ";
		now the panthère apprivoisée is hostile;
		now the patrouille d'éclaireurs is hostile. 

Instead of touching panthère apprivoisée :
	say "Vous essayez d'amadouer la panthère en lui tendant votre main. Cela se passe plutôt bien et vous commencez à la caresser. ";
	if communication animale est connue :
		say "Grace à vos talents exceptionnels avec les animaux, la panthère finit par sa frotter à vos jambes en ronronnant. Vous voilà complètement soulagé. [line break]";
		now the panthère apprivoisée is amical;
	otherwise :
		say "Mais soudain la panthère prend peur et vous mort la main";
		blesser de 10;
		say "La douleur est insoutenable mais surtout il vous faut maintenant penser à la patrouille qui a été réveillée [line break]. ";
		now the panthère apprivoisée is hostile;
		now the patrouille d'éclaireurs is hostile. 

Instead of doing something other than waving hands to or talking to or touching or giving or waiting or looking or examining or listening or smelling or attacking in the presence of panthère apprivoisée when panthère apprivoisée is méfiant:
	say "Vous éveillez malencontreusement l'attention de la panthère, dont le rugissement ne tarde pas à réveiller la patrouille. [line break]";
	now the panthère apprivoisée is hostile;
	now the patrouille d'éclaireurs is hostile.

Instead of attacking during Première Rencontre:
	say "Vous choisissez d'attaquer la patrouille pendant son sommeil. [line break]";
	now the panthère apprivoisée is hostile;
	now the patrouille d'éclaireurs is hostile.

Instead of searching patrouille d'éclaireurs for the first time:
	if panthère apprivoisée is méfiant:
		say "Vous vous approchez du campement à la recherche de quelque chose d'intéressant à leur soustraire, mais la panthère vous barre la route. [line break]";
		now the panthère apprivoisée is hostile;
		now the patrouille d'éclaireurs is hostile;
	otherwise:
		say "Vous vous approchez du campement à la recherche de quelque chose d'intéressant à leur soustraire. Rien d'innatendu mais tout de même un bien bel équipement[line break]";
		move cuirasse elfique de mithril to the location;
		move casque elfique de mithril to the location;
		move épée elfique de mithril to the location;
		try looking.

The cuirasse elfique de mithril is an armure. It is female. The poids is 10kg. The qualité is 3.
The casque elfique de mithril is a casque. The qualité is 3.
The épée elfique de mithril is an épée. It is female. The qualité is 3. 

When Première Rencontre ends dans le calme :
	if the location of the player is the location of the patrouille d'éclaireurs:
		now the patrouille d'éclaireurs is off-stage;
		now the panthère apprivoisée is off-stage;
		say "Vous avez attendu jusqu'au lever du soleil. Finalement au petit matin la patrouille lève le camp et continue sa route, vous pouvez sortir de votre cachette sans risque. [line break]";
	otherwise:
		now the patrouille d'éclaireurs is off-stage;
		now the panthère apprivoisée is off-stage.

When Première Rencontre ends en combat :
	if we are attacking and opinion of panthère apprivoisée was greater than méfiant:
		say "Ayant réussi à surprendre l'ennemi, vous avez un net avantage stratégique. [line break]";
		now bonus d'attaque of patrouille d'éclaireurs is -4;
		now bonus de défense of patrouille d'éclaireurs is -4;
	otherwise if we are attacking :
		say "Vous avez l'initiative mais la panthère a quelque peu trahi votre effet de surprise. [line break]";
		now bonus d'attaque of patrouille d'éclaireurs is -2;
		now bonus de défense of patrouille d'éclaireurs is -2;
	otherwise :
		say "Seul contre un ennemi en surnombre, c'est un combat difficile qui s'annonce. [line break]";
	résoudre combat contre patrouille d'éclaireurs;
	move cuirasse elfique de mithril to the location;
	move casque elfique de mithril to the location;
	move épée elfique de mithril to the location;
	now the patrouille d'éclaireurs is off-stage;
	now the panthère apprivoisée is off-stage.

Part A - Effets visuels

To pause the/-- game without clearing: 
	say "[paragraph break]Please press SPACE to continue. [paragraph break]";
	wait for the SPACE key.

To say noclear-pause:
	pause the game without clearing;

To say pause the game:
	pause the game. 

To say clear the screen:
	clear the screen.

To turn screen black:
	say white letters;
	turn the background black;
	clear the screen;
	leave space;

To turn screen white:
	turn the background white;
	say black letters;
	clear the screen;
	leave space.

To leave space:
	say paragraph break;
	say paragraph break;
	say paragraph break;
	say paragraph break.

Table of Fancy Status
left	central	right
" [if in darkness]Darkness[otherwise][location][end if]"	""	"[top rose]"
" [if not in darkness]([map region of the location])[end if]"	""	"[middle rose]"
" Zones visitées: [number of rooms which are visited]/[number of rooms]"	""	"[bottom rose]"

To say red reverse:
	turn the background red.

To say black reverse:
	turn the background black.

To say white reverse:
	turn the background white.

To say rose (way - a direction):
	let place be the room way from the location;
	if the place is a room, say "[if the place is unvisited][red reverse][end if][way abbreviation][default letters]"; otherwise say "[way spacing]";

To say (way - a direction) abbreviation:
	choose row with a chosen way of way in the Table of Various Directions;
	say abbrev entry.

To say (way - a direction) spacing:
	choose row with a chosen way of way in the Table of Various Directions;
	say spacing entry.

Table of Various Directions
chosen way	abbrev	spacing
up	"H   "	"    "
northwest	"NO"	"  "
north	" N "	"    "
northeast	"NE"	"  "
east	" E"	"  "
west	"O "	"  "
southeast	"SE"	"  "
south	" S "	"   "
southwest	"SO"	"  "
down	"B   "	"    "

To say top rose:
	say "[rose up][rose northwest][rose north][rose northeast]".

To say middle rose:
	say "    [rose west] . [rose east]";

To say bottom rose:
	say "[rose down][rose southwest][rose south][rose southeast]".

Rule for constructing the status line:
	fill status bar with Table of Fancy Status;
	say default letters;
	rule succeeds.

Part B - Création du personnage

Table of Nouveau Personnage
title	subtable	description	toggle 
"Note sur la création d'un personnage"	a table-name	"Choisissez avec sagesse les caractéristiques de votre personnage, car cela pourra fortement influencer toute la partie par la suite. Certains choix rendront la partie plus facile que d'autres, certains peut-être rendront même la victoire impossible. [line break]Remplissez chacun des champs ci-dessous puis quitter pour valider (seulement possible si votre choix est acceptable). Pour simplifier votre travail un choix par défaut a été fait, mais sûrement pas le meilleur. "	a rule 
"Personnalité"	Table of Choix de personnalité	--	-- 
"Caractéristiques primaires"	Table of Choix des caractéristiques	--	-- 
"Compétences"	Table of Choix des compétences	--	-- 
"Equipement"	Table of Choix de l'équipement	--	-- 

To say créer le joueur:
	now the current menu is the Table of Nouveau Personnage;
	now the current menu title is "Création d'un nouveau personnage";
	carry out the displaying activity;
	clear the screen;
	try looking.

To decide if personnage valide :
	if points de caractéristiques dispo is not 0 :
		say "Vous n'avez pas terminé l'allocation de vos caractéristiques ! ";
		decide on false;
	otherwise if compétences actuelles is not maximum de compétences :
		say "Vous n'avez pas terminé l'allocation de vos compétences ! ";
		decide on false;
	otherwise if points d'équipement restant < 0 :
		say "Vous avez sélectionné trop d'équipements par rapport à ce que votre situation financière permet ! ";
		decide on false;
	otherwise if capacité de transport restante < 0kg :
		say "Vous n'avez pas la force de porter tout ce poids en équipement ! ";
		decide on false;
	otherwise :
		decide on true. 

To say potentiellement créer joueur :
	unless personnage valide, say créer le joueur;


Table of Choix de personnalité
title	subtable	description	toggle 
"Choix aléatoire"	 a table-name	a text	personnalité aléatoire rule
"Sexe ([if the player is female]F[otherwise]M[end if])"	--	--	toggle sex rule
"Morale ([morale])"	Table of Choix de morale	--	--
"Ethique ([éthique])"	Table of Choix d'éthique	--	--
"Richesse ([richesse])"	Table of Choix de richesse	--	--

This is the personnalité aléatoire rule:
	let sex be a random number from 0 to 1;
	if sex is 0:
		now the player is not female;
	otherwise:
		now the player is female;
	follow the morale aléatoire rule;
	follow the éthique aléatoire rule;
	follow the richesse aléatoire rule.

This is the toggle sex rule:
	if the player is female:
		now the player is not female;
	otherwise:
		now the player is female.

Table of Choix de morale
title	subtable	description	toggle 
"Choix aléatoire"	 a table-name	a text	morale aléatoire rule
"Bon"	--	--	choisir morale rule
"Neutre"	--	--	choisir morale rule
"Mauvais"	--	--	choisir morale rule

This is the morale aléatoire rule:
	let x be a random number between 1 and 3;
	if x is:
		-- 1: now the player is bon;
		-- 2: now the player is neutreM;
		-- 3: now the player is mauvais;
	rule succeeds;

This is the choisir morale rule:
	let x be the current menu selection minus 1;
	if x is:
		-- 1: now the player is bon;
		-- 2: now the player is neutreM;
		-- 3: now the player is mauvais;
	rule succeeds;

Table of Choix d'éthique
title	subtable	description	toggle 
"Choix aléatoire"	 a table-name	a text	éthique aléatoire rule
"Loyal"	--	--	choisir éthique rule
"Neutre"	--	--	choisir éthique rule
"Chaotique"	--	--	choisir éthique rule

This is the éthique aléatoire rule:
	let x be a random number between 1 and 3;
	if x is:
		-- 1: now the player is loyal;
		-- 2: now the player is neutreE;
		-- 3: now the player is chaotique;
	rule succeeds;

This is the choisir éthique rule:
	let x be the current menu selection minus 1;
	if x is:
		-- 1: now the player is loyal;
		-- 2: now the player is neutreE;
		-- 3: now the player is chaotique;
	rule succeeds;

Table of Choix de richesse
title	subtable	description	toggle 
"Choix aléatoire"	 a table-name	a text	richesse aléatoire rule
"Riche"	--	--	choisir richesse rule
"A l'aise"	--	--	choisir richesse rule
"Modeste"	--	--	choisir richesse rule
"Pauvre"	--	--	choisir richesse rule
"Miséreux"	--	--	choisir richesse rule

This is the richesse aléatoire rule:
	let x be a random number between 1 and 5;
	if x is:
		-- 1: now the player is riche;
		-- 2: now the player is à l'aise;
		-- 3: now the player is modeste;
		-- 4: now the player is pauvre;
		-- 5: now the player is miséreux;
	rule succeeds;

This is the choisir richesse rule:
	let x be the current menu selection minus 1;
	if x is:
		-- 1: now the player is riche;
		-- 2: now the player is à l'aise;
		-- 3: now the player is modeste;
		-- 4: now the player is pauvre;
		-- 5: now the player is miséreux;
	rule succeeds;

points de caractéristiques dispo is a number which varies.

Table of Choix des caractéristiques
title	subtable	description	toggle 
"Allouer automatiquement ([points de caractéristiques dispo] points disponibles)"	 a table-name	a text	caractéristiques aléatoires rule
"Mise à zéro"	--	--	zéro caractéristiques rule
"Force ([force of the player])"	--	--	modifier caractéristique rule
"Dextérité ([dextérité of the player])"	--	--	modifier caractéristique rule
"Endurance ([endurance of the player])"	--	--	modifier caractéristique rule
"Sagesse ([sagesse of the player])"	--	--	modifier caractéristique rule
"Intelligence ([intelligence of the player])"	--	--	modifier caractéristique rule
"Charisme ([charisme of the player])"	--	--	modifier caractéristique rule

caractéristique à modifier is a number which varies.

This is the zéro caractéristiques rule:
	repeat with x running from 1 to 6:
		now caractéristique à modifier is x;
		while la caractéristique numéro caractéristique à modifier > 0 :
			follow the diminuer une caractéristique rule;

This is the caractéristiques aléatoires rule:
	while points de caractéristiques dispo > 0:
		now caractéristique à modifier is a random number between 1 and 6;
		follow the augmenter une caractéristique rule;
	while points de caractéristiques dispo < 0:
		now caractéristique à modifier is a random number between 1 and 6;
		follow the diminuer une caractéristique rule;
	rule succeeds;

This is the modifier caractéristique  rule:
	now caractéristique à modifier is the current menu selection minus 1;
	now the current menu title is "Changer [nom in row caractéristique à modifier of the Table of caractéristiques] ([caractéristique numéro caractéristique à modifier])";
	now the current menu selection is 1; 
	now the current menu is Table of Modifier une caractéristique;
	show menu contents.

Table of Modifier une caractéristique
title	subtable	description	toggle 
"Augmenter (dépenser 1/[points de caractéristiques dispo])" 	a table-name	""	augmenter une caractéristique rule
"Diminuer (récupérer 1)"	--	--	diminuer une caractéristique rule

This is the augmenter une caractéristique rule:
	if points de caractéristiques dispo > 0:
		if caractéristique à modifier is:
			-- 1: increment force of the player;
			-- 2: increment dextérité of the player;
			-- 3: increment endurance of the player;
			-- 4: increment sagesse of the player;
			-- 5: increment intelligence of the player;
			-- 6: increment charisme of the player;
		decrement points de caractéristiques dispo;
		rule succeeds;

This is the diminuer une caractéristique rule:
	if caractéristique à modifier is:
		-- 1: decrement force of the player;
		-- 2: decrement dextérité of the player;
		-- 3: decrement endurance of the player;
		-- 4: decrement sagesse of the player;
		-- 5: decrement intelligence of the player;
		-- 6: decrement charisme of the player;
	increment points de caractéristiques dispo;
	rule succeeds;

Table of Choix des compétences
title	subtable	description	toggle 
"choix aléatoire ([maximum de compétences] compétences)"	a table-name	a text	compétences aléatoires rule
"secourisme [if known in row 1 of Table of Compétences is 1](connu)[end if]"	--	--	choisir compétence rule
"orientation [if known in row 2 of Table of Compétences is 1](connu)[end if]"	--	--	choisir compétence rule
"camouflage [if known in row 3 of Table of Compétences is 1](connu)[end if]"	--	--	choisir compétence rule
"observation [if known in row 4 of Table of Compétences is 1](connu)[end if]"	--	--	choisir compétence rule
"chasse [if known in row 5 of Table of Compétences is 1](connu)[end if]"	--	--	choisir compétence rule
"communication animale [if known in row 6 of Table of Compétences is 1](connu)[end if]"	--	--	choisir compétence rule
"rituels druidiques [if known in row 7 of Table of Compétences is 1](connu)[end if]"	--	--	choisir compétence rule
"tir à l'arc [if known in row 8 of Table of Compétences is 1](connu)[end if]"	--	--	choisir compétence rule
"combat rapproché [if known in row 9 of Table of Compétences is 1](connu)[end if]"	--	--	choisir compétence rule
"escrime [if known in row 10 of Table of Compétences is 1](connu)[end if]"	--	--	choisir compétence rule
"armes d'hast et à deux mains [if known in row 11 of Table of Compétences is 1](connu)[end if]"	--	--	choisir compétence rule

This is the compétences aléatoires rule:
	repeat through Table of Compétences:
		now known entry is 0;
	while compétences actuelles < maximum de compétences:
		let x be a random number between 1 and the number of rows in Table of Compétences;
		choose row x in Table of Compétences;
		now known entry is 1.

This is the choisir compétence rule:
	let x be the current menu selection minus 1;
	choose row x from the Table of Compétences;
	if the known entry is 0 and compétences actuelles < maximum de compétences:
		clear only the main screen;
		say the description entry;
		pause the game;
		now the known entry is 1;
		reprint the current menu;
	else:
		now the known entry is 0.

Table of Choix de l'équipement
title	subtable	description	toggle 
"allouer automatiquement [points d'équipement restant] points"	a table-name	a text	équipement aléatoire rule
"arc en frêne ([if arc en frêne is enclosed by player]1[otherwise]0[end if]) : 20 points"	--	--	toggle equipement rule
"arc finement ouvragé ([if arc finement ouvragé is enclosed by player]1[otherwise]0[end if]) : 50 points"	--	--	toggle equipement rule
"épée grossière ([if épée grossière is enclosed by player]1[otherwise]0[end if]) : 20 points"	--	--	toggle equipement rule
"épée d'importation naine ([if épée d'importation naine is enclosed by player]1[otherwise]0[end if]) : 50 points"	--	--	toggle equipement rule
"dagues elfiques ([number of dagues elfiques enclosed by player]/2) : 10 points"	--	--	toggle equipement rule
"bâton de pèlerin ([if bâton de pèlerin is enclosed by player]1[otherwise]0[end if]) : 10 points"	--	--	toggle equipement rule
"armure matelassée végétale ([if armure matelassée végétale is enclosed by player]1[otherwise]0[end if]) : 20 points"	--	--	toggle equipement rule
"armure de cuir renforcée ([if armure de cuir renforcée is enclosed by player]1[otherwise]0[end if]) : 60 points"	--	--	toggle equipement rule
"bouclier en bois de chêne ([if bouclier en bois de chêne is enclosed by player]1[otherwise]0[end if]) : 20 points"	--	--	toggle equipement rule
"assortiment d'ingrédients rares ([if assortiment d'ingrédients rares is enclosed by player]1[otherwise]0[end if]) : 20 points"	--	--	toggle equipement rule
"graine du grand chêne sacré ([number of graines du grand chêne sacré enclosed by player]/10) : 2 points"	--	--	toggle equipement rule
"pyrite et amadou ([if pyrite et amadou is enclosed by player]1[otherwise]0[end if]) : 10 points"	--	--	toggle equipement rule
"pigments naturels ([if pigments naturels is enclosed by player]1[otherwise]0[end if]) : 20 points"	--	--	toggle equipement rule
"potion de soin ([number of potions de soin enclosed by player]/4) : 10 points"	--	--	toggle equipement rule

An arc en frêne is an arc carried by the player.
An arc finement ouvragé is an arc. The qualité is 2.
An épée grossière is an épée carried by the player. 
An épée d'importation naine is an épée. The qualité is 3. 
A dague elfique is a kind of dague. The plural of dague elfique is dagues elfiques. The qualité is 2.
There are two dagues elfiques.
A bâton de pèlerin is an arme d'hast. 
An armure matelassée végétale is an armure. 
An armure de cuir renforcée is an armure. The qualité is 2.
A bouclier en bois de chêne is a bouclier.

An assortiment d'ingrédients rares is a thing. 
A graine du grand chêne sacré is a kind of thing. The plural of graine du grand chêne sacré is graines du grand chêne sacré. There are ten graines du grand chêne sacré. 
Some pyrite et amadou is a thing. It is female.
Some pigments naturels are a thing. It is plural-named. 
A potion de soin is a kind of thing. It is female. The plural of potion de soin is potions de soin. There are four potions de soin. 
Instead of drinking potion de soin :
	now noun is off-stage;
	soigner de 25;
	say "La potion de soin vous permet de récupérer 25 points de vie. [line break]".
 
 This is the équipement aléatoire rule:
	let x be a random number between 2 and number of rows in Table of Choix de l'équipement;
	now the current menu selection is x;
	follow the toggle equipement rule;
	now the current menu selection is 1.
 
 This is the toggle equipement rule:
	let x be the current menu selection minus 1;
	if x is:
		-- 1:
			if arc en frêne is enclosed by the player:
				now arc en frêne is off-stage;
				decrease points d'équipement utilisés by 20;
			otherwise:
				if points d'équipement restant >= 20 and capacité de transport restante >= poids of arc en frêne:
					move arc en frêne to the player;
					increase points d'équipement utilisés by 20;
		-- 2:
			if arc finement ouvragé is enclosed by the player:
				now arc finement ouvragé is off-stage;
				decrease points d'équipement utilisés by 50;
			otherwise:
				if points d'équipement restant >= 50 and capacité de transport restante >= poids of arc finement ouvragé:
					move arc finement ouvragé to the player;
					increase points d'équipement utilisés by 50;
		-- 3:
			if épée grossière is enclosed by the player:
				now épée grossière is off-stage;
				decrease points d'équipement utilisés by 20;
			otherwise:
				if points d'équipement restant >= 20 and capacité de transport restante >= poids of épée grossière:
					move épée grossière to the player;
					increase points d'équipement utilisés by 20;
		-- 4:
			if épée d'importation naine is enclosed by the player:
				now épée d'importation naine is off-stage;
				decrease points d'équipement utilisés by 50;
			otherwise:
				if points d'équipement restant >= 50 and capacité de transport restante >= poids of épée d'importation naine:
					move épée d'importation naine to the player;
					increase points d'équipement utilisés by 50;
		-- 5:
			if number of dague elfique enclosed by the player is 2:
				now every dague elfique is off-stage;
				decrease points d'équipement utilisés by 20;
			otherwise:
				let obj be a random available dague elfique;
				if points d'équipement restant >= 10 and capacité de transport restante >= poids of obj:
					move obj to the player;
					increase points d'équipement utilisés by 10;
		-- 6:
			if bâton de pèlerin is enclosed by the player:
				now bâton de pèlerin is off-stage;
				decrease points d'équipement utilisés by 10;
			otherwise:
				if points d'équipement restant >= 10 and capacité de transport restante >= poids of bâton de pèlerin:
					move bâton de pèlerin to the player;
					increase points d'équipement utilisés by 10;
		-- 7:
			if armure matelassée végétale is enclosed by the player:
				now armure matelassée végétale is off-stage;
				decrease points d'équipement utilisés by 20;
			otherwise:
				if points d'équipement restant >= 20 and capacité de transport restante >= poids of armure matelassée végétale:
					move armure matelassée végétale to the player;
					increase points d'équipement utilisés by 20;
		-- 8:
			if armure de cuir renforcée is enclosed by the player:
				now armure de cuir renforcée is off-stage;
				decrease points d'équipement utilisés by 60;
			otherwise:
				if points d'équipement restant >= 60 and capacité de transport restante >= poids of armure de cuir renforcée:
					move armure de cuir renforcée to the player;
					increase points d'équipement utilisés by 60;
		-- 9:
			if bouclier en bois de chêne is enclosed by the player:
				now bouclier en bois de chêne is off-stage;
				decrease points d'équipement utilisés by 20;
			otherwise:
				if points d'équipement restant >= 20 and capacité de transport restante >= poids of bouclier en bois de chêne:
					move bouclier en bois de chêne to the player;
					increase points d'équipement utilisés by 20;
		-- 10:
			if assortiment d'ingrédients rares is enclosed by the player:
				now assortiment d'ingrédients rares is off-stage;
				decrease points d'équipement utilisés by 20;
			otherwise:
				if points d'équipement restant >= 20 and capacité de transport restante >= poids of assortiment d'ingrédients rares:
					move assortiment d'ingrédients rares to the player;
					increase points d'équipement utilisés by 20;
		-- 11:
			if number of graines du grand chêne sacré enclosed by the player is 10:
				now every graine du grand chêne sacré is off-stage;
				decrease points d'équipement utilisés by 20;
			otherwise:
				let obj be a random available graine du grand chêne sacré;
				if points d'équipement restant >= 2 and capacité de transport restante >= poids of obj:
					move obj to the player;
					increase points d'équipement utilisés by 2;
		-- 12:
			if pyrite et amadou is enclosed by the player:
				now pyrite et amadou is off-stage;
				decrease points d'équipement utilisés by 10;
			otherwise:
				if points d'équipement restant >= 10 and capacité de transport restante >= poids of pyrite et amadou:
					move pyrite et amadou to the player;
					increase points d'équipement utilisés by 10;
		-- 13:
			if pigments naturels is enclosed by the player:
				now pigments naturels is off-stage;
				decrease points d'équipement utilisés by 20;
			otherwise:
				if points d'équipement restant >= 20 and capacité de transport restante >= poids of pigments naturels:
					move pigments naturels to the player;
					increase points d'équipement utilisés by 20;
		-- 14:
			if number of potions de soin enclosed by the player is 4:
				now every potion de soin is off-stage;
				decrease points d'équipement utilisés by 40;
			otherwise:
				let obj be a random available potion de soin;
				if points d'équipement restant >= 10 and capacité de transport restante >= poids of obj:
					move obj to the player;
					increase points d'équipement utilisés by 10;

Part C - Définition des régions

Dans la forêt is a region. Every partie de la forêt is in Dans la forêt.
Grande route du nord is a region. Every route du nord is in Grande route du nord.  
Intérieur is a region. Every pièce intérieure is in Intérieur. 

Part D - Règles globales diverses

Every turn :
	if the player is affamé, être torturé par la faim;
	decrement temps avant repas of the player.

When play begins: 
	do nothing. 

	