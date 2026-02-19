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
  config.parse_file(config_file);
  config.compute_cache();

  steve::Music music(config);

  std::ostringstream fs;
  steve::MidiOutput::write(music, fs);

  if (!fs.good()) {
      LogPrint("Steve MIDI write failed (fail=%d bad=%d)\n",
               fs.fail(), fs.bad());
      return {};
  }

  std::ostringstream ss;
  steve::TextOutput::write(music, ss);

  LogPrint("MIDI Statistics:\n");
  LogPrint("%s\n", ss.str().c_str());

  return fs.str();
}
