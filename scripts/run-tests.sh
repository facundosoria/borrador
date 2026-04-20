#!/usr/bin/env bash
set -euo pipefail

mvn -f api/pom.xml test
