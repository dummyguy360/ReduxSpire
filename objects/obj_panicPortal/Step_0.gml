if (!spawnEnemy && sprite_animation_end(sprite_index, image_index, 5))
{
    scr_sound(sfx_escapespawn);
    spawnEnemy = true;
}
