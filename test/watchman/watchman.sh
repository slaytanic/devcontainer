#!/bin/bash

# This test file will be executed against the 'watchman' scenario defined in scenarios.json

set -e

# Optional: Import test library bundled with the devcontainer CLI
source dev-container-features-test-lib

# Feature-specific tests
# The 'check' command comes from the dev-container-features-test-lib.
check "watchman is installed" which watchman
check "watchman version" watchman --version
check "watchman executable exists" test -x /usr/local/bin/watchman

# Report results
# If any of the checks above exited with a non-zero exit code, the test will fail.
reportResults
