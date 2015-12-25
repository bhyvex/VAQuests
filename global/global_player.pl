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
#	if ($text=~/#iteminfo/i) {
#		if ($client->GetItemAt(30)) {
#			$client->SendWebLink(""http://everquest.allakhazam.com/db/item.html?item="" . $client->GetItemIDAt(30));
#		}
#	} elsif ($text=~/#npcinfo/i) {
#		if ($client->GetTarget() && $client->GetTarget()->IsNPC()) {
#			$client->SendWebLink("http://everquest.allakhazam.com/db/npc.html?id=" . $client->GetTarget()->GetNPCTypeID());
#		}
#	} elsif ($text=~/#playerinfo/i) {
#		if ($client->GetTarget() && $client->GetTarget()->IsClient()) {
#			$client->SendWebLink("http://va.bladesofwrath.org/magelo-clone/character.php?char=" . $client->GetTarget()->GetCleanName());
#		}
#	}
#}
sub EVENT_CONNECT {
    my %vet_aa = (481 => [1, 1, 1]); ## Lesson of the Devote 1 yr
#    482 => [63072000, 1, 1], ## Infusion of the Faithful 2 yr
#    483 => [94608000, 1, 1], ## Chaotic Jester 3 yr
#    484 => [126144000, 1, 1], ## Expedient Recovery 4 yr
#    485 => [157680000, 1, 1], ## Steadfast Servant 5 yr
#    486 => [189216000, 1, 1], ## Staunch Recovery 6 yr
#    487 => [220752000, 1, 1], ## Intensity of the Resolute 7 yr
#    511 => [252288000, 1, 1], ## Throne of Heroes 8 yr
#    2000 => [283824000, 1, 1], ## Armor of Experience 9 yr
#    8081 => [315360000, 1, 1], ## Summon Resupply Agent 10 yr
#    8130 => [346896000, 1, 1], ## Summon Clockwork Banker 11 yr
#    453 => [378432000, 1, 1], ## Summon Permutation Peddler 12 yr
#    182 => [409968000, 1, 1], ## Summon Personal Tribute Master 13 yr
#    600 => [441504000, 1, 1]); ## Blessing of the Devoted 14 yr
    my $age = $client->GetAccountAge();
    foreach my $key (keys %vet_aa) {
        if ($vet_aa{$key}[2] && ($vet_aa{$key}[2] || $age >= $vet_aa{$key}[0])) {
            $client->GrantAlternateAdvancementAbility($key, 1);
        }
    }
    if($ulevel < 11){
        quest::settimer("999",10);
    }
}

sub EVENT_ENTERZONE {
    plugin::LeaderBoardsUpdate();
    my %h = (7 => 99,
    8 => 199,
    9 => 249,
    10 => 299);
    foreach my $key (keys %h) {
        if (CheckSkills($client, $h{$key})) {
            quest::enabletitle($key);
        }
    }
}

sub CheckSkills {
    my $client = shift;
    my $skill_level = shift;
    foreach my $skill (60, 61, 63, 64, 65, 68, 69) {
        if ($client->GetRawSkill($skill) <= $skill_level) {
            return 0;
        }
    }
    return 1;
}

sub EVENT_TIMER {
  if ($timer eq "999") {
  quest::stoptimer("999");
    if ($ulevel < 11){
          plugin::DiaWind("mysterious Hello there, {g}$name~!<br>
          Please check out our forums @ {r}http://www.vegarlson-server.org/~ for full server information as well as to report any issues!
          {linebreak}<br>
                <table><tr><td>
                <tr><td>{bullet}</td><td>{g}Current expansion is Luclin~ - Future expansions are planned through PoP, LoY and LDoN.</td>
                <tr><td>{bullet}</td><td>{g}Client Support~ - RoF2 client required. {r}(See MoTD)~</td>
                <tr><td>{bullet}</td><td>{g}4-box limit~ - An additional, locked account can be used for a Bazaar trader.</td>
                <tr><td>{bullet}</td><td>{g}Bots enabled~ - 2 per client allowed active (10 total per character). Use {lb}#bot help {gold}~ for information.</td>
                </td></tr></table>
                <table><tr><td>
                <tr><td>{bullet}</td><td>{y}Many zones have been modified in one way or another. Some information about them:</td>
                <tr><td>{bullet}</td><td>{orange}Classic zone versions:</td>
                </td></tr></table>
                <table><tr><td>
                <tr><td>{in}{bullet}</td><td>{gold}The Arena</td>
                <tr><td>{in}{bullet}</td><td>{gold}The Bazaar</td>
                <tr><td>{in}{bullet}</td><td>{gold}Cazic Thule</td>
                <tr><td>{in}{bullet}</td><td>{gold}Temple of Droga</td>
                <tr><td>{in}{bullet}</td><td>{gold}Mines of Nurga</td>
                <tr><td>{in}{bullet}</td><td>{gold}Lair of the Splitpaw</td>
                <tr><td>{in}{bullet}</td><td>{gold}The Plane of Hate</td>
                <tr><td>{in}{bullet}</td><td>{gold}Sirens Grotto</td>
                <tr><td>{in}{bullet}</td><td>{gold}Skyshrine</td>
                <tr><td>{in}{bullet}</td><td>{gold}The Western Wastes</td>
                </td></tr></table>
                <table><tr><td>
                <tr><td>{bullet}</td><td>{orange}New zone versions:</td>
                </td></tr></table>
                <table><tr><td>
                <tr><td>{in}{bullet}</td><td>{gold}The Commonlands</td>
                <tr><td>{in}{bullet}</td><td>{gold}Highpass Hold</td>
                <tr><td>{in}{bullet}</td><td>{gold}Nektulos Forest</td>
                <tr><td>{in}{bullet}</td><td>{gold}Toxxulia Forest</td>
                </td></tr></table>
          {linebreak}");
    }
  }
}

sub EVENT_POPUPRESPONSE{
    #::: quest::say response subroutine
    quest::say_Process_Response();
}
