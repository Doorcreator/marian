#include <algorithm>
#include <chrono>
#include <iomanip>
#include <string>
#include <cstdio>
#include <boost/timer/timer.hpp>
#include <boost/chrono.hpp>
#include <boost/program_options.hpp>
#include <thread>
#include <chrono>
#include <mutex>

#include "marian.h"
#include "command/training.h"
#include "parallel/graph_group.h"
#include "models/dl4mt.h"

int main(int argc, char** argv) {
  using namespace marian;

  auto options = New<Config>(argc, argv);
  Train<AsyncGraphGroup<DL4MT>>(options);

  return 0;
}
