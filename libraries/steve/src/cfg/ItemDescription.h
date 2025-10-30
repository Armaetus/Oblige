#pragma once

#include <cstdint>
#include <string>

namespace steve {
  struct ItemDescription {
    virtual ~ItemDescription(){};
    std::string name;
    bool blacklisted = false, whitelisted = false;
    float weight = 1.f;

    virtual void compute_cache(){};
  };
}
