.class public Lcom/android/internal/telephony/lgdata/LgDcTracker;
.super Landroid/os/Handler;
.source "LgDcTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/lgdata/LgDcTracker$2;,
        Lcom/android/internal/telephony/lgdata/LgDcTracker$LTEDataRoamingSettingObserver;,
        Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;
    }
.end annotation


# static fields
.field public static final ACTION_GW_ROAMING_DATA_CONNECTION_LGU:Ljava/lang/String; = "lge.intent.action.GW_ROAMING_DATA_CONNECTION_LGU"

.field public static final ACTION_LTE_ROAMING_DATA_CONNECTION_LGU:Ljava/lang/String; = "lge.intent.action.LTE_ROAMING_DATA_CONNECTION_LGU"

.field static final ApplyToprotectionVoiceInMobie:I = 0x1

.field public static final DATA_LTE_ROAMING:Ljava/lang/String; = "data_lte_roaming"

.field private static final LOG_TAG:Ljava/lang/String; = "[LGE_DATA][LGDCT] "

.field public static final sConnectionStatus:Ljava/lang/String; = "Connection_Status"

.field private static setTeardownRequested:[Z

.field private static voice_call_ing:Z


# instance fields
.field protected APN_ID_FOR_IMS:I

.field protected APN_ID_FOR_LTE_Roaming:I

.field public bConnectionStatus:Z

.field protected exist_ims_type_in_mpdn:Z

.field isGsm:Z

.field is_remove_noti:Z

.field protected mConnMgr:Landroid/net/ConnectivityManager;

.field private mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

.field mGsst:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

.field protected mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            ">;"
        }
    .end annotation
.end field

.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mLTEDataRoamingSettingObserver:Lcom/android/internal/telephony/lgdata/LgDcTracker$LTEDataRoamingSettingObserver;

.field private mNotification:Landroid/app/Notification;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field protected mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field final notificationId:I

.field private notification_intent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->voice_call_ing:Z

    .line 107
    const/16 v0, 0x19

    new-array v0, v0, [Z

    sput-object v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->setTeardownRequested:[Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 11
    .param p1, "mmdct"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .param p2, "p"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 430
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 104
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->exist_ims_type_in_mpdn:Z

    .line 116
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    .line 125
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->APN_ID_FOR_LTE_Roaming:I

    .line 126
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->APN_ID_FOR_IMS:I

    .line 134
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->bConnectionStatus:Z

    .line 140
    const/16 v6, 0x9f6

    iput v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->notificationId:I

    .line 143
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->is_remove_noti:Z

    .line 145
    new-instance v6, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;-><init>(Lcom/android/internal/telephony/lgdata/LgDcTracker;)V

    iput-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1732
    new-instance v6, Lcom/android/internal/telephony/lgdata/LgDcTracker$LTEDataRoamingSettingObserver;

    iget-object v7, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v6, p0, v7}, Lcom/android/internal/telephony/lgdata/LgDcTracker$LTEDataRoamingSettingObserver;-><init>(Lcom/android/internal/telephony/lgdata/LgDcTracker;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mLTEDataRoamingSettingObserver:Lcom/android/internal/telephony/lgdata/LgDcTracker$LTEDataRoamingSettingObserver;

    .line 432
    const-string v6, "[LGE_DATA][LGDCT] "

    const-string v7, "LgDcTracker() has created"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iput-object p1, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 434
    iput-object p2, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 436
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v6

    const/4 v7, 0x5

    if-eq v6, v7, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v6

    const/4 v7, 0x6

    if-eq v6, v7, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    .line 440
    const-string v6, "[LGE_DATA][LGDCT] "

    const-string v7, "other country do not use this function. so return."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :goto_0
    return-void

    .line 445
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 446
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 448
    const-string v6, "lge.test.limit_data_usage"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 450
    const-string v6, "com.skt.CALL_PROTECTION_STATUS_CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 451
    const-string v6, "com.skt.CALL_PROTECTION_MENU_OFF"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 452
    const-string v6, "com.skt.CALL_PROTECTION_MENU_ON"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 453
    const-string v6, "com.skt.test_intent"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 454
    const-string v6, "com.kt.CALL_PROTECTION_CALL_START"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 455
    const-string v6, "com.kt.CALL_PROTECTION_MENU_OFF"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 456
    const-string v6, "com.kt.CALL_PROTECTION_MENU_ON"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 457
    const-string v6, "com.lge.GprsAttachedIsTrue"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 458
    const-string v6, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 459
    const-string v6, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 460
    const-string v6, "lge.android.telephony.dataflow"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 462
    const-string v6, "ACTIVATE_SETUP_DATA_CALL"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 465
    const-string v6, "lge.test.routetable.add"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 466
    const-string v6, "lge.test.routetable.delete"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 469
    const-string v6, "com.lge.callingsetmobile"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 472
    const-string v6, "com.skt.cats_portforwarding"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 475
    iget-object v6, p2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v7, 0x42001

    const/4 v8, 0x0

    invoke-interface {v6, p0, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 477
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 478
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v6

    const v7, 0x4280c

    const/4 v8, 0x0

    invoke-virtual {v6, p0, v7, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 483
    :cond_1
    iget-object v6, p2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v7, 0x42004

    const/4 v8, 0x0

    invoke-interface {v6, p0, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 485
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 486
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v6

    const v7, 0x42008

    const/4 v8, 0x0

    invoke-virtual {v6, p0, v7, v8}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 487
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v6

    const v7, 0x42007

    const/4 v8, 0x0

    invoke-virtual {v6, p0, v7, v8}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 491
    :cond_2
    const v6, 0x42816

    const/4 v7, 0x0

    invoke-virtual {p1, p0, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->registerForDataConnectEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 493
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 494
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const v7, 0x42021

    const/4 v8, 0x0

    invoke-virtual {v6, p0, v7, v8}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 496
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6, v7, v1, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 497
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    iput-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 500
    const-string v6, "ro.product.model"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 502
    .local v3, "modelName":Ljava/lang/String;
    const-string v6, "LG-F240K"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "LG-F220K"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "LG-F180K"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 503
    :cond_3
    sget-object v6, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 504
    sget-object v6, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_MULTIRAB_KT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 505
    const-string v6, "[LGE_DATA][LGDCT] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "modelName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Multirab Feature is = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_MULTIRAB_KT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v8}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", voice protection feature is = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v8}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_4
    sget-object v6, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v6}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 513
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v7, 0x4280f

    const/4 v8, 0x0

    invoke-interface {v6, p0, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->registorForPacketPaging(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 514
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "enable_call_protect_when_calling"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 516
    const-string v6, "net.is_dropping_packet"

    const-string v7, "false"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V

    .line 529
    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 531
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v6

    instance-of v6, v6, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-eqz v6, :cond_6

    .line 532
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iput-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mGsst:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 533
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->isGsm:Z

    .line 540
    :cond_6
    sget-object v6, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_NOTI_USERDATADISABLE_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v6}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9

    .line 541
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mNotification:Landroid/app/Notification;

    .line 542
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mNotification:Landroid/app/Notification;

    const-wide/16 v8, 0x0

    iput-wide v8, v6, Landroid/app/Notification;->when:J

    .line 543
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mNotification:Landroid/app/Notification;

    const/16 v7, 0x10

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 544
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mNotification:Landroid/app/Notification;

    const v7, 0x108008a

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 545
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->notification_intent:Landroid/content/Intent;

    .line 546
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mNotification:Landroid/app/Notification;

    iget-object v7, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->notification_intent:Landroid/content/Intent;

    const/high16 v10, 0x10000000

    invoke-static {v7, v8, v9, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 549
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/lge/internal/R$string;->data_disable_body:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 550
    .local v0, "details":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/lge/internal/R$string;->data_disable_title:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 551
    .local v5, "title":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mNotification:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 553
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_a

    .line 554
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->notification_intent:Landroid/content/Intent;

    const-string v7, "com.android.settings"

    const-string v8, "com.android.settings.lgesetting.wireless.DataEnabledSettingBootableSKT"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 564
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mNotification:Landroid/app/Notification;

    iget-object v7, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->notification_intent:Landroid/content/Intent;

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 566
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mNotification:Landroid/app/Notification;

    iget-object v7, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mNotification:Landroid/app/Notification;

    iget-object v8, v8, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7, v5, v0, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 569
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 572
    .local v4, "notificationManager":Landroid/app/NotificationManager;
    const/4 v2, 0x0

    .line 573
    .local v2, "is_need_popup":Z
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v6

    const/4 v7, 0x6

    if-eq v6, v7, :cond_7

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_f

    .line 574
    :cond_7
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    sget-object v7, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->getDataNetworkMode:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v8, ""

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_e

    const/4 v2, 0x1

    .line 579
    :cond_8
    :goto_2
    if-nez v2, :cond_11

    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v6

    if-nez v6, :cond_11

    const-string v6, "true"

    const-string v7, "persist.radio.isroaming"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 581
    const-string v6, "[LGE_DATA][LGDCT] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[LGEDataConnectionTracker]setNotification: put notification "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const/16 v6, 0x9f6

    iget-object v7, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v4, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 594
    .end local v0    # "details":Ljava/lang/CharSequence;
    .end local v2    # "is_need_popup":Z
    .end local v4    # "notificationManager":Landroid/app/NotificationManager;
    .end local v5    # "title":Ljava/lang/CharSequence;
    :cond_9
    :goto_3
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mLTEDataRoamingSettingObserver:Lcom/android/internal/telephony/lgdata/LgDcTracker$LTEDataRoamingSettingObserver;

    iget-object v7, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/lgdata/LgDcTracker$LTEDataRoamingSettingObserver;->register(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 555
    .restart local v0    # "details":Ljava/lang/CharSequence;
    .restart local v5    # "title":Ljava/lang/CharSequence;
    :cond_a
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_c

    .line 556
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->notification_intent:Landroid/content/Intent;

    const-string v7, "com.android.settings"

    const-string v8, "com.android.settings.lgesetting.wireless.DataNetworkModePayPopupKT"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    iget-object v7, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->notification_intent:Landroid/content/Intent;

    const-string v8, "isRoaming"

    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isRoamingOOS()Z

    move-result v6

    const/4 v9, 0x1

    if-ne v6, v9, :cond_b

    const/4 v6, 0x1

    :goto_4
    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_b
    const/4 v6, 0x0

    goto :goto_4

    .line 558
    :cond_c
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_d

    .line 559
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->notification_intent:Landroid/content/Intent;

    const-string v7, "com.android.settings"

    const-string v8, "com.android.settings.lgesetting.wireless.DataNetworkModePayPopupLGT"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 561
    :cond_d
    const-string v6, "[LGE_DATA][LGDCT] "

    const-string v7, "[LGEDataConnectionTracker] it\'s abnormal case"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 574
    .restart local v2    # "is_need_popup":Z
    .restart local v4    # "notificationManager":Landroid/app/NotificationManager;
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 575
    :cond_f
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_8

    .line 576
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "preferred_data_network_mode"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_10

    const/4 v2, 0x1

    :goto_5
    goto/16 :goto_2

    :cond_10
    const/4 v2, 0x0

    goto :goto_5

    .line 586
    :cond_11
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->is_remove_noti:Z

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/lgdata/LgDcTracker;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/lgdata/LgDcTracker;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$200()[Z
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->setTeardownRequested:[Z

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/lgdata/LgDcTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/lgdata/LgDcTracker;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->handleLTEDataOnRoamingChange()V

    return-void
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1595
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1597
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 1598
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x0

    aget v2, v3, v4

    .line 1600
    .local v2, "modemNetworkMode":I
    const-string v3, "[LGE_DATA][LGDCT] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetPreferredNetworkTypeResponse: modemNetworkMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getPreferredNetworkMode()I

    move-result v1

    .line 1603
    .local v1, "curPreferMode":I
    const-string v3, "[LGE_DATA][LGDCT] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetPreferredNetworkTypeReponse: curPreferMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    const/16 v3, 0xb

    if-ne v2, v3, :cond_2

    .line 1623
    :cond_0
    const-string v3, "[LGE_DATA][LGDCT] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetPreferredNetworkTypeResponse: if 1: modemNetworkMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    if-eq v2, v1, :cond_1

    .line 1628
    const-string v3, "[LGE_DATA][LGDCT] "

    const-string v4, "handleGetPreferredNetworkTypeResponse: if 2: modemNetworkMode != curPreferMode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    const-string v3, "[LGE_DATA][LGDCT] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetPreferredNetworkTypeResponse: setPreferredNetworkMode set to = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredNetworkMode(I)V

    .line 1641
    .end local v1    # "curPreferMode":I
    .end local v2    # "modemNetworkMode":I
    :cond_1
    :goto_0
    return-void

    .line 1637
    .restart local v1    # "curPreferMode":I
    .restart local v2    # "modemNetworkMode":I
    :cond_2
    const-string v3, "[LGE_DATA][LGDCT] "

    const-string v4, "handleGetPreferredNetworkTypeResponse: else: reset to default"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->resetNetworkModeToDefault()V

    goto :goto_0
.end method

.method private handleLTEDataOnRoamingChange()V
    .locals 4

    .prologue
    .line 1758
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->getLTEDataRoamingEnable()Z

    move-result v0

    .line 1759
    .local v0, "enableDataLteRoaming":Z
    const-string v1, "[LGE_DATA][LGDCT] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleLTEDataOnRoamingChange(), enableDataLteRoaming : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnSelectionHdlr:Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->selectApnForLteRoamingOfUplus(Z)V

    .line 1761
    return-void
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1644
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1646
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 1647
    const-string v1, "[LGE_DATA][LGDCT] "

    const-string v2, "SetPreferredNetworkType is success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    :goto_0
    return-void

    .line 1649
    :cond_0
    const-string v1, "[LGE_DATA][LGDCT] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetPreferredNetworkType is failed, exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const v2, 0x42805

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneBase;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private retryAfterDisconnected(Ljava/lang/String;)Z
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1443
    const/4 v1, 0x1

    .line 1444
    .local v1, "retry":Z
    const-string v2, "persist.telephony.mpdn"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1445
    .local v0, "SUPPORT_MPDN":Z
    const-string v2, "radioTurnedOff"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_1

    const-string v2, "SinglePdnArbitration"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1447
    :cond_0
    const/4 v1, 0x0

    .line 1449
    :cond_1
    return v1
.end method


# virtual methods
.method public changePreferrredNetworkMode(Z)V
    .locals 13
    .param p1, "enabled"    # Z

    .prologue
    const v12, 0x42806

    const/4 v11, 0x1

    .line 1498
    const/4 v5, -0x1

    .line 1499
    .local v5, "newPreferMode":I
    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getPreferredNetworkMode()I

    move-result v1

    .line 1500
    .local v1, "curPreferMode":I
    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v2

    .line 1502
    .local v2, "curRadioTech":I
    const/4 v0, 0x0

    .line 1505
    .local v0, "Is_LWmode_selected":Z
    const-string v8, "[LGE_DATA][LGDCT] "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[changePreferrredNetworkMode] enabled:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", curPreferMode:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v10, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->networkModeToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", curRadioTech:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mobile_data"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1511
    .local v3, "dataNetwork":I
    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "data_roaming"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 1512
    .local v7, "roamingData":I
    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lte_roaming"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1513
    .local v4, "lteRoaming":I
    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isRoamingOOS()Z

    move-result v6

    .line 1515
    .local v6, "roaming":Z
    sget-object v8, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_LTE_ROAMING_KT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v8}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v6, :cond_2

    .line 1517
    const-string v8, "[LGE_DATA][LGDCT] "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[sehyun] dataNetwork = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", roamingData = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", lteRoaming = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    if-eqz v4, :cond_0

    if-nez v7, :cond_2

    :cond_0
    if-eqz p1, :cond_2

    .line 1591
    :cond_1
    :goto_0
    return-void

    .line 1522
    :cond_2
    if-eqz p1, :cond_4

    .line 1523
    sparse-switch v1, :sswitch_data_0

    .line 1573
    :cond_3
    :goto_1
    :sswitch_0
    const-string v8, "[LGE_DATA][LGDCT] "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[changePreferrredNetworkMode] newPreferMode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v10, v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->networkModeToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / curPreferMode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v10, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->networkModeToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    const/4 v8, -0x1

    if-eq v5, v8, :cond_1

    if-eq v5, v1, :cond_1

    .line 1577
    const-string v8, "[LGE_DATA][LGDCT] "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[changePreferrredNetworkMode] change to newPreferMode:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v10, v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->networkModeToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    if-eqz v0, :cond_5

    .line 1582
    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 1527
    :sswitch_1
    const/16 v5, 0x9

    .line 1528
    goto :goto_1

    .line 1534
    :sswitch_2
    const/16 v5, 0xc

    .line 1535
    goto :goto_1

    .line 1542
    :cond_4
    sparse-switch v1, :sswitch_data_1

    goto :goto_1

    .line 1546
    :sswitch_3
    const/4 v5, 0x3

    .line 1548
    sget-object v8, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_MODE_CHANGE_NT_MODE_WCDMA_PREF_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v8}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1549
    const/4 v5, 0x0

    goto :goto_1

    .line 1557
    :sswitch_4
    const/4 v5, 0x2

    .line 1560
    sget-object v8, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_MODECHANGE_KT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v8}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1562
    const/4 v0, 0x1

    .line 1563
    const-string v8, "[LGE_DATA][LGDCT] "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[changePreferrredNetworkMode] Is_LWmode_selected : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1587
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1588
    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v8, v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredNetworkMode(I)V

    goto/16 :goto_0

    .line 1523
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x9 -> :sswitch_1
        0xc -> :sswitch_2
    .end sparse-switch

    .line 1542
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_3
        0x2 -> :sswitch_0
        0x3 -> :sswitch_3
        0x9 -> :sswitch_3
        0xc -> :sswitch_4
    .end sparse-switch
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 1658
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1662
    const-string v0, "[LGE_DATA][LGDCT] "

    const-string v1, "other country do not use this function. so return."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    :goto_0
    return-void

    .line 1667
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_GPRS_REJECTED:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1668
    iget-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->isGsm:Z

    if-eqz v0, :cond_1

    .line 1669
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mGsst:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mGsst:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v1, 0x3ef

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPdpRejectedNotification(II)V

    .line 1675
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 1676
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1678
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForNetworkAttached(Landroid/os/Handler;)V

    .line 1681
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1682
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregistorForPacketPaging(Landroid/os/Handler;)V

    .line 1685
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataNetworkStateChanged(Landroid/os/Handler;)V

    .line 1686
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1688
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 1689
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 1691
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->unregisterForDataConnectEvent(Landroid/os/Handler;)V

    .line 1692
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 1693
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1696
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mLTEDataRoamingSettingObserver:Lcom/android/internal/telephony/lgdata/LgDcTracker$LTEDataRoamingSettingObserver;

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LgDcTracker$LTEDataRoamingSettingObserver;->unregister(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public getLTEDataRoamingEnable()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1725
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1726
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v3, "data_lte_roaming"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1728
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return v2

    .line 1727
    :catch_0
    move-exception v1

    .line 1728
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method public getOverallState()Lcom/android/internal/telephony/DctConstants$State;
    .locals 7

    .prologue
    .line 1455
    const/4 v3, 0x0

    .line 1456
    .local v3, "isConnecting":Z
    const/4 v4, 0x1

    .line 1457
    .local v4, "isFailed":Z
    const/4 v2, 0x0

    .line 1459
    .local v2, "isAnyEnabled":Z
    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v5, v5, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1460
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1461
    const/4 v2, 0x1

    .line 1462
    sget-object v5, Lcom/android/internal/telephony/lgdata/LgDcTracker$2;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 1465
    :pswitch_0
    const-string v5, "[LGE_DATA][LGDCT] "

    const-string v6, "overall state is CONNECTED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    .line 1493
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :goto_1
    return-object v5

    .line 1469
    .restart local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :pswitch_1
    const/4 v3, 0x1

    .line 1470
    const/4 v4, 0x0

    .line 1471
    goto :goto_0

    .line 1474
    :pswitch_2
    const/4 v4, 0x0

    goto :goto_0

    .line 1480
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_1
    if-nez v2, :cond_2

    .line 1481
    const-string v5, "[LGE_DATA][LGDCT] "

    const-string v6, "overall state is IDLE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    goto :goto_1

    .line 1485
    :cond_2
    if-eqz v3, :cond_3

    .line 1486
    const-string v5, "[LGE_DATA][LGDCT] "

    const-string v6, "overall state is CONNECTING"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    goto :goto_1

    .line 1488
    :cond_3
    if-nez v4, :cond_4

    .line 1489
    const-string v5, "[LGE_DATA][LGDCT] "

    const-string v6, "overall state is IDLE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    goto :goto_1

    .line 1492
    :cond_4
    const-string v5, "[LGE_DATA][LGDCT] "

    const-string v6, "overall state is FAILED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    goto :goto_1

    .line 1462
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public handleCSProtection(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1395
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1396
    const-string v2, "[LGE_DATA][LGDCT] "

    const-string v3, "handleCSProtection"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1399
    .local v0, "ModemInfo":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1400
    const-string v2, "[LGE_DATA][LGDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCSProtection ModemInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1403
    .local v1, "bEnabled":Z
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    if-eqz v2, :cond_0

    .line 1404
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v3, v2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    sget-object v4, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->setBlockPacketMenuProcess:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v5, ""

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v4, v5, v2}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    .line 1412
    .end local v0    # "ModemInfo":Ljava/lang/String;
    .end local v1    # "bEnabled":Z
    :cond_0
    :goto_1
    return-void

    .line 1404
    .restart local v0    # "ModemInfo":Ljava/lang/String;
    .restart local v1    # "bEnabled":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1409
    .end local v0    # "ModemInfo":Ljava/lang/String;
    .end local v1    # "bEnabled":Z
    :cond_2
    const-string v2, "[LGE_DATA][LGDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCSProtection, exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 68
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 602
    const-string v63, "[LGE_DATA][LGDCT] "

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "handleMessage msg="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v63, v0

    sparse-switch v63, :sswitch_data_0

    .line 1384
    :cond_0
    :goto_0
    const-string v63, "[LGE_DATA][LGDCT] "

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "Unidentified event msg="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    :cond_1
    :goto_1
    return-void

    .line 606
    :sswitch_0
    const-string v63, "[LGE_DATA][LGDCT] "

    const-string v64, "EVENT_RADIO_AVAILABLE"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const-string v63, "upgrade.mpdn.db"

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v63

    if-eqz v63, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isRoamingOOS()Z

    move-result v63

    if-nez v63, :cond_2

    .line 612
    const-string v63, "[LGE_DATA][LGDCT] "

    const-string v64, "Netowrk mode change from gw to gwl when upgrade APN DB"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v63, v0

    const/16 v64, 0x9

    const/16 v65, 0x0

    invoke-virtual/range {v63 .. v65}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    const/16 v64, 0x9

    invoke-virtual/range {v63 .. v64}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredNetworkMode(I)V

    .line 616
    :cond_2
    const-string v63, "upgrade.mpdn.db"

    const-string v64, "false"

    invoke-static/range {v63 .. v64}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    sget-object v63, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v63

    const/16 v64, 0x1

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_1

    .line 621
    const-string v63, "net.Is_phone_booted"

    invoke-static/range {v63 .. v63}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    const-string v64, "true"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    .line 623
    .local v49, "mbooting_phone":Z
    if-eqz v49, :cond_1

    .line 624
    const-string v63, "ro.product.model"

    invoke-static/range {v63 .. v63}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 626
    .local v50, "model":Ljava/lang/String;
    const-string v63, "LG-F160S"

    move-object/from16 v0, v63

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_3

    const-string v63, "LG-F180S"

    move-object/from16 v0, v63

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_3

    const-string v63, "LG-F200S"

    move-object/from16 v0, v63

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_4

    .line 631
    :cond_3
    const-string v63, "[LGE_DATA][LGDCT] "

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "[LGE_DATA] NV model = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 634
    :cond_4
    const-string v63, "[LGE_DATA][LGDCT] "

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "[LGE_DATA] Non NV model = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v47

    .line 636
    .local v47, "mContext":Landroid/content/Context;
    invoke-virtual/range {v47 .. v47}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v63

    const-string v64, "multi_rab_setting"

    const/16 v65, 0x1

    invoke-static/range {v63 .. v65}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v63

    const/16 v64, 0x1

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_5

    const/16 v22, 0x1

    .line 640
    .local v22, "bEnabled":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v63, v0

    if-eqz v63, :cond_7

    .line 641
    const-string v63, "[LGE_DATA][LGDCT] "

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "[LGE_DATA] bEnabled = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v64, v0

    sget-object v65, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->setBlockPacketMenuProcess:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v66, ""

    if-eqz v22, :cond_6

    const/16 v63, 0x1

    :goto_3
    move-object/from16 v0, v64

    move-object/from16 v1, v65

    move-object/from16 v2, v66

    move/from16 v3, v63

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    goto/16 :goto_1

    .line 636
    .end local v22    # "bEnabled":Z
    :cond_5
    const/16 v22, 0x0

    goto :goto_2

    .line 642
    .restart local v22    # "bEnabled":Z
    :cond_6
    const/16 v63, 0x0

    goto :goto_3

    .line 645
    :cond_7
    const-string v63, "[LGE_DATA][LGDCT] "

    const-string v64, "[LGE_DATA]dataMgr Null"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 655
    .end local v22    # "bEnabled":Z
    .end local v47    # "mContext":Landroid/content/Context;
    .end local v49    # "mbooting_phone":Z
    .end local v50    # "model":Ljava/lang/String;
    :sswitch_1
    const-string v63, "[LGE_DATA][LGDCT] "

    const-string v64, "EVENT_RADIO_REGISTERED_TO_NETWORK"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    sget-object v63, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_SELECT_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v63

    if-eqz v63, :cond_1

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnSelectionHdlr:Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnSelectionHdlr:Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;

    move-object/from16 v64, v0

    const-string v64, "Select_default_APN_between_domestic_and_roaming"

    invoke-virtual/range {v63 .. v64}, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->selectApn(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 665
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v64, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    check-cast v63, Landroid/os/AsyncResult;

    move-object/from16 v0, v64

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onLockStateChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 671
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v47

    .line 673
    .restart local v47    # "mContext":Landroid/content/Context;
    const-string v63, "[LGE_DATA][LGDCT] "

    const-string v64, "EVENT_PACKET_PAGING_RECEIVED"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    sget-object v63, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_MULTIRAB_KT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v63

    const/16 v64, 0x1

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_8

    .line 676
    const-string v63, "[LGE_DATA][LGDCT] "

    const-string v64, "mFDTimeoutMaxCount 10sec"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    new-instance v38, Landroid/content/Intent;

    const-string v63, "com.lge.ACTION_FD_TRIGGER_TIME_VAL_CHANGED"

    move-object/from16 v0, v38

    move-object/from16 v1, v63

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 678
    .local v38, "intent":Landroid/content/Intent;
    const-string v63, "value"

    const/16 v64, 0x1

    move-object/from16 v0, v38

    move-object/from16 v1, v63

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 679
    move-object/from16 v0, v47

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 682
    .end local v38    # "intent":Landroid/content/Intent;
    :cond_8
    const-string v63, "[LGE_DATA][LGDCT] "

    const-string v64, "Packet Paing Drop"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-virtual/range {v63 .. v64}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V

    goto/16 :goto_1

    .line 689
    .end local v47    # "mContext":Landroid/content/Context;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    .line 691
    .local v21, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mConnMgr:Landroid/net/ConnectivityManager;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-virtual/range {v63 .. v64}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v55

    .line 693
    .local v55, "p":Landroid/net/LinkProperties;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v63, v0

    check-cast v63, Ljava/util/ArrayList;

    move-object/from16 v26, v63

    check-cast v26, Ljava/util/ArrayList;

    .line 695
    .local v26, "dataCallStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataCallResponse;>;"
    const-string v63, "[LGE_DATA][LGDCT] "

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "EVENT_DATA_STATE_CHANGED = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v63, v0

    if-eqz v63, :cond_9

    .line 699
    const-string v63, "[LGE_DATA][LGDCT] "

    const-string v64, "onDataStateChanged(ar): exception; likely radio not available, ignore"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 703
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v63, v0

    const-string v64, "default"

    invoke-virtual/range {v63 .. v64}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 706
    .local v12, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v12, :cond_a

    .line 707
    invoke-virtual {v12}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v63

    sget-object v64, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    if-ne v0, v1, :cond_a

    .line 708
    const-string v63, "[LGE_DATA][LGDCT] "

    const-string v64, "[LGE_DATA_STATE]Default is connected"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_a
    const/16 v42, 0x0

    .line 714
    .local v42, "isAnyDataCallDormant":Z
    const/16 v41, 0x0

    .line 717
    .local v41, "isAnyDataCallActive":Z
    if-eqz v55, :cond_e

    if-eqz v26, :cond_e

    .line 719
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v36

    .local v36, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_4
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_e

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    .line 721
    .local v52, "newState":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    sget-object v63, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DEBUG_ENABLE_PRIVACY_LOG:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v63

    if-eqz v63, :cond_c

    .line 722
    const-string v63, "[LGE_DATA][LGDCT] "

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "newState = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string v65, "iface = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v55 .. v55}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_c
    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    move-object/from16 v63, v0

    invoke-virtual/range {v55 .. v55}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_b

    .line 726
    move-object/from16 v0, v52

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v64, v0

    const/16 v64, 0x2

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_d

    const/16 v41, 0x1

    .line 727
    :cond_d
    move-object/from16 v0, v52

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v64, v0

    const/16 v64, 0x1

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_b

    const/16 v42, 0x1

    goto :goto_4

    .line 735
    .end local v36    # "i$":Ljava/util/Iterator;
    .end local v52    # "newState":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    :cond_e
    const-string v63, "[LGE_DATA][LGDCT] "

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "isAnyDataCallActive = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string v65, "  isAnyDataCallDormant = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    if-nez v41, :cond_1

    if-eqz v42, :cond_1

    .line 739
    sget-object v63, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v63

    const/16 v64, 0x1

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_f

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v63

    const-string v64, "activity"

    invoke-virtual/range {v63 .. v64}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager;

    .line 744
    .local v11, "am":Landroid/app/ActivityManager;
    const/16 v63, 0x1

    move/from16 v0, v63

    invoke-virtual {v11, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v58

    .line 745
    .local v58, "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v58, :cond_1

    .line 748
    const/16 v63, 0x0

    move-object/from16 v0, v58

    move/from16 v1, v63

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v63

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v61, v0

    .line 749
    .local v61, "topActivity":Landroid/content/ComponentName;
    invoke-virtual/range {v61 .. v61}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v51

    .line 750
    .local v51, "name":Ljava/lang/String;
    invoke-virtual/range {v61 .. v61}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v62

    .line 751
    .local v62, "topclassname":Ljava/lang/String;
    const-string v63, "[LGE_DATA][LGDCT] "

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "topActivity.getPackageName(); = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const-string v63, "[LGE_DATA][LGDCT] "

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "topActivity.getClassName(); = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const-string v63, "[LGE_DATA][LGDCT] "

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "VOICE CALL  ::"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    sget-boolean v65, Lcom/android/internal/telephony/lgdata/LgDcTracker;->voice_call_ing:Z

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const-string v63, "com.android.incallui.InCallActivity"

    invoke-virtual/range {v62 .. v63}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_f

    sget-boolean v63, Lcom/android/internal/telephony/lgdata/LgDcTracker;->voice_call_ing:Z

    if-eqz v63, :cond_f

    .line 757
    const-string v63, "[LGE_DATA][LGDCT] "

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "(InCallScreen) topActivity.getClassName(); = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v63, v0

    sget-object v64, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->getAlreadyAppUsedPacket:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v65, ""

    const/16 v66, 0x0

    invoke-virtual/range {v63 .. v66}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    move-result v63

    if-nez v63, :cond_f

    .line 761
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v63

    const/16 v64, 0x6

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_f

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v63, v0

    const/16 v64, 0x1

    invoke-virtual/range {v63 .. v64}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V

    .line 764
    const-string v63, "[LGE_DATA][LGDCT] "

    const-string v64, "functionForPacketDrop is called"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    .end local v11    # "am":Landroid/app/ActivityManager;
    .end local v51    # "name":Ljava/lang/String;
    .end local v58    # "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v61    # "topActivity":Landroid/content/ComponentName;
    .end local v62    # "topclassname":Ljava/lang/String;
    :cond_f
    sget-object v63, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_MULTIRAB_KT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v63

    const/16 v64, 0x1

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_1

    .line 771
    new-instance v38, Landroid/content/Intent;

    const-string v63, "com.lge.ACTION_FD_TRIGGER_TIME_VAL_CHANGED"

    move-object/from16 v0, v38

    move-object/from16 v1, v63

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 772
    .restart local v38    # "intent":Landroid/content/Intent;
    const-string v63, "value"

    const/16 v64, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v63

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 780
    .end local v12    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v21    # "ar":Landroid/os/AsyncResult;
    .end local v26    # "dataCallStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataCallResponse;>;"
    .end local v38    # "intent":Landroid/content/Intent;
    .end local v41    # "isAnyDataCallActive":Z
    .end local v42    # "isAnyDataCallDormant":Z
    .end local v55    # "p":Landroid/net/LinkProperties;
    :sswitch_5
    const/16 v63, 0x1

    sput-boolean v63, Lcom/android/internal/telephony/lgdata/LgDcTracker;->voice_call_ing:Z

    goto/16 :goto_1

    .line 786
    :sswitch_6
    const/16 v63, 0x0

    sput-boolean v63, Lcom/android/internal/telephony/lgdata/LgDcTracker;->voice_call_ing:Z

    .line 788
    sget-object v63, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v63

    const/16 v64, 0x1

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_1

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getState()I

    move-result v63

    const/16 v64, 0x1

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_10

    .line 792
    const-string v63, "[LGE_DATA][LGDCT] "

    const-string v64, "[LGE_DATA] functionForResetDrop for STATE_OUT_OF_SERVICE"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-virtual/range {v63 .. v64}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V

    goto/16 :goto_1

    .line 797
    :cond_10
    const-string v63, "[LGE_DATA][LGDCT] "

    const-string v64, "[LGE_DATA] functionForPacketDrop for ACTION_VOICE_CALL_ENDED"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-virtual/range {v63 .. v64}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V

    goto/16 :goto_1

    .line 805
    :sswitch_7
    sget-object v63, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_MULTIRAB_KT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v63

    const/16 v64, 0x1

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_1

    .line 806
    const-string v63, "[LGE_DATA][LGDCT] "

    const-string v64, "############### calling goFastDormancy"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    new-instance v38, Landroid/content/Intent;

    const-string v63, "com.lge.ACTION_FD_TRIGGER_GO_DORMANT"

    move-object/from16 v0, v38

    move-object/from16 v1, v63

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 809
    .restart local v38    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 816
    .end local v38    # "intent":Landroid/content/Intent;
    :sswitch_8
    const-string v63, "[LGE_DATA][LGDCT] "

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "EVENT_SETDEFAULT_TOCHANGE_AFTER_DELAY complete : "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v63

    sget-object v64, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    if-ne v0, v1, :cond_1

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnSelectionHdlr:Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnSelectionHdlr:Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;

    move-object/from16 v64, v0

    const-string v64, "Added_APN_failed"

    invoke-virtual/range {v63 .. v64}, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->selectApn(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 826
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    instance-of v0, v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    move/from16 v63, v0

    if-eqz v63, :cond_11

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v64, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    check-cast v63, Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-object/from16 v0, v64

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onTrySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    goto/16 :goto_1

    .line 828
    :cond_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v63, v0

    if-eqz v63, :cond_12

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v64, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    check-cast v63, Ljava/lang/String;

    move-object/from16 v0, v64

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onTrySetupData(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 831
    :cond_12
    const-string v63, "[LGE_DATA][LGDCT] "

    const-string v64, "EVENT_TRY_SETUP request w/o apnContext or String"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 838
    :sswitch_a
    const-string v63, "[LGE_DATA][LGDCT] "

    const-string v64, "EVENT_DATA_ERROR_FAIL_CAUSE"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    check-cast v63, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->pdpreject_causecode(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 844
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    check-cast v63, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->handleCSProtection(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 848
    :sswitch_c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 852
    :sswitch_d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 859
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v53, v0

    check-cast v53, Landroid/os/AsyncResult;

    .line 860
    .local v53, "new_ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v53

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v63, v0

    check-cast v63, Lcom/android/internal/telephony/lgdata/LgDcTrackerMsg;

    move-object/from16 v48, v63

    check-cast v48, Lcom/android/internal/telephony/lgdata/LgDcTrackerMsg;

    .line 862
    .local v48, "mLgDataMsg":Lcom/android/internal/telephony/lgdata/LgDcTrackerMsg;
    if-eqz v48, :cond_1

    move-object/from16 v0, v48

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTrackerMsg;->valid:Z

    move/from16 v63, v0

    if-eqz v63, :cond_1

    .line 864
    const-string v63, "[LGE_DATA][LGDCT] "

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "[LGE_DATA] EVENT_FAKE_DATACONNECTION_EVENT  valid : "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTrackerMsg;->what:I

    move/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTrackerMsg;->what:I

    move/from16 v63, v0

    sparse-switch v63, :sswitch_data_1

    goto/16 :goto_0

    .line 980
    :sswitch_f
    move-object/from16 v0, v48

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTrackerMsg;->success:Z

    move/from16 v46, v0

    .line 981
    .local v46, "issucess":Z
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTrackerMsg;->type:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 983
    .local v17, "apnType":Ljava/lang/String;
    const-string v63, "[LGE_DATA][LGDCT] "

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "[LGE_DATA] apnType = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string v65, " valid ="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v48

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTrackerMsg;->valid:Z

    move/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    const/16 v19, 0x0

    .line 986
    .local v19, "apn_info":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const-string v63, "[LGE_DATA][LGDCT] "

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "[LGE_DATA] EVENT_DATA_SETUP_COMPLETE apnType = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 990
    .restart local v12    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v12, :cond_19

    .line 991
    const-string v63, "[LGE_DATA][LGDCT] "

    const-string v64, "[LGE_DATA] EVENT_DATA_SETUP_COMPLETE apnContext is NULL!"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 869
    .end local v12    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v17    # "apnType":Ljava/lang/String;
    .end local v19    # "apn_info":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v46    # "issucess":Z
    :sswitch_10
    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTrackerMsg;->apntype_n:I

    move/from16 v20, v0

    .line 870
    .local v20, "apntype":I
    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTrackerMsg;->enable:I

    move/from16 v32, v0

    .line 872
    .local v32, "enable":I
    const-string v63, "[LGE_DATA][LGDCT] "

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "[LGE_DATA] EVENT_ENABLE_NEW_APN type =  "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string v65, " enable = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v63, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 875
    .local v15, "apnContext_new":Lcom/android/internal/telephony/dataconnection/ApnContext;
    const/16 v63, 0x1

    move/from16 v0, v32

    move/from16 v1, v63

    if-ne v0, v1, :cond_13

    .line 877
    sget-object v63, Lcom/android/internal/telephony/lgdata/LgDcTracker;->setTeardownRequested:[Z

    const/16 v64, 0x0

    aput-boolean v64, v63, v20

    goto/16 :goto_0

    .line 882
    :cond_13
    sget-object v63, Lcom/android/internal/telephony/lgdata/LgDcTracker;->setTeardownRequested:[Z

    const/16 v64, 0x1

    aput-boolean v64, v63, v20

    goto/16 :goto_0

    .line 887
    .end local v15    # "apnContext_new":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v20    # "apntype":I
    .end local v32    # "enable":I
    :sswitch_11
    const-string v63, "[LGE_DATA][LGDCT] "

    const-string v64, "[LGE_DATA] EVENT_TRY_SETUP_DATA = "

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTrackerMsg;->reason:Ljava/lang/String;

    move-object/from16 v56, v0

    .line 889
    .local v56, "reason":Ljava/lang/String;
    goto/16 :goto_0

    .line 896
    .end local v56    # "reason":Ljava/lang/String;
    :sswitch_12
    const-string v63, "[LGE_DATA][LGDCT] "

    const-string v64, "[LGE_DATA] EVENT_ROAMING_OFF = "

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const-string v63, "true"

    const-string v64, "persist.radio.isroaming"

    invoke-static/range {v64 .. v64}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_0

    sget-object v63, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_NOTI_USERDATADISABLE_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v63

    const/16 v64, 0x1

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_0

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v63

    const-string v64, "notification"

    invoke-virtual/range {v63 .. v64}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/app/NotificationManager;

    .line 902
    .local v54, "notificationManager":Landroid/app/NotificationManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v63

    sget v64, Lcom/lge/internal/R$string;->data_disable_body:I

    invoke-virtual/range {v63 .. v64}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v30

    .line 903
    .local v30, "details":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v63

    sget v64, Lcom/lge/internal/R$string;->data_disable_title:I

    invoke-virtual/range {v63 .. v64}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v59

    .line 904
    .local v59, "title":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v63, v0

    move-object/from16 v0, v59

    move-object/from16 v1, v63

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->notification_intent:Landroid/content/Intent;

    move-object/from16 v64, v0

    const-string v65, "isRoaming"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isRoamingOOS()Z

    move-result v63

    const/16 v66, 0x1

    move/from16 v0, v63

    move/from16 v1, v66

    if-ne v0, v1, :cond_15

    const/16 v63, 0x1

    :goto_5
    move-object/from16 v0, v64

    move-object/from16 v1, v65

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v64

    const/16 v65, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->notification_intent:Landroid/content/Intent;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    invoke-static/range {v64 .. v67}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v63

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v65, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    move-object/from16 v2, v59

    move-object/from16 v3, v30

    move-object/from16 v4, v65

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "mobile_data"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    const/16 v65, 0x1

    invoke-static/range {v63 .. v65}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    .line 915
    .local v27, "dataNetwork":I
    const/16 v63, 0x1

    move/from16 v0, v27

    move/from16 v1, v63

    if-eq v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->is_remove_noti:Z

    move/from16 v63, v0

    if-eqz v63, :cond_16

    .line 917
    :cond_14
    const-string v63, "[LGE_DATA][LGDCT] "

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "[EVENT_ROAMING_OFF] clean Notification is_remove_noti : "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->is_remove_noti:Z

    move/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    const/16 v63, 0x9f6

    move-object/from16 v0, v54

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 906
    .end local v27    # "dataNetwork":I
    :cond_15
    const/16 v63, 0x0

    goto/16 :goto_5

    .line 920
    .restart local v27    # "dataNetwork":I
    :cond_16
    const-string v63, "[LGE_DATA][LGDCT] "

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "[EVENT_ROAMING_OFF] put notification is_remove_noti : "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->is_remove_noti:Z

    move/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    const/16 v63, 0x9f6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v64, v0

    move-object/from16 v0, v54

    move/from16 v1, v63

    move-object/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 928
    .end local v27    # "dataNetwork":I
    .end local v30    # "details":Ljava/lang/CharSequence;
    .end local v54    # "notificationManager":Landroid/app/NotificationManager;
    .end local v59    # "title":Ljava/lang/CharSequence;
    :sswitch_13
    const-string v63, "[LGE_DATA][LGDCT] "

    const-string v64, "[LGE_DATA] EVENT_ROAMING_ON = "

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isRoamingOOS()Z

    move-result v44

    .line 931
    .local v44, "isRoaming":Z
    const-string v63, "[LGE_DATA][LGDCT] "

    const-string v64, "onRoamingOn: setup data on roaming"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    if-eqz v44, :cond_17

    sget-object v63, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_SKT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v63

    if-eqz v63, :cond_17

    sget-object v63, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_SELECT_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v63

    if-eqz v63, :cond_17

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    if-eqz v63, :cond_17

    .line 936
    const-string v63, "[LGE_DATA][LGDCT] "

    const-string v64, "onRoamingOn: sendModemProfile"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getInitialProfiles()[Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendModemProfile([Lcom/android/internal/telephony/dataconnection/ApnSetting;)V

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataOnRoamingEnabled()Z

    move-result v63

    if-nez v63, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getPreferredNetworkMode()I

    move-result v63

    const/16 v64, 0x9

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_17

    .line 942
    const-string v63, "[LGE_DATA][LGDCT] "

    const-string v64, "Roaming Disable and mode=NT_MODE_WCDMA_PREF"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    const v65, 0x42806

    move-object/from16 v0, p0

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v65

    invoke-virtual/range {v63 .. v65}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-virtual/range {v63 .. v64}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredNetworkMode(I)V

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v63

    const-string v64, "preferred_network_mode"

    const/16 v65, 0x0

    invoke-static/range {v63 .. v65}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 953
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isRoamingOOS()Z

    move-result v63

    if-eqz v63, :cond_18

    sget-object v63, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_NOTI_USERDATADISABLE_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v63

    const/16 v64, 0x1

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_18

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v63

    const-string v64, "notification"

    invoke-virtual/range {v63 .. v64}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/app/NotificationManager;

    .line 956
    .restart local v54    # "notificationManager":Landroid/app/NotificationManager;
    const-string v63, "[LGE_DATA][LGDCT] "

    const-string v64, "[EVENT_ROAMING_ON]this case is on roaming, so clean Notification"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const/16 v63, 0x9f6

    move-object/from16 v0, v54

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 963
    .end local v54    # "notificationManager":Landroid/app/NotificationManager;
    :cond_18
    sget-object v63, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_MPDN_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v63

    if-eqz v63, :cond_0

    if-eqz v44, :cond_0

    sget-object v63, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_LTE_ROAMING_KT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v63

    if-eqz v63, :cond_0

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataOnRoamingEnabled()Z

    move-result v28

    .line 967
    .local v28, "data_roaming":Z
    const-string v63, "[LGE_DATA][LGDCT] "

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "[LGE_DATA] KT LTE roaming = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string v65, " data roaming = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string v65, "supprot ModeChange For POAB"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->changePreferrredNetworkMode(Z)V

    goto/16 :goto_0

    .line 996
    .end local v28    # "data_roaming":Z
    .end local v44    # "isRoaming":Z
    .restart local v12    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .restart local v17    # "apnType":Ljava/lang/String;
    .restart local v19    # "apn_info":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .restart local v46    # "issucess":Z
    :cond_19
    if-eqz v12, :cond_1a

    .line 997
    invoke-virtual {v12}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v19

    .line 999
    :cond_1a
    if-eqz v46, :cond_28

    .line 1002
    sget-object v63, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_GPRS_REJECTED:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v63

    if-eqz v63, :cond_1b

    .line 1004
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->isGsm:Z

    move/from16 v63, v0

    if-eqz v63, :cond_1b

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mGsst:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mGsst:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v64, v0

    const/16 v64, 0x3ef

    const/16 v65, 0x0

    invoke-virtual/range {v63 .. v65}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPdpRejectedNotification(II)V

    .line 1012
    :cond_1b
    const-string v16, ""

    .line 1013
    .local v16, "apnStr":Ljava/lang/String;
    if-eqz v19, :cond_1c

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1016
    :cond_1c
    const-string v63, "[LGE_DATA][LGDCT] "

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "[LGE_DATA] onDataSetupComplete: success apn name="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    sget-object v63, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_PCSCF_ON_UPLUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v63

    if-eqz v63, :cond_1f

    invoke-virtual {v12}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v63

    const-string v64, "ims"

    invoke-static/range {v63 .. v64}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v63

    if-eqz v63, :cond_1f

    .line 1021
    const/16 v34, 0x0

    .line 1023
    .local v34, "found_ims_pcscf":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v63, v0

    const-string v64, "ims"

    invoke-virtual/range {v63 .. v64}, Lcom/android/internal/telephony/PhoneBase;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v63

    if-eqz v63, :cond_1e

    .line 1024
    const/16 v35, 0x0

    .local v35, "i":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v63, v0

    const-string v64, "ims"

    invoke-virtual/range {v63 .. v64}, Lcom/android/internal/telephony/PhoneBase;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, v63

    array-length v0, v0

    move/from16 v63, v0

    move/from16 v0, v35

    move/from16 v1, v63

    if-ge v0, v1, :cond_1e

    const/16 v63, 0x2

    move/from16 v0, v35

    move/from16 v1, v63

    if-ge v0, v1, :cond_1e

    .line 1025
    const-string v63, "[LGE_DATA][LGDCT] "

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "[LGE_DATA][pcscf] getPcscfAddress"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string v65, "["

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v65, v0

    const-string v66, "ims"

    invoke-virtual/range {v65 .. v66}, Lcom/android/internal/telephony/PhoneBase;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v65

    aget-object v65, v65, v35

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string v65, "]"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v63, v0

    const-string v64, "ims"

    invoke-virtual/range {v63 .. v64}, Lcom/android/internal/telephony/PhoneBase;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v63

    aget-object v63, v63, v35

    if-eqz v63, :cond_1d

    .line 1029
    const-string v63, "[LGE_DATA][LGDCT] "

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "[LGE_DATA][pcscf] set v4 or v6 property["

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string v65, "]"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "net.pcscf"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v64, v0

    const-string v65, "ims"

    invoke-virtual/range {v64 .. v65}, Lcom/android/internal/telephony/PhoneBase;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v64

    aget-object v64, v64, v35

    invoke-static/range {v63 .. v64}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    or-int/lit8 v34, v34, 0x1

    .line 1024
    :cond_1d
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_6

    .line 1035
    .end local v35    # "i":I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    const-string v64, "ims"

    invoke-virtual/range {v63 .. v64}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v37

    .line 1038
    .local v37, "imsLp":Landroid/net/LinkProperties;
    if-eqz v37, :cond_25

    .line 1039
    :try_start_0
    const-string v63, "[LGE_DATA][LGDCT] "

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "[LGE_DATA] found_ims_pcscf = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string v65, "  dns = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v37 .. v37}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    const-string v63, "[LGE_DATA][LGDCT] "

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "[LGE_DATA] dns size = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v37 .. v37}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v65

    invoke-interface/range {v65 .. v65}, Ljava/util/List;->size()I

    move-result v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    :goto_7
    if-eqz v37, :cond_1f

    invoke-virtual/range {v37 .. v37}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/util/List;->size()I

    move-result v63

    if-nez v63, :cond_1f

    if-nez v34, :cond_1f

    .line 1048
    const-string v63, "[LGE_DATA][LGDCT] "

    const-string v64, "[LGE_DATA] cleanUpConnection ims pdn "

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v63, v0

    const-string v64, "ims"

    invoke-virtual/range {v63 .. v64}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1050
    .local v7, "ImsApnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    const/16 v64, 0x1

    move-object/from16 v0, v63

    move/from16 v1, v64

    invoke-virtual {v0, v1, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendCleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1062
    .end local v7    # "ImsApnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v34    # "found_ims_pcscf":I
    .end local v37    # "imsLp":Landroid/net/LinkProperties;
    :cond_1f
    :goto_8
    sget-object v63, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DISCONNECT_DEFAULT_PDN_WITHOUT_DNS_UPLUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v63

    if-eqz v63, :cond_20

    invoke-virtual {v12}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v63

    const-string v64, "default"

    invoke-static/range {v63 .. v64}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v63

    if-eqz v63, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v63

    const-string v64, "45006"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_20

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    const-string v64, "default"

    invoke-virtual/range {v63 .. v64}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v29

    .line 1066
    .local v29, "defaultLp":Landroid/net/LinkProperties;
    if-eqz v29, :cond_26

    .line 1067
    const-string v63, "[LGE_DATA][LGDCT] "

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "[LGE_DATA] default PDN, dns = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v29 .. v29}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    invoke-virtual/range {v29 .. v29}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/util/List;->size()I

    move-result v63

    if-nez v63, :cond_20

    .line 1069
    const-string v63, "[LGE_DATA][LGDCT] "

    const-string v64, "[LGE_DATA] cleanUpConnection default pdn "

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v63, v0

    const-string v64, "default"

    invoke-virtual/range {v63 .. v64}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1071
    .local v6, "DefaultApnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    const/16 v64, 0x1

    move-object/from16 v0, v63

    move/from16 v1, v64

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendCleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 1080
    .end local v6    # "DefaultApnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v29    # "defaultLp":Landroid/net/LinkProperties;
    :cond_20
    :goto_9
    sget-object v63, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_FAST_CONNECT_DEFAULT_PDN_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v63

    if-eqz v63, :cond_23

    invoke-virtual {v12}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v63

    const-string v64, "ims"

    invoke-static/range {v63 .. v64}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v63

    if-eqz v63, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "mobile_data"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    const/16 v65, 0x1

    invoke-static/range {v63 .. v65}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v63

    const/16 v64, 0x1

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_23

    .line 1084
    const/4 v10, 0x0

    .line 1086
    .local v10, "alarmIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v63, v0

    const-string v64, "default"

    invoke-virtual/range {v63 .. v64}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1089
    .local v13, "apnContext_default":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v13, :cond_21

    .line 1090
    invoke-virtual {v13}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReconnectIntent()Landroid/app/PendingIntent;

    move-result-object v10

    .line 1093
    :cond_21
    const-string v63, "[LGE_DATA][LGDCT] "

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "[onDataSetupComplete] : alarmIntent  :"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string v65, "  default  :"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    if-eqz v10, :cond_22

    invoke-virtual {v13}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v63

    sget-object v64, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    if-eq v0, v1, :cond_22

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mReconnectIntentForDefaultType:Landroid/content/Intent;

    move-object/from16 v63, v0

    if-eqz v63, :cond_22

    .line 1100
    const-string v63, "[LGE_DATA][LGDCT] "

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "onDataSetupComplete: cancel alarmIntent  :"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string v65, "   default  :"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cancelReconnectAlarm(Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 1103
    const-string v63, "[LGE_DATA][LGDCT] "

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "onDataSetupComplete: fast reconnect Default with Intent "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mReconnectIntentForDefaultType:Landroid/content/Intent;

    move-object/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mReconnectIntentForDefaultType:Landroid/content/Intent;

    move-object/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1107
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    move-object/from16 v0, v64

    move-object/from16 v1, v63

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mReconnectIntentForDefaultType:Landroid/content/Intent;

    .line 1113
    .end local v10    # "alarmIntent":Landroid/app/PendingIntent;
    .end local v13    # "apnContext_default":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_23
    sget-object v63, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_OTA_UPLUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v63

    if-eqz v63, :cond_24

    .line 1114
    invoke-virtual {v12}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v63

    const-string v64, "default"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_24

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    const/16 v64, 0x1

    move/from16 v0, v64

    move-object/from16 v1, v63

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->internetPDNconnected:Z

    .line 1116
    const-string v63, "[LGE_DATA][LGDCT] "

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "[LGE_DATA] Default PDN Connected, internetPDNconnected = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->internetPDNconnected:Z

    move/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :cond_24
    sget-object v63, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_LTE_ROAMING_LGU:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v63

    if-eqz v63, :cond_0

    .line 1123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isRoamingOOS()Z

    move-result v63

    if-eqz v63, :cond_0

    invoke-virtual {v12}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v63

    const-string v64, "default"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_0

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v8

    .line 1125
    .local v8, "aRadioTech":I
    const/16 v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/lgdata/LgDcTracker;->bConnectionStatus:Z

    .line 1128
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->getLTEDataRoamingEnable()Z

    move-result v63

    if-eqz v63, :cond_27

    .line 1129
    const-string v63, "[LGE_DATA][LGDCT] "

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "[LGE_DATA] send intent LTE_ROAMING_DATA_CONNECTION_LGU, Connection_Status="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->bConnectionStatus:Z

    move/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string v65, " , RadioTechnology="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    new-instance v39, Landroid/content/Intent;

    const-string v63, "lge.intent.action.LTE_ROAMING_DATA_CONNECTION_LGU"

    move-object/from16 v0, v39

    move-object/from16 v1, v63

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1132
    .local v39, "intentForRoaming":Landroid/content/Intent;
    const-string v63, "Connection_Status"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->bConnectionStatus:Z

    move/from16 v64, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v63

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1141
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1042
    .end local v8    # "aRadioTech":I
    .end local v39    # "intentForRoaming":Landroid/content/Intent;
    .restart local v34    # "found_ims_pcscf":I
    .restart local v37    # "imsLp":Landroid/net/LinkProperties;
    :cond_25
    :try_start_1
    const-string v63, "[LGE_DATA][LGDCT] "

    const-string v64, "[LGE_DATA] Ims LinkProperties is null"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    .line 1053
    :catch_0
    move-exception v31

    .line 1054
    .local v31, "e":Ljava/lang/Exception;
    const-string v63, "[LGE_DATA][LGDCT] "

    const-string v64, "handleMessage : Exception has been occurred."

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1074
    .end local v31    # "e":Ljava/lang/Exception;
    .end local v34    # "found_ims_pcscf":I
    .end local v37    # "imsLp":Landroid/net/LinkProperties;
    .restart local v29    # "defaultLp":Landroid/net/LinkProperties;
    :cond_26
    const-string v63, "[LGE_DATA][LGDCT] "

    const-string v64, "[LGE_DATA] Default LinkProperties is null"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1135
    .end local v29    # "defaultLp":Landroid/net/LinkProperties;
    .restart local v8    # "aRadioTech":I
    :cond_27
    const-string v63, "[LGE_DATA][LGDCT] "

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "[LGE_DATA] send intent GW_ROAMING_DATA_CONNECTION_LGU, Connection_Status="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->bConnectionStatus:Z

    move/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string v65, " , RadioTechnology="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    new-instance v39, Landroid/content/Intent;

    const-string v63, "lge.intent.action.GW_ROAMING_DATA_CONNECTION_LGU"

    move-object/from16 v0, v39

    move-object/from16 v1, v63

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1138
    .restart local v39    # "intentForRoaming":Landroid/content/Intent;
    const-string v63, "Connection_Status"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->bConnectionStatus:Z

    move/from16 v64, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v63

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_a

    .line 1151
    .end local v8    # "aRadioTech":I
    .end local v16    # "apnStr":Ljava/lang/String;
    .end local v39    # "intentForRoaming":Landroid/content/Intent;
    :cond_28
    sget-object v63, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_SELECT_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v63

    if-eqz v63, :cond_29

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v63

    const/16 v64, 0x6

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_29

    .line 1153
    const v63, 0x4280b

    move-object/from16 v0, p0

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->hasMessages(I)Z

    move-result v63

    if-eqz v63, :cond_29

    .line 1155
    const-string v63, "[LGE_DATA][LGDCT] "

    const-string v64, "[onDataSetupComplete] : Remove EVENT_SETDEFAULT_TOCHANGE_AFTER_DELAY"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    const v63, 0x4280b

    move-object/from16 v0, p0

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->removeMessages(I)V

    .line 1161
    :cond_29
    sget-object v63, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_GPRS_REJECTED:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v63

    if-eqz v63, :cond_2b

    .line 1163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v63, v0

    const v64, 0x42808

    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v64

    invoke-interface/range {v63 .. v64}, Lcom/android/internal/telephony/CommandsInterface;->getLastPdpFailCause(Landroid/os/Message;)V

    .line 1164
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->isGsm:Z

    move/from16 v63, v0

    if-eqz v63, :cond_2b

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isRoamingOOS()Z

    move-result v45

    .line 1166
    .local v45, "isRoamingValue":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v63

    const-string v64, "airplane_mode_on"

    const/16 v65, 0x0

    invoke-static/range {v63 .. v65}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 1168
    .local v9, "airplaneMode":I
    sget-object v23, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 1169
    .local v23, "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    const/16 v24, 0x0

    .line 1171
    .local v24, "causeValue":Ljava/lang/String;
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTrackerMsg;->cause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-object/from16 v63, v0

    if-eqz v63, :cond_2a

    .line 1172
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTrackerMsg;->cause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-object/from16 v23, v0

    .line 1173
    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "("

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, ") "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1176
    :cond_2a
    const-string v63, "[LGE_DATA][LGDCT] "

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "causeValue "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    if-eqz v12, :cond_2b

    if-eqz v23, :cond_2b

    sget-object v63, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-object/from16 v0, v23

    move-object/from16 v1, v63

    if-eq v0, v1, :cond_2b

    .line 1178
    invoke-virtual {v12}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v64, v0

    const-string v64, "ims"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_2e

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->isPermanentFail()Z

    move-result v63

    if-eqz v63, :cond_2e

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v63

    const/16 v64, 0x5

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_2e

    .line 1180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mGsst:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mGsst:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v64, v0

    const/16 v64, 0x3f0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v65

    invoke-virtual/range {v63 .. v65}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPdpRejectedNotification(II)V

    .line 1183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v63

    const-string v64, "connectivity"

    invoke-virtual/range {v63 .. v64}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/net/ConnectivityManager;

    .line 1187
    .local v25, "cm":Landroid/net/ConnectivityManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v64

    sget v65, Lcom/lge/internal/R$string;->dataBlock_noti_text:I

    invoke-virtual/range {v64 .. v65}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v64

    invoke-interface/range {v64 .. v64}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v64

    const/16 v65, 0x1

    invoke-static/range {v63 .. v65}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v60

    .line 1188
    .local v60, "toast":Landroid/widget/Toast;
    const/16 v63, 0x50

    const/16 v64, 0x0

    const/16 v65, 0x0

    move-object/from16 v0, v60

    move/from16 v1, v63

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 1189
    invoke-virtual/range {v60 .. v60}, Landroid/widget/Toast;->show()V

    .line 1204
    .end local v9    # "airplaneMode":I
    .end local v23    # "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .end local v24    # "causeValue":Ljava/lang/String;
    .end local v25    # "cm":Landroid/net/ConnectivityManager;
    .end local v45    # "isRoamingValue":Z
    .end local v60    # "toast":Landroid/widget/Toast;
    :cond_2b
    :goto_b
    sget-object v63, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_SELECT_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v63

    if-eqz v63, :cond_2c

    .line 1206
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v63

    const/16 v64, 0x6

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_2c

    .line 1208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnSelectionHdlr:Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnSelectionHdlr:Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;

    move-object/from16 v64, v0

    const-string v64, "Added_APN_failed"

    invoke-virtual/range {v63 .. v64}, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->selectApn(Ljava/lang/String;)V

    .line 1209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnSelectionHdlr:Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;

    move-object/from16 v63, v0

    const/16 v64, 0x1

    move/from16 v0, v64

    move-object/from16 v1, v63

    iput-boolean v0, v1, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->APN_FAIL_Flag:Z

    .line 1215
    :cond_2c
    sget-object v63, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_LTE_ROAMING_LGU:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v63

    if-eqz v63, :cond_0

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isRoamingOOS()Z

    move-result v63

    if-eqz v63, :cond_0

    invoke-virtual {v12}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v63

    const-string v64, "default"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_0

    .line 1217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v8

    .line 1218
    .restart local v8    # "aRadioTech":I
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/lgdata/LgDcTracker;->bConnectionStatus:Z

    .line 1222
    const/16 v63, 0x2

    move/from16 v0, v63

    if-eq v8, v0, :cond_2d

    const/16 v63, 0x1

    move/from16 v0, v63

    if-ne v8, v0, :cond_0

    .line 1224
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->getLTEDataRoamingEnable()Z

    move-result v63

    if-eqz v63, :cond_2f

    .line 1225
    const-string v63, "[LGE_DATA][LGDCT] "

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "[LGE_DATA] send intent LTE_ROAMING_DATA_CONNECTION_LGU, Connection_Status="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->bConnectionStatus:Z

    move/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string v65, " , RadioTechnology="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    new-instance v39, Landroid/content/Intent;

    const-string v63, "lge.intent.action.LTE_ROAMING_DATA_CONNECTION_LGU"

    move-object/from16 v0, v39

    move-object/from16 v1, v63

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1228
    .restart local v39    # "intentForRoaming":Landroid/content/Intent;
    const-string v63, "Connection_Status"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->bConnectionStatus:Z

    move/from16 v64, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v63

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1237
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1190
    .end local v8    # "aRadioTech":I
    .end local v39    # "intentForRoaming":Landroid/content/Intent;
    .restart local v9    # "airplaneMode":I
    .restart local v23    # "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .restart local v24    # "causeValue":Ljava/lang/String;
    .restart local v45    # "isRoamingValue":Z
    :cond_2e
    if-eqz v45, :cond_2b

    const/16 v63, 0x1

    move/from16 v0, v63

    if-eq v9, v0, :cond_2b

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v63

    const/16 v64, 0x2

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_2b

    .line 1192
    invoke-virtual {v12}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v63

    if-eqz v63, :cond_2b

    .line 1193
    const-string v63, "[LGE_DATA][LGDCT] "

    const-string v64, "[MIN]setNorification!!"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mGsst:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mGsst:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v64, v0

    const/16 v64, 0x3f0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v65

    invoke-virtual/range {v63 .. v65}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPdpRejectedNotification(II)V

    goto/16 :goto_b

    .line 1231
    .end local v9    # "airplaneMode":I
    .end local v23    # "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .end local v24    # "causeValue":Ljava/lang/String;
    .end local v45    # "isRoamingValue":Z
    .restart local v8    # "aRadioTech":I
    :cond_2f
    const-string v63, "[LGE_DATA][LGDCT] "

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "[LGE_DATA] send intent GW_ROAMING_DATA_CONNECTION_LGU, Connection_Status="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->bConnectionStatus:Z

    move/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string v65, " , RadioTechnology="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    new-instance v39, Landroid/content/Intent;

    const-string v63, "lge.intent.action.GW_ROAMING_DATA_CONNECTION_LGU"

    move-object/from16 v0, v39

    move-object/from16 v1, v63

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1234
    .restart local v39    # "intentForRoaming":Landroid/content/Intent;
    const-string v63, "Connection_Status"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->bConnectionStatus:Z

    move/from16 v64, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v63

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_c

    .line 1246
    .end local v8    # "aRadioTech":I
    .end local v12    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v17    # "apnType":Ljava/lang/String;
    .end local v19    # "apn_info":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v39    # "intentForRoaming":Landroid/content/Intent;
    .end local v46    # "issucess":Z
    :sswitch_14
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTrackerMsg;->type:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1247
    .local v18, "apnType_done":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1250
    .local v14, "apnContext_done":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v14, :cond_0

    .line 1252
    const-string v63, "[LGE_DATA][LGDCT] "

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "[LGE_DATA] EVENT_DISCONNECT_DONE = type : "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    const-string v63, "1"

    const-string v64, "sys.boot_completed"

    invoke-static/range {v64 .. v64}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    .line 1255
    .local v43, "isBootCompleted":Z
    if-eqz v43, :cond_30

    sget-object v63, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_MULTIRAB_KT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v63

    const/16 v64, 0x1

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_30

    .line 1256
    new-instance v40, Landroid/content/Intent;

    const-string v63, "com.kt.CALL_PROTECTION_MENU_ON"

    move-object/from16 v0, v40

    move-object/from16 v1, v63

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1257
    .local v40, "intent_s":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1261
    .end local v40    # "intent_s":Landroid/content/Intent;
    :cond_30
    sget-object v63, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v63

    const/16 v64, 0x1

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_31

    .line 1264
    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v63

    const-string v64, "default"

    invoke-static/range {v63 .. v64}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v63

    if-eqz v63, :cond_31

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-virtual/range {v63 .. v64}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V

    .line 1271
    :cond_31
    sget-object v63, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_OTA_UPLUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v63

    if-eqz v63, :cond_0

    .line 1272
    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v63

    const-string v64, "default"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_0

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    move/from16 v0, v64

    move-object/from16 v1, v63

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->internetPDNconnected:Z

    .line 1274
    const-string v63, "[LGE_DATA][LGDCT] "

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "[LGE_DATA] Default PDN Disonnected, internetPDNconnected = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->internetPDNconnected:Z

    move/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1282
    .end local v14    # "apnContext_done":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v18    # "apnType_done":Ljava/lang/String;
    .end local v43    # "isBootCompleted":Z
    :sswitch_15
    const-string v63, "[LGE_DATA][LGDCT] "

    const-string v64, "[LGE_DATA] EVENT_APN_CHANGED = "

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    sget-object v63, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_SELECT_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v63

    if-eqz v63, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v63

    const/16 v64, 0xe

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v63

    const/16 v64, 0x6

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_0

    .line 1289
    const v63, 0x4280b

    move-object/from16 v0, p0

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v63

    const-wide/16 v64, 0x2ee0

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-wide/from16 v2, v64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1296
    :sswitch_16
    const-string v63, "[LGE_DATA][LGDCT] "

    const-string v64, "EVENT_RECORDS_LOADED"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    sget-object v63, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_SELECT_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v63

    if-eqz v63, :cond_0

    .line 1301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnSelectionHdlr:Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->setApnID()V

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnSelectionHdlr:Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnSelectionHdlr:Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;

    move-object/from16 v64, v0

    const-string v64, "Select_default_APN_between_domestic_and_roaming"

    invoke-virtual/range {v63 .. v64}, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->selectApn(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1325
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "mobile_data"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    const/16 v65, 0x1

    invoke-static/range {v63 .. v65}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v63

    const/16 v64, 0x1

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_34

    const/16 v33, 0x1

    .line 1326
    .local v33, "enabled":Z
    :goto_d
    const-string v63, "[LGE_DATA][LGDCT] "

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "[LGE_DATA] CMD_SET_USER_DATA_ENABLE = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    sget-object v63, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v63

    if-eqz v63, :cond_32

    .line 1330
    if-nez v33, :cond_32

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-virtual/range {v63 .. v64}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V

    .line 1335
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isRoamingOOS()Z

    move-result v57

    .line 1336
    .local v57, "roaming":Z
    sget-object v63, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_MPDN_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v63

    if-eqz v63, :cond_33

    if-eqz v57, :cond_33

    sget-object v63, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_LTE_ROAMING_KT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v63

    if-eqz v63, :cond_33

    .line 1339
    const-string v63, "[LGE_DATA][LGDCT] "

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "[LGE_DATA] taegyu KT LTE Roaming roaming = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string v65, "supprot ModeChange For POAB"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->changePreferrredNetworkMode(Z)V

    .line 1345
    :cond_33
    const-string v63, "true"

    const-string v64, "persist.radio.isroaming"

    invoke-static/range {v64 .. v64}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_0

    sget-object v63, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_NOTI_USERDATADISABLE_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v63

    const/16 v64, 0x1

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_0

    .line 1346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v63

    const-string v64, "notification"

    invoke-virtual/range {v63 .. v64}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/app/NotificationManager;

    .line 1348
    .restart local v54    # "notificationManager":Landroid/app/NotificationManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v63

    sget v64, Lcom/lge/internal/R$string;->data_disable_body:I

    invoke-virtual/range {v63 .. v64}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v30

    .line 1349
    .restart local v30    # "details":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v63

    sget v64, Lcom/lge/internal/R$string;->data_disable_title:I

    invoke-virtual/range {v63 .. v64}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v59

    .line 1350
    .restart local v59    # "title":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v63, v0

    move-object/from16 v0, v59

    move-object/from16 v1, v63

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->notification_intent:Landroid/content/Intent;

    move-object/from16 v64, v0

    const-string v65, "isRoaming"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isRoamingOOS()Z

    move-result v63

    const/16 v66, 0x1

    move/from16 v0, v63

    move/from16 v1, v66

    if-ne v0, v1, :cond_35

    const/16 v63, 0x1

    :goto_e
    move-object/from16 v0, v64

    move-object/from16 v1, v65

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v64

    const/16 v65, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->notification_intent:Landroid/content/Intent;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    invoke-static/range {v64 .. v67}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v63

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v65, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    move-object/from16 v2, v59

    move-object/from16 v3, v30

    move-object/from16 v4, v65

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1357
    if-eqz v33, :cond_36

    .line 1358
    const-string v63, "[LGE_DATA][LGDCT] "

    const-string v64, "[CMD_SET_USER_DATA_ENABLE]clean Notification"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    const/16 v63, 0x9f6

    move-object/from16 v0, v54

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1365
    :goto_f
    const/16 v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/lgdata/LgDcTracker;->is_remove_noti:Z

    goto/16 :goto_0

    .line 1325
    .end local v30    # "details":Ljava/lang/CharSequence;
    .end local v33    # "enabled":Z
    .end local v54    # "notificationManager":Landroid/app/NotificationManager;
    .end local v57    # "roaming":Z
    .end local v59    # "title":Ljava/lang/CharSequence;
    :cond_34
    const/16 v33, 0x0

    goto/16 :goto_d

    .line 1352
    .restart local v30    # "details":Ljava/lang/CharSequence;
    .restart local v33    # "enabled":Z
    .restart local v54    # "notificationManager":Landroid/app/NotificationManager;
    .restart local v57    # "roaming":Z
    .restart local v59    # "title":Ljava/lang/CharSequence;
    :cond_35
    const/16 v63, 0x0

    goto :goto_e

    .line 1361
    :cond_36
    const-string v63, "[LGE_DATA][LGDCT] "

    const-string v64, "[CMD_SET_USER_DATA_ENABLE]setNotification: put notification"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    const/16 v63, 0x9f6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v64, v0

    move-object/from16 v0, v54

    move/from16 v1, v63

    move-object/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_f

    .line 604
    :sswitch_data_0
    .sparse-switch
        0x42001 -> :sswitch_0
        0x42004 -> :sswitch_4
        0x42007 -> :sswitch_5
        0x42008 -> :sswitch_6
        0x42805 -> :sswitch_c
        0x42806 -> :sswitch_d
        0x42808 -> :sswitch_a
        0x4280a -> :sswitch_b
        0x4280b -> :sswitch_8
        0x4280c -> :sswitch_1
        0x4280d -> :sswitch_2
        0x4280f -> :sswitch_3
        0x42810 -> :sswitch_7
        0x42816 -> :sswitch_e
        0x42817 -> :sswitch_9
    .end sparse-switch

    .line 866
    :sswitch_data_1
    .sparse-switch
        0x42000 -> :sswitch_f
        0x42002 -> :sswitch_16
        0x42003 -> :sswitch_11
        0x4200b -> :sswitch_13
        0x4200c -> :sswitch_12
        0x4200d -> :sswitch_10
        0x4200f -> :sswitch_14
        0x42013 -> :sswitch_15
        0x4201e -> :sswitch_17
    .end sparse-switch
.end method

.method public isLTEDataRoamingAvailable()Z
    .locals 1

    .prologue
    .line 1712
    const/4 v0, 0x0

    return v0
.end method

.method protected pdpreject_causecode(Landroid/os/AsyncResult;)V
    .locals 10
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v8, 0x0

    .line 1417
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1418
    .local v4, "mContext":Landroid/content/Context;
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v7, "default"

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1420
    .local v1, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    const/4 v5, 0x0

    .line 1421
    .local v5, "rawPdpRejectCuase":I
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 1422
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    check-cast v6, [I

    aget v5, v6, v8

    .line 1425
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isRoamingOOS()Z

    move-result v3

    .line 1426
    .local v3, "isRoaming":Z
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1427
    .local v0, "airplaneMode":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1428
    .local v2, "causeValue":Ljava/lang/String;
    const-string v6, "[LGE_DATA][LGDCT] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "######## EVENT_DATA_ERROR_FAIL_CAUSE ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    sget-object v7, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->debugFileWrite:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    .line 1433
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isRoamingOOS()Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x21

    if-ne v5, v6, :cond_1

    sget-object v6, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_REJECT_INTENT_UPLUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v6}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1434
    const-string v6, "[LGE_DATA][LGDCT] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[LGE_DATA][PDP_reject] EVENT_DATA_ERROR_FAIL_CAUSE ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/DataConnectionManager;->SendBroadcastPdpRejectCause(I)V

    .line 1439
    :cond_1
    return-void
.end method

.method public setDataEnabledDB(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1766
    const-string v0, "[LGE_DATA][LGDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataEnabledDB(), enabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iput-boolean p1, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    .line 1768
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mobile_data"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1770
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "mobile_data"

    if-eqz p1, :cond_1

    :goto_1
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1772
    return-void

    :cond_0
    move v0, v2

    .line 1768
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1770
    goto :goto_1
.end method

.method public setLTEDataRoamingEnable(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 1716
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->getLTEDataRoamingEnable()Z

    move-result v1

    if-eq v1, p1, :cond_0

    .line 1717
    const-string v1, "[LGE_DATA][LGDCT] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLTEDataRoamingEnable, enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1719
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "data_lte_roaming"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1721
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    return-void

    .line 1719
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLTEDataRoamingEnableNotApplyObserver(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 1702
    const-string v1, "[LGE_DATA][LGDCT] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLTEDataRoamingEnableNotApplyObserver, enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mLTEDataRoamingSettingObserver:Lcom/android/internal/telephony/lgdata/LgDcTracker$LTEDataRoamingSettingObserver;

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/lgdata/LgDcTracker$LTEDataRoamingSettingObserver;->unregister(Landroid/content/Context;)V

    .line 1705
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1706
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "data_lte_roaming"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1708
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mLTEDataRoamingSettingObserver:Lcom/android/internal/telephony/lgdata/LgDcTracker$LTEDataRoamingSettingObserver;

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/lgdata/LgDcTracker$LTEDataRoamingSettingObserver;->register(Landroid/content/Context;)V

    .line 1709
    return-void

    .line 1706
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
