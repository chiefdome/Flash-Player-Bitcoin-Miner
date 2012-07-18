#!/bin/bash
# Copyright (c) 2012, 2012 All Rights Reserved, Marek Burza (mkburza@gmail.com)
#
# This script runs the bitcoin mining pool proxy on local instance of a Google AppEngine server.
# It assumes that Google AppEngine SDK is located in ~/Programs directory.

python ~/Programs/google_appengine/dev_appserver.py ./
