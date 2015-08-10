.class public Lcom/android/nfc/LNfcCommon;
.super Ljava/lang/Object;
.source "LNfcCommon.java"


# static fields
.field public static final ACTION_LOCKSCREEN_CREATE:Ljava/lang/String; = "com.lge.lockscreen.intent.action.LOCKSCREEN_CREATE"

.field public static final ACTION_RESET_SETTING:Ljava/lang/String; = "lge.settings.intent.action.RESET_SETTING"

.field public static final ACTION_SIM_CHANGED_INFO:Ljava/lang/String; = "com.lge.intent.action.SIM_CHANGED_INFO"

.field public static final BATTERY_CHANGED:Ljava/lang/String; = "com.lge.BATTERY_CHANGED"

.field private static CONFIG:Lcom/lge/nfcconfig/NfcConfigure; = null

.field private static DBG:Z = false

.field public static final NFC_BEAMFINISH_INTENT_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NFC_CARD:I = 0x2

.field public static final NFC_DISCOVERY:I = 0x4

.field public static final NFC_P2P:I = 0x8

.field public static final NFC_SYS:I = 0x1

.field public static final OPENMOBILEAPI_AC_INITIALIZED:Ljava/lang/String; = "org.simalliance.openmobileapi.service.security.AC_INITIALIZED"

.field public static final POWERSAVE_ACTIVATION_TO_OTHERS:Ljava/lang/String; = "com.android.settings.powersave.POWERSAVE_ACTIVATION_TO_OTHERS"

.field public static final SMARTCARD_AC_INITIALIZED:Ljava/lang/String; = "com.lge.smartcard.AC_INITIALIZED"

.field private static TAG:Ljava/lang/String; = null

.field public static final TEST_TRANSACTION_EVENT:Ljava/lang/String; = "com.lge.nfc.test.TRANSACTION_EVENT"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "LNfcCommon"

    sput-object v0, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    .line 40
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/LNfcCommon;->DBG:Z

    .line 41
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure;->getInstance()Lcom/lge/nfcconfig/NfcConfigure;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/LNfcCommon;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    .line 223
    new-instance v0, Lcom/android/nfc/LNfcCommon$1;

    invoke-direct {v0}, Lcom/android/nfc/LNfcCommon$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/LNfcCommon;->NFC_BEAMFINISH_INTENT_SET:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addNfcService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 121
    if-nez p0, :cond_0

    .line 122
    sget-object v1, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    const-string v2, "addNfcService name is null"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :goto_0
    return-void

    .line 125
    :cond_0
    sget-object v1, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addNfcService("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :try_start_0
    invoke-static {p0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_2

    .line 130
    if-eqz p1, :cond_1

    .line 131
    sget-object v1, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registering "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Service!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {p0, p1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registration Failed! : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    sget-object v1, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    const-string v2, "Error : service is null!!!"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_2
    sget-object v1, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already registered! : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static byteArray2String([BIILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 103
    if-nez p0, :cond_0

    .line 104
    const/4 v2, 0x0

    .line 116
    :goto_0
    return-object v2

    .line 106
    :cond_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 107
    array-length v2, p0

    sub-int p2, v2, p1

    .line 110
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 112
    .local v0, "buffer":Ljava/lang/StringBuffer;
    move v1, p1

    .local v1, "ind":I
    :goto_1
    add-int v2, p1, p2

    if-ge v1, v2, :cond_2

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 116
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static changeNFCWirelessChargingstatus(I)Z
    .locals 9
    .param p0, "status"    # I

    .prologue
    const/16 v8, 0x33

    const/16 v7, 0x36

    const/16 v6, 0x34

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 59
    sget-object v3, Lcom/android/nfc/LNfcCommon;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v3, v3, Lcom/lge/nfcconfig/NfcConfigure;->mWCScenarioEnable:Z

    if-nez v3, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v1

    .line 63
    :cond_1
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getWirelessChargingState()I

    move-result v0

    .line 65
    .local v0, "mWCState":I
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 67
    :pswitch_0
    sget-boolean v3, Lcom/android/nfc/LNfcCommon;->DBG:Z

    sget-object v4, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    const-string v5, "STATE_WC_OFF "

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 68
    if-ne v0, v7, :cond_0

    .line 69
    invoke-static {v8}, Lcom/android/nfc/LNfcVariable;->setWirelessChargingState(I)V

    move v1, v2

    .line 70
    goto :goto_0

    .line 74
    :pswitch_1
    sget-boolean v3, Lcom/android/nfc/LNfcCommon;->DBG:Z

    sget-object v4, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    const-string v5, "STATE_TURNING_WC_ON "

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 75
    if-eq v0, v6, :cond_0

    const/16 v3, 0x35

    if-eq v0, v3, :cond_0

    .line 79
    invoke-static {v6}, Lcom/android/nfc/LNfcVariable;->setWirelessChargingState(I)V

    move v1, v2

    .line 80
    goto :goto_0

    .line 82
    :pswitch_2
    sget-boolean v3, Lcom/android/nfc/LNfcCommon;->DBG:Z

    sget-object v4, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    const-string v5, "STATE_WC_ON "

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 83
    if-ne v0, v6, :cond_0

    .line 84
    const/16 v1, 0x35

    invoke-static {v1}, Lcom/android/nfc/LNfcVariable;->setWirelessChargingState(I)V

    move v1, v2

    .line 85
    goto :goto_0

    .line 89
    :pswitch_3
    sget-boolean v3, Lcom/android/nfc/LNfcCommon;->DBG:Z

    sget-object v4, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    const-string v5, "STATE_TURNING_WC_OFF "

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 90
    if-eq v0, v7, :cond_0

    if-eq v0, v8, :cond_0

    .line 94
    invoke-static {v7}, Lcom/android/nfc/LNfcVariable;->setWirelessChargingState(I)V

    move v1, v2

    .line 95
    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static isAllAutoTestMode()Z
    .locals 2

    .prologue
    .line 172
    const-string v0, "sys.allautotest.run"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isApplicationFeatureEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 147
    :try_start_0
    const-string v6, "activity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 148
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 149
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    .line 151
    .local v5, "task":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 152
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, "pkgname":Ljava/lang/String;
    const/16 v6, 0x80

    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 155
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v6, :cond_1

    :cond_0
    move v6, v7

    .line 163
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v4    # "pkgname":Ljava/lang/String;
    .end local v5    # "task":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :goto_0
    return v6

    .line 158
    .restart local v0    # "activityManager":Landroid/app/ActivityManager;
    .restart local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v4    # "pkgname":Ljava/lang/String;
    .restart local v5    # "task":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_1
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v6, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    goto :goto_0

    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "pkgname":Ljava/lang/String;
    :cond_2
    move v6, v7

    .line 160
    goto :goto_0

    .line 162
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v5    # "task":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move v6, v7

    .line 163
    goto :goto_0
.end method

.method public static isBeamUIFinishIntent(Ljava/lang/String;)Z
    .locals 1
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 234
    if-nez p0, :cond_0

    .line 235
    const/4 v0, 0x0

    .line 238
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/nfc/LNfcCommon;->NFC_BEAMFINISH_INTENT_SET:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isFactoryMode()Z
    .locals 5

    .prologue
    .line 179
    const-string v2, "ro.factorytest"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "strFactoryMode":Ljava/lang/String;
    const-string v2, "sys.lge.pif"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "strPifMode":Ljava/lang/String;
    sget-object v2, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ro.factorytest="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sys.lge.pif="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    const/4 v2, 0x1

    .line 188
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isFirstBooting()Z
    .locals 4

    .prologue
    .line 199
    sget-boolean v0, Lcom/android/nfc/LNfcCommon;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "persist.sys.first-mccmnc : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "persist.sys.first-mccmnc"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 200
    sget-boolean v0, Lcom/android/nfc/LNfcCommon;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "persist.sys.mccmnc-list : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "persist.sys.mccmnc-list"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v0, "2"

    const-string v1, "persist.radio.iccid-changed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    sget-boolean v0, Lcom/android/nfc/LNfcCommon;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    const-string v2, "The device state is Factoryreset or First reboot"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 204
    const/4 v0, 0x1

    .line 209
    :goto_0
    return v0

    .line 207
    :cond_0
    sget-boolean v0, Lcom/android/nfc/LNfcCommon;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The device state is reboot :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "persist.radio.iccid-changed"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 209
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isForeground(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "PackageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 357
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 361
    .local v1, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v1, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 364
    .local v2, "task":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 367
    .local v0, "componentInfo":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 370
    :goto_0
    return v3

    :cond_0
    move v3, v5

    goto :goto_0
.end method

.method public static isLockScreenStatus()Z
    .locals 4

    .prologue
    .line 194
    sget-boolean v0, Lcom/android/nfc/LNfcCommon;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service.keyguard.status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "service.keyguard.status"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v0, "service.keyguard.status"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSimChanged()Z
    .locals 4

    .prologue
    .line 214
    const-string v0, "1"

    const-string v1, "persist.radio.iccid-changed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    sget-boolean v0, Lcom/android/nfc/LNfcCommon;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The device state is reboot :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "persist.radio.iccid-changed"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 218
    const/4 v0, 0x1

    .line 220
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUserMode()Z
    .locals 2

    .prologue
    .line 168
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static registerAccessControlIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 2
    .param p0, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 276
    sget-object v0, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    const-string v1, "registerAccessControlIntent vaild:intentfilter"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    if-nez p0, :cond_0

    .line 278
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 280
    .restart local p0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    const-string v0, "org.simalliance.openmobileapi.service.security.AC_INITIALIZED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 281
    const-string v0, "com.lge.smartcard.AC_INITIALIZED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    return-object p0
.end method

.method public static registerBeamUIFinishIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 7
    .param p0, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 242
    sget-object v5, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    const-string v6, "registerBeamUIFinishIntent vaild:intentfilter"

    invoke-static {v5, v6}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    if-nez p0, :cond_0

    .line 244
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 246
    .restart local p0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    sget-object v5, Lcom/android/nfc/LNfcCommon;->NFC_BEAMFINISH_INTENT_SET:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    new-array v1, v5, [Ljava/lang/String;

    .line 247
    .local v1, "actions":[Ljava/lang/String;
    sget-object v5, Lcom/android/nfc/LNfcCommon;->NFC_BEAMFINISH_INTENT_SET:Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "actions":[Ljava/lang/String;
    check-cast v1, [Ljava/lang/String;

    .line 248
    .restart local v1    # "actions":[Ljava/lang/String;
    move-object v2, v1

    .local v2, "arr$":[Ljava/lang/String;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 250
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 253
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public static registerPhoneStateChangedIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 2
    .param p0, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 257
    sget-object v0, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    const-string v1, "registerPhoneStateChangedIntent vaild:intentfilter"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    if-nez p0, :cond_0

    .line 259
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 261
    .restart local p0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    return-object p0
.end method

.method public static registerPowerSaveActivationToOthersIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 2
    .param p0, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 267
    sget-object v0, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    const-string v1, "registerPowerSaveActivationToOthersIntent vaild:intentfilter"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    if-nez p0, :cond_0

    .line 269
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 271
    .restart local p0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    const-string v0, "com.android.settings.powersave.POWERSAVE_ACTIVATION_TO_OTHERS"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    return-object p0
.end method

.method public static registerResetSettingIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 2
    .param p0, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 337
    sget-object v0, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    const-string v1, "registerResetSettingIntent vaild:intentfilter"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    if-nez p0, :cond_0

    .line 339
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 341
    .restart local p0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    const-string v0, "lge.settings.intent.action.RESET_SETTING"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 343
    return-object p0
.end method

.method public static registerScreenLockIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 2
    .param p0, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 297
    sget-object v0, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    const-string v1, "registerScreenLockIntent vaild:intentfilter"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    if-nez p0, :cond_0

    .line 299
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 301
    .restart local p0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    const-string v0, "com.lge.lockscreen.intent.action.LOCKSCREEN_CREATE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    return-object p0
.end method

.method public static registerSimChangedIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 2
    .param p0, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 318
    sget-object v0, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    const-string v1, "registerSimChangedIntent vaild:intentfilter"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    if-nez p0, :cond_0

    .line 320
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 322
    .restart local p0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    const-string v0, "com.lge.intent.action.SIM_CHANGED_INFO"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 324
    return-object p0
.end method

.method public static registerSimStateChangedIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 2
    .param p0, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 307
    sget-object v0, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    const-string v1, "registerSimStateChangedIntent vaild:intentfilter"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    if-nez p0, :cond_0

    .line 309
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 311
    .restart local p0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    const/16 v0, -0x3e8

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 314
    return-object p0
.end method

.method public static registerSmartCoverIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 2
    .param p0, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 346
    sget-object v0, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    const-string v1, "registerSmartCoverIntent vaild:intentfilter"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    if-nez p0, :cond_0

    .line 348
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 350
    .restart local p0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    const-string v0, "com.lge.android.intent.action.ACCESSORY_COVER_EVENT"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    return-object p0
.end method

.method public static registerTestTransactionEventIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 2
    .param p0, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 328
    sget-object v0, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    const-string v1, "registerTestTransactionEventIntent vaild:intentfilter"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    if-nez p0, :cond_0

    .line 330
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 332
    .restart local p0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    const-string v0, "com.lge.nfc.test.TRANSACTION_EVENT"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 334
    return-object p0
.end method

.method public static registerWirelessChargeIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 2
    .param p0, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 286
    sget-object v0, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    const-string v1, "registerWirelessChargeIntent vaild:intentfilter"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    if-nez p0, :cond_0

    .line 288
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 290
    .restart local p0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    const-string v0, "com.lge.BATTERY_CHANGED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    return-object p0
.end method
