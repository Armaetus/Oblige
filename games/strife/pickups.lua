------------------------------------------------------------------------
--  STRIFE PICKUP ITEMS
------------------------------------------------------------------------
--
--  Copyright (C) 2006-2015 Andrew Apted
--  Copyright (C) 2011-2012 Jared Blackburn
--
--  This program is free software; you can redistribute it and/or
--  modify it under the terms of the GNU General Public License
--  as published by the Free Software Foundation; either version 2,
--  of the License, or (at your option) any later version.
--
------------------------------------------------------------------------

STRIFE.PICKUPS =
{

 -- Health --

 medpatch =
 {
   id = 2011,
   kind = "health",
   add_prob = 60,
   cluster = { 2,5 },
   give = { {health=10} },
 },

 medkit =
 {
   id = 2012,
   kind = "health",
   rank = 2,
   add_prob = 120,
   closet_prob = 20,
   secret_prob = 5,
   storage_prob = 80,
   storage_qty  = 2,
   give = { {health=50} },
 },

 -- ammo -- 

   bullets =
  {
    id = 2007,
    add_prob = 10,
    cluster = { 2,5 },
    give = { {ammo="bullet",count=10} }
  },

}


--------------------------------------------------

STRIFE.NICE_ITEMS =
{

}

