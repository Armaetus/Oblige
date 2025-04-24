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
std::chrono::year_month_day ymd;
std::chrono::hh_mm_ss<std::chrono::nanoseconds> hms;

void year()
{
    result.append(std::format("{}", int(ymd.year())));
}

void month()
{
    result.append(std::format("{}", unsigned(ymd.month())));
}

void day()
{
    result.append(std::format("{}", unsigned(ymd.day())));
}

void hour()
{
    result.append(std::format("{}", hms.hours().count()));
}

void minute()
{
    result.append(std::format("{}", hms.minutes().count()));
}

void second()
{
    result.append(std::format("{}", hms.seconds().count()));
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
    auto time = std::chrono::system_clock::now();
    auto timefloor = floor<std::chrono::days>(time);
    ymd = timefloor;
    hms = std::chrono::hh_mm_ss{time - timefloor};
    yy_buffer_state *buffer_state = yy_scan_bytes(input.c_str(), input.size());
    yy_switch_to_buffer(buffer_state);
    while (yylex() != TOK_EOF)
    {
    }

    return result.c_str();
}
