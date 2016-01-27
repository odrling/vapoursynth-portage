# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python3_{4,5} )

inherit python-utils-r1 python-single-r1 git-r3

DESCRIPTION="mawen1250's VapourSynth functions"
HOMEPAGE="http://forum.doom9.org/showthread.php?p=1737309"
EGIT_REPO_URI="https://github.com/HomeOfVapourSynthEvolution/mvsfunc.git"
EGIT_COMMIT="6f93643159c6cc683e09547be9985274e13f2a38"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND+="
	media-libs/vapoursynth[${PYTHON_USEDEP}]
	media-plugins/vapoursynth-bm3d
	media-plugins/vapoursynth-fmtconv
"
DEPEND="${RDEPEND}
"

S="${WORKDIR}/${P}"

src_install(){
	insinto "$(python_get_sitedir)"
	doins mvsfunc.py
}