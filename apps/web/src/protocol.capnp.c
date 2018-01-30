#include "protocol.capnp.h"
/* AUTO GENERATED - DO NOT EDIT */
#ifdef __GNUC__
# define capnp_unused __attribute__((unused))
# define capnp_use(x) (void) x;
#else
# define capnp_unused
# define capnp_use(x)
#endif

static const capn_text capn_val0 = {0,"",0};

BuildingData_ptr new_BuildingData(struct capn_segment *s) {
	BuildingData_ptr p;
	p.p = capn_new_struct(s, 16, 1);
	return p;
}
BuildingData_list new_BuildingData_list(struct capn_segment *s, int len) {
	BuildingData_list p;
	p.p = capn_new_list(s, len, 16, 1);
	return p;
}
void read_BuildingData(struct BuildingData *s capnp_unused, BuildingData_ptr p) {
	capn_resolve(&p.p);
	capnp_use(s);
	s->currentTemp = capn_to_f64(capn_read64(p.p, 0));
	s->cooling = (capn_read8(p.p, 8) & 1) != 0;
	s->heating = (capn_read8(p.p, 8) & 2) != 0;
	s->alarm = (capn_read8(p.p, 8) & 4) != 0;
	s->platform = capn_get_text(p.p, 0, capn_val0);
}
void write_BuildingData(const struct BuildingData *s capnp_unused, BuildingData_ptr p) {
	capn_resolve(&p.p);
	capnp_use(s);
	capn_write64(p.p, 0, capn_from_f64(s->currentTemp));
	capn_write1(p.p, 64, s->cooling != 0);
	capn_write1(p.p, 65, s->heating != 0);
	capn_write1(p.p, 66, s->alarm != 0);
	capn_set_text(p.p, 0, s->platform);
}
void get_BuildingData(struct BuildingData *s, BuildingData_list l, int i) {
	BuildingData_ptr p;
	p.p = capn_getp(l.p, i, 0);
	read_BuildingData(s, p);
}
void set_BuildingData(const struct BuildingData *s, BuildingData_list l, int i) {
	BuildingData_ptr p;
	p.p = capn_getp(l.p, i, 0);
	write_BuildingData(s, p);
}

BuildingConfig_ptr new_BuildingConfig(struct capn_segment *s) {
	BuildingConfig_ptr p;
	p.p = capn_new_struct(s, 8, 0);
	return p;
}
BuildingConfig_list new_BuildingConfig_list(struct capn_segment *s, int len) {
	BuildingConfig_list p;
	p.p = capn_new_list(s, len, 8, 0);
	return p;
}
void read_BuildingConfig(struct BuildingConfig *s capnp_unused, BuildingConfig_ptr p) {
	capn_resolve(&p.p);
	capnp_use(s);
	s->desiredTemp = capn_to_f64(capn_read64(p.p, 0));
}
void write_BuildingConfig(const struct BuildingConfig *s capnp_unused, BuildingConfig_ptr p) {
	capn_resolve(&p.p);
	capnp_use(s);
	capn_write64(p.p, 0, capn_from_f64(s->desiredTemp));
}
void get_BuildingConfig(struct BuildingConfig *s, BuildingConfig_list l, int i) {
	BuildingConfig_ptr p;
	p.p = capn_getp(l.p, i, 0);
	read_BuildingConfig(s, p);
}
void set_BuildingConfig(const struct BuildingConfig *s, BuildingConfig_list l, int i) {
	BuildingConfig_ptr p;
	p.p = capn_getp(l.p, i, 0);
	write_BuildingConfig(s, p);
}
