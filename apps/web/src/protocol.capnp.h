#ifndef CAPN_8B2F1667D6F9C269
#define CAPN_8B2F1667D6F9C269
/* AUTO GENERATED - DO NOT EDIT */
#include <capnp_c.h>

#if CAPN_VERSION != 1
#error "version mismatch between capnp_c.h and generated code"
#endif

#ifndef capnp_nowarn
# ifdef __GNUC__
#  define capnp_nowarn __extension__
# else
#  define capnp_nowarn
# endif
#endif


#ifdef __cplusplus
extern "C" {
#endif

struct BuildingData;
struct BuildingConfig;

typedef struct {capn_ptr p;} BuildingData_ptr;
typedef struct {capn_ptr p;} BuildingConfig_ptr;

typedef struct {capn_ptr p;} BuildingData_list;
typedef struct {capn_ptr p;} BuildingConfig_list;

struct BuildingData {
	double currentTemp;
	unsigned cooling : 1;
	unsigned heating : 1;
	unsigned alarm : 1;
	capn_text platform;
};

static const size_t BuildingData_word_count = 2;

static const size_t BuildingData_pointer_count = 1;

static const size_t BuildingData_struct_bytes_count = 24;

struct BuildingConfig {
	double desiredTemp;
};

static const size_t BuildingConfig_word_count = 1;

static const size_t BuildingConfig_pointer_count = 0;

static const size_t BuildingConfig_struct_bytes_count = 8;

BuildingData_ptr new_BuildingData(struct capn_segment*);
BuildingConfig_ptr new_BuildingConfig(struct capn_segment*);

BuildingData_list new_BuildingData_list(struct capn_segment*, int len);
BuildingConfig_list new_BuildingConfig_list(struct capn_segment*, int len);

void read_BuildingData(struct BuildingData*, BuildingData_ptr);
void read_BuildingConfig(struct BuildingConfig*, BuildingConfig_ptr);

void write_BuildingData(const struct BuildingData*, BuildingData_ptr);
void write_BuildingConfig(const struct BuildingConfig*, BuildingConfig_ptr);

void get_BuildingData(struct BuildingData*, BuildingData_list, int i);
void get_BuildingConfig(struct BuildingConfig*, BuildingConfig_list, int i);

void set_BuildingData(const struct BuildingData*, BuildingData_list, int i);
void set_BuildingConfig(const struct BuildingConfig*, BuildingConfig_list, int i);

#ifdef __cplusplus
}
#endif
#endif
