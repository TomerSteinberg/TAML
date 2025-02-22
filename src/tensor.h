#ifndef TENSOR_H
#define TENSOR_H

#include <vector>

#include "status_codes.h"

namespace taml {

class Tensor {
   private:
    std::vector<int> shape_;
    std::vector<double> data_;

   public:
    Tensor();
    ~Tensor();
};

}  // namespace taml

#endif