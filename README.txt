SOUL FORGE 1.0.0
================
WoW 3.3.5a • Designed for Synastria

NEW IN 1.0.0 (first full release)
- Everything below, after the 0.x test builds. Since the last test builds:
  a Last Seen column on the Leaderboards (where Rank Tier was),
  an update notice when a newer version is out, a leaderboard catch-up (online
  players pass on the standings they know, so offline players show too),
  titles shown as ??? until you earn them, a green tick for standings the
  server has confirmed, long titles drawn smaller to fit, a bigger minimap
  swirl and a right-click Theme menu, the looks in one order everywhere
  (Cosmic, Material, Cognac, Alliance, Horde), a coloured name in the AddOns
  list, each tab's effects running only while that tab is on screen, and
  LICENSE.txt with the author's terms of use.
- Bug fixes and updates will follow as needed.

WHAT IT DOES
- Counts your kills (not drops) of dungeon and raid
  bosses and rares - the creatures AtlasLoot lists for each instance - plus
  open-world rares if you want. Trash can be included with the "Counting"
  choice (see below). Synastria's Mythic dungeons are counted separately.
- Keeps counts separately per character, per instance and per difficulty,
  and shows account totals. A difficulty is only shown where there is a choice:
  dungeons (Normal, Heroic, Mythic) and the raids with several modes (Onyxia's
  Lair, Naxxramas, Obsidian Sanctum, Eye of Eternity, Vault of Archavon, Ulduar,
  Trial of the Crusader, Icecrown Citadel, Ruby Sanctum: 10/25 Normal/Heroic,
  incl. the ICC and Ruby Sanctum heroic toggle). Single-mode raids such as
  Sunwell or Molten Core just show the count. Synastria's Mythic exists for
  dungeons only, so raids are never treated as Mythic.
- Adds one line to a creature's tooltip: your kills here and the account total.
- TITLES: your account earns titles from its total kills (the game's own
  "Total kills" statistic, added up over all your characters). 41 titles:
  500, 1,000, 2,500, 5,000, 10,000, then every 10,000 to 100,000, every
  100,000 to 1 million, and every 500,000 to 10 million. They come in four
  stages of ten, each with its own glow, and a final rank:
    Rise of the Warrior (titles 1-10, green), Ascension of the Hero (11-20,
    blue), Age of Conquest (21-30, red), Beyond Death (31-40, purple) and
    a secret final title (41, at 10 million: a purple-and-gold radiance with a dark heart).
  Your title and the name of the stage you are working through are written
  in the stage's colour and glow softly in it, pulsing (the look's own
  background shows round them); earned titles are listed in their
  stage's colour, and the Kill Progression panel is lit in the colour of the
  stage you are working through. Each title is a
  surprise: you only see a title's name once you have earned it (the next
  one shows as ???). Titles are account-wide and
  never lost, also not by a prestige. When you earn one (checked after every
  fight and on loading screens) you get a message in the middle of the screen
  and the level-up sound (/kt alerts off for chat only). Titles you already
  had when you installed this version are marked "Before Soul Forge".
- Three tabs: PROFILE (your title, rank, the bar to your next title, your
  totals, Souls Today / Lifetime Souls / Souls per Hour), KILLS (the kill
  list) and TITLES (every title you have earned, newest first, under the next
  one as ???, with the day you earned it).
- Other players who have Soul Forge see your title on your tooltip, and you
  see theirs ("<title> (Soul Forge)"; ??? for a title you haven't reached yet). This uses hidden addon messages,
  never chat: your guild is told once per session and guild and group when
  you earn a title; hovering a friendly player whose title isn't known yet
  asks them once per session. Players without the addon see nothing.
  /kt share off (or "Share My Title" on the Profile tab) turns it all off.
- A Total Kills line on the Profile tab: the game's own "Total kills"
  statistic (Statistics > Kills) for the shown character and the whole account.
  It is shown, never added to anything, so it can't be counted twice. Your
  other characters show the last number seen while they were logged in.
  "This Prestige" shows only the kills since the account's last prestige.
- COSMIC, the default look and Soul Forge's own: the window IS the addon
  author's painting - the reaper, the Soul Reservoir, the Path of Titles and
  the Power Growth medallions - with your title, rank, bar, totals and
  settings drawn live over it:
  * Soul Reservoir: its souls swirl, faster and brighter at each stage of
    titles (a second swirl joins at Beyond Death); it glows as it fills
    towards your next title (hover it for how full it is).
  * Path of Titles (Kill Progression): the ten titles of your current stage
    as a constellation (nine small stars and the big one, every look).
    Lit stars are titles you have earned, the title you hold wears a slowly
    turning ring of light in the look's colour, the pulsing one is next (???),
    dim ones lie ahead; the big star is the stage's crowning title (the final
    title stands alone on the last path). Hover a star for its name (only once earned).
  * Power Growth: Souls Today, Lifetime Souls and Souls per Hour.
  * The bell, arrow and play icons are your Rank-Up Alerts, Share My Title and
    Full Motion switches (lit = on).
  * Souls you gathered flare into the bar after each fight ("+500 souls"), a
    new title makes the reservoir surge, and stars twinkle across the sky.
  * The orb in the reaper's hand pulses; the Soul Reservoir pours like a waterfall into its pool and on down
    out of the window (splash and mist where it lands), the pool shimmers,
    souls drift up inside it, and its swirl turns.
  * The chosen tab is lit: a violet aura breathing around it, its gold rim
    burning, gold stars on its ends and a flash when you switch to it; the
    other tabs light their rim when you point at them.
    Full Motion off (or /kt motion calm) keeps the look, held still. Effects
    only run while the window is open.
  The window is the painting's own shape (outside its gold frame and its
  glow you see only the game, no rectangle), opens at a comfortable size (/kt scale to change it) and remembers
  where you put it. Titles, tabs and headings are lettered in Cinzel.
  KILLS and TITLES keep the painting's frame, title and tabs, with the
  author's own Kills and Titles pictures inside it: the kill list in the
  "Slain Foes" frame over the reaper scene; on Titles your title's card (soul
  swirl, title, rank, place on the path, the next title as ??? and its bar)
  beside "Titles Earned" with a star for each. Buttons, the search box and the
  dropdowns are the painting's own look box; checkboxes are soul orbs.
- Five window looks, picked with the look box in the window's title bar or
  /kt skin cosmic|cognac|material|alliance|horde: Cosmic (the default),
  Cognac (an old saloon: whiskey, leather and lamplight), Material (modern
  and futuristic, Tron-inspired), Alliance (gold, royal blue and the lion)
  and Horde (iron, fire and blood-red banners), in that order in the Look box. The window changes at once;
  the searchable Places and Characters lists change after a /reload. (The
  Classic look is gone since 0.6.8: if you had it, the window opens in Cosmic.)
- HORDE is the author's own three Horde pictures, one per tab, with
  everything that changes drawn live over them, lettered in Crimson Text, all
  three under one title bar. With Full Motion on: the Bloodforge roars (its
  mouth's fire breathing, molten iron pouring, the anvil glowing, both
  braziers flickering, the sky smouldering over the fortress) and embers rise
  off the forge and drift up all over; the Horde crest glows blood-red. The
  bar's painted fill breathes and glows, Kill Progression lights its stars in
  the stage's colour, the medals' halos widen when pointed at, and the
  toggles' rings show their tick while on. Kills and Titles have their own
  embers, glowing plaques and glinting iron.
- ALLIANCE is the author's own three Alliance pictures, one per tab, under one
  title bar; on its parchment the words are ink (your title and the stage's
  name in the stage's ink, with the glowing border). Kill Progression has ten
  circles, the tenth larger for the stage's crowning title. The Kills tab
  has a card with your title, the account's total kills and your rank. With
  Full Motion on: the Reliquary of Valor's vial breathes holy light in its
  glass, light falls from the high windows, the candles flicker and motes of
  light rise; the lion's gold warms and the frame glints. Kills and Titles
  have their own drifting light, warming crests and glinting gold.
- MATERIAL is the author's own three pictures, one per tab (Profile, Kills,
  Titles), with everything that changes drawn live over them, lettered in
  Rajdhani. The title bar and tab row stay put when you switch tabs. With Full
  Motion on, the frame is live with electricity: light runs along the neon
  lines (across and down), and every few seconds a charge flashes along a
  whole edge of a panel. The Core Nexus' vortex
  turns with a light riding its orbit, a data pulse runs along the path of
  titles, the bar's fill gets a scan of light, the soul hexagons breathe, a
  scan passes down the kill list and a pulse runs down the titles list (its
  line ends at your last title). The Titles card's top plate shows your
  account's total souls.
- COGNAC is the author's own three saloon pictures, one per tab, with
  everything that changes drawn live over them, lettered in Crimson Text. All
  three share one title bar (title, tabs, Look box, close button), so nothing
  at the top moves when you switch tabs; the window's corners are rounded. On
  the Kills and Titles tabs the lists are written in ink on the open book's
  pages. With Full Motion on: the cigar on the Profile tab burns (its tip
  glows like a live ember and now and then flares as if drawn on) and thin
  tendrils of smoke snake up off the tip as far as the book's pages. The Bounty
  Ledger keeps a tally on both pages (a glinting quill writes four faint
  strokes and strikes them through, then they fade and are written again); an
  amber glow travels along the book's engraved sigil, and its pages shimmer
  when new kills are written in. Both bars are filled with the pictures' own
  gilded filigree; the filled part breathes and glows, and flares when new
  souls come in. On the Kills tab the three toggles sit under the dropdowns.
  Earned Kill Progression diamonds glow in their stage's colour and the next one
  pulses gently. Pointing at a tab lights its gold rim and a chosen tab glows
  warm for a moment; buttons give a short gold flash when clicked; pointing at
  a Power Growth medal widens a halo around it (the skull's eyes light up, and
  do so now and then on their own). Orange, red and gold embers drift up
  across the whole window on every tab. Lanterns and candles flicker, the
  nameplates warm and cool, and brass catches the light (the skull's horns,
  studs, clasps, the trophy, the coins). On the Kills tab the tankard's foam
  overflows and drips and the coins shine. Each tab's effects run only while
  that tab is open.
- The Kills tab has search, place and character filters: pick an
  instance to see all its difficulties, or a character to see only what that
  character has killed ("All Characters" shows everything). Character names
  are shown without the realm when all your characters are on one realm.
- Places is a menu of menus: All Places, Where I Am Now, then Classic, The
  Burning Crusade and Wrath of the Lich King - each split into Dungeons and
  Raids - and Mythic Classic / Mythic TBC / Mythic WotLK (dungeons) and Other
  (the open world). Point at an entry with "›" to open what is inside it. A
  raid with several difficulties has its own menu: All Difficulties, 10
  Normal, 10 Heroic, 25 Normal, 25 Heroic (those you have kills in) - each
  shows exactly that difficulty's kills. Type in the menu's search box to find
  a place directly.

WHICH CREATURES COUNT (the "Counting" choice in /kt, or /kt mode)
- Bosses & Rares (default):
  * Bosses: every boss encounter of the instance, from Soul Forge's own boss
    list (the game's encounter list, all 74 dungeons and raids of 3.3.5a) or
    InstanceGPS's if you have it - the same bosses either way. Outside
    dungeons and raids, creatures the game marks as world bosses.
  * Rares: creatures the game itself marks as rare (Spirestone Butcher, Bannok
    Grimaxe, Burning Felguard...). The mark is noticed when you or your group
    target one, or you hover it, and is remembered from then on. A rare nobody
    targeted or hovered before it died can't be recognised.
- Everything: every creature you kill in dungeons and raids, trash included.
- Open world: rares, world bosses, and creatures that are the ONLY source of an
  attunable item (Riverpaw Overseer and his cloak, for example), when
  "Open-World Rares" is on. Which creatures those are comes from Synastria's
  own loot database (the one behind its Loot DB window): a kill drop that is
  attunable, not disabled, and drops from nothing else. Each creature type is
  looked up once (its first kill or hover) and remembered; they show in the
  Kills tab as "Sole Drop". Kills from before 0.9.1 can't be added back.

WHAT COUNTS AS YOUR KILL
- You, your pet or your summons land the killing blow, or
- you damaged that exact creature in the 3 minutes before it died, or
- "Count Group Kills" (on by default): your party or raid killed it. Turn this
  off for strict solo counting.
- Each creature is counted once.

BOSS ENCOUNTERS (built in; InstanceGPS not needed)
- Every boss is counted as one encounter:
  the Eredar Twins, the Four Horsemen, M'uru + Entropius, Kalecgos + Sathrovarr
  are each ONE kill.
- Names: a group keeps its group name ("Eredar Twins", "The Four Horsemen"); a
  boss that changes form shows both names ("M'uru/Entropius").
- An encounter is defeated when its boss dies, or all of its creatures (both
  twins, all four horsemen). Bosses that don't die (the Gunship, Valithria,
  the Ulduar keepers, Mal'Ganis, the Argent Tournament champions) are seen by
  their Statistic going up. With InstanceGPS installed, it decides instead,
  and also catches the Chess Event, Tribunal of Ages and the Halls of
  Reflection escape, which have no Statistic. On top of that, the kill only
  counts once every creature of the encounter that is still being fought is
  dead: both twins, all four horsemen. A wipe after one twin dies counts nothing.
- Inside a dungeon or raid, only the boss list decides what is a boss (adds the
  game marks like bosses, such as Kael'thas' weapons, are not).
- Boss creatures are recognised by name the first time they are seen (killed,
  targeted or hovered) and remembered, so a boss shows in the window once it
  has been seen. Names are matched in English.
- The window lists bosses first, in the game's order, then rares, then trash
  (with "Everything").
- Summoned bosses the boss list doesn't have (e.g. Mor Grayhoof) are only counted
  with "Everything" for now.

YOUR STATISTICS TAB IS INCLUDED
- The first time each character logs in with this version, its Statistics
  (Achievements window > Statistics > Dungeons & Raids boss kills) are read
  once, so your history is there from day one.
- Nothing is counted twice: the import notes how many of those kills the addon
  had already counted itself and only adds the difference. After that, every
  new kill adds exactly 1 (the Statistics tab goes up too, but is never read
  again - not even with /kt import, which only works before the first import).
  A reading where every boss is still 0 (statistics not sent by the game yet)
  is not kept; it is tried again at the next loading screen.
- WoW only has statistics for some bosses (mostly Wrath of the Lich King and
  final bosses; e.g. in Sunwell only Kil'jaeden). Others start from the addon's
  own count.
- EVERY boss statistic under Dungeons & Raids is used (all 234 of the game's
  251 entries there; the other 17 are totals such as "Total 10-player raids
  entered" or "Lich King 25-player bosses killed", which would count kills
  twice). That includes the ones the game names differently: the Ulduar
  keepers' "victories" (Hodir, Thorim, Freya, Mimiron), the Gunship Battle,
  Valithria Dreamwalker "rescues", Mal'Ganis "defeated", the Halls of
  Reflection "Lich King escapes", Mr. Bigglesworth and Trial of the Crusader's
  "Times completed" (that is Anub'arak; he has no kills statistic).
- Each one is shown exactly once: in its boss's row, added to the kills the
  addon counted itself, or - where you have no row for that boss yet - by the
  statistic's own name (e.g. "Flame Leviathan", Ulduar, 25 Normal). The boss
  is found by its InstanceGPS link, or by the same boss, raid size and
  difficulty, or by the statistic's instance, difficulty and boss name.
- The Statistics tab names places its own way; they are shown under the
  in-game instance name, checked against AtlasLoot's boss lists: "Malygos (10
  player)" -> The Eye of Eternity, "Chamber of the Aspects" -> The Obsidian
  Sanctum, "Icecrown" -> Icecrown Citadel, "Wintergrasp" -> Vault of Archavon,
  "Trial of the Grand Crusader" -> Trial of the Crusader (Heroic), and so on.
  This is only how they are shown: nothing is imported again.
- Every character imports its own statistics on its own login: its numbers
  stay its own, and the account total adds them all up.

OVERALL KILLS OR THIS PRESTIGE (picker in /kt, or /kt view overall|prestige)
- Overall Kills: everything, including the imported Statistics.
- This Prestige: only kills the addon saw itself since your account's last
  prestige (there is no way to tell which older kills belong to which prestige).
- Prestige on Synastria is account-wide: it deletes every attune and perk of the
  account. The addon recognises it when both the account's attunes and perks
  drop to almost nothing (checked only after Synastria's data has loaded), and
  then "This Prestige" restarts for all your characters. /kt prestige does the
  same by hand if it was ever missed.

COMMANDS
  /kt                 Open or close the window (/soulforge does the same)
  /kt status          Where you are: instance, difficulty, Mythic code, settings
  /kt target          The targeted creature's NPC ID and your kill count here
  /kt npc ID          Same, by NPC ID
  /kt mode bosses|all What counts in dungeons and raids (see above)
  /kt view overall|prestige  Overall kills or this prestige only
  /kt prestige        Start "This Prestige" from now (if a prestige was missed)
  /kt import          Import this character's Statistics now (only if not done yet)
  /kt group on|off    Count kills by your party/raid
  /kt world on|off    Count open-world rares and sole-drop creatures
  /kt tooltip on|off  Tooltip line
  /kt alerts on|off   On-screen message and sound when you earn a new title
  /kt share on|off    Show your title to other Soul Forge users and see theirs
  /kt boards on|off   Take part in the leaderboards (see below); /kt boards = status
  /kt boards name NAME|auto  Your name on the boards (one of your characters)
  /kt minimap on|off  Show or hide the minimap button (click: open/close; drag: move).
  /kt minimap reset   Put the button back on the minimap at its normal size.
                      Right-click the button: Lock in place (dragging does
                      nothing while locked) and Reset to minimap.
                      Shift-drag it to place it anywhere on the screen; after
                      that any drag moves it on the screen (only reset puts it
                      back on the minimap). Hold Ctrl and turn the
                      mouse wheel over it to make it bigger or smaller. As it
                      grows it switches to sharper copies of its badge.
                      It wears the badge of the look you chose; with Full Motion
                      on the badge moves (Cosmic and Material: the vortex turns;
                      lights pulse, gems sparkle; Horde: the forge flickers and
                      throws embers)
  /kt skin NAME       Window look: cosmic, material, cognac, alliance or horde
                      (or right-click the minimap button: Theme)
  /kt motion full|calm  Cosmic effects moving or held still
  /kt scale 50-150    Cosmic window size in percent (100 = the default)
  /kt debug on|off    Chat messages for every counted / ignored kill (session only)

LEADERBOARDS
  The trophy beside Titles opens them, in every look on its own painted hall
  (Cosmic: Hall of Ascendance, Cognac: Most Wanted, Material: Infinity Matrix,
  Alliance: Hall of Champions, Horde: Hall of Blood). 0.9.4: each hall is the
  author's own finished artwork, imported pixel for pixel (never resized or
  smoothed when imported), set inside the look's own window: the frame and
  title bar stay exactly as on the other tabs. Ten rows (the mouse wheel scrolls), medals for the top three, your
  own row lit, a search by name. Three menus: All Places (an instance, then a
  difficulty), All Bosses, and Overall Kills / Souls Today / Souls This Week
  (or click the number headings).
  Hover a row for the player's title, totals and when they were last heard.
  Last Seen: how long ago each player was last heard (5H = 5 hours, 3D = 3 days,
  <1H = under an hour, your own row: Now). Standings fade when they are about
  to leave the board (not heard for 30 days); hover the row for the days left.
  Everyone who uses Soul Forge is ranked together; you don't need to be
  friends, in a guild or in a group. Boards: total kills (your account's
  "Total kills" statistic, the number your title comes from), kills today
  and kills this week (server time; weeks start on Monday). A new day or
  week starts from your last reading before it, so no kills fall between.
  You can also compare every boss of one instance, or one boss, in one
  difficulty or all of them (Mythic = every Mythic level). Any 3.3.5 dungeon
  or raid can be picked, also ones you have never been to; bosses are known
  by name from your kills and your Statistics tab. Answers are saved for 30
  days, so players who are offline still show.
  Your name on the boards: one of YOUR characters only. By default the one
  you have played most; /kt boards name NAME picks another of your own
  characters, /kt boards name auto goes back. To know play time, a character
  new to Soul Forge asks the game once, about 20 seconds after logging in,
  with the usual "Total time played" chat line held back for that moment;
  after that, each session's time is added. Typing /played works as always.
  If someone shows a name that belongs to another player's character, their
  own character name is shown instead.
  How: Soul Forge joins one hidden chat channel (SoulForgeBoards), like Details
  and AceComm do. It is taken out of your chat windows and its lines are
  filtered, so you never see it. What is sent: your shown name, class, title,
  total kills, kills today and this week, and a random account number so your
  characters share one place. Your standing goes out when you log in, when you
  earn a title and after a fight at most every 10 minutes; questions are
  answered only by the players who have the answer. At least 1.6 seconds
  between lines, so the server's chat-flood protection is never reached.
  Standings are kept 30 days.
  Impossible numbers are dropped. Everyone is ranked, wherever they are on
  the server. Verified standings: when you meet a Soul Forge player (hover,
  target, group) in inspect range, out of combat and with your achievement
  window closed, it quietly compares their "Total kills" statistic with the
  server (the game's achievement comparison), one player every 30 s at
  most, each character again after 3 hours. Players the server confirmed
  get a green tick after their name; anyone caught claiming more than the
  server shows is dropped. Checks are
  passed on, but only trusted from players you checked yourself. A checked
  total counts up to 1,000 + 3,000 kills an hour more than was checked.
  /kt boards off leaves the channel and sends nothing.

INSTALL
  Put the "Soul Forge" folder directly into Interface/AddOns,
  then restart WoW or type /reload. Nothing else is needed: bosses are
  counted the same with or without InstanceGPS.

YOUR SAVED KILLS ACROSS UPDATES
  Counts live in WoW's saved file WTF\Account\<account>\SavedVariables\
  Soul Forge.lua, not in the addon folder, so replacing the folder with
  a new version keeps them. Keep the folder name "Soul Forge".
  Each new version upgrades the saved data step by step and first stores a
  backup copy inside the same file. An OLDER version never changes data saved
  by a newer one: it warns and stops counting until you update.
  WoW writes the file on logout or /reload; a game crash loses that session.

UPGRADING
  From 0.1.x: counts are converted and show as "recorded by 0.1.2"; the old data
  is kept untouched inside the saved file as a backup.
  From 0.2.0-0.2.2: raid counts are moved to the corrected difficulty names (for
  example Sunwell kills filed as "10 Normal" are re-filed as 25-player).
  From 0.2.5-0.2.7: boss kills that were counted per creature (each twin
  separately) are merged into one count per encounter the first time you enter
  that instance; the original numbers are kept as a backup.
  Trash kills recorded by older versions are kept; they show with "Everything".

KNOWN UNKNOWNS (need an in-game check)
  * Instance identity uses Synastria's zone ID (Custom_GetCurrentZone). If two
    copies of an instance share a zone ID and difficulty, they share counts.
  * Dungeon Mythic is read from GetCustomGameData(12, 11) (>= 10 = Mythic).
    Different values are kept apart; what each value means is not decoded yet.
  * Kills out of combat-log range may not count.
  * Leaderboards: whether Synastria lets Horde and Alliance share one custom
    chat channel (if not, each faction gets its own board), and whether the
    server filters or delays custom-channel lines.

PERFORMANCE
  While the /kt window is closed only kill tracking is awake: it listens for
  the combat log, places, fights ending and titles, and nothing runs every
  frame (checked by the tests: no per-frame script is awake after logging in or
  after closing any look). The window is built the first time you open it, in
  the look you chose; the other looks' pictures are never loaded. When you
  close it, it lets go of all its pictures, pieces and lights and stops every
  animation, and picks them up again when you open it. Dropdowns and the
  search box watch for clicks elsewhere only while one is open or in use.
  During combat it only notes which creatures you
  hit (numbers only, no text). No item or loot lookups at all.
  Where you are is worked out again only when the game reports a change, so
  deaths and tooltips create almost nothing for the game to clean up. Deaths
  of creatures nobody in your group fought are dropped straight away. The /kt
  window keeps its rows while you type in the search box, and the Statistics
  list is built once and reused until something new is imported or linked.
  The window only redraws the tab you are looking at (typing in the Kills
  search never touches the Profile), the title list is rebuilt only when your
  rank changes, and the Cosmic animations run in the game's own animation
  system only while the window is open (all stop when it closes, or with Full
  Motion off). The Cosmic painting and its pieces use about 4.2 MB of video
  memory, only once the window has been opened. The Material look loads each
  tab's picture the first time you open that tab: about 6 MB per tab, 20 MB with
  all three and its pieces. The Cognac, Horde and Alliance looks do the same:
  about 6 MB per tab, about 19 MB with all three (only while the window is
  open). The Places menu watches for clicks only while open.
  The Leaderboards tab draws nothing while it is closed; its pictures load the
  first time you open it (about 6 MB per look) and are let go with the rest
  when the window closes. New answers wait a quarter second and are drawn once.
  The minimap button runs no addon code while it sits there: it follows the
  mouse only while you drag it, and builds its tooltip only when you hover it.
  It takes the mouse wheel only while you point at it with Ctrl held, and only
  the badge copy it is showing is loaded.
  Its badge's motion (Full Motion on) is the one thing that moves with the
  window closed: WoW's own built-in animations only (no every-frame code, no
  memory churn), stopped whenever the button is hidden or motion is off.
  Leaderboards: with the window closed they only compare the channel name of
  each chat-channel line (no memory used: tested with 20,000 Trade lines), send
  your standing on the events above, and answer questions; the little send
  queue runs only while it holds a line.

ATTRIBUTION AND LICENSE NOTES
  Soul Forge is Copyright (c) 2026 Sablinova, all rights reserved: see LICENSE.txt
  (use it as released; no changed copies, re-uploads, decoding the sealed titles or
  cheating the leaderboards). The parts below keep their own licenses.
  UI: MaterialCraftUI by Expulsion (MIT); full license in MATERIALCRAFTUI-LICENSE.txt.
  Its Style.lua is changed in two places for this addon: (0.7.4) the watcher for
  clicks outside a menu or edit box sleeps while none is open or in use, and
  (0.9.3) each control is repainted by the skin that built it.
  Its Cognac skin is included unchanged (UI\Skins\Cognac). Cognac skin art
  by Jeff, from AttuneNext, shipped with MaterialCraftUI under the same license.
  The Horde and Alliance looks' controls are copies of that Cognac skin in their colours
  (UI\Skins\Faction.lua).
  Fonts: Cinzel by Natanael Gama / The Cinzel Project Authors, SIL Open Font
  License 1.1 (Fonts\CINZEL-OFL.txt). Rajdhani by the Indian Type Foundry, SIL
  Open Font License 1.1 (Fonts\RAJDHANI-OFL.txt). Crimson Text by Sebastian
  Kosch / The Crimson Text Project Authors, SIL Open Font License 1.1
  (Fonts\CRIMSON-OFL.txt).
  The Cosmic window is the addon author's own painting (UI\Skins\Cosmic\PictureL.tga and
  PictureR.tga), with its changing parts drawn live; every control texture of
  the Cosmic skin was drawn for this addon. The Material window is the addon
  author's own three pictures (UI\Skins\Material), with their changing parts
  drawn live; its control look (UI\Skins\Material\Skin.lua) replaces
  MaterialCraftUI's flat Material look in this addon and uses its skin interface.
  The Cognac window is the addon author's own three saloon pictures
  (UI\Skins\CognacPicture), with their changing parts drawn live; its buttons
  and lists keep MaterialCraftUI's Cognac skin. The Horde window is the addon
  author's own three Horde pictures (UI\Skins\HordePicture), and the Alliance
  window the author's own three Alliance pictures (UI\Skins\AlliancePicture),
  with their changing parts drawn live.
  No AtlasLoot or InstanceGPS data is bundled. The boss list (Bosses.lua) is
  taken from the game client's own encounter table. InstanceGPS is only read
  at run time if you have it installed.

Release version: 1.0.0.
