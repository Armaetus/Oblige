#include <fstream>
#include <sstream>

#include "cfg/ConfigJson.h"
#include "Music.h"
#include "Steve.h"
#include "out/MidiOutput.h"
#include "out/TextOutput.h"
#include "lib_util.h"
#include "main.h"
#include "physfs.h"
#include "sys_assert.h"
#include "sys_debug.h"

std::string steve_generate(const char *config_file) {

  SYS_ASSERT(config_file);

  steve::note_name_init();

  steve::ConfigJson config;
  std::string music_string;

  config.parse_file(config_file);

  config.compute_cache();

  steve::Music music(config);
  std::ostringstream fs(music_string);
  steve::MidiOutput::write(music, fs);
  fs.flush();
  std::string music_debug;
  std::ostringstream ss(music_debug);
  steve::TextOutput::write(music, ss);
  ss.flush();
  LogPrint("MIDI Statistics:\n");
  LogPrint("%s\n", ss.str().c_str());

  return fs.str();
}
