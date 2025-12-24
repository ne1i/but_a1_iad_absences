#!/bin/bash

# Test script for the absence management application
# Equivalent to test.bat for Linux/Unix systems

echo "Running tests with errors..."

# Test with errors
./app < in-out/avec-erreurs/in-sp1.txt > out.txt
diff -w out.txt in-out/avec-erreurs/out-sp1.txt || echo "Test sp1 with errors failed"

./app < in-out/avec-erreurs/in-sp2.txt > out.txt
diff -w out.txt in-out/avec-erreurs/out-sp2.txt || echo "Test sp2 with errors failed"

./app < in-out/avec-erreurs/in-sp3.txt > out.txt
diff -w out.txt in-out/avec-erreurs/out-sp3.txt || echo "Test sp3 with errors failed"

./app < in-out/avec-erreurs/in-sp4.txt > out.txt
diff -w out.txt in-out/avec-erreurs/out-sp4.txt || echo "Test sp4 with errors failed"

echo "Press Enter to continue with tests without errors..."
read

echo "Running tests without errors..."

# Test without errors
./app < in-out/sans-erreur/in-sp1.txt > out.txt
diff -w out.txt in-out/sans-erreur/out-sp1.txt || echo "Test sp1 without errors failed"

./app < in-out/sans-erreur/in-sp2.txt > out.txt
diff -w out.txt in-out/sans-erreur/out-sp2.txt || echo "Test sp2 without errors failed"

./app < in-out/sans-erreur/in-sp3.txt > out.txt
diff -w out.txt in-out/sans-erreur/out-sp3.txt || echo "Test sp3 without errors failed"

./app < in-out/sans-erreur/in-sp4.txt > out.txt
diff -w out.txt in-out/sans-erreur/out-sp4.txt || echo "Test sp4 without errors failed"

echo "All tests completed!"
rm -f out.txt