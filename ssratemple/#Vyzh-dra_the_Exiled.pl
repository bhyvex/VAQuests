sub EVENT_DEATH_COMPLETE {
	quest::signalwith(10,2,0);	
	quest::setglobal("exiled_dead",1,3,"D4");
}



