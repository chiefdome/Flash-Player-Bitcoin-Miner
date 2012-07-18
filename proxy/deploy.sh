#!/bin/bash
# Copyright (c) 2012, 2012 All Rights Reserved, Marek Burza (mkburza@gmail.com)
#
# This script deploys the bitcoin mining pool proxy to Google AppEngine servers.
# It assumes that Google AppEngine SDK is located in ~/Programs directory.

python ~/Programs/Google/google_appengine/appcfg.py update ./

