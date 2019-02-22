#!/bin/bash

set -e

cd example-application
helm dependency build
helm lint .
helm unittest .
helm package .
