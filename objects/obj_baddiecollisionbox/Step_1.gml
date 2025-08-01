if (!instance_exists(baddieID))
    instance_destroy();
else if (baddieID.object_index == obj_melon && baddieID.state == states.meteorpep)
    instance_destroy();
