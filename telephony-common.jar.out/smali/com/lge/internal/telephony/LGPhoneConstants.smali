.class public Lcom/lge/internal/telephony/LGPhoneConstants;
.super Ljava/lang/Object;
.source "LGPhoneConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/internal/telephony/LGPhoneConstants$LteStateInfo;,
        Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;,
        Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;,
        Lcom/lge/internal/telephony/LGPhoneConstants$VolteAndEPDNSupport;
    }
.end annotation


# static fields
.field public static final ACTION_LGU_LTE_ROAMING_IS_AVAILABLE:Ljava/lang/String; = "lge.intent.action.LGU_LTE_ROAMING_IS_AVAILABLE"

.field public static final ACTION_VOLTE_EMERGENCY_CALL_FAIL_CAUSE:Ljava/lang/String; = "lge.intent.action.DATA_EMERGENCY_FAILED"

.field public static final ACTION_VOLTE_EPS_NETWORK_SUPPORT:Ljava/lang/String; = "lge.intent.action.LTE_NETWORK_SUPPORTED_INFO"

.field public static final ACTION_VOLTE_LTE_STATE_INFO:Ljava/lang/String; = "lge.intent.action.LTE_STATE_INFO"

.field public static final ACTION_VOLTE_NETWORK_SIB_INFO:Ljava/lang/String; = "lge.intent.action.LTE_NETWORK_SIB_INFO"

.field public static final ALS_LINE_NOT_ALLOWED:I = 0x2

.field public static final APN_TYPE_ADMIN:Ljava/lang/String; = "vzwadmin"

.field public static final APN_TYPE_VZW800:Ljava/lang/String; = "vzw800"

.field public static final APN_TYPE_VZWAPP:Ljava/lang/String; = "vzwapp"

.field public static final BASE:I = 0x42000

.field public static final EMC_FAIL_CAUSE:Ljava/lang/String; = "EMC_FailCause"

.field public static final EMER_ATTACH_SUPPORT:Ljava/lang/String; = "Emer_Attach_Support"

.field public static final EMER_CAMPED_CID:Ljava/lang/String; = "Emer_Camped_CID"

.field public static final EMER_CAMPED_TAC:Ljava/lang/String; = "Emer_Camped_TAC"

.field public static final EPDN_BARRING:Ljava/lang/String; = "EPDN_Barring"

.field public static final EPDN_SUPPORT:Ljava/lang/String; = "EPDN_Support"

.field public static final LTE_DETACH_INFO:Ljava/lang/String; = "LteDetachCause"

.field public static final LTE_STATE_INFO:Ljava/lang/String; = "LteStateInfo"

.field public static final MESSAGE_SET_PREFERRED_NETWORK_TYPE:I = 0x42029

.field public static final SLTEROAMINGISAVAILABLE:Ljava/lang/String; = "Lte_Roaming_Is_Available"

.field public static final VOPS_SUPPORT:Ljava/lang/String; = "VoPS_Support"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    return-void
.end method
