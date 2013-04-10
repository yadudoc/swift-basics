#!/bin/bash

rm -rf swift-0.94

mkdir swift-0.94
cd swift-0.94

svn co https://cogkit.svn.sourceforge.net/svnroot/cogkit/branches/4.1.10/src/cog
cd cog/modules

svn co https://svn.ci.uchicago.edu/svn/vdl2/branches/release-0.94 swift
cd swift

ant redist