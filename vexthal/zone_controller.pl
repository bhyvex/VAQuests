#Spawns non-Destroy Aten if no boss mobs are up and global is not set.
#Spawns Destroy Aten if boss mobs are up and global is not set.

sub EVENT_SPAWN {
  quest::settimer("aten",60);
}

sub EVENT_TIMER {
  if($timer eq "aten") {
    if (!defined $qglobals{aten}) {
      if (!$entity_list->IsMobSpawnedByNpcTypeID(158014) && !$entity_list->IsMobSpawnedByNpcTypeID(158010) && !$entity_list->IsMobSpawnedByNpcTypeID(158015) && !$entity_list->IsMobSpawnedByNpcTypeID(158012) && !$entity_list->IsMobSpawnedByNpcTypeID(158013) && !$entity_list->IsMobSpawnedByNpcTypeID(158007) && !$entity_list->IsMobSpawnedByNpcTypeID(158008) && !$entity_list->IsMobSpawnedByNpcTypeID(158011) && !$entity_list->IsMobSpawnedByNpcTypeID(158009)) {
       quest::depopall(158006);
        if (!$entity_list->IsMobSpawnedByNpcTypeID(158006) && !$entity_list->IsMobSpawnedByNpcTypeID(158096)) {
          quest::spawn2(158096,0,0,1412,0,248.63,192);
  ##     quest::depop_withtimer();
        }
        } elsif (!$entity_list->IsMobSpawnedByNpcTypeID(158006) && !$entity_list->IsMobSpawnedByNpcTypeID(158096)) {
          quest::spawn2(158096,0,0,1412,0,248.63,192);
        }
    }
  }
  quest::settimer("aten",600);
}
