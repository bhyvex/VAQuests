sub EVENT_CLICKDOOR{
        if($status > 200){
                plugin::Doors_Manipulation_EVENT_CLICKDOOR(); # Door Manipulation Plugin
        }
}

sub EVENT_SAY{
        if($status > 200){
                plugin::Doors_Manipulation_EVENT_SAY(); # Door Manipulation Plugin
        }
}
