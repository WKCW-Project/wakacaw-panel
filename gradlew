#!/usr/bin/env sh

##############################################################################
##
##  Gradle start up script for UN*X
##
##############################################################################

# Attempt to locate java and set JAVA_HOME if not already set
if [ -z "$JAVA_HOME" ]; then
  JAVA_HOME=$(dirname $(dirname $(readlink -f $(which javac))))
fi

exec "$JAVA_HOME/bin/java"   -Xmx64m   -cp "gradle/wrapper/gradle-wrapper.jar"   org.gradle.wrapper.GradleWrapperMain "$@"
