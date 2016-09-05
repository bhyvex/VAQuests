#Spawns Vulak if no boss mobs are up. 
my $check = 0;

sub EVENT_SPAWN {  
  $check = 0;
  quest::settimer("vulak",60);
#  quest::depopall(124021);
#  quest::depopall(124080);
#  quest::depopall(124157);
#quest::spawn2(124021,0,0,-796,564,129,102);
#quest::spawn2(124021,0,0,-800,510,129,66);
#quest::spawn2(124021,0,0,-796,463,129,33);
#quest::spawn2(124080,0,0,-680,509,129,190);
#quest::spawn2(124080,0,0,-687,562,129,160);
#quest::spawn2(124080,0,0,-680,461,129,224);
}

sub EVENT_TIMER {
  if($timer eq "vulak") {
    $check = 0;
    quest::stoptimer("vulak");
    $check_boss = $entity_list->GetMobByNpcTypeID(124077);#Lady_Mirenilla
    if ($check_boss) {
      $check = 1
    }
    $check_boss = $entity_list->GetMobByNpcTypeID(124076);#Lady_Nevederia
    if ($check_boss) {
      $check = 1
    }
    $check_boss = $entity_list->GetMobByNpcTypeID(124008);#Lord_Feshlak
    if ($check_boss) {
      $check = 1
    }
    $check_boss = $entity_list->GetMobByNpcTypeID(124010);#Aaryonar
    if ($check_boss) {
      $check = 1
    }
    $check_boss = $entity_list->GetMobByNpcTypeID(124074);#Lord_Kreizenn
    if ($check_boss) {
      $check = 1
    }
    $check_boss = $entity_list->GetMobByNpcTypeID(124017);#Lord_Vyemm
    if ($check_boss) {
      $check = 1
    }
    if ($check == 1) {
      quest::settimer("vulak",60);
    } 
#    if ($check == 0 && $entity_list->IsMobSpawnedByNpcTypeID(124155)) {
#    }
    if ($check == 0 && !defined $qglobals{vulak} && !$entity_list->GetMobByNpcTypeID(124155)) {
      quest::spawn2(124155,0,0,-739.4,517.2,121,255);
#      quest::spawn2(124021,0,0,-796,564,129,102);
#      quest::spawn2(124021,0,0,-800,510,129,66);
#      quest::spawn2(124021,0,0,-796,463,129,33);
#      quest::spawn2(124080,0,0,-680,509,129,190);
#      quest::spawn2(124080,0,0,-687,562,129,160);
#      quest::spawn2(124080,0,0,-680,461,129,224);
#      quest::settimer("vulak",60);
    }
  }
  $qglobals{vulak} = undef;
}      

#sub EVENT_DEATH_COMPLETE {
#      quest::setglobal("vulak",1,2,"M$spawntime");
#}
sub EVENT_SIGNAL {
my $variance = int(rand(720));
my $spawntime = 4320 + $variance;
  if ($signal == 1) {
    quest::setglobal("vulak",1,3,"M$spawntime");
    quest::stoptimer("vulak");
  }
  if ($signal == 2) {
    quest::settimer("vulak",60);
  }
}
