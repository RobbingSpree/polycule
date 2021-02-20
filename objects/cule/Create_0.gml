/// @description Insert description here
// You can write your code in this editor

lovers = [];
haters = [];
size = 15;

for (var i=0; i<size; i++) {
	var peep = new person(i);
	lovers[i]=peep;
}

//make pairings
redo = 0;
total=0;
for (var i=0; i<size; i++) {
	var peep = lovers[i];
	for (var j=0; j<size; j++) {
		var poop = lovers[j];
		if peep == poop
			break;
		else {
			if poop != noone && peep.attracted[poop.gender] && peep.top_or_not != poop.top_or_not {
				peep.lust[peep.partners] = poop;
				peep.partners++;
			}
		}
	}
	if peep.partners == 0 { //replace people no one likes
		lovers[i] = new person(i);
		i-- //redo this loop
		redo++
		if redo > 1000 {
			i++
			peep=noone;
			total += redo;
			redo = 0;
		}
	}
}
total += redo;