.class public Landroid/telephony/SubscriptionManager;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final ACTIVE:I = 0x1

.field public static final ASK_USER_SUB_ID:J = -0x3e9L

.field public static final COLOR:Ljava/lang/String; = "color"

.field public static final COLOR_1:I = 0x0

.field public static final COLOR_2:I = 0x1

.field public static final COLOR_3:I = 0x2

.field public static final COLOR_4:I = 0x3

.field public static final COLOR_DEFAULT:I = 0x0

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"

.field public static final DATA_ROAMING_DEFAULT:I = 0x0

.field public static final DATA_ROAMING_DISABLE:I = 0x0

.field public static final DATA_ROAMING_ENABLE:I = 0x1

.field private static final DBG:Z = true

.field public static final DEFAULT_INT_VALUE:I = -0x64

.field public static final DEFAULT_NAME_RES:I = 0x104000e

.field public static final DEFAULT_NW_MODE:I = -0x1

.field public static final DEFAULT_PHONE_ID:I = 0x7fffffff

.field public static final DEFAULT_SLOT_ID:I = 0x7fffffff

.field public static final DEFAULT_STRING_VALUE:Ljava/lang/String; = "N/A"

.field public static final DEFAULT_SUB_ID:J = 0x7fffffffffffffffL

.field public static final DISLPAY_NUMBER_DEFAULT:I = 0x1

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final DISPLAY_NUMBER_FIRST:I = 0x1

.field public static final DISPLAY_NUMBER_FORMAT:Ljava/lang/String; = "display_number_format"

.field public static final DISPLAY_NUMBER_LAST:I = 0x2

.field public static final DISPLAY_NUMBER_NONE:I = 0x0

.field public static final EXTRA_VALUE_NEW_SIM:I = 0x1

.field public static final EXTRA_VALUE_NOCHANGE:I = 0x4

.field public static final EXTRA_VALUE_REMOVE_SIM:I = 0x2

.field public static final EXTRA_VALUE_REPOSITION_SIM:I = 0x3

.field public static final ICC_ID:Ljava/lang/String; = "icc_id"

.field public static final INACTIVE:I = 0x0

.field public static final INTENT_KEY_DETECT_STATUS:Ljava/lang/String; = "simDetectStatus"

.field public static final INTENT_KEY_NEW_SIM_SLOT:Ljava/lang/String; = "newSIMSlot"

.field public static final INTENT_KEY_NEW_SIM_STATUS:Ljava/lang/String; = "newSIMStatus"

.field public static final INTENT_KEY_SIM_COUNT:Ljava/lang/String; = "simCount"

.field public static final INVALID_PHONE_ID:I = -0x3e8

.field public static final INVALID_SLOT_ID:I = -0x3e8

.field public static final INVALID_SUB_ID:J = -0x3e8L

.field private static final LOG_TAG:Ljava/lang/String; = "SUB"

.field public static final MCC:Ljava/lang/String; = "mcc"

.field public static final MNC:Ljava/lang/String; = "mnc"

.field public static final NAME_SOURCE:Ljava/lang/String; = "name_source"

.field public static final NAME_SOURCE_DEFAULT_SOURCE:I = 0x0

.field public static final NAME_SOURCE_SIM_SOURCE:I = 0x1

.field public static final NAME_SOURCE_UNDEFINDED:I = -0x1

.field public static final NAME_SOURCE_USER_INPUT:I = 0x2

.field public static final NETWORK_MODE:Ljava/lang/String; = "network_mode"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field private static final RES_TYPE_BACKGROUND_DARK:I = 0x0

.field private static final RES_TYPE_BACKGROUND_LIGHT:I = 0x1

.field public static final SIM_ID:Ljava/lang/String; = "sim_id"

.field public static final SIM_NOT_INSERTED:I = -0x1

.field public static final SUB_CONFIGURATION_IN_PROGRESS:I = 0x2

.field public static final SUB_DEFAULT_CHANGED_ACTION:Ljava/lang/String; = "android.intent.action.SUB_DEFAULT_CHANGED"

.field public static final SUB_PREFIX:Ljava/lang/String; = "SUB 0"

.field public static final SUB_STATE:Ljava/lang/String; = "sub_state"

.field private static final VDBG:Z

.field private static final sSimBackgroundDarkRes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-string v0, "content://telephony/siminfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    .line 265
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->setSimResource(I)[I

    move-result-object v0

    sput-object v0, Landroid/telephony/SubscriptionManager;->sSimBackgroundDarkRes:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    const-string v0, "SubscriptionManager created"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public static activateSubId(J)V
    .locals 4
    .param p0, "subId"    # J

    .prologue
    .line 995
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activateSubId sub id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 997
    :try_start_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getISubInfo()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/android/internal/telephony/ISub;->activateSubId(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1001
    :goto_0
    return-void

    .line 998
    :catch_0
    move-exception v0

    .line 999
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static addSubInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 2
    .param p0, "iccId"    # Ljava/lang/String;
    .param p1, "slotId"    # I

    .prologue
    .line 472
    if-nez p0, :cond_0

    .line 473
    const-string v1, "[addSubInfoRecord]- null iccId"

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 475
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 476
    const-string v1, "[addSubInfoRecord]- invalid slotId"

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 480
    :cond_1
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 481
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_2

    .line 483
    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/ISub;->addSubInfoRecord(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 485
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static allDefaultsSelected()Z
    .locals 6

    .prologue
    const-wide/16 v4, -0x3e8

    const/4 v0, 0x0

    .line 939
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 948
    :cond_0
    :goto_0
    return v0

    .line 942
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 945
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 948
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static clearDefaultsForInactiveSubIds()V
    .locals 2

    .prologue
    .line 959
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 960
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 961
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->clearDefaultsForInactiveSubIds()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 966
    :cond_0
    :goto_0
    return-void

    .line 963
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static clearSubInfo()V
    .locals 2

    .prologue
    .line 925
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 926
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 927
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->clearSubInfo()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 933
    :cond_0
    :goto_0
    return-void

    .line 929
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static deactivateSubId(J)V
    .locals 4
    .param p0, "subId"    # J

    .prologue
    .line 1004
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deactivateSubId sub id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1006
    :try_start_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getISubInfo()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/android/internal/telephony/ISub;->deactivateSubId(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1010
    :goto_0
    return-void

    .line 1007
    :catch_0
    move-exception v0

    .line 1008
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static getActiveSubIdList()[J
    .locals 3

    .prologue
    .line 1062
    const/4 v1, 0x0

    .line 1065
    .local v1, "subId":[J
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1066
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1067
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getActiveSubIdList()[J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1073
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 1074
    const/4 v2, 0x0

    new-array v1, v2, [J

    .line 1077
    :cond_1
    return-object v1

    .line 1069
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getActiveSubInfoCount()I
    .locals 3

    .prologue
    .line 449
    const/4 v1, 0x0

    .line 452
    .local v1, "result":I
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 453
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 454
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getActiveSubInfoCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 460
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v1

    .line 456
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getActiveSubInfoList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 404
    const/4 v1, 0x0

    .line 407
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 408
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 409
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getActiveSubInfoList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 415
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 416
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    :cond_1
    return-object v1

    .line 411
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getAllSubInfoCount()I
    .locals 3

    .prologue
    .line 429
    const/4 v1, 0x0

    .line 432
    .local v1, "result":I
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 433
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 434
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getAllSubInfoCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 440
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v1

    .line 436
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getAllSubInfoList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    const/4 v1, 0x0

    .line 384
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 385
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 386
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getAllSubInfoList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 392
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 393
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    :cond_1
    return-object v1

    .line 388
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getDefaultDataPhoneId()I
    .locals 2

    .prologue
    .line 919
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    return v0
.end method

.method public static getDefaultDataSubId()J
    .locals 4

    .prologue
    .line 884
    const-wide/16 v2, -0x3e8

    .line 887
    .local v2, "subId":J
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 888
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 889
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getDefaultDataSubId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 896
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-wide v2

    .line 891
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getDefaultDataSubInfo()Landroid/telephony/SubInfoRecord;
    .locals 2

    .prologue
    .line 914
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->getSubInfoForSubscriber(J)Landroid/telephony/SubInfoRecord;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultSmsPhoneId()I
    .locals 2

    .prologue
    .line 879
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    return v0
.end method

.method public static getDefaultSmsSubId()J
    .locals 4

    .prologue
    .line 844
    const-wide/16 v2, -0x3e8

    .line 847
    .local v2, "subId":J
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 848
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 849
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getDefaultSmsSubId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 856
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-wide v2

    .line 851
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getDefaultSmsSubInfo()Landroid/telephony/SubInfoRecord;
    .locals 2

    .prologue
    .line 874
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->getSubInfoForSubscriber(J)Landroid/telephony/SubInfoRecord;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultSubId()J
    .locals 4

    .prologue
    .line 760
    const-wide/16 v2, -0x3e8

    .line 763
    .local v2, "subId":J
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 764
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 765
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getDefaultSubId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 772
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-wide v2

    .line 767
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getDefaultVoicePhoneId()I
    .locals 2

    .prologue
    .line 812
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    return v0
.end method

.method public static getDefaultVoiceSubId()J
    .locals 4

    .prologue
    .line 777
    const-wide/16 v2, -0x3e8

    .line 780
    .local v2, "subId":J
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 781
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 782
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getDefaultVoiceSubId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 789
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-wide v2

    .line 784
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getDefaultVoiceSubInfo()Landroid/telephony/SubInfoRecord;
    .locals 2

    .prologue
    .line 807
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->getSubInfoForSubscriber(J)Landroid/telephony/SubInfoRecord;

    move-result-object v0

    return-object v0
.end method

.method private static getISubInfo()Lcom/android/internal/telephony/ISub;
    .locals 1

    .prologue
    .line 1034
    const-string v0, "isub"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    return-object v0
.end method

.method public static getOnDemandDataSubId()J
    .locals 5

    .prologue
    const-wide/16 v2, -0x3e8

    .line 1106
    :try_start_0
    const-string v4, "isub"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1107
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 1108
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getOnDemandDataSubId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1113
    :cond_0
    :goto_0
    return-wide v2

    .line 1112
    :catch_0
    move-exception v0

    .line 1113
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static getPhoneId(J)I
    .locals 4
    .param p0, "subId"    # J

    .prologue
    .line 703
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 704
    const-string v2, "[getPhoneId]- fail"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 705
    const/16 v1, -0x3e8

    .line 720
    :cond_0
    :goto_0
    return v1

    .line 708
    :cond_1
    const/16 v1, -0x3e8

    .line 711
    .local v1, "result":I
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 712
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 713
    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/ISub;->getPhoneId(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 715
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getSlotId(J)I
    .locals 4
    .param p0, "subId"    # J

    .prologue
    .line 661
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 662
    const-string v2, "[getSlotId]- fail"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 665
    :cond_0
    const/16 v1, -0x3e8

    .line 668
    .local v1, "result":I
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 669
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_1

    .line 670
    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/ISub;->getSlotId(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 676
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1
    :goto_0
    return v1

    .line 672
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getSubId(I)[J
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    .line 682
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 683
    const-string v2, "[getSubId]- fail"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 684
    const/4 v1, 0x0

    .line 698
    :cond_0
    :goto_0
    return-object v1

    .line 687
    :cond_1
    const/4 v1, 0x0

    .line 690
    .local v1, "subId":[J
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 691
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 692
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISub;->getSubId(I)[J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 694
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getSubIdUsingPhoneId(I)J
    .locals 4
    .param p0, "phoneId"    # I

    .prologue
    .line 1145
    const-wide/16 v2, -0x3e8

    .line 1148
    .local v2, "subId":J
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1149
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1150
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISub;->getSubIdUsingPhoneId(I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1156
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-wide v2

    .line 1152
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getSubIdUsingSlotId(I)[J
    .locals 4
    .param p0, "slotId"    # I

    .prologue
    .line 1121
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getSubIdUsingSlotId]- fail, slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1125
    const/4 v1, 0x0

    .line 1139
    :cond_0
    :goto_0
    return-object v1

    .line 1128
    :cond_1
    const/4 v1, 0x0

    .line 1131
    .local v1, "subId":[J
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1132
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1133
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISub;->getSubIdUsingSlotId(I)[J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1135
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getSubInfoForSubscriber(J)Landroid/telephony/SubInfoRecord;
    .locals 4
    .param p0, "subId"    # J

    .prologue
    .line 290
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 291
    const-string v2, "[getSubInfoForSubscriberx]- invalid subId"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 292
    const/4 v1, 0x0

    .line 306
    :cond_0
    :goto_0
    return-object v1

    .line 295
    :cond_1
    const/4 v1, 0x0

    .line 298
    .local v1, "subInfo":Landroid/telephony/SubInfoRecord;
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 299
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 300
    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/ISub;->getSubInfoForSubscriber(J)Landroid/telephony/SubInfoRecord;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 302
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getSubInfoUsingIccId(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "iccId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    if-nez p0, :cond_1

    .line 319
    const-string v2, "[getSubInfoUsingIccId]- null iccid"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 320
    const/4 v1, 0x0

    .line 338
    :cond_0
    :goto_0
    return-object v1

    .line 323
    :cond_1
    const/4 v1, 0x0

    .line 326
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 327
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_2

    .line 328
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISub;->getSubInfoUsingIccId(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 335
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_2
    :goto_1
    if-nez v1, :cond_0

    .line 336
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    goto :goto_0

    .line 330
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static getSubInfoUsingSlotId(I)Ljava/util/List;
    .locals 3
    .param p0, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 349
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 350
    const-string v2, "[getSubInfoUsingSlotId]- invalid slotId"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 351
    const/4 v1, 0x0

    .line 369
    :cond_0
    :goto_0
    return-object v1

    .line 354
    :cond_1
    const/4 v1, 0x0

    .line 357
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 358
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_2

    .line 359
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISub;->getSubInfoUsingSlotId(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 366
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_2
    :goto_1
    if-nez v1, :cond_0

    .line 367
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    goto :goto_0

    .line 361
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static getSubState(J)I
    .locals 4
    .param p0, "subId"    # J

    .prologue
    .line 1013
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSubState sub id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1015
    :try_start_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getISubInfo()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/android/internal/telephony/ISub;->getSubState(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1017
    :goto_0
    return v1

    .line 1016
    :catch_0
    move-exception v0

    .line 1017
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSMSPromptEnabled()Z
    .locals 2

    .prologue
    .line 817
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 818
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 819
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->isSMSPromptEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 824
    :goto_0
    return v1

    .line 821
    :catch_0
    move-exception v1

    .line 824
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isValidPhoneId(I)Z
    .locals 1
    .param p0, "phoneId"    # I

    .prologue
    .line 990
    const/16 v0, -0x3e8

    if-eq p0, v0, :cond_0

    if-ltz p0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidSlotId(I)Z
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    .line 981
    const/16 v0, -0x3e8

    if-eq p0, v0, :cond_0

    if-ltz p0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidSubId(J)Z
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 973
    const-wide/16 v0, -0x3e8

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVoicePromptEnabled()Z
    .locals 2

    .prologue
    .line 1083
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1084
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1085
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->isVoicePromptEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1090
    :goto_0
    return v1

    .line 1087
    :catch_0
    move-exception v1

    .line 1090
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 750
    const-string v0, "SUB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SubManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    return-void
.end method

.method public static putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I

    .prologue
    .line 1038
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v0

    .line 1039
    .local v0, "subIds":[J
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 1040
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-static {p0, p1, v2, v3}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;IJ)V

    .line 1044
    :goto_0
    return-void

    .line 1042
    :cond_0
    const-string/jumbo v1, "putPhoneIdAndSubIdExtra: no valid subs"

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static putPhoneIdAndSubIdExtra(Landroid/content/Intent;IJ)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I
    .param p2, "subId"    # J

    .prologue
    .line 1049
    const-string/jumbo v0, "subscription"

    invoke-virtual {p0, v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1050
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1053
    const-string/jumbo v0, "slot"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1054
    return-void
.end method

.method public static setColor(IJ)I
    .locals 5
    .param p0, "color"    # I
    .param p1, "subId"    # J

    .prologue
    .line 503
    sget-object v3, Landroid/telephony/SubscriptionManager;->sSimBackgroundDarkRes:[I

    array-length v2, v3

    .line 504
    .local v2, "size":I
    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v3

    if-eqz v3, :cond_0

    if-ltz p0, :cond_0

    if-lt p0, v2, :cond_2

    .line 505
    :cond_0
    const-string v3, "[setColor]- fail"

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 506
    const/4 v1, -0x1

    .line 520
    :cond_1
    :goto_0
    return v1

    .line 509
    :cond_2
    const/4 v1, 0x0

    .line 512
    .local v1, "result":I
    :try_start_0
    const-string v3, "isub"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 513
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_1

    .line 514
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/ISub;->setColor(IJ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 516
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static setDataRoaming(IJ)I
    .locals 3
    .param p0, "roaming"    # I
    .param p1, "subId"    # J

    .prologue
    .line 635
    if-ltz p0, :cond_0

    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v2

    if-nez v2, :cond_2

    .line 636
    :cond_0
    const-string v2, "[setDataRoaming]- fail"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 637
    const/4 v1, -0x1

    .line 651
    :cond_1
    :goto_0
    return v1

    .line 640
    :cond_2
    const/4 v1, 0x0

    .line 643
    .local v1, "result":I
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 644
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_1

    .line 645
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/ISub;->setDataRoaming(IJ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 647
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static setDefaultDataSubId(J)V
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 903
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 904
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 905
    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultDataSubId(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 910
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    .line 907
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setDefaultSmsSubId(J)V
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 863
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 864
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 865
    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultSmsSubId(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 870
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    .line 867
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setDefaultSubId(J)V
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 1162
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1163
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1164
    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultSubId(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1169
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    .line 1166
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setDefaultVoiceSubId(J)V
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 796
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 797
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 798
    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultVoiceSubId(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    .line 800
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setDisplayName(Ljava/lang/String;J)I
    .locals 3
    .param p0, "displayName"    # Ljava/lang/String;
    .param p1, "subId"    # J

    .prologue
    .line 532
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;JJ)I

    move-result v0

    return v0
.end method

.method public static setDisplayName(Ljava/lang/String;JJ)I
    .locals 7
    .param p0, "displayName"    # Ljava/lang/String;
    .param p1, "subId"    # J
    .param p3, "nameSource"    # J

    .prologue
    .line 549
    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 550
    const-string v1, "[setDisplayName]- fail"

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 551
    const/4 v6, -0x1

    .line 565
    :cond_0
    :goto_0
    return v6

    .line 554
    :cond_1
    const/4 v6, 0x0

    .line 557
    .local v6, "result":I
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 558
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 559
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISub;->setDisplayNameUsingSrc(Ljava/lang/String;JJ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    goto :goto_0

    .line 561
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setDisplayNumber(Ljava/lang/String;J)I
    .locals 3
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "subId"    # J

    .prologue
    .line 577
    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v2

    if-nez v2, :cond_2

    .line 578
    :cond_0
    const-string v2, "[setDisplayNumber]- fail"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 579
    const/4 v1, -0x1

    .line 593
    :cond_1
    :goto_0
    return v1

    .line 582
    :cond_2
    const/4 v1, 0x0

    .line 585
    .local v1, "result":I
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 586
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_1

    .line 587
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/ISub;->setDisplayNumber(Ljava/lang/String;J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 589
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static setDisplayNumberFormat(IJ)I
    .locals 3
    .param p0, "format"    # I
    .param p1, "subId"    # J

    .prologue
    .line 606
    if-ltz p0, :cond_0

    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v2

    if-nez v2, :cond_2

    .line 607
    :cond_0
    const-string v2, "[setDisplayNumberFormat]- fail, return -1"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 608
    const/4 v1, -0x1

    .line 622
    :cond_1
    :goto_0
    return v1

    .line 611
    :cond_2
    const/4 v1, 0x0

    .line 614
    .local v1, "result":I
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 615
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_1

    .line 616
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/ISub;->setDisplayNumberFormat(IJ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 618
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static setSMSPromptEnabled(Z)V
    .locals 2
    .param p0, "enabled"    # Z

    .prologue
    .line 829
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 830
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 831
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISub;->setSMSPromptEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    .line 833
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static setSimResource(I)[I
    .locals 2
    .param p0, "type"    # I

    .prologue
    const/4 v1, 0x4

    .line 725
    const/4 v0, 0x0

    .line 727
    .local v0, "simResource":[I
    packed-switch p0, :pswitch_data_0

    .line 746
    :goto_0
    return-object v0

    .line 729
    :pswitch_0
    new-array v0, v1, [I

    .end local v0    # "simResource":[I
    fill-array-data v0, :array_0

    .line 735
    .restart local v0    # "simResource":[I
    goto :goto_0

    .line 737
    :pswitch_1
    new-array v0, v1, [I

    .end local v0    # "simResource":[I
    fill-array-data v0, :array_1

    .restart local v0    # "simResource":[I
    goto :goto_0

    .line 727
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 729
    :array_0
    .array-data 4
        0x1080614
        0x1080616
        0x1080615
        0x1080617
    .end array-data

    .line 737
    :array_1
    .array-data 4
        0x1080618
        0x108061a
        0x1080619
        0x108061b
    .end array-data
.end method

.method public static setSubState(JI)I
    .locals 4
    .param p0, "subId"    # J
    .param p2, "subState"    # I

    .prologue
    .line 1022
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSubState sub id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1024
    :try_start_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getISubInfo()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Lcom/android/internal/telephony/ISub;->setSubState(JI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1026
    :goto_0
    return v1

    .line 1025
    :catch_0
    move-exception v0

    .line 1026
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setVoicePromptEnabled(Z)V
    .locals 2
    .param p0, "enabled"    # Z

    .prologue
    .line 1095
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1096
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1097
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISub;->setVoicePromptEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1102
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    .line 1099
    :catch_0
    move-exception v1

    goto :goto_0
.end method
