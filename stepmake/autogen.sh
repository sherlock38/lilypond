#!/bin/sh
# Run this to generate configure and initial GNUmakefiles

srcdir=`dirname $0`

case $1 in
    --noconf*) NOCONFIGURE=true;;
esac

if [ ! -f aclocal.m4 -o stepmake/aclocal.m4 -nt aclocal.m4 ]; then
    echo "stepmake/aclocal.m4 is newer.  Copying file." 
    cp -f stepmake/aclocal.m4 aclocal.m4
fi

if [ ! -f autogen.sh -o stepmake/autogen.sh -nt autogen.sh ]; then
    echo "stepmake/autogen.sh is newer.  Copying file." 
    cp -f stepmake/autogen.sh autogen.sh
    exec ./autogen.sh "$@"
fi

for i in $srcdir/configure.in #`find $srcdir -name configure.in -print`
do 
  dir=`dirname $i`
  echo processing $dir
  (
      cd $dir
      echo "Running autoconf ..."
      autoconf || exit 1
  )
  # Autoconf automatically checks its own minimum required
  # version, and it aborts when the check fails.
  test "$?" -eq 1 && exit 1
done

#conf_flags="--enable-maintainer-mode --enable-compile-warnings" #--enable-iso-c
if test -n "$NOCONFIGURE"; then
    echo Skipping configure process.
    exit 0
fi

if test -z "$*"; then
    cat <<EOF
    Warning: about to run \`configure' without arguments.
    arguments on the \`$0' command line
    will be passed to \`configure'.

    Invoke with --noconfigure to skip configure step.
EOF
fi

echo Running $srcdir/configure $conf_flags "$@" ...
$srcdir/configure $conf_flags "$@"
