#include <chrono>
#include <cstdlib>
#include <ctime>
#include <iostream>
#include <string>

#include "ff.h"

extern "C"
{
#include "lex.yy.h"
}

std::time_t now_;
std::tm     now;
std::string gameValue;
std::string portValue;
std::string themeValue;
std::string countValue;
std::string versionValue;
std::string result;

void year()
{
    result.append(std::to_string(now.tm_year + 1900));
}

void month()
{
    result.append(std::to_string(now.tm_mon + 1));
}

void day()
{
    result.append(std::to_string(now.tm_mday));
}

void hour()
{
    result.append(std::to_string(now.tm_hour));
}

void minute()
{
    result.append(std::to_string(now.tm_min));
}

void second()
{
    result.append(std::to_string(now.tm_sec));
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
    now_ = std::chrono::system_clock::to_time_t(std::chrono::system_clock::now());
    now  = *std::localtime(&now_);

    auto buffer_state = yy_scan_bytes(input.c_str(), input.size());
    yy_switch_to_buffer(buffer_state);
    while (yylex() != TOK_EOF)
    {
    }

    return result.c_str();
}
