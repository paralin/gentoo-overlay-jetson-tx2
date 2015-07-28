EAPI=5

PYTHON_COMPAT=( python2_7 )

inherit eutils python-single-r1

EGIT_REPO_URI="git://github.com/cliffordwolf/icestorm.git"
inherit git-2
SRC_URI=""
KEYWORDS=""

SLOT="0"
IUSE=""

RDEPEND="${PYTHON_DEPS} dev-embedded/libftdi"
DEPEND="$RDEPEND"

src_install() {
	dodir /usr/bin
	emake DESTDIR="${D}/usr" install
}
