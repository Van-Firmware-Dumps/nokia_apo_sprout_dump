#!/bin/sh
am broadcast -a android.intent.action.FACTORY_RESET android -f 0x10000000 -e reason MasterClearConfirm -ez android.intent.extra.WIPE_EXTERNAL_STORAGE true -ez com.android.internal.intent.extra.WIPE_ESIMS true
