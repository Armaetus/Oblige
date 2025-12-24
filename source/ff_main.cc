#include <stdlib.h>

#include <chrono>
#include <iostream>
#include <string>

#include "ff.h"
#include "lib_util.h"

extern "C"
{
#include "lex.yy.h"
}

std::string gameValue;
std::string portValue;
std::string themeValue;
std::string countValue;
std::string versionValue;
std::string result;
std::chrono::time_point<std::chrono::local_t, std::chrono::seconds> currentTime;

void year()
{
    result.append(std::format("{:%Y}", currentTime));
}

void month()
{
    result.append(std::format("{:%m}", currentTime));
}

void day()
{
    result.append(std::format("{:%d}", currentTime));
}

void hour()
{
    result.append(std::format("{:%H}", currentTime));
}

void minute()
{
    result.append(std::format("{:%M}", currentTime));
}

void second()
{
    result.append(std::format("{:%S}", currentTime));
}

void game()
{
    result.append(gameValue);
}

void port()
{
    result.append(portValue);
}

void theme()
{
    result.append(themeValue);
}

void count()
{
    result.append(countValue);
}

void version()
{
    result.append(versionValue);
}

void raw_append(const char *string)
{
    result.append(string);
}

const char *ff_main(const char *levelcount, const char *game, const char *port, const char *theme, const char *version,
                    const char *format)
{
    gameValue         = game;
    portValue         = port;
    themeValue        = theme;
    countValue        = levelcount;
    versionValue      = version;
    std::string input = format;
    result.clear();
    currentTime = std::chrono::floor<std::chrono::seconds>(std::chrono::current_zone()->to_local(std::chrono::system_clock::now()));
    yy_buffer_state *buffer_state = yy_scan_bytes(input.c_str(), input.size());
    yy_switch_to_buffer(buffer_state);
    while (yylex() != TOK_EOF)
    {
    }

    return result.c_str();
}
