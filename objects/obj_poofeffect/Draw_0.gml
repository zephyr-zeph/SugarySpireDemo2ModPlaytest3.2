pal_swap_set(spr_cloudpal, paletteselect, false);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
pal_swap_reset();