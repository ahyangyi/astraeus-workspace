ASTREAUS WORKSPACE
==================

This is a Bazel Workspace that builds some open-source libraries and applications without using their own build systems.
This is largely experimental for fun, but it might have potential real usages as it provides a uniform interface to building things.
For example, a compiler developer might find testing his new compiler plugin on all the open source projects in this repository valuable.

UPGRADE POLICIES
================

Well, as this is currently just a for-fun project, there is no set-in-stone policies. But in general I try to stay on the latest stable version of each package, avoid packages with known serious bugs, and only resort to provide multiple versions when there is a reason.

LICENSE
=======

I haven't decided yet... And to be honest it shouldn't really matter since build scripts and configurations are not source code, so say GPL or BSD make no real difference.

However, many BUILD files are grabbed from Tensorflow (often with modification). It is therefore mandatory for this project to include a license of theirs. It can be found at licences/tensorflow.
