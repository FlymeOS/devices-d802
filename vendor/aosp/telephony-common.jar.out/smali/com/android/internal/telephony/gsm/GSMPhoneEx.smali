.class public Lcom/android/internal/telephony/gsm/GSMPhoneEx;
.super Lcom/android/internal/telephony/gsm/GSMPhone;
.source "GSMPhoneEx.java"


# static fields
.field private static final CALL_FORWARD_NOTIFICATION:I = 0x6

.field private static final DEFAULT_ECM_EXIT_TIMER_VALUE:I = 0x493e0

.field private static final INDIA_NT_CODE:Ljava/lang/String; = "\"1\",\"FFF,FFF,FFFFFFFF,FFFFFFFF,58\""

.field private static final LOCAL_DEBUG:Z = true

.field protected static final LOG_TAG:Ljava/lang/String; = "GSMPhoneEx"

.field private static final NOTIFICATION_ID_OFFSET:I = 0x32

.field public static final mIndiaGWLArray:[Ljava/lang/String;

.field private static sIsLte:Z

.field private static smIsCheckedLTEReady:Z

.field private static smPhone:Lcom/android/internal/telephony/Phone;


# instance fields
.field gfUtils:Lcom/android/internal/telephony/gfit/GfitUtils;

.field private mEcmExitRespRegistrant:Landroid/os/Registrant;

.field private final mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

.field protected mEsn:Ljava/lang/String;

.field private mExitEcmRunnable:Ljava/lang/Runnable;

.field protected mIsPhoneInEcmState:Z

.field protected mMeid:Ljava/lang/String;

.field private mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field protected mWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected retryNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 139
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->smPhone:Lcom/android/internal/telephony/Phone;

    .line 140
    sput-boolean v2, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->smIsCheckedLTEReady:Z

    .line 141
    sput-boolean v3, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->sIsLte:Z

    .line 717
    const/16 v0, 0x2d

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "40402"

    aput-object v1, v0, v2

    const-string v1, "40403"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "40410"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "40416"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "40431"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "40440"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "40445"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "40449"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "40470"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "40490"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "40492"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "40493"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "40494"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "40495"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "40496"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "40497"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "40498"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "40551"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "40552"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "40553"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "40554"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "40555"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "40556"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "405840"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "405854"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "405855"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "405856"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "405857"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "405858"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "405859"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "405860"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "405861"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "405862"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "405863"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "405864"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "405865"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "405866"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "405867"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "405868"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "405869"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "405870"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "405871"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "405872"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "405873"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "405874"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mIndiaGWLArray:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "phoneId"    # I

    .prologue
    .line 212
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZI)V

    .line 213
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "unitTestMode"    # Z

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x1a

    const/4 v5, 0x0

    .line 156
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V

    .line 110
    iput v5, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->retryNum:I

    .line 121
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    .line 130
    new-instance v3, Lcom/android/internal/telephony/gsm/GSMPhoneEx$1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx$1;-><init>(Lcom/android/internal/telephony/gsm/GSMPhoneEx;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mExitEcmRunnable:Ljava/lang/Runnable;

    .line 440
    new-instance v3, Lcom/android/internal/telephony/gsm/GSMPhoneEx$2;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx$2;-><init>(Lcom/android/internal/telephony/gsm/GSMPhoneEx;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 159
    const-string v3, "vzw_gfit"

    invoke-static {p1, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    new-instance v3, Lcom/android/internal/telephony/gfit/GfitUtils;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {v3, v4, p0}, Lcom/android/internal/telephony/gfit/GfitUtils;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;Lcom/android/internal/telephony/PhoneBaseEx;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->gfUtils:Lcom/android/internal/telephony/gfit/GfitUtils;

    .line 165
    :cond_0
    const-string v3, "support_emergency_callback_mode_for_gsm"

    invoke-static {p1, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 166
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x19

    invoke-interface {v3, p0, v4, v7}, Lcom/android/internal/telephony/CommandsInterface;->setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 167
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 170
    :cond_1
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 172
    .local v2, "pm":Landroid/os/PowerManager;
    const/4 v3, 0x1

    const-string v4, "GSMPhoneEx"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 174
    const-string v3, "ril.cdma.inecmmode"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "inEcm":Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mIsPhoneInEcmState:Z

    .line 177
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mIsPhoneInEcmState:Z

    if-eqz v3, :cond_2

    .line 179
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->initForSupportedEcmOnGsm(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 182
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    .line 188
    :cond_2
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mIsPhoneInEcmExitDelayState:Z

    .line 192
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->processRegistering(Landroid/content/Context;)V

    .line 196
    const-string v3, "CTC"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 197
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 198
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "org.codeaurora.intent.action.ACTION_SUBSCRIPTION_SET_UICC_RESULT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 204
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_3
    const-string v3, "SPR"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "data_only_device"

    invoke-static {p1, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 205
    const-string v3, "ro.cdma.home.operator.numeric"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 208
    :cond_4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZI)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "unitTestMode"    # Z
    .param p5, "phoneId"    # I

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x1a

    const/4 v5, 0x0

    .line 218
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZI)V

    .line 110
    iput v5, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->retryNum:I

    .line 121
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    .line 130
    new-instance v3, Lcom/android/internal/telephony/gsm/GSMPhoneEx$1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx$1;-><init>(Lcom/android/internal/telephony/gsm/GSMPhoneEx;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mExitEcmRunnable:Ljava/lang/Runnable;

    .line 440
    new-instance v3, Lcom/android/internal/telephony/gsm/GSMPhoneEx$2;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx$2;-><init>(Lcom/android/internal/telephony/gsm/GSMPhoneEx;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 221
    const-string v3, "vzw_gfit"

    invoke-static {p1, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    new-instance v3, Lcom/android/internal/telephony/gfit/GfitUtils;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {v3, v4, p0}, Lcom/android/internal/telephony/gfit/GfitUtils;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;Lcom/android/internal/telephony/PhoneBaseEx;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->gfUtils:Lcom/android/internal/telephony/gfit/GfitUtils;

    .line 227
    :cond_0
    const-string v3, "support_emergency_callback_mode_for_gsm"

    invoke-static {p1, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 228
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x19

    invoke-interface {v3, p0, v4, v7}, Lcom/android/internal/telephony/CommandsInterface;->setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 229
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 232
    :cond_1
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 234
    .local v2, "pm":Landroid/os/PowerManager;
    const/4 v3, 0x1

    const-string v4, "GSMPhoneEx"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 236
    const-string v3, "ril.cdma.inecmmode"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "inEcm":Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mIsPhoneInEcmState:Z

    .line 239
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mIsPhoneInEcmState:Z

    if-eqz v3, :cond_2

    .line 240
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->initForSupportedEcmOnGsm(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 242
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    .line 248
    :cond_2
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mIsPhoneInEcmExitDelayState:Z

    .line 252
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->processRegistering(Landroid/content/Context;)V

    .line 255
    const-string v3, "CTC"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 256
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 257
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "org.codeaurora.intent.action.ACTION_SUBSCRIPTION_SET_UICC_RESULT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 263
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_3
    const-string v3, "SPR"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "data_only_device"

    invoke-static {p1, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 264
    const-string v3, "ro.cdma.home.operator.numeric"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 267
    :cond_4
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 93
    sget-boolean v0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->smIsCheckedLTEReady:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/GSMPhoneEx;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GSMPhoneEx;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 93
    sget-boolean v0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->isUSimSmsDeleted:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 93
    sput-boolean p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->isUSimSmsDeleted:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/GSMPhoneEx;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GSMPhoneEx;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->initSimSMSUpdateFlag(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/GSMPhoneEx;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GSMPhoneEx;
    .param p1, "x1"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->subInfoChanged(I)V

    return-void
.end method

.method private getPreferredNetworkMode()I
    .locals 4

    .prologue
    .line 755
    const/4 v0, 0x0

    .line 757
    .local v0, "nwMode":I
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    sget v3, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 770
    return v0
.end method

.method private handleEnterEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 835
    const-string v2, "GSMPhoneEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleEnterEmergencyCallbackMode,mIsPhoneInEcmState= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mIsPhoneInEcmState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mIsPhoneInEcmState:Z

    if-nez v2, :cond_0

    .line 839
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mIsPhoneInEcmState:Z

    .line 841
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->sendEmergencyCallbackModeChange()V

    .line 842
    const-string v2, "ril.cdma.inecmmode"

    const-string v3, "true"

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    const-string v2, "ro.cdma.ecmexittimer"

    const-wide/32 v4, 0x493e0

    invoke-static {v2, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 848
    .local v0, "delayInMillis":J
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 850
    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->setCurrentTimeForEcm(J)V

    .line 853
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 855
    .end local v0    # "delayInMillis":J
    :cond_0
    return-void
.end method

.method private handleExitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 867
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 868
    .local v0, "ar":Landroid/os/AsyncResult;
    const-string v1, "GSMPhoneEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleExitEmergencyCallbackMode,ar.exception , mIsPhoneInEcmState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mIsPhoneInEcmState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 873
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    if-eqz v1, :cond_0

    .line 874
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    invoke-virtual {v1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 877
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    .line 878
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mIsPhoneInEcmState:Z

    if-eqz v1, :cond_1

    .line 879
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mIsPhoneInEcmState:Z

    .line 880
    const-string v1, "ril.cdma.inecmmode"

    const-string v2, "false"

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->handleExitEmergencyCallbackModeEx()V

    .line 888
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 889
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 894
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->sendEmergencyCallbackModeChange()V

    .line 896
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setInternalDataEnabled(Z)Z

    .line 898
    :cond_3
    return-void
.end method

.method private initSimSMSUpdateFlag(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1740
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/SIMRecords;

    .line 1741
    .local v0, "r":Lcom/android/internal/telephony/uicc/SIMRecords;
    if-eqz v0, :cond_0

    .line 1742
    const-string v1, "com.lge.intent.action.SIM_DEACTIVATION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->getPhoneId()I

    move-result v1

    if-nez v1, :cond_1

    .line 1744
    const-string v1, "deactivation_status"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1745
    const-string v1, "GSMPhoneEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSimSMSUpdateFlag() received ACTION_SIM_DEACTIVATION, phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->initSimSmsUpdate(I)V

    .line 1762
    :cond_0
    :goto_0
    return-void

    .line 1748
    :cond_1
    const-string v1, "com.lge.intent.action.SIM_DEACTIVATION_SLOT2"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->getPhoneId()I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 1750
    const-string v1, "deactivation_status"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1751
    const-string v1, "GSMPhoneEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSimSMSUpdateFlag() received ACTION_SIM_DEACTIVATION_SLOT2, phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->initSimSmsUpdate(I)V

    goto :goto_0

    .line 1754
    :cond_2
    const-string v1, "com.lge.intent.action.SIM_DEACTIVATION_SLOT3"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->getPhoneId()I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 1756
    const-string v1, "deactivation_status"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1757
    const-string v1, "GSMPhoneEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSimSMSUpdateFlag() received ACTION_SIM_DEACTIVATION_SLOT3, phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->initSimSmsUpdate(I)V

    goto :goto_0
.end method

.method private isCbEnable(I)Z
    .locals 1
    .param p1, "action"    # I

    .prologue
    const/4 v0, 0x1

    .line 970
    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIndiaGWLMode()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 739
    sget-object v6, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->smPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    .line 740
    .local v4, "simImsi":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x5

    if-ge v6, v7, :cond_1

    .line 750
    :cond_0
    :goto_0
    return v5

    .line 744
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mIndiaGWLArray:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 745
    .local v3, "mccmnc":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 746
    const/4 v5, 0x1

    goto :goto_0

    .line 744
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isIndiaSim()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 725
    sget-object v2, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->smPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 727
    .local v0, "simImsi":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    .line 735
    :cond_0
    :goto_0
    return v1

    .line 731
    :cond_1
    const-string v2, "404"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "405"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 732
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isLteNetwork()Z
    .locals 1

    .prologue
    .line 524
    sget-boolean v0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->sIsLte:Z

    return v0
.end method

.method public static isLteSim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 31
    .param p0, "simMccMnc"    # Ljava/lang/String;
    .param p1, "simImsi"    # Ljava/lang/String;
    .param p2, "simSpn"    # Ljava/lang/String;
    .param p3, "simGid"    # Ljava/lang/String;

    .prologue
    .line 582
    const/4 v2, 0x0

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    .line 583
    .local v29, "simMcc":Ljava/lang/String;
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/4 v2, 0x0

    aput-object p0, v28, v2

    const/4 v2, 0x1

    aput-object p1, v28, v2

    const/4 v2, 0x2

    aput-object p2, v28, v2

    const/4 v2, 0x3

    aput-object p3, v28, v2

    .line 585
    .local v28, "simInfo":[Ljava/lang/String;
    const-string v2, "001"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "450"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "204"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "208"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "454"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ro.build.target_operator"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "H3G"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 587
    :cond_0
    const/4 v2, 0x1

    .line 708
    :goto_0
    return v2

    .line 590
    :cond_1
    const-string v2, "ro.build.target_operator"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GLOBAL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 591
    const/4 v2, 0x1

    goto :goto_0

    .line 594
    :cond_2
    const-string v2, "persist.sys.ntcode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 595
    .local v20, "indiaNTCode":Ljava/lang/String;
    const-string v2, "LteReadySetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GSMPhoneEx] isLteSim() indiaNTCode := "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 597
    const-string v2, "ro.product.model"

    const-string v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "LG-H955"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "\"1\",\"FFF,FFF,FFFFFFFF,FFFFFFFF,58\""

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 598
    const/4 v2, 0x0

    goto :goto_0

    .line 607
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->isIndiaSim()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 608
    invoke-static {}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->isIndiaGWLMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 609
    const/4 v2, 0x1

    goto :goto_0

    .line 611
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 616
    :cond_5
    sget-boolean v2, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->smIsCheckedLTEReady:Z

    if-eqz v2, :cond_6

    .line 617
    const-string v2, "LteReadySetting"

    const-string v3, "[GSMPhoneEx] isLteSim() has already done. Just return sIsLte."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    sget-boolean v2, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->sIsLte:Z

    goto :goto_0

    .line 621
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->smPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 622
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const-string v2, "content://com.lge.lteconfig.LteReadyProvider"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "mccmnc=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 624
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_15

    .line 625
    const-string v2, "_id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 626
    .local v18, "id_index":I
    const-string v2, "mccmnc"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 627
    .local v26, "mccmnc_index":I
    const-string v2, "imsi_str"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 628
    .local v19, "imsi_index":I
    const-string v2, "spn_str"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 629
    .local v30, "spn_index":I
    const-string v2, "gid_str"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 630
    .local v15, "gid_index":I
    const-string v2, "lte_value"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 631
    .local v24, "lte_index":I
    const/16 v25, 0x0

    .line 632
    .local v25, "maxCnt":I
    const/16 v23, -0x1

    .line 634
    .local v23, "lteVal":I
    :cond_7
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 635
    move/from16 v0, v18

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 636
    .local v17, "id":I
    move/from16 v0, v26

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 637
    .local v12, "dbMccmnc":Ljava/lang/String;
    move/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 638
    .local v9, "dbImsi":Ljava/lang/String;
    move/from16 v0, v30

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 639
    .local v13, "dbSpn":Ljava/lang/String;
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 640
    .local v8, "dbGid":Ljava/lang/String;
    move/from16 v0, v24

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 641
    .local v11, "dbLte":I
    const-string v2, "%d, MCCMNC : %s, ISMI : %s , SPN : %s , GID : %s , LTE : %d"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v12, v3, v4

    const/4 v4, 0x2

    aput-object v9, v3, v4

    const/4 v4, 0x3

    aput-object v13, v3, v4

    const/4 v4, 0x4

    aput-object v8, v3, v4

    const/4 v4, 0x5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    .line 643
    .local v27, "record":Ljava/lang/String;
    const-string v2, "LteReadySetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GSMPhoneEx] Record : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const/4 v14, 0x0

    .line 646
    .local v14, "equalColCnt":I
    const/16 v21, 0x0

    .line 648
    .local v21, "isWrong":Z
    const/4 v2, 0x4

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v12, v10, v2

    const/4 v2, 0x1

    aput-object v9, v10, v2

    const/4 v2, 0x2

    aput-object v13, v10, v2

    const/4 v2, 0x3

    aput-object v8, v10, v2

    .line 650
    .local v10, "dbInfo":[Ljava/lang/String;
    const-string v2, "LteReadySetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GSMPhoneEx] [simInfo] simMccMnc : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " simImsi : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " simSpn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " simGid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const-string v2, "LteReadySetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GSMPhoneEx] [dbInfo] dbMccmnc : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dbImsi : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dbSpn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dbGid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    array-length v2, v10

    move/from16 v0, v16

    if-ge v0, v2, :cond_12

    .line 655
    aget-object v2, v10, v16

    if-eqz v2, :cond_8

    aget-object v2, v10, v16

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 656
    :cond_8
    const-string v2, "LteReadySetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GSMPhoneEx] dbInfo["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_9
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 658
    :cond_a
    aget-object v2, v28, v16

    if-eqz v2, :cond_b

    aget-object v2, v28, v16

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 659
    :cond_b
    const-string v2, "LteReadySetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GSMPhoneEx] simInfo["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    aget-object v2, v10, v16

    if-eqz v2, :cond_9

    aget-object v2, v10, v16

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 662
    const/16 v21, 0x1

    goto :goto_3

    .line 669
    :cond_c
    aget-object v2, v28, v16

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    aget-object v3, v10, v16

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_d

    .line 670
    const/16 v21, 0x1

    goto :goto_3

    .line 671
    :cond_d
    aget-object v2, v10, v16

    aget-object v3, v28, v16

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 672
    const/16 v22, 0x0

    .local v22, "j":I
    :goto_4
    aget-object v2, v10, v16

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_10

    .line 673
    aget-object v2, v10, v16

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5f

    if-ne v2, v3, :cond_f

    .line 672
    :cond_e
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 677
    :cond_f
    aget-object v2, v10, v16

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget-object v3, v28, v16

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_e

    .line 678
    const/16 v21, 0x1

    .line 683
    :cond_10
    if-nez v21, :cond_9

    .line 684
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 687
    .end local v22    # "j":I
    :cond_11
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 691
    :cond_12
    const-string v2, "LteReadySetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GSMPhoneEx] id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,isWrong : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,equalColCnt : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    if-nez v21, :cond_7

    .line 694
    const-string v2, "LteReadySetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GSMPhoneEx] Candidate Record : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    move/from16 v0, v25

    if-lt v14, v0, :cond_7

    .line 697
    move/from16 v25, v14

    .line 698
    move/from16 v23, v11

    goto/16 :goto_1

    .line 703
    .end local v8    # "dbGid":Ljava/lang/String;
    .end local v9    # "dbImsi":Ljava/lang/String;
    .end local v10    # "dbInfo":[Ljava/lang/String;
    .end local v11    # "dbLte":I
    .end local v12    # "dbMccmnc":Ljava/lang/String;
    .end local v13    # "dbSpn":Ljava/lang/String;
    .end local v14    # "equalColCnt":I
    .end local v16    # "i":I
    .end local v17    # "id":I
    .end local v21    # "isWrong":Z
    .end local v27    # "record":Ljava/lang/String;
    :cond_13
    const-string v2, "LteReadySetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GSMPhoneEx] return lteVal : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,if 1-> LTE, if 0-> LTE Ready."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const/4 v2, 0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_14

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 708
    .end local v15    # "gid_index":I
    .end local v18    # "id_index":I
    .end local v19    # "imsi_index":I
    .end local v23    # "lteVal":I
    .end local v24    # "lte_index":I
    .end local v25    # "maxCnt":I
    .end local v26    # "mccmnc_index":I
    .end local v30    # "spn_index":I
    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private processRegistering(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 273
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 276
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 280
    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->init(Landroid/content/Context;I)V

    .line 283
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.lge.intent.action.SIM_DEACTIVATION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 286
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.lge.intent.action.SIM_DEACTIVATION_SLOT2"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 288
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.lge.intent.action.SIM_DEACTIVATION_SLOT3"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 294
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 299
    :cond_2
    return-void
.end method

.method private resetCallForwardingIndicator()V
    .locals 4

    .prologue
    .line 1777
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->getCallForwardingIndicator()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1778
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->getPhoneId()I

    move-result v2

    mul-int/lit8 v2, v2, 0x32

    add-int/lit8 v0, v2, 0x6

    .line 1779
    .local v0, "notificationId":I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1780
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1782
    .end local v0    # "notificationId":I
    .end local v1    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method private setPreferredNetworkMode(I)V
    .locals 2
    .param p1, "nwMode"    # I

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 780
    return-void
.end method

.method private subInfoChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 1767
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 1768
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->getCallForwardingIndicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1769
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyCallForwardingIndicator()V

    .line 1774
    :cond_0
    :goto_0
    return-void

    .line 1771
    :cond_1
    if-nez p1, :cond_0

    .line 1772
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->resetCallForwardingIndicator()V

    goto :goto_0
.end method


# virtual methods
.method public cancelManualSearchingRequest()V
    .locals 3

    .prologue
    .line 1218
    const/16 v1, 0x40f

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1220
    .local v0, "msg":Landroid/os/Message;
    const-string v1, "GSMPhone"

    const-string v2, "cancelManualSearchingRequest()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->cancelManualSearchingRequest(Landroid/os/Message;)V

    .line 1223
    return-void
.end method

.method public changePlmnNameForESAME(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "Operator_numeric"    # Ljava/lang/String;

    .prologue
    .line 1589
    const/4 v11, 0x0

    .line 1590
    .local v11, "simNumeric":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1591
    .local v12, "spnMvno":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1592
    .local v1, "mcc":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1593
    .local v3, "mnc":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1594
    .local v5, "oper_mcc":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1595
    .local v6, "oper_mnc":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->getSubscriberId()Ljava/lang/String;

    move-result-object v13

    .line 1596
    .local v13, "subscriberId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v8

    .line 1597
    .local v8, "roaming":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1598
    .local v7, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v7, :cond_0

    .line 1599
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v11

    .line 1600
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v12

    .line 1602
    :cond_0
    const/4 v2, 0x0

    .line 1603
    .local v2, "mcc_sim":I
    const/4 v4, 0x0

    .line 1604
    .local v4, "mnc_sim":I
    const/4 v9, 0x0

    .line 1605
    .local v9, "serv_mcc":I
    const/4 v10, 0x0

    .line 1607
    .local v10, "serv_mnc":I
    const-string v14, "GSMPhoneEx"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[changePlmnName] Sim_Numeric: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " Operator_numeric: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " Subscriber_id: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " PLMN name: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    const-string v14, "GSMPhoneEx"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[changePlmnName] spnMvno: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x4

    if-le v14, v15, :cond_1

    .line 1611
    const/4 v14, 0x0

    const/4 v15, 0x3

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1612
    const/4 v14, 0x3

    invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1613
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1614
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1617
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x4

    if-le v14, v15, :cond_2

    .line 1618
    const/4 v14, 0x0

    const/4 v15, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1619
    const/4 v14, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 1620
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1621
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1623
    :cond_2
    const-string v14, "GSMPhoneEx"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[changePlmnName] mcc_sim: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "mnc_sim: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    if-lez v2, :cond_3

    if-eqz p1, :cond_3

    if-eqz v13, :cond_3

    .line 1626
    sparse-switch v2, :sswitch_data_0

    .line 1724
    .end local p1    # "name":Ljava/lang/String;
    :cond_3
    :goto_0
    return-object p1

    .line 1629
    .restart local p1    # "name":Ljava/lang/String;
    :sswitch_0
    const/16 v14, 0xf

    if-ne v4, v14, :cond_4

    const-string v14, "TOT Mobile"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1630
    const-string p1, "TOT 3G"

    goto :goto_0

    .line 1632
    :cond_4
    const/16 v14, 0x17

    if-ne v4, v14, :cond_5

    const-string v14, "TH GSM"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    if-nez v8, :cond_5

    .line 1633
    const-string p1, "GSM 1800"

    goto :goto_0

    .line 1635
    :cond_5
    const-string v14, "True"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1636
    const-string p1, "TRUE"

    goto :goto_0

    .line 1638
    :cond_6
    const-string v14, "CAT 3G"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1639
    const-string p1, "my"

    goto :goto_0

    .line 1641
    :cond_7
    const-string v14, "DTAC"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1642
    const-string p1, "dtac"

    goto :goto_0

    .line 1646
    :sswitch_1
    const-string v14, "im3"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_8

    const-string v14, "matrix"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_8

    const-string v14, "mentari"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 1647
    :cond_8
    const-string p1, "INDOSAT"

    goto :goto_0

    .line 1649
    :cond_9
    const-string v14, "TELKOMSE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    const-string v14, "T-SEL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1650
    :cond_a
    const-string p1, "TELKOMSEL"

    goto/16 :goto_0

    .line 1655
    :sswitch_2
    const-string v14, "BPL Mobile"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 1656
    const-string p1, "Loop Mobile"

    goto/16 :goto_0

    .line 1658
    :cond_b
    const-string v14, "Airtel"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_c

    const-string v14, "IND airtel"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 1659
    :cond_c
    const-string p1, "airtel"

    goto/16 :goto_0

    .line 1661
    :cond_d
    const-string v14, "UNINOR"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 1662
    const-string p1, "Uninor"

    goto/16 :goto_0

    .line 1664
    :cond_e
    const-string v14, "Vodafone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 1665
    const-string p1, "Vodafone IN"

    goto/16 :goto_0

    .line 1667
    :cond_f
    if-eqz v11, :cond_3

    if-eqz p2, :cond_3

    const-string v14, "405853"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const-string v14, "40430"

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1668
    const-string v14, "40430"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1669
    const-string p1, "Vodafone IN"

    goto/16 :goto_0

    .line 1674
    :sswitch_3
    const-string v14, "Beeline K"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1675
    const-string p1, "Beeline KH"

    goto/16 :goto_0

    .line 1679
    :sswitch_4
    const-string v14, "GLOBE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1680
    const-string p1, "Globe"

    goto/16 :goto_0

    .line 1684
    :sswitch_5
    const-string v14, "VODAFONE TR"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1685
    const-string p1, "Vodafone TR"

    goto/16 :goto_0

    .line 1689
    :sswitch_6
    const-string v14, "IAM"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1690
    const-string p1, "Maroc Telecom"

    goto/16 :goto_0

    .line 1694
    :sswitch_7
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x6

    if-le v14, v15, :cond_3

    if-nez v8, :cond_3

    const-string v14, "Cell C"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1695
    const-string v14, "6550713"

    const/4 v15, 0x0

    const/16 v16, 0x7

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1696
    const-string p1, "Red Bull"

    goto/16 :goto_0

    .line 1701
    :sswitch_8
    const-string v14, "MTN"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    if-eqz p2, :cond_3

    const/16 v14, 0x1e

    if-ne v4, v14, :cond_3

    const-string v14, "62130"

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1702
    const-string p1, "MTN-NG"

    goto/16 :goto_0

    .line 1706
    :sswitch_9
    const/4 v14, 0x7

    if-ne v4, v14, :cond_3

    const-string v14, "Gmobil"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1707
    const-string p1, "Gmobile"

    goto/16 :goto_0

    .line 1711
    :sswitch_a
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "Lebara"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x3

    if-ne v4, v14, :cond_3

    const-string v14, "Vodafone AU"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1712
    const-string p1, "Lebara"

    goto/16 :goto_0

    .line 1716
    :sswitch_b
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "Rami Levy"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x3

    if-ne v4, v14, :cond_3

    const-string v14, "Pelephone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1717
    const-string p1, "Rami Levy"

    goto/16 :goto_0

    .line 1626
    nop

    :sswitch_data_0
    .sparse-switch
        0x11e -> :sswitch_5
        0x194 -> :sswitch_2
        0x195 -> :sswitch_2
        0x1a9 -> :sswitch_b
        0x1c4 -> :sswitch_9
        0x1c8 -> :sswitch_3
        0x1f9 -> :sswitch_a
        0x1fe -> :sswitch_1
        0x203 -> :sswitch_4
        0x208 -> :sswitch_0
        0x25c -> :sswitch_6
        0x26d -> :sswitch_8
        0x28f -> :sswitch_7
    .end sparse-switch
.end method

.method public changePlmnNameForMVNO(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "SpnMvno"    # Ljava/lang/String;
    .param p2, "operator"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1251
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 1252
    .local v3, "simMccMnc":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1253
    .local v2, "simMcc":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1254
    .local v4, "simMnc":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v1

    .line 1255
    .local v1, "gid":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1257
    .local v0, "changed":Z
    if-eqz v3, :cond_26

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    if-le v7, v8, :cond_26

    .line 1258
    invoke-virtual {v3, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1259
    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1265
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1266
    const-string v7, "GSMPhoneEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "grandblue SpnMvno = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " operator = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " simMcc  = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " simMnc  = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    :cond_0
    if-eqz p1, :cond_22

    if-eqz p2, :cond_22

    .line 1270
    const-string v7, "Virgin"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1271
    const-string v7, "20802"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "20823"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1272
    :cond_1
    const-string p1, "Virgin Mobile"

    .line 1273
    const/4 v0, 0x1

    .line 1276
    :cond_2
    const-string v7, "NRJ Mobile"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1277
    const-string v7, "20810"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "20826"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1278
    :cond_3
    const-string p1, "NRJ Mobile"

    .line 1279
    const/4 v0, 0x1

    .line 1282
    :cond_4
    const-string v7, "Jazztel"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1283
    const-string v7, "21403"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "21421"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1284
    :cond_5
    const-string p1, "Jazztel"

    .line 1285
    const/4 v0, 0x1

    .line 1288
    :cond_6
    const-string v7, "Carrefour"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1289
    const-string v7, "21403"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1290
    const-string p1, "Carrefour"

    .line 1291
    const/4 v0, 0x1

    .line 1295
    :cond_7
    const-string v7, "BITE"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1296
    const-string v7, "24705"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1297
    const-string p1, "LV BITE"

    .line 1298
    const/4 v0, 0x1

    .line 1301
    :cond_8
    const-string v7, "congstar"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1302
    const-string v7, "26201"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1303
    const-string p1, "Telekom.de"

    .line 1304
    const/4 v0, 0x1

    .line 1307
    :cond_9
    const-string v7, "mobilcom-debitel"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1308
    const-string v7, "26202"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 1309
    const-string p1, "Vodafone.de"

    .line 1310
    const/4 v0, 0x1

    .line 1316
    :cond_a
    :goto_0
    const-string v7, "20810"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1317
    const-string v7, "CORIOLIS"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1318
    const-string p1, "Coriolis"

    .line 1319
    const/4 v0, 0x1

    .line 1321
    :cond_b
    const-string v7, "La Poste Mobile"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1322
    const-string p1, "La Poste Mobile"

    .line 1323
    const/4 v0, 0x1

    .line 1325
    :cond_c
    const-string v7, "Darty"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1326
    const-string p1, "Darty"

    .line 1327
    const/4 v0, 0x1

    .line 1329
    :cond_d
    const-string v7, "LeclercMobile"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1330
    const-string p1, "LeclercMobile"

    .line 1331
    const/4 v0, 0x1

    .line 1333
    :cond_e
    const-string v7, "A MOBILE"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1334
    const-string p1, "A MOBILE"

    .line 1335
    const/4 v0, 0x1

    .line 1338
    :cond_f
    const-string v7, "Euskaltel"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1339
    const-string v7, "214"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    const-string v7, "06"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    if-eqz v1, :cond_29

    const-string v7, "0008"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 1340
    const-string v7, "21401"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 1341
    const-string p1, "Euskaltel"

    .line 1342
    const/4 v0, 0x1

    .line 1357
    :cond_10
    :goto_1
    const-string v7, "21406"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1358
    const-string v7, "R cable"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1359
    const-string p1, "Coriolis"

    .line 1360
    const/4 v0, 0x1

    .line 1362
    :cond_11
    const-string v7, "Telecable"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1363
    const-string p1, "Telecable"

    .line 1364
    const/4 v0, 0x1

    .line 1367
    :cond_12
    const-string v7, "23207"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1368
    const-string v7, "T-Mobile A"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 1369
    const-string p1, "Telering"

    .line 1370
    const/4 v0, 0x1

    .line 1376
    :cond_13
    :goto_2
    const-string v7, "20815"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 1377
    const-string v7, "Free"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 1378
    const-string p1, "Free"

    .line 1379
    const/4 v0, 0x1

    .line 1382
    :cond_14
    const-string v7, "23102"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1383
    const-string v7, "T-Mobile SK"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1384
    const-string p1, "Telekom SK"

    .line 1385
    const/4 v0, 0x1

    .line 1388
    :cond_15
    const-string v7, "24405"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    const-string v7, "24421"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 1389
    :cond_16
    const-string v7, "T-Mobile SK"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 1390
    const-string p1, "Saunalahti"

    .line 1391
    const/4 v0, 0x1

    .line 1394
    :cond_17
    const-string v7, "T-Mobile"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 1395
    const-string v7, "23430"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    const-string v7, "23433"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 1396
    :cond_18
    const-string p1, "EE"

    .line 1397
    const/4 v0, 0x1

    .line 1400
    :cond_19
    const-string v7, "23433"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 1401
    const-string v7, "Virgin"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 1402
    const-string p1, "virgin"

    .line 1403
    const/4 v0, 0x1

    .line 1409
    :cond_1a
    :goto_3
    const-string v7, "23430"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 1410
    const-string v7, "Virgin"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 1411
    const-string p1, "Virgin"

    .line 1412
    const/4 v0, 0x1

    .line 1418
    :cond_1b
    :goto_4
    const-string v7, "23212"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 1419
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "A1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 1420
    const-string p1, "Yesss!"

    .line 1421
    const/4 v0, 0x1

    .line 1424
    :cond_1c
    const-string v7, "21401"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 1425
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "telecable"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 1426
    const-string p1, "telecable"

    .line 1427
    const/4 v0, 0x1

    .line 1433
    :cond_1d
    :goto_5
    const-string v7, "21407"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 1434
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ONO"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 1435
    const-string p1, "ONO"

    .line 1436
    const/4 v0, 0x1

    .line 1439
    :cond_1e
    const-string v7, "23415"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 1440
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "TalkTalk"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 1441
    const-string p1, "TalkTalk"

    .line 1442
    const/4 v0, 0x1

    .line 1448
    :cond_1f
    :goto_6
    const-string v7, "23820"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_20

    const-string v7, "23866"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 1449
    :cond_20
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Call me"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 1450
    const-string p1, "Call me"

    .line 1451
    const/4 v0, 0x1

    .line 1463
    :cond_21
    :goto_7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Tele2"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 1464
    const-string v7, "24803"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_33

    .line 1465
    const-string p1, "EE TELE2"

    .line 1466
    const/4 v0, 0x1

    .line 1474
    :cond_22
    :goto_8
    if-eqz v0, :cond_23

    .line 1475
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7, p1}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 1478
    :cond_23
    if-eqz p1, :cond_24

    if-eqz p2, :cond_24

    .line 1479
    const-string v7, "GSMPhoneEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "grandblue after SpnMvno = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " operator = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " simMcc  = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " simMnc  = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    :cond_24
    if-nez v0, :cond_34

    :cond_25
    :goto_9
    return v5

    .line 1261
    :cond_26
    const-string v7, "GSMPhoneEx"

    const-string v8, "changePlmnNameForMVNO: simMccMnc = null"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    if-eqz v0, :cond_25

    move v5, v6

    goto :goto_9

    .line 1311
    :cond_27
    const-string v7, "26203"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1312
    const-string p1, "E-Plus"

    .line 1313
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1343
    :cond_28
    const-string v7, "21403"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1344
    const-string p1, "Orange"

    .line 1345
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1347
    :cond_29
    const-string v7, "214"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    const-string v7, "08"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    if-eqz v1, :cond_10

    const-string v7, "0008"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1348
    const-string v7, "21401"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 1349
    const-string p1, "Euskaltel"

    .line 1350
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1351
    :cond_2a
    const-string v7, "21403"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1352
    const-string p1, "Orange"

    .line 1353
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1371
    :cond_2b
    const-string v7, "Telering"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1372
    const-string p1, "Saunalahti"

    .line 1373
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 1404
    :cond_2c
    const-string v7, "EE"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a

    if-eqz v1, :cond_1a

    const-string v7, "28000000"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 1405
    const-string p1, "virgin"

    .line 1406
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 1413
    :cond_2d
    const-string v7, "EE"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    if-eqz v1, :cond_1b

    const-string v7, "28000000"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 1414
    const-string p1, "Virgin"

    .line 1415
    const/4 v0, 0x1

    goto/16 :goto_4

    .line 1428
    :cond_2e
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "mobilR"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 1429
    const-string p1, "mobilR"

    .line 1430
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 1443
    :cond_2f
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Talkmobile"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 1444
    const-string p1, "Talkmobile"

    .line 1445
    const/4 v0, 0x1

    goto/16 :goto_6

    .line 1452
    :cond_30
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DLG Tele"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 1453
    const-string p1, "DLG Tele"

    .line 1454
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1455
    :cond_31
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "BiBoB"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_32

    .line 1456
    const-string p1, "BiBoB"

    .line 1457
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1458
    :cond_32
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "TELIA DK"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 1459
    const-string p1, "TELIA DK"

    .line 1460
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1467
    :cond_33
    const-string v7, "20416"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 1468
    const-string p1, "Tele2"

    .line 1469
    const/4 v0, 0x1

    goto/16 :goto_8

    :cond_34
    move v5, v6

    .line 1481
    goto/16 :goto_9
.end method

.method public changePlmnNameForSwedish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "opLong"    # Ljava/lang/String;
    .param p2, "opShort"    # Ljava/lang/String;
    .param p3, "opNumeric"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x6

    const/4 v6, 0x0

    .line 1487
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 1488
    .local v2, "simMccMnc":Ljava/lang/String;
    move-object v0, p1

    .line 1490
    .local v0, "newOpLong":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v8, :cond_1

    .line 1491
    :cond_0
    const-string v3, "GSMPhoneEx"

    const-string v4, "changePlmnNameForSwedish: simMccMnc = null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 1581
    .end local v0    # "newOpLong":Ljava/lang/String;
    .local v1, "newOpLong":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1495
    .end local v1    # "newOpLong":Ljava/lang/String;
    .restart local v0    # "newOpLong":Ljava/lang/String;
    :cond_1
    if-nez v0, :cond_2

    .line 1496
    const-string v3, "GSMPhoneEx"

    const-string v4, "changePlmnNameForSwedish: newOpLong=null, assign empty field to newOpLong"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    const-string v0, ""

    .line 1500
    :cond_2
    const-string v3, "GSMPhoneEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changePlmnNameForSwedish: simMccMnc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    const-string v3, "GSMPhoneEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changePlmnNameForSwedish: Before OpLong = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    invoke-virtual {v2, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "24008"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1505
    const-string v3, "24008"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1506
    const-string v0, "Telenor SE"

    .line 1508
    :cond_3
    const-string v3, "24004"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1509
    const-string v0, "SWEDEN"

    .line 1511
    :cond_4
    const-string v3, "24024"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1512
    const-string v0, "Sweden Mobile"

    .line 1516
    :cond_5
    invoke-virtual {v2, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "24002"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1517
    const-string v3, "24002"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1518
    const-string v0, "3SE"

    .line 1520
    :cond_6
    const-string v3, "24004"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1521
    const-string v0, "3SE"

    .line 1525
    :cond_7
    invoke-virtual {v2, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "24007"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v7, :cond_b

    .line 1526
    const-string v3, "GSMPhoneEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changePlmnNameForSwedish: Tele2 Sweden simMccMnc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "240070"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "240071"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "240072"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "240073"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "240074"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "240075"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "240076"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1534
    :cond_8
    const-string v3, "24007"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1535
    const-string v0, "Tele2 SE"

    .line 1537
    :cond_9
    const-string v3, "24005"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1538
    const-string v0, "Tele2 SE"

    .line 1540
    :cond_a
    const-string v3, "24024"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1541
    const-string v0, "Tele2 SE"

    .line 1558
    :cond_b
    :goto_1
    invoke-virtual {v2, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "24001"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1559
    const-string v3, "24001"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1560
    const-string v0, "Telia SE"

    .line 1562
    :cond_c
    const-string v3, "24005"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1563
    const-string v0, "Sweden 3G"

    .line 1567
    :cond_d
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1568
    const-string v3, "24007"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1569
    const-string v0, "Tele2 SE"

    .line 1579
    :cond_e
    :goto_2
    const-string v3, "GSMPhoneEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changePlmnNameForSwedish: After OpLong = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 1581
    .end local v0    # "newOpLong":Ljava/lang/String;
    .restart local v1    # "newOpLong":Ljava/lang/String;
    goto/16 :goto_0

    .line 1543
    .end local v1    # "newOpLong":Ljava/lang/String;
    .restart local v0    # "newOpLong":Ljava/lang/String;
    :cond_f
    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "240077"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "240078"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "240079"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1546
    :cond_10
    const-string v3, "24007"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1547
    const-string v0, "Comviq SE"

    .line 1549
    :cond_11
    const-string v3, "24005"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1550
    const-string v0, "Comviq SE"

    .line 1552
    :cond_12
    const-string v3, "24024"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1553
    const-string v0, "Comviq SE"

    goto/16 :goto_1

    .line 1570
    :cond_13
    const-string v3, "24005"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1571
    const-string v0, "Sweden 3G"

    goto :goto_2

    .line 1572
    :cond_14
    const-string v3, "24024"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1573
    const-string v0, "Sweden Mobile"

    goto :goto_2

    .line 1575
    :cond_15
    move-object v0, p2

    goto :goto_2
.end method

.method public checkLteReady()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 528
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_1

    .line 529
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    sput-object v10, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->smPhone:Lcom/android/internal/telephony/Phone;

    .line 530
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->getPreferredNetworkMode()I

    move-result v1

    .line 531
    .local v1, "settingsNetworkMode":I
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "user_selected_network_mode"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_2

    move v0, v8

    .line 533
    .local v0, "mUserSelectNetworkMode":Z
    :goto_0
    const-string v10, "gsm.sim.operator.numeric"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 534
    .local v5, "simMccMnc":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v10, v12, :cond_3

    .line 535
    :cond_0
    const-string v8, "LteReadySetting"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[GSMPhoneEx] simMccMnc value is not valid. simMccMnc : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ,length() : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    .end local v0    # "mUserSelectNetworkMode":Z
    .end local v1    # "settingsNetworkMode":I
    .end local v5    # "simMccMnc":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .restart local v1    # "settingsNetworkMode":I
    :cond_2
    move v0, v9

    .line 531
    goto :goto_0

    .line 538
    .restart local v0    # "mUserSelectNetworkMode":Z
    .restart local v5    # "simMccMnc":Ljava/lang/String;
    :cond_3
    const-string v10, "gsm.sim.operator.alpha"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 546
    .local v7, "simSpn":Ljava/lang/String;
    new-instance v10, Lcom/lge/uicc/LGUiccCard;

    invoke-direct {v10}, Lcom/lge/uicc/LGUiccCard;-><init>()V

    invoke-virtual {v10}, Lcom/lge/uicc/LGUiccCard;->getGid1()Ljava/lang/String;

    move-result-object v2

    .line 547
    .local v2, "simGid":Ljava/lang/String;
    sget-object v10, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->smPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 548
    .local v3, "simImsi":Ljava/lang/String;
    invoke-virtual {v5, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 549
    .local v4, "simMcc":Ljava/lang/String;
    invoke-virtual {v5, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 551
    .local v6, "simMnc":Ljava/lang/String;
    const-string v10, "LteReadySetting"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[GSMPhoneEx] mcc : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " mnc : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " imsi : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " gid : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " spn : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-static {v5, v3, v7, v2}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->isLteSim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 555
    sput-boolean v8, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->sIsLte:Z

    .line 556
    const-string v9, "LteReadySetting"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[GSMPhoneEx] Current SIM is lte, mUserSelectNetworkMode : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    if-nez v0, :cond_4

    const/16 v9, 0x9

    if-eq v1, v9, :cond_4

    .line 559
    const/16 v1, 0x9

    .line 560
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->setPreferredNetworkMode(I)V

    .line 561
    sget-object v9, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->smPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9, v1, v13}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 577
    :cond_4
    :goto_2
    const-string v9, "LteReadySetting"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[GSMPhoneEx] Set Network mode to settingsNetworkMode : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    sput-boolean v8, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->smIsCheckedLTEReady:Z

    goto/16 :goto_1

    .line 565
    :cond_5
    sput-boolean v9, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->sIsLte:Z

    .line 566
    const-string v9, "LteReadySetting"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[GSMPhoneEx] Current SIM is lte-ready,  before settingsNetworkMode : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    if-nez v0, :cond_4

    .line 569
    if-ltz v1, :cond_6

    const/4 v9, 0x2

    if-le v1, v9, :cond_4

    .line 570
    :cond_6
    const/4 v1, 0x0

    .line 571
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->setPreferredNetworkMode(I)V

    .line 572
    sget-object v9, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->smPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9, v1, v13}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_2
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 315
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->dispose()V

    .line 318
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "support_emergency_callback_mode_for_gsm"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForExitEmergencyCallbackMode(Landroid/os/Handler;)V

    .line 320
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 331
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vzw_gfit"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->gfUtils:Lcom/android/internal/telephony/gfit/GfitUtils;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gfit/GfitUtils;->dispose()V

    .line 335
    :cond_1
    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 3

    .prologue
    .line 808
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_0

    .line 809
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mIsPhoneInEcmExitDelayState:Z

    .line 832
    :goto_0
    return-void

    .line 815
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "SUPPORT_E911_FOR_VOLTE"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 816
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->getIsE911ForVolte()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 818
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.intent.action.ACTION_ECBM_EXIT_FOR_VOLTE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 819
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 820
    const-string v1, "GSMPhoneEx"

    const-string v2, "exitEmergencyCallbackMode - ACTION_ECBM_EXIT_FOR_VOLTE"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 826
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 827
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 831
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x1a

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 354
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->finalize()V

    .line 357
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    const-string v0, "GSMPhoneEx"

    const-string v1, "UNEXPECTED; mWakeLock is held when finalizing."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 362
    :cond_0
    return-void
.end method

.method public getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "commandInterfaceCBReason"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 957
    const-string v0, "Setting the service class to None"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->log(Ljava/lang/String;)V

    .line 958
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2, p2}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 959
    return-void
.end method

.method public getCallForwardingIndicator()Z
    .locals 1

    .prologue
    .line 1731
    const-string v0, "SBM"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "YMO"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1732
    :cond_0
    const/4 v0, 0x0

    .line 1734
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallForwardingIndicator()Z

    move-result v0

    goto :goto_0
.end method

.method protected getCustomizedVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 1058
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    .line 1059
    .local v0, "is_roaming":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1062
    .local v5, "sp":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->getPhoneId()I

    move-result v1

    .line 1065
    .local v1, "phoneId":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 1066
    .local v3, "simMccMnc":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1067
    .local v2, "simMcc":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1069
    .local v4, "simMnc":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x5

    if-lt v7, v8, :cond_0

    .line 1070
    const/4 v7, 0x0

    invoke-virtual {v3, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1071
    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1074
    :cond_0
    if-nez v1, :cond_6

    const-string v7, "vm_number_key0"

    invoke-interface {v5, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v6, "vm_number_key"

    .line 1076
    .local v6, "vmNumberKey":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_2

    if-eqz v4, :cond_2

    const-string v7, "214"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "208"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "20"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1079
    :cond_1
    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1080
    if-nez v0, :cond_7

    .line 1081
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getVMS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 1089
    :cond_2
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1093
    const-string v7, "VZW"

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1094
    const-string v7, "*86"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1100
    :goto_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1101
    if-eqz v0, :cond_9

    .line 1102
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getRVMS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 1103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1104
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getVMS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 1115
    :cond_3
    :goto_3
    const-string v7, "support_smart_dialing"

    invoke-static {v9, v7}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1116
    const-string v7, "ril.card_operator"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "SPR"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1117
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->getLine1Number()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1123
    :cond_4
    const/16 v7, 0x10

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isLogBlocked(I)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "GSMPhoneEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getVoiceMailNumber() - number : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    :cond_5
    return-object p1

    .line 1074
    .end local v6    # "vmNumberKey":Ljava/lang/String;
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "vm_number_key"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 1083
    .restart local v6    # "vmNumberKey":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getRVMS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 1096
    :cond_8
    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 1108
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getVMS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1131
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "support_vzw_Los_upgrade"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1132
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->getImei()Ljava/lang/String;

    move-result-object v0

    .line 1133
    .local v0, "mDeviceId":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    .line 1134
    const-string v1, "GSMPhoneEx"

    const-string v2, "getDeviceId(): returns IMEI(14) in CDMA-LTE Phone"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1139
    .end local v0    # "mDeviceId":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1144
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1150
    const-string v0, "VZW"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LRA"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1151
    :cond_0
    const-string v0, "GSMPhoneEx"

    const-string v1, "Esn is returned in VZW GSM"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mEsn:Ljava/lang/String;

    .line 1155
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getEsn()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1173
    const-string v2, "VZW"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1174
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1175
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v0

    .line 1177
    .local v0, "mdnNumber":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lcom/lge/telephony/LGSpecialNumberUtils;->getValidMdnForVZW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1182
    .end local v0    # "mdnNumber":Ljava/lang/String;
    .end local v1    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :goto_1
    return-object v0

    .line 1175
    .restart local v1    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1182
    .end local v1    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getMSIN()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 941
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 943
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 946
    :cond_0
    :goto_0
    return-object v2

    .line 945
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    .line 946
    .local v0, "imsi":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1161
    const-string v0, "VZW"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LRA"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1162
    :cond_0
    const-string v0, "GSMPhoneEx"

    const-string v1, "Meid is returned in VZW GSM"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mMeid:Ljava/lang/String;

    .line 1167
    :goto_0
    return-object v0

    .line 1166
    :cond_1
    const-string v0, "GSMPhoneEx"

    const-string v1, "[GSMPhone] getMeid() is a CDMA method"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMeid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSearchStatus(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getSearchStatus(Landroid/os/Message;)V

    .line 1229
    return-void
.end method

.method public getStatusId()I
    .locals 1

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isManualSelectionAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1041
    const/4 v0, 0x0

    .line 1043
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected handleEnterEmergencyCallbackMode(J)V
    .locals 3
    .param p1, "delayInMillis"    # J

    .prologue
    .line 858
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mIsPhoneInEcmState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 859
    const-string v0, "GSMPhoneEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEnterEmergencyCallbackMode, delayInMillis= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 862
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 864
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 369
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mIsTheCurrentActivePhone:Z

    if-nez v2, :cond_1

    .line 370
    const-string v2, "GSMPhoneEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] while being destroyed. Ignoring."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 433
    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 379
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 381
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 385
    iget v2, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->retryNum:I

    const/16 v3, 0xa

    if-gt v2, v3, :cond_0

    .line 386
    const/16 v2, 0x420

    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 391
    :cond_2
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object v1, v2

    check-cast v1, [Ljava/lang/String;

    .line 392
    .local v1, "respId":[Ljava/lang/String;
    aget-object v2, v1, v3

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mImei:Ljava/lang/String;

    .line 393
    const/4 v2, 0x1

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mImeiSv:Ljava/lang/String;

    .line 394
    const/4 v2, 0x2

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mEsn:Ljava/lang/String;

    .line 395
    const/4 v2, 0x3

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mMeid:Ljava/lang/String;

    .line 398
    iput v3, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->retryNum:I

    goto :goto_0

    .line 408
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "respId":[Ljava/lang/String;
    :sswitch_1
    const-string v2, "GSMPhoneEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_RETRY_GET_DEVICE_IDENTITY : retryNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->retryNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget v2, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->retryNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->retryNum:I

    .line 410
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x15

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    goto :goto_0

    .line 418
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->handleEnterEmergencyCallbackMode(Landroid/os/Message;)V

    goto :goto_0

    .line 422
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->handleExitEmergencyCallbackMode(Landroid/os/Message;)V

    goto :goto_0

    .line 428
    :sswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->handleSetSelectNetwork(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 375
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x19 -> :sswitch_2
        0x1a -> :sswitch_3
        0x40e -> :sswitch_4
        0x420 -> :sswitch_1
    .end sparse-switch
.end method

.method handleTimerInEmergencyCallbackMode(I)V
    .locals 6
    .param p1, "action"    # I

    .prologue
    .line 906
    packed-switch p1, :pswitch_data_0

    .line 918
    const-string v2, "GSMPhoneEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleTimerInEmergencyCallbackMode, unsupported action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :goto_0
    return-void

    .line 908
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 909
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 912
    :pswitch_1
    const-string v2, "ro.cdma.ecmexittimer"

    const-wide/32 v4, 0x493e0

    invoke-static {v2, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 914
    .local v0, "delayInMillis":J
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 915
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 906
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected initInstance()V
    .locals 1

    .prologue
    .line 310
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 311
    return-void
.end method

.method protected initSubscriptionSpecifics()V
    .locals 1

    .prologue
    .line 304
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 305
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 306
    return-void
.end method

.method public isInEcm()Z
    .locals 1

    .prologue
    .line 793
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mIsPhoneInEcmState:Z

    return v0
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 930
    return-void
.end method

.method public removeReferences()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 339
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->removeReferences()V

    .line 342
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mExitEcmRunnable:Ljava/lang/Runnable;

    .line 346
    const-string v0, "vzw_gfit"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->gfUtils:Lcom/android/internal/telephony/gfit/GfitUtils;

    .line 350
    :cond_0
    return-void
.end method

.method public saveClirSetting(I)V
    .locals 7
    .param p1, "commandInterfaceCLIRMode"    # I

    .prologue
    .line 1012
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1013
    .local v3, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1015
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mContext:Landroid/content/Context;

    const-string v5, "set_clir_option_by_call_setting"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1016
    const/4 v4, 0x1

    if-ne p1, v4, :cond_2

    .line 1017
    const-string v4, "button_clir_key"

    const-string v5, "HIDE"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1026
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->getPhoneId()I

    move-result v2

    .line 1028
    .local v2, "phoneId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clir_key"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1029
    .local v0, "clirKey":Ljava/lang/String;
    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1032
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1033
    const-string v4, "GSMPhoneEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveClirSetting - failed to commit CLIR preference, sub : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    :cond_1
    return-void

    .line 1018
    .end local v0    # "clirKey":Ljava/lang/String;
    .end local v2    # "phoneId":I
    :cond_2
    const/4 v4, 0x2

    if-ne p1, v4, :cond_3

    .line 1019
    const-string v4, "button_clir_key"

    const-string v5, "SHOW"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1021
    :cond_3
    const-string v4, "GSMPhoneEx"

    const-string v5, "AT&T CLIR MMI code : Unexpected response"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected saveVoiceMailNumberForSIMFieldException(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1187
    const-string v0, "TMO"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "EU"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "COM"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1189
    :cond_0
    const-class v0, Ljava/lang/RuntimeException;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1192
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mVmNumber:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->storeVoiceMailNumber(Ljava/lang/String;)V

    .line 1193
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1197
    :cond_1
    return-void
.end method

.method public selectPreviousNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 5
    .param p1, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1237
    new-instance v1, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;-><init>()V

    .line 1238
    .local v1, "nsm":Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;
    iput-object p2, v1, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->message:Landroid/os/Message;

    .line 1239
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    .line 1243
    const/16 v2, 0x40e

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1245
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRAT()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->setPreviousNetworkSelectionModeManual(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1246
    return-void
.end method

.method sendEmergencyCallbackModeChange()V
    .locals 3

    .prologue
    .line 798
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 799
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phoneinECMState"

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mIsPhoneInEcmState:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 800
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 801
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 802
    const-string v1, "GSMPhoneEx"

    const-string v2, "sendEmergencyCallbackModeChange"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    return-void
.end method

.method public setCallBarringOption(ILjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "commandInterfaceCBAction"    # I
    .param p2, "commandInterfaceCBReason"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 966
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->isCbEnable(I)Z

    move-result v2

    move-object v1, p2

    move-object v3, p4

    move v4, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 967
    return-void
.end method

.method public setCallBarringPass(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "oldPwd"    # Ljava/lang/String;
    .param p2, "newPwd"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 974
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "AB"

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 975
    return-void
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 785
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    .line 786
    return-void
.end method

.method protected syncClirSetting()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 985
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 988
    .local v3, "sp":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->getPhoneId()I

    move-result v2

    .line 989
    .local v2, "phoneId":I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getClirSettingValue(Landroid/content/Context;I)I

    move-result v1

    .line 990
    .local v1, "clirSetting":I
    if-nez v2, :cond_1

    const-string v4, "clir_key0"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v0, "clir_key"

    .line 992
    .local v0, "clirKey":Ljava/lang/String;
    :goto_0
    if-eq v1, v6, :cond_2

    .line 993
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->saveClirSetting(I)V

    .line 999
    :goto_1
    const-string v4, "GSMPhoneEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syncClirSetting :: clirSetting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    if-ltz v1, :cond_0

    .line 1001
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 1003
    :cond_0
    return-void

    .line 990
    .end local v0    # "clirKey":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clir_key"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 995
    .restart local v0    # "clirKey":Ljava/lang/String;
    :cond_2
    invoke-interface {v3, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 933
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 934
    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 790
    return-void
.end method

.method protected updateDeviceInfo()V
    .locals 2

    .prologue
    .line 1049
    const/4 v0, 0x0

    const-string v1, "SUPPORT_UPDATE_DEVICE_INFO"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1050
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x15

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhoneEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    .line 1053
    :cond_0
    return-void
.end method
