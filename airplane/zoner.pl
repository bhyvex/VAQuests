sub EVENT_SPAWN {
  $counter = 0;
  my $x = $npc->GetX();
  my $y = $npc->GetY();
  my $z = $npc->GetZ();
  quest::set_proximity($x - 4000, $x + 4000, $y - 4000, $y + 4000,$z - 200, $z + 200);
  quest::enable_proximity_say();
}

sub EVENT_ENTER {
  quest::movepc(10,-1570,-25,20,231);
}
