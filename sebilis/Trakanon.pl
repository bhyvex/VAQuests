#BEGIN File: sebilis\#Trakanon.pl

sub EVENT_DEATH_COMPLETE {
  quest::signalwith(10,1,0); #UDB - Signal to start timer on UDB
}
