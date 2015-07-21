.class public interface abstract Lcom/lge/uicc/LGUiccConstants;
.super Ljava/lang/Object;
.source "LGUiccConstants.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field public static final ACTION_BIP_EVENT:Ljava/lang/String; = "com.lge.intent.action.BIP_EVENT"

.field public static final ACTION_CTC_SIM_CHANGED_INFO:Ljava/lang/String; = "com.lge.intent.action.CTC_SIM_CHANGED_INFO"

.field public static final ACTION_LGU_ROAMING_SET_FINISHED:Ljava/lang/String; = "com.lge.intent.action.LGU_ROAMING_SET_FINISHED"

.field public static final ACTION_OTA_CSIM_REFRESH_EVENT:Ljava/lang/String; = "com.lge.intent.action.OTA_CSIM_REFRESH_EVENT"

.field public static final ACTION_OTA_USIM_REFRESH_FILE_UPDATED:Ljava/lang/String; = "com.lge.intent.action.OTA_USIM_REFRESH_FILE_UPDATED"

.field public static final ACTION_OTA_USIM_REFRESH_FILE_UPDATED_DCM_LOCK:Ljava/lang/String; = "com.lge.intent.action.OTA_USIM_REFRESH_FILE_UPDATED_DCM_LOCK"

.field public static final ACTION_OTA_USIM_REFRESH_INIT:Ljava/lang/String; = "com.lge.intent.action.OTA_USIM_REFRESH_INIT"

.field public static final ACTION_OTA_USIM_REFRESH_TO_RESET:Ljava/lang/String; = "com.lge.intent.action.OTA_USIM_REFRESH_TO_RESET"

.field public static final ACTION_OTA_USIM_WRITE_FAIL:Ljava/lang/String; = "com.lge.intent.action.OTA_USIM_WRITE_FAIL"

.field public static final ACTION_PBM_INIT_COMPLETE:Ljava/lang/String; = "com.lge.intent.action.PBM_INIT_COMPLETE"

.field public static final ACTION_PBM_INIT_COMPLETE_SLOT2:Ljava/lang/String; = "com.lge.intent.action.PBM_INIT_COMPLETE_SLOT2"

.field public static final ACTION_PBM_INIT_COMPLETE_SLOT3:Ljava/lang/String; = "com.lge.intent.action.PBM_INIT_COMPLETE_SLOT3"

.field public static final ACTION_SIM_CHANGED_INFO:Ljava/lang/String; = "com.lge.intent.action.SIM_CHANGED_INFO"

.field public static final ACTION_SIM_DEACTIVATION:Ljava/lang/String; = "com.lge.intent.action.SIM_DEACTIVATION"

.field public static final ACTION_SIM_DEACTIVATION_SLOT2:Ljava/lang/String; = "com.lge.intent.action.SIM_DEACTIVATION_SLOT2"

.field public static final ACTION_SIM_DEACTIVATION_SLOT3:Ljava/lang/String; = "com.lge.intent.action.SIM_DEACTIVATION_SLOT3"

.field public static final ACTION_SIM_UART_ERROR:Ljava/lang/String; = "com.lge.intent.action.SIM_UART_ERROR"

.field public static final DF_CINGULAR:Ljava/lang/String; = "7F66"

.field public static final DF_DCM_DCM:Ljava/lang/String; = "5F1F"

.field public static final DF_ENS:Ljava/lang/String; = "5F30"

.field public static final DF_HNB:Ljava/lang/String; = "5F50"

.field public static final DF_ISIM:Ljava/lang/String; = "5F3F"

.field public static final DF_SKT_CDMA:Ljava/lang/String; = "5F3D"

.field public static final EF_ACMMAX:I = 0x6f37

.field public static final EF_ACSGL:I = 0x4f81

.field public static final EF_ACT_HPLMN:I = 0x4f34

.field public static final EF_CSGT:I = 0x4f82

.field public static final EF_CSIM_ESN_MEID_ME:I = 0x6f38

.field public static final EF_CSIM_RUIMID:I = 0x6f31

.field public static final EF_DCM_ACTIVATE:I = 0x4f1e

.field public static final EF_DCM_CERT:I = 0x9f01

.field public static final EF_DCM_CERTSTATE:I = 0x4f1f

.field public static final EF_DCM_DCM1:I = 0x6f1b

.field public static final EF_DCM_IMODER:I = 0x4f1c

.field public static final EF_DCM_IMODERPRO:I = 0x4f1b

.field public static final EF_DCM_LOCK:I = 0x2ff0

.field public static final EF_DCM_PUBKEY:I = 0x9f02

.field public static final EF_DCM_ROOT:I = 0x9f03

.field public static final EF_DCM_SERIAL:I = 0x2fe8

.field public static final EF_DCM_SERVICE:I = 0x4f20

.field public static final EF_DCM_SUBROOT:I = 0x9f04

.field public static final EF_DCM_UICC:I = 0x2fe7

.field public static final EF_EST:I = 0x6f56

.field public static final EF_FPLMN:I = 0x6f7b

.field public static final EF_GBABP:I = 0x6fd5

.field public static final EF_HNBN:I = 0x4f83

.field public static final EF_HPLMNWACT:I = 0x6f62

.field public static final EF_IMSI:I = 0x6f07

.field public static final EF_IMSI_P:I = 0x2f24

.field public static final EF_KTF_ACCOLC:I = 0x4f2c

.field public static final EF_KTF_CARDTYPE:I = 0x2f33

.field public static final EF_KTF_DOMAIN:I = 0x4f03

.field public static final EF_KTF_IMPI:I = 0x4f02

.field public static final EF_KTF_IMPU:I = 0x4f04

.field public static final EF_KTF_IST:I = 0x4f07

.field public static final EF_KTF_LOCK_IMEI:I = 0x2f37

.field public static final EF_KTF_LOCK_ONOFF:I = 0x2f32

.field public static final EF_KTF_NZONE:I = 0x2f39

.field public static final EF_KTF_PCSCF:I = 0x4f09

.field public static final EF_KTF_TONUM:I = 0x2f38

.field public static final EF_LGU_MASTER_IMSI:I = 0x2f40

.field public static final EF_LGU_ROAMING:I = 0x2f50

.field public static final EF_LGU_SPON_IMSI1:I = 0x2f41

.field public static final EF_LGU_SPON_IMSI2:I = 0x2f42

.field public static final EF_LGU_SPON_IMSI3:I = 0x2f43

.field public static final EF_LGU_VER:I = 0x2f30

.field public static final EF_LOCI:I = 0x6f7e

.field public static final EF_NOFILE:I = 0x0

.field public static final EF_OCSGL:I = 0x4f84

.field public static final EF_OCSGT:I = 0x4f85

.field public static final EF_OHNBN:I = 0x4f86

.field public static final EF_OPLMNWACT:I = 0x6f61

.field public static final EF_PLMNWACT:I = 0x6f60

.field public static final EF_PSI:I = 0x6fe5

.field public static final EF_PSLOCI:I = 0x6f73

.field public static final EF_SKT_IMSI_M:I = 0x4f22

.field public static final EF_SKT_IRM:I = 0x4f55

.field public static final EF_SMSP:I = 0x6f42

.field public static final EF_SMSS:I = 0x6f43

.field public static final EF_UST:I = 0x6f38

.field public static final INTENT_VALUE_ICC_HPLMN_SIMTYPE:Ljava/lang/String; = "HPLMN_SIMTYPE"

.field public static final INTENT_VALUE_ICC_IMSI_M:Ljava/lang/String; = "IMSI_M"

.field public static final INTENT_VALUE_ICC_REMOVED:Ljava/lang/String; = "SIM_REMOVED"

.field public static final PROP_UICC_OPERATOR:Ljava/lang/String; = "ril.card_operator"

.field public static final PROP_UICC_PROVISIONED:Ljava/lang/String; = "ril.card_provisioned"
