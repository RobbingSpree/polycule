//draw all people and their relationships
for (var i=0; i<size; i++) {
	var col = c_white;
	var peep = lovers[i];
	var radius = 40;
	if peep != noone {
		switch (peep.gender) {
			case gen.male: col = c_red; break;
			case gen.female: col = c_blue; break;
			case gen.nb: col = c_green; break;
		}
		//arrows
		for (var j=0; j<peep.partners; j++) {
			var poop = peep.lust[j];
			var xd = poop.xx;
			var yd = poop.yy;
			var xs = (sign(peep.xx - xd)*-1)*radius; //subtraction to put arrow head outside destination circle
			var ys = (sign(peep.yy - yd)*-1)*radius; //subtraction to put arrow head outside destination circle
			draw_arrow(peep.xx,peep.yy,xd-xs,yd-ys,10);
		}
		//circles
		draw_circle(peep.xx,peep.yy,radius+5,false);
		draw_set_color(col);
		draw_circle(peep.xx,peep.yy,radius,false);
		draw_set_color(c_white);
		//draw text
		draw_set_halign(fa_center);
		draw_set_valign(fa_center);
		var str = peep.namewa;
		draw_text(peep.xx,peep.yy,str)
		draw_set_halign(-1)
		draw_set_valign(-1)
	}
}

//debug
draw_text(10,10,total);