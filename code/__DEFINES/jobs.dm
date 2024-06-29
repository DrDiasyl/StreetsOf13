#define JOB_AVAILABLE 0
#define JOB_UNAVAILABLE_GENERIC 1
#define JOB_UNAVAILABLE_BANNED 2
#define JOB_UNAVAILABLE_PLAYTIME 3
#define JOB_UNAVAILABLE_ACCOUNTAGE 4
#define JOB_UNAVAILABLE_SLOTFULL 5
/// Job unavailable due to incompatibility with an antag role.
#define JOB_UNAVAILABLE_ANTAG_INCOMPAT 6
/// Checks for character age.
#define JOB_UNAVAILABLE_AGE 7

/// Used when the `get_job_unavailable_error_message` proc can't make sense of a given code.
#define GENERIC_JOB_UNAVAILABLE_ERROR "Error: Unknown job availability."

#define DEFAULT_RELIGION "Christianity"
#define DEFAULT_DEITY "Space Jesus"
#define DEFAULT_BIBLE "Default Bible Name"
#define DEFAULT_BIBLE_REPLACE(religion) "The Holy Book of [religion]"

#define JOB_DISPLAY_ORDER_DEFAULT 0

// Keys for jobconfig.toml
#define JOB_CONFIG_PLAYTIME_REQUIREMENTS "Playtime Requirements"
#define JOB_CONFIG_REQUIRED_ACCOUNT_AGE "Required Account Age"
#define JOB_CONFIG_REQUIRED_CHARACTER_AGE "Required Character Age"
#define JOB_CONFIG_SPAWN_POSITIONS "Spawn Positions"
#define JOB_CONFIG_TOTAL_POSITIONS "Total Positions"

/**
 * =======================
 * WARNING WARNING WARNING
 * WARNING WARNING WARNING
 * WARNING WARNING WARNING
 * =======================
 * These names are used as keys in many locations in the database
 * you cannot change them trivially without breaking job bans and
 * role time tracking, if you do this and get it wrong you will die
 * and it will hurt the entire time
 */

//No department
#define JOB_UNEMPLOYED "Unemployed"
#define JOB_PRISONER "Prisoner"
//Command
#define JOB_MAYOR "Mayor"
#define JOB_CHIEF_OF_INTERNAL_AFFAIRS "Chief of Internal Affairs"
#define JOB_CHIEF_OF_POLICE "Chief of Police"
//#define JOB_RESEARCH_DIRECTOR "Research Director"
#define JOB_CHIEF_MEDICAL_OFFICER "Chief Medical Officer"
//#define JOB_BRIDGE_ASSISTANT "Bridge Assistant"
//#define JOB_VETERAN_ADVISOR "Veteran Security Advisor"
//Silicon
#define JOB_AI "AI"
#define JOB_CYBORG "Cyborg"
#define JOB_PERSONAL_AI "Personal AI"
//#define JOB_HUMAN_AI "Big Brother"
//Security
#define JOB_WARDEN "Warden"
#define JOB_DETECTIVE "Detective"
#define JOB_POLICE_OFFICER "Police Officer"
//#define JOB_POLICE_OFFICER_MEDICAL "Security Officer (Medical)"
//#define JOB_POLICE_OFFICER_ENGINEERING "Security Officer (Engineering)"
//#define JOB_POLICE_OFFICER_SCIENCE "Security Officer (Science)"
//#define JOB_POLICE_OFFICER_SUPPLY "Security Officer (Cargo)"
//Engineering
#define JOB_FOREMAN "Foreman" //demoted from command
#define JOB_CONSTRUCTION_WORKER "Construction Worker"
#define JOB_FIREFIGHTER "Firefighter"
//Medical
#define JOB_CORONER "Coroner"
#define JOB_MEDICAL_DOCTOR "Medical Doctor"
#define JOB_PARAMEDIC "Paramedic"
#define JOB_CHEMIST "Chemist"
//Science, all of it is nuked
//#define JOB_SCIENTIST "Scientist"
//#define JOB_ROBOTICIST "Roboticist"
//#define JOB_GENETICIST "Geneticist"
//Supply
#define JOB_LOGISTIC_MANAGER "Logistic Manager"
#define JOB_LOGISTIC_TECHNICIAN "Logistic Technician"
//#define JOB_CARGO_GORILLA "Cargo Gorilla"
//#define JOB_SHAFT_MINER "Shaft Miner"
//#define JOB_BITRUNNER "Bitrunner"
//Service
#define JOB_BARTENDER "Bartender"
#define JOB_FARMER "Farmer"
#define JOB_COOK "Cook"
#define JOB_CHEF "Chef" // Alternate cook title.
#define JOB_STREET_CLEANER "Street Cleaner"
//#define JOB_CLOWN "Clown" There is only mimes, this is truly a dystopia
#define JOB_MIME "Mime"
#define JOB_CURATOR "Curator"
#define JOB_LAWYER "Lawyer"
#define JOB_PRIEST "Priest"
#define JOB_PSYCHOLOGIST "Psychologist"
//ERTs
#define JOB_ERT_DEATHSQUAD "Death Commando"
#define JOB_ERT_COMMANDER "Emergency Response Team Commander"
#define JOB_ERT_OFFICER "Security Response Officer"
#define JOB_ERT_ENGINEER "Engineering Response Officer"
#define JOB_ERT_MEDICAL_DOCTOR "Medical Response Officer"
#define JOB_ERT_CHAPLAIN "Religious Response Officer"
#define JOB_ERT_JANITOR "Janitorial Response Officer"
#define JOB_ERT_CLOWN "Entertainment Response Officer"
//CentCom
#define JOB_CENTCOM "Central Command"
#define JOB_CENTCOM_OFFICIAL "CentCom Official"
#define JOB_CENTCOM_ADMIRAL "Admiral"
#define JOB_CENTCOM_COMMANDER "CentCom Commander"
#define JOB_CENTCOM_VIP "VIP Guest"
#define JOB_CENTCOM_BARTENDER "CentCom Bartender"
#define JOB_CENTCOM_CUSTODIAN "Custodian"
#define JOB_CENTCOM_THUNDERDOME_OVERSEER "Thunderdome Overseer"
#define JOB_CENTCOM_MEDICAL_DOCTOR "Medical Officer"
#define JOB_CENTCOM_RESEARCH_OFFICER "Research Officer"
#define JOB_CENTCOM_SPECIAL_OFFICER "Special Ops Officer"
#define JOB_CENTCOM_PRIVATE_SECURITY "Private Security Force"

#define JOB_GROUP_ENGINEERS list( \
	JOB_CONSTRUCTION_WORKER, \
	JOB_FIREFIGHTER, \
)


#define JOB_DISPLAY_ORDER_UNEMPLOYED 1
#define JOB_DISPLAY_ORDER_MAYOR 2
#define JOB_DISPLAY_ORDER_CHIEF_OF_INTERNAL_AFFAIRS 3
#define JOB_DISPLAY_ORDER_BARTENDER 5
#define JOB_DISPLAY_ORDER_FARMER 6
#define JOB_DISPLAY_ORDER_COOK 7
#define JOB_DISPLAY_ORDER_STREET_CLEANER 8
#define JOB_DISPLAY_ORDER_MIME 10
#define JOB_DISPLAY_ORDER_CURATOR 11
#define JOB_DISPLAY_ORDER_LAWYER 12
#define JOB_DISPLAY_ORDER_PRIEST 13
#define JOB_DISPLAY_ORDER_PSYCHOLOGIST 14
#define JOB_DISPLAY_ORDER_AI 15
#define JOB_DISPLAY_ORDER_CYBORG 16
#define JOB_DISPLAY_ORDER_FOREMAN 17
#define JOB_DISPLAY_ORDER_CONSTRUCTION_WORKER 18
#define JOB_DISPLAY_ORDER_FIREFIGHTER 19
#define JOB_DISPLAY_ORDER_LOGISTIC_MANAGER 20
#define JOB_DISPLAY_ORDER_LOGISTIC_TECHNICIAN 21
#define JOB_DISPLAY_ORDER_CHIEF_MEDICAL_OFFICER 25
#define JOB_DISPLAY_ORDER_MEDICAL_DOCTOR 26
#define JOB_DISPLAY_ORDER_PARAMEDIC 27
#define JOB_DISPLAY_ORDER_CHEMIST 28
#define JOB_DISPLAY_ORDER_CORONER 29
#define JOB_DISPLAY_ORDER_CHIEF_OF_POLICE 34
#define JOB_DISPLAY_ORDER_WARDEN 36
#define JOB_DISPLAY_ORDER_DETECTIVE 37
#define JOB_DISPLAY_ORDER_SECURITY_OFFICER 38
#define JOB_DISPLAY_ORDER_PRISONER 39

#define DEPARTMENT_UNASSIGNED "No Department"

#define DEPARTMENT_BITFLAG_SECURITY (1<<0)
#define DEPARTMENT_SECURITY "Security"
#define DEPARTMENT_BITFLAG_COMMAND (1<<1)
#define DEPARTMENT_COMMAND "Command"
#define DEPARTMENT_BITFLAG_SERVICE (1<<2)
#define DEPARTMENT_SERVICE "Service"
#define DEPARTMENT_BITFLAG_CARGO (1<<3)
#define DEPARTMENT_CARGO "Cargo"
#define DEPARTMENT_BITFLAG_ENGINEERING (1<<4)
#define DEPARTMENT_ENGINEERING "Engineering"
#define DEPARTMENT_BITFLAG_SCIENCE (1<<5)
#define DEPARTMENT_SCIENCE "Science"
#define DEPARTMENT_BITFLAG_MEDICAL (1<<6)
#define DEPARTMENT_MEDICAL "Medical"
#define DEPARTMENT_BITFLAG_SILICON (1<<7)
#define DEPARTMENT_SILICON "Silicon"
#define DEPARTMENT_BITFLAG_ASSISTANT (1<<8)
#define DEPARTMENT_ASSISTANT "Assistant"
#define DEPARTMENT_BITFLAG_CAPTAIN (1<<9)
#define DEPARTMENT_CAPTAIN "Captain"

DEFINE_BITFIELD(departments_bitflags, list(
	"SECURITY" = DEPARTMENT_BITFLAG_SECURITY,
	"COMMAND" = DEPARTMENT_BITFLAG_COMMAND,
	"SERVICE" = DEPARTMENT_BITFLAG_SERVICE,
	"CARGO" = DEPARTMENT_BITFLAG_CARGO,
	"ENGINEERING" = DEPARTMENT_BITFLAG_ENGINEERING,
	"SCIENCE" = DEPARTMENT_BITFLAG_SCIENCE,
	"MEDICAL" = DEPARTMENT_BITFLAG_MEDICAL,
	"SILICON" = DEPARTMENT_BITFLAG_SILICON,
	"ASSISTANT" = DEPARTMENT_BITFLAG_ASSISTANT,
	"CAPTAIN" = DEPARTMENT_BITFLAG_CAPTAIN,
))

/* Job datum job_flags */
/// Whether the mob is announced on arrival.
#define JOB_ANNOUNCE_ARRIVAL (1<<0)
/// Whether the mob is added to the crew manifest.
#define JOB_CREW_MANIFEST (1<<1)
/// Whether the mob is equipped through SSjob.EquipRank() on spawn.
#define JOB_EQUIP_RANK (1<<2)
/// Whether the job is considered a regular crew member of the station. Equipment such as AI and cyborgs not included.
#define JOB_CREW_MEMBER (1<<3)
/// Whether this job can be joined through the new_player menu.
#define JOB_NEW_PLAYER_JOINABLE (1<<4)
/// Whether this job appears in bold in the job menu.
#define JOB_BOLD_SELECT_TEXT (1<<5)
/// Reopens this position if we lose the player at roundstart.
#define JOB_REOPEN_ON_ROUNDSTART_LOSS (1<<6)
/// If the player with this job can have quirks assigned to him or not. Relevant for new player joinable jobs and roundstart antags.
#define JOB_ASSIGN_QUIRKS (1<<7)
/// Whether this job can be an intern.
#define JOB_CAN_BE_INTERN (1<<8)
/// This job cannot have more slots opened by the Head of Personnel (but admins or other random events can still do this).
#define JOB_CANNOT_OPEN_SLOTS (1<<9)
/// This job will not display on the job menu when there are no slots available, instead of appearing greyed out
#define JOB_HIDE_WHEN_EMPTY (1<<10)
/// This job cannot be signed up for at round start or recorded in your preferences
#define JOB_LATEJOIN_ONLY (1<<11)
/// This job is a head of staff.
#define JOB_HEAD_OF_STAFF (1<<12)

DEFINE_BITFIELD(job_flags, list(
	"JOB_ANNOUNCE_ARRIVAL" = JOB_ANNOUNCE_ARRIVAL,
	"JOB_CREW_MANIFEST" = JOB_CREW_MANIFEST,
	"JOB_EQUIP_RANK" = JOB_EQUIP_RANK,
	"JOB_CREW_MEMBER" = JOB_CREW_MEMBER,
	"JOB_NEW_PLAYER_JOINABLE" = JOB_NEW_PLAYER_JOINABLE,
	"JOB_BOLD_SELECT_TEXT" = JOB_BOLD_SELECT_TEXT,
	"JOB_REOPEN_ON_ROUNDSTART_LOSS" = JOB_REOPEN_ON_ROUNDSTART_LOSS,
	"JOB_ASSIGN_QUIRKS" = JOB_ASSIGN_QUIRKS,
	"JOB_CAN_BE_INTERN" = JOB_CAN_BE_INTERN,
	"JOB_CANNOT_OPEN_SLOTS" = JOB_CANNOT_OPEN_SLOTS,
	"JOB_HIDE_WHEN_EMPTY" = JOB_HIDE_WHEN_EMPTY,
	"JOB_LATEJOIN_ONLY" = JOB_LATEJOIN_ONLY,
	"JOB_HEAD_OF_STAFF" = JOB_HEAD_OF_STAFF,
))

/// Combination flag for jobs which are considered regular crew members of the station.
#define STATION_JOB_FLAGS (JOB_ANNOUNCE_ARRIVAL|JOB_CREW_MANIFEST|JOB_EQUIP_RANK|JOB_CREW_MEMBER|JOB_NEW_PLAYER_JOINABLE|JOB_REOPEN_ON_ROUNDSTART_LOSS|JOB_ASSIGN_QUIRKS|JOB_CAN_BE_INTERN)
/// Combination flag for jobs which are considered heads of staff.
#define HEAD_OF_STAFF_JOB_FLAGS (JOB_BOLD_SELECT_TEXT|JOB_CANNOT_OPEN_SLOTS|JOB_HEAD_OF_STAFF)
/// Combination flag for jobs which are enabled by station traits.
#define STATION_TRAIT_JOB_FLAGS (JOB_CANNOT_OPEN_SLOTS|JOB_HIDE_WHEN_EMPTY|JOB_LATEJOIN_ONLY&~JOB_REOPEN_ON_ROUNDSTART_LOSS)

#define FACTION_NONE "None"
#define FACTION_STATION "Station"

// Variable macros used to declare who is the supervisor for a given job, announced to the player when they join as any given job.
#define SUPERVISOR_MAYOR "the Mayor"
#define SUPERVISOR_FOREMAN "the Foreman"
#define SUPERVISOR_CMO "the Chief Medical Officer"
#define SUPERVISOR_COIA "the Chief of Internal Affairs"
#define SUPERVISOR_COP "the Chief of Police"
#define SUPERVISOR_LM "the Logistics Manager"
#define SUPERVISOR_RD "the Research Director" //to be nuked

/// Mind traits that should be shared by every head of staff. has to be this way cause byond lists lol
#define HEAD_OF_STAFF_MIND_TRAITS TRAIT_FAST_TYING, TRAIT_HIGH_VALUE_RANSOM
