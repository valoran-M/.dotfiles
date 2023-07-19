BASEDIR=$(dirname "$0")
PKGSDIR="${BASEDIR}/pkgs"

all: install_package setup

install_package:
	./scripts/install_package.sh

setup:
	./scripts/setup.sh

