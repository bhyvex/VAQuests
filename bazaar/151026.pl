sub EVENT_SAY {
   if($text=~/hail/i) {
    if ($ulevel < 75){
#          plugin::DiaWind("Welcome to Vegarlson Asylum, {gold}$name~! This is (currently) a Luclin-era server with some important modifications:~
#          plugin::DiaWind("mysterious {bullet}Hello there.<br>
          plugin::DiaWind("mysterious {bullet} Would you like to enter: <br> {in} {bullet} {y}Sanctum Somnium~?<br>

                                        {linebreak}<br>
                                        <table><tr><td>
                                        <tr><td>{bullet}</td><td>{gold}Current expansion is Luclin. Future expansions are planned through PoP, LoY and LDoN.</td>
                                        <tr><td>{bullet}</td><td>{gold}RoF2 client required. (See MoTD)</td>
                                        <tr><td>{bullet}</td><td>{gold}4-box limit with an additional trader account. Bazaar trader mode enabled.</td>
                                        <tr><td>{bullet}</td><td>{gold}Bots enabled - 2 per client allowed active. Use {lb}#bot help {gold} for information.</td>
                                        <tr><td>{bullet}</td><td>{gold}Classic zone versions:</td>
                                        <tr><td>{in}{bullet}</td><td>{gold}The Arena</td>
                                        <tr><td>{in}{bullet}</td><td>{gold}Cazic Thule</td>
                                        <tr><td>{in}{bullet}</td><td>{gold}Temple of Droga</td>
                                        <tr><td>{in}{bullet}</td><td>{gold}Mines of Nurga</td>
                                        <tr><td>{in}{bullet}</td><td>{gold}Lair of the Splitpaw</td>
                                        <tr><td>{in}{bullet}</td><td>{gold}The Plane of Hate</td>
                                        <tr><td>{in}{bullet}</td><td>{gold}Sirens Grotto</td>
                                        <tr><td>{in}{bullet}</td><td>{gold}Skyshrine</td>
                                        <tr><td>{in}{bullet}</td><td>{gold}The Western Wastes</td>
                                        <tr><td>{bullet}</td><td>{gold}New zone versions:</td>
                                        <tr><td>{in}{bullet}</td><td>{gold}The Commonlands</td>
                                        <tr><td>{in}{bullet}</td><td>{gold}Highpass Hold</td>
                                        <tr><td>{in}{bullet}</td><td>{gold}Nektulos Forest</td>
                                        <tr><td>{in}{bullet}</td><td>{gold}Toxxulia Forest</td>
                                        </td></tr></table>
                                        {linebreak}<br>
                                        popupid:60 wintype:1 nobracket noquotes
          +");
    }
  }
}
