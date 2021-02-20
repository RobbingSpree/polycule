// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function text_outline(xx,yy,str,outline,inline,thickness){
	var store_col = draw_get_color();
	draw_set_color(outline);//color for outline
	for (var i=1; i<=thickness; i++) {
		draw_text(xx+i,yy-i,str);
		draw_text(xx+i,yy,str);
		draw_text(xx-i,yy+i,str);
		draw_text(xx,yy+i,str);
		draw_text(xx-i,yy+i,str);
		draw_text(xx-i,yy,str);
		draw_text(xx+i,yy-i,str);
		draw_text(xx,yy-i,str);
	}
	draw_set_color(inline); //color for normal text
	draw_text(xx,yy,str);
	draw_set_color(store_col);
}