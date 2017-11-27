if (place_meeting (x + hspd,y,collision_object))
{   
    yplus = 0
    while(place_meeting(x+hspd,y-yplus,collision_object)) && yplus<=max_slp 
        yplus+=1;
    if place_meeting(x+hspd,y-yplus,collision_object)
    {
        while(!place_meeting(x+sign(hsp),y-yplus,collision_object))x+=sign(hspd)
            hspd = 0;
    }         
    else
    {
    y -=yplus
    }
} else {
//Down Slope Code
//If there isn't something in the way, check for down slope
    yplus = 1;                                                       
    //Initialize yplus to maximum slope                                                         
    while(place_meeting(x+hspd,y+yplus,collision_object)) && (yplus >0) yplus -=1;
    //While there's a block at max_slp, keep checking one pixel above it
    if (!place_meeting(x+hspd,y+yplus,collision_object))                     
    //If there's an empty space at yplus...                               
        {
        if (place_meeting(x+hspd,y+yplus+1,collision_object))                     
        //Check to see if there's a block beneath it, and if there is....             
            {
            y+=yplus;                                                     
            //Go there
            }
        }
    
}
x +=hspd;
