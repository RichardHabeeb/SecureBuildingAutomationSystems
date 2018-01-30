@0x8b2f1667d6f9c269;


struct BuildingData {
	currentTemp @0 :Float64;
	cooling @1 :Bool;
	heating @2 :Bool;
	alarm @3 :Bool;
	platform @4 :Text;
}

struct BuildingConfig {
	desiredTemp @0 :Float64;
}
