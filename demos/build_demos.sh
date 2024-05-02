#!/usr/bin/env bash

# Copyright (C) 2018-2023 Intel Corporation
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
(cd "$build_dir" && $CMAKE_EXEC -DCMAKE_BUILD_TYPE=Release "${extra_cmake_opts[@]}" "$DEMOS_PATH")
$CMAKE_EXEC --build "$build_dir" ${build_targets[@]} -- "$NUM_THREADS"

printf "\nBuild completed, you can find binaries for all demos in the %s subfolder.\n\n" "$build_dir/$OS_PATH/Release"
