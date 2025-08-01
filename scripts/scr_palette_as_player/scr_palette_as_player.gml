function scr_palette_as_player(arg0 = sprite_index, arg1 = image_index)
{
    var using_pattern, my_color_array;
    
    with (obj_player)
    {
        my_color_array = my_palettes[paletteselect][2];
        using_pattern = sprite_exists(my_color_array[2]);
    }
    
    if (surface_exists(obj_player.my_pal_surface) && !using_pattern)
        pal_swap_set(obj_player.my_pal_surface, 1, true);
    
    if (using_pattern && sprite_exists(arg0))
    {
        var s_pat = shader_get_sampler_index(shd_pattern, "s_Pattern");
        var tex = sprite_get_texture(my_color_array[2], 0);
        var tex2 = sprite_get_texture(arg0, arg1);
        shader_set(shd_pattern);
        texture_set_stage(s_pat, tex);
        var mask_color = 4259839;
        var u_mask = shader_get_uniform(shd_pattern, "u_MaskColour");
        var u_spr = shader_get_uniform(shd_pattern, "u_SprRect");
        var u_pat = shader_get_uniform(shd_pattern, "u_PatRect");
        var u_texel = shader_get_uniform(shd_pattern, "u_TexelScl");
        var u_offset = shader_get_uniform(shd_pattern, "u_SprOffset");
        shader_set_uniform_f(u_mask, color_get_red(mask_color), color_get_green(mask_color), color_get_blue(mask_color));
        var uvs = sprite_get_uvs(arg0, arg1);
        shader_set_uniform_f(u_spr, uvs[0], uvs[1], uvs[2], uvs[3]);
        shader_set_uniform_f(u_offset, uvs[4] - sprite_get_xoffset(arg0), uvs[5] - sprite_get_yoffset(arg0));
        uvs = sprite_get_uvs(my_color_array[2], 0);
        shader_set_uniform_f(u_pat, uvs[0], uvs[1], uvs[2], uvs[3]);
        shader_set_uniform_f(u_texel, texture_get_texel_width(tex), texture_get_texel_height(tex), texture_get_texel_width(tex2), texture_get_texel_height(tex2));
    }
}

function new_palette(arg0, arg1, arg2, arg3 = 8628991, arg4 = 14496, arg5 = 13773959, arg6 = 9988216)
{
    var is_a_pattern = sprite_exists(arg1);
    var q = [0, c_white, arg1, arg2, arg3, arg4, arg5, arg6];
    array_push(my_palettes, [arg0, 1, q]);
}
