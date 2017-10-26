#!/bin/sh
# Copyright (C) 2010-2013 OpenWrt.org

. /lib/functions.sh
. /lib/functions/leds.sh

get_status_led() {
	board=$(board_name)

	case $board in
	3g150b|\
	3g300m|\
	w150m)
		status_led="$board:blue:ap"
		;;
	3g-6200n|\
	ar670w|\
	ar725w|\
	br-6475nd|\
	c50|\
	dch-m225|\
	dir-860l-b1|\
	e1700|\
	ex2700|\
	ex3700|\
	fonera20n|\
	hg255d|\
	kn|\
	kn_rc|\
	kn_rf|\
	kng_rc|\
	mzk-750dhp|\
	mzk-dp150n|\
	mzk-w300nh2|\
	nbg-419n|\
	nbg-419n2|\
	pwh2004|\
	r6220|\
	tl-wr840n-v4|\
	tl-wr841n-v13|\
	vr500|\
	wcr-1166ds|\
	whr-300hp2|\
	wn3000rpv3|\
	wnce2001|\
	wndr3700v5|\
	wsr-1166|\
	wsr-600|\
	x5|\
	x8|\
	xdxrn502j)
		status_led="$board:green:power"
		;;
	3g-6200nl)
		status_led="$board:green:internet"
		;;
	a5-v11|\
	cs-qr10|\
	d105|\
	dcs-930l-b1|\
	hlk-rm04|\
	jhr-n825r|\
	mpr-a1|\
	mpr-a2|\
	mzk-ex750np|\
	whr-g300n|\
	wlr-6000|\
	zbt-we2026)
		status_led="$board:red:power"
		;;
	ai-br100|\
	ht-tm02)
		status_led="$board:blue:wlan"
		;;
	all0239-3g|\
	dcs-930|\
	dir-300-b1|\
	dir-300-b7|\
	dir-320-b1|\
	dir-600-b1|\
	dir-610-a1|\
	dir-615-d|\
	dir-615-h1|\
	dir-620-a1|\
	dir-620-d1|\
	dwr-512-b|\
	gb-pc1|\
	hpm|\
	hw550-3g|\
	mac1200rv2|\
	miniembwifi|\
	mofi3500-3gn|\
	rut5xx|\
	v11st-fe|\
	vocore2lite|\
	wmr-300|\
	zbt-wg2626)
		status_led="$board:green:status"
		;;
	asl26555-8M|\
	asl26555-16M)
		status_led="asl26555:green:power"
		;;
	atp-52b|\
	ew1200|\
	ip2202)
		status_led="$board:green:run"
		;;
	awapn2403|\
	dir-645|\
	mzk-ex300np|\
	rt-n10-plus|\
	sk-wb8|\
	tew-638apb-v2|\
	tew-691gr|\
	tew-692gr|\
	ur-326n4g|\
	ur-336un|\
	wf-2881|\
	wrh-300cr)
		status_led="$board:green:wps"
		;;
	c108)
		status_led="$board:green:lan"
		;;
	cf-wr800n|\
	psg1208)
		status_led="$board:white:wps"
		;;
	mir3g|\
	psg1218a|\
	psg1218b)
		status_led="$board:yellow:status"
		;;
	cy-swr1100|\
	w502u)
		status_led="$board:blue:wps"
		;;
	c20|\
	d240|\
	dap-1350|\
	na930|\
	pbr-m1|\
	re350-v1|\
	rt-ac51u|\
	rt-n13u|\
	rt-n14u|\
	rt-n15|\
	rt-n56u|\
	wl-330n|\
	wl-330n3g|\
	wli-tx4-ag300n|\
	y1|\
	y1s|\
	youku-yk1)
		status_led="$board:blue:power"
		;;
	db-wrt01|\
	esr-9753|\
	pbr-d1)
		status_led="$board:orange:power"
		;;
	f5d8235-v1)
		status_led="$board:blue:wired"
		;;
	f5d8235-v2)
		status_led="$board:blue:router"
		;;
	f7c027|\
	timecloud)
		status_led="$board:orange:status"
		;;
	hc5*61|\
	hc5661a|\
	jhr-n805r|\
	jhr-n926r|\
	mlw221|\
	mlwg2)
		status_led="$board:blue:system"
		;;
	hc5962)
		status_led="$board:white:status"
		;;
	k2p|\
	m3|\
	miwifi-nano|\
	newifi-d1)
		status_led="$board:blue:status"
		;;
	linkits7688|\
	linkits7688d)
		[ "$1" = "upgrade" ] && status_led="mediatek:orange:wifi"
		;;
	m2m)
		status_led="$board:blue:wifi"
		;;
	gl-mt300n-v2)
		status_led="$board:red:wlan"
		;;
	m4-4M|\
	m4-8M)
		status_led="m4:blue:status"
		;;
	miwifi-mini|\
	zte-q7)
		status_led="$board:red:status"
		;;
	mr-102n)
		status_led="$board:amber:status"
		;;
	mr200)
		status_led="$board:white:power"
		;;
	nw718)
		status_led="$board:amber:cpu"
		;;
	omega2|\
	omega2p)
		status_led="$board:amber:system"
		;;
	oy-0001|\
	sl-r7205)
		status_led="$board:green:wifi"
		;;
	psr-680w)
		status_led="$board:red:wan"
		;;
	px-4885-4M|\
	px-4885-8M)
		status_led="px-4885:orange:wifi"
		;;
	re6500|\
	whr-1166d|\
	whr-600d|\
	widora-neo)
		status_led="$board:orange:wifi"
		;;
	rb750gr3)
		status_led="$board:blue:pwr"
		;;
	sap-g3200u3)
		status_led="$board:green:usb"
		;;
	u25awf-h1)
		status_led="u25awf:red:wifi"
		;;
	v22rw-2x2)
		status_led="$board:green:security"
		;;
	vocore-8M|\
	vocore-16M)
		status_led="vocore:green:status"
		;;
	vocore2)
		status_led="$board:fuchsia:status"
		;;
	w306r-v20|\
	witi|\
	zbt-wr8305rt)
		status_led="$board:green:sys"
		;;
	wcr-150gn|\
	wl-351)
		status_led="$board:amber:power"
		;;
	wzr-agl300nh)
		status_led="$board:green:router"
		;;
	wizfi630a)
		status_led="$board::run"
		;;
	wr512-3gn-4M|\
	wr512-3gn-8M)
		status_led="wr512-3gn:green:wps"
		;;
	wrtnode|\
	wrtnode2r|\
	wrtnode2p)
		status_led="wrtnode:blue:indicator"
		;;
	wt3020-4M|\
	wt3020-8M)
		status_led="wt3020:blue:power"
		;;
	zbt-cpe102)
		status_led="$board:green:4g-0"
		;;
	zbt-we826-16M|\
	zbt-we826-32M)
		status_led="zbt-we826:green:power"
		;;
	zbt-wg3526-16M|\
	zbt-wg3526-32M)
		status_led="zbt-wg3526:green:status"
		;;
	esac
}

set_state() {
	get_status_led $1

	case "$1" in
	preinit)
		status_led_blink_preinit
		;;
	failsafe)
		status_led_blink_failsafe
		;;
	upgrade | \
	preinit_regular)
		status_led_blink_preinit_regular
		;;
	done)
		status_led_on
		;;
	esac
}
