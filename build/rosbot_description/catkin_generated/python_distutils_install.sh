#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/frontier_expo/frontier_exploration/src/rosbot_description/src/rosbot_description"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/frontier_expo/frontier_exploration/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/frontier_expo/frontier_exploration/install/lib/python3/dist-packages:/frontier_expo/frontier_exploration/build/rosbot_description/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/frontier_expo/frontier_exploration/build/rosbot_description" \
    "/usr/bin/python3" \
    "/frontier_expo/frontier_exploration/src/rosbot_description/src/rosbot_description/setup.py" \
     \
    build --build-base "/frontier_expo/frontier_exploration/build/rosbot_description" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/frontier_expo/frontier_exploration/install" --install-scripts="/frontier_expo/frontier_exploration/install/bin"
