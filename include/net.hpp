// Conan::ImportStart
#pragma once
#include <iostream>
// Conan::ImportEnd



// using minimal_net = dlib::loss_multiclass_log<
//                     dlib::fc<10,
//                     dlib::input<dlib::matrix<unsigned char>>
//                     >>;
//
//
//
// void train_with_random_data();



int predict_random_sample();



int print_func_for_test() {
  std::cout << "The test function from net.hpp in req1 project! this line is v1.0.0" << std::endl;
  return 0;
};

