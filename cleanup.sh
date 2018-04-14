#!/bin/bash


echo "1 of 4 - Cleaning DerivedData"
rm -rf ~/Library/Developer/Xcode/DerivedData/*
echo "Cleaned DerivedData"

echo "2 of 4 - Cleaning caches"
rm -rf $(getconf DARWIN_USER_CACHE_DIR)/org.llvm.clang/ModuleCache
echo "Cleaned caches"

echo "3 of 4 - Resetting pods"
pod deintegrate && pod install && pod update
echo "Done resetting pods"

echo "4 of 4 - Cleaning build"
xcodebuild clean
echo "Done cleaning"
