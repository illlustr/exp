@echo off
set engine=D:\_Development\godot\_SOURCE\Godot_v3.4.3-stable_win64.exe
set project=D:\_Development\godot\HeroesInOurHearth
set export=%engine% --no-window --path %project% --export
echo -----------------------------------------------------------------------------
echo -----------------------------------------------------------------------------
echo + -------------------------------------------------------------L3DotPCKExport
echo + Current Engine = %engine%
echo + Current Project Path = %project%
echo -----------------------------------------------------------------------------
echo -----------------------------------------------------------------------------
echo + _________________________________________________________Removing Old Files
forfiles /S /M *.lll /C "powershell /c Remove-Item @file"
forfiles /S /M *.zip /C "powershell /c Remove-Item @file"
forfiles /S /M *.pck /C "powershell /c Remove-Item @file"
echo -----------------------------------------------------------------------------
echo -----------------------------------------------------------------------------
%export%-pack crxxtxrxs_xnxmy
%export%-pack crxxtxrxs_plxyxblx
%export%-pack xnvxrxntmxnt
%export%-pack xnvxrxntmxnt_lxvxldxsxgn
%export%-pack xnvxrxntmxnt_lxvxls
%export%-pack xxpxrt
%export%-pack xntxrxctxxns
%export%-pack xntxrxctxxns_pxsxvx
%export%-pack xntxrxctxxns_prxmp
%export%-pack xntxrxctxxns_txlxs
%export%-pack xnvxntxry
%export%-pack xtxms_wxxpxn
%export%-pack lll
%export%-pack lll_dxsxrxtxxls
%export%-pack lll_rdxc
%export%-pack sxttxngs
%export%-pack sxttxngs_pxstprxcxssxng
%export%-pack sxttxngs_qxxcksxttxngs
%export%-pack systxm
%export%-pack systxm_clxss
%export%-pack systxm_cxllxsxxn
%export%-pack systxm_dxtx
%export%-pack systxm_xntxrfxcxs
%export%-pack systxm_xbjxcts
%export%-pack xx
%export%-pack xx_bxttxn
%export%-pack xx_hxd
%export%-pack xx_mxxnmxnx
%export%-pack xx_pxpxp
%export%-pack xx_sxttxngs
%export%-pack xx_txxchscrxxn
%export%-pack crxxtxrxs_xnxmy_bxss
%export%-pack crxxtxrxs_xnxmy_spxwnxr
%export%-pack crxxtxrxs_xnxmy_thxxsxndsxyxs
%export%-pack crxxtxrxs_plxyxblx_xlphy
%export%-pack crxxtxrxs_plxyxblx_dxfxxlt
%export%-pack crxxtxrxs_plxyxblx_pgtwxxn
%export%-pack crxxtxrxs_plxyxblx_txmplxtx
%export%-pack xnvxrxntmxnt_lxvxldxsxgn_txlxs
%export%-pack lll_dxsxrxtxxls_rxpxrt
%export%-pack lll_dxsxrxtxxls_systxmcxll
%export%-pack lll_dxsxrxtxxls_xscrxpt
%export%-pack systxm_clxss_bxttxnsfx
%export%-pack systxm_clxss_wxndxw
%export%-pack xx_hxd_cv
%export%-pack xx_hxd_mxnxmxps
%export%-pack xx_sxttxngs_xxdxxcxntxr
echo -----------------------------------------------------------------------------
echo -----------------------------------------------------------------------------
echo + _____________________________Rename Extension & Get MD5 & Compressing Files
set f=forfiles /S /M
%f% *.pck /C "powershell /c ren @file @fname.lll"
%f% *.lll /C "powershell /c CertUtil -hashfile @file MD5" > MD5
%f% *.lll /C "powershell /c Compress-Archive @file @fname.zip -update"
echo -----------------------------------------------------------------------------
echo -----------------------------------------------------------------------------
echo ---------------------------------------------------------------------COMPLETE
