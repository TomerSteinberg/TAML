#include "graph.hpp"

#include <iostream>

void print() {
  xt::xarray<int> arr{1, 2, 3, 4, 5, 6, 7, 8, 9};

  arr.reshape({3, 3});
  std::cout << arr << std::endl;
}