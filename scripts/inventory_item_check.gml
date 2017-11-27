for (i = 0; i < max_items; i += 1)
{
    if (global.inventory[i] == argument0) //if slot "i" contains argument 0
    {
        return(1);
    }
}
return(0);

