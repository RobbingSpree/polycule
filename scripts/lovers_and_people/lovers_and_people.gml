// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function person(index) constructor{
	randomize();
	namewa = get_a_name(index); //character name
	gender = irandom(gen.nb); //picks if character is male, female or nb. Exclusive check
	attracted = [irandom(1), irandom(1), irandom(1)]; //array for if attracted to male, female or nb
	top_or_not = irandom(1); //true is top
	partners = 0; //number of crushes they have in the polycule. Not all partners reciprocated
	lust = []; //array of which characters they have feelings for
	static xlist = pos_list_make(2);
	static ylist = pos_list_make(2);
	xx= xlist[|index]*130+70; //on screen x pos
	yy= ylist[|index]*130+70; //on screen y pos
}

enum gen {
	male,
	female,
	nb
}

function get_a_name(index){
	switch(index) {
		case 0: return "Blethany"; break;
		case 1: return "Caboose"; break;
		case 2: return "Mack"; break;
		case 3: return "Timsn"; break;
		case 4: return "Boggle"; break;
		case 5: return "Dancer"; break;
		case 6: return "Bo-Jangle"; break;
		case 7: return "Kivim"; break;
		case 8: return "Frad"; break;
		case 9: return "Susanthony"; break;
		case 10: return "Object\nPerminence"; break;
		case 11: return "MVP"; break;
		case 12: return "Baaaaad"; break;
		case 13: return "Shoop"; break;
		case 14: return "Brixney"; break;
		case 15: return "No.2"; break;
		case 16: return "NPC"; break;
		case 17: return "Team Mom"; break;
		case 18: return "Ghincks"; break;
		case 19: return "Hearts"; break;
		case 20: return "Who"; break;
	}
}

function pos_list_make(sweeps) {
	var list = ds_list_create();
	var screen_units = 8; //based on radius of characters and size of room
	for (j=0; j<sweeps; j++) 
		for (i=0; i<screen_units; i++) {
			ds_list_add(list,i);
		}
	ds_list_shuffle(list);
	return list;
}