.class Lcom/android/internal/policy/impl/EmergencyLauncher;
.super Ljava/lang/Object;
.source "EmergencyLauncher.java"


# static fields
.field static final DEBUG:Z = false

.field private static final ENABLE_SYSTEM_STATE:I = 0x1

.field static final POLICE_112APP_CHORD_DEBOUNCE_DELAY_MILLIS:I = 0x3e8

.field static final POLICE_112APP_RUN_DELAY_MILLIS:I = 0xbb8

.field private static final RESTORE_SYSTEM_STATE:I = 0x2

.field static final TAG:Ljava/lang/String; = "EmergencyLauncher"

.field static mVolumeUpKeyConsumedByEmergencyLauncher:Z


# instance fields
.field final CALL_NO_112:Ljava/lang/String;

.field final CALL_NO_119:Ljava/lang/String;

.field final PACKAGE_NAME_112:Ljava/lang/String;

.field final PACKAGE_NAME_119:Ljava/lang/String;

.field final m112AppChordLongPress:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mEmergencyLauncherConfigEnabled:Z

.field mEmergencyProcessingReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field mPowerKeyTimeByEmergencyLauncher:J

.field mPowerKeyTriggeredByEmergencyLauncher:Z

.field mVolumeUpKeyTimeByEmergencyLauncher:J

.field mVolumeUpKeyTriggeredByEmergencyLauncher:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/EmergencyLauncher;->mVolumeUpKeyConsumedByEmergencyLauncher:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/EmergencyLauncher;->mEmergencyLauncherConfigEnabled:Z

    .line 40
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/EmergencyLauncher;->mPowerKeyTriggeredByEmergencyLauncher:Z

    .line 42
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/EmergencyLauncher;->mVolumeUpKeyTriggeredByEmergencyLauncher:Z

    .line 49
    const-string v0, "com.winitech.mm119t"

    iput-object v0, p0, Lcom/android/internal/policy/impl/EmergencyLauncher;->PACKAGE_NAME_119:Ljava/lang/String;

    .line 50
    const-string v0, "119"

    iput-object v0, p0, Lcom/android/internal/policy/impl/EmergencyLauncher;->CALL_NO_119:Ljava/lang/String;

    .line 51
    const-string v0, "go.police.report"

    iput-object v0, p0, Lcom/android/internal/policy/impl/EmergencyLauncher;->PACKAGE_NAME_112:Ljava/lang/String;

    .line 52
    const-string v0, "112"

    iput-object v0, p0, Lcom/android/internal/policy/impl/EmergencyLauncher;->CALL_NO_112:Ljava/lang/String;

    .line 150
    new-instance v0, Lcom/android/internal/policy/impl/EmergencyLauncher$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/EmergencyLauncher$1;-><init>(Lcom/android/internal/policy/impl/EmergencyLauncher;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/EmergencyLauncher;->m112AppChordLongPress:Ljava/lang/Runnable;

    .line 340
    new-instance v0, Lcom/android/internal/policy/impl/EmergencyLauncher$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/EmergencyLauncher$2;-><init>(Lcom/android/internal/policy/impl/EmergencyLauncher;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/EmergencyLauncher;->mEmergencyProcessingReceiver:Landroid/content/BroadcastReceiver;

    .line 55
    iput-object p1, p0, Lcom/android/internal/policy/impl/EmergencyLauncher;->mContext:Landroid/content/Context;

    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$bool;->config_emergency_launcher_available:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/EmergencyLauncher;->mEmergencyLauncherConfigEnabled:Z

    .line 59
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/EmergencyLauncher;->mEmergencyLauncherConfigEnabled:Z

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyLauncher;->mEmergencyProcessingReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyLauncher;->mEmergencyProcessingReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.lge.ims.action.VT_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyLauncher;->mEmergencyProcessingReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.lge.mms.action.MMS_119APP_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyLauncher;->mEmergencyProcessingReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.KOR_GO_FIRE_REPORT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyLauncher;->mEmergencyProcessingReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.KOR_GO_POLICE_REPORT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/EmergencyLauncher;->mHandler:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/EmergencyLauncher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/EmergencyLauncher;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyLauncher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/EmergencyLauncher;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/EmergencyLauncher;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/EmergencyLauncher;->isAppInstalledProperly(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/EmergencyLauncher;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/EmergencyLauncher;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/EmergencyLauncher;->setSystemState(ILjava/lang/String;)V

    return-void
.end method

.method private isAppAgreedByCustomer(Ljava/lang/String;)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 218
    const/4 v1, 0x0

    .line 219
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 220
    .local v6, "cursor":Landroid/database/Cursor;
    const-string v0, "com.winitech.mm119t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    const-string v0, "content://go.fire.provider.report"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 222
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "Customer_Agreement"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 228
    :cond_0
    :goto_0
    if-eqz v6, :cond_4

    .line 230
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 245
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 248
    :goto_1
    return v0

    .line 223
    :cond_1
    const-string v0, "go.police.report"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const-string v0, "content://go.police.provider.report/agree"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 225
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "customer_agreement"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0

    .line 238
    :cond_2
    :try_start_1
    const-string v0, "EmergencyLauncher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User has not been agreed to app ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_2
    move v0, v9

    .line 248
    goto :goto_1

    .line 242
    :catch_0
    move-exception v7

    .line 243
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "EmergencyLauncher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in customer agreement : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 245
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isAppInstalled(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 197
    const/4 v0, 0x0

    .line 199
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/EmergencyLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 203
    :goto_0
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 200
    :catch_0
    move-exception v1

    .line 201
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "EmergencyLauncher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not installed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isAppInstalledByPlayStore(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 207
    iget-object v1, p0, Lcom/android/internal/policy/impl/EmergencyLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "marketName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "com.android.vending"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    const/4 v1, 0x1

    .line 214
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isAppInstalledProperly(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 188
    const-string v2, "com.winitech.mm119t"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 189
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/EmergencyLauncher;->isAppInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/EmergencyLauncher;->isAppInstalledByPlayStore(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/EmergencyLauncher;->isAppAgreedByCustomer(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 189
    goto :goto_0

    .line 190
    :cond_2
    const-string v2, "go.police.report"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 191
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/EmergencyLauncher;->isAppInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/EmergencyLauncher;->isAppAgreedByCustomer(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 193
    goto :goto_0
.end method

.method private processEmergencyMode(ILjava/lang/String;Ljava/lang/String;Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;)V
    .locals 13
    .param p1, "mode"    # I
    .param p2, "callNo"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/lang/String;
    .param p4, "mTelephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p5, "mWifiManager"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 272
    const/4 v2, 0x0

    .line 273
    .local v2, "dataNetworkEnable":Z
    const/4 v9, 0x0

    .line 274
    .local v9, "wifiNetworkEnable":Z
    const/4 v4, 0x0

    .line 275
    .local v4, "gpsProviderEnable":Z
    const/4 v8, 0x0

    .line 276
    .local v8, "networkProviderEnable":Z
    const/4 v1, 0x0

    .line 278
    .local v1, "agpsProviderEnable":Z
    const/4 v10, 0x1

    if-ne p1, v10, :cond_3

    .line 279
    const/4 v2, 0x1

    .line 280
    const/4 v9, 0x1

    .line 281
    const/4 v4, 0x1

    .line 282
    const/4 v8, 0x1

    .line 283
    const/4 v1, 0x1

    .line 325
    :cond_0
    :goto_0
    if-eqz p4, :cond_1

    .line 326
    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 329
    :cond_1
    if-eqz p5, :cond_2

    .line 330
    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 333
    :cond_2
    iget-object v10, p0, Lcom/android/internal/policy/impl/EmergencyLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "gps"

    invoke-static {v10, v11, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 335
    iget-object v10, p0, Lcom/android/internal/policy/impl/EmergencyLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "network"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 337
    iget-object v10, p0, Lcom/android/internal/policy/impl/EmergencyLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "assisted_gps_enabled"

    if-eqz v1, :cond_10

    const/4 v10, 0x1

    :goto_1
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 338
    return-void

    .line 284
    :cond_3
    const/4 v10, 0x2

    if-ne p1, v10, :cond_0

    .line 286
    const/4 v5, 0x0

    .line 288
    .local v5, "inReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    .end local v5    # "inReader":Ljava/io/BufferedReader;
    .local v6, "inReader":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 290
    .local v7, "line":Ljava/lang/String;
    :cond_4
    :goto_2
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 291
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 296
    const-string v10, "datanetwork"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 297
    const-string v10, "off"

    invoke-virtual {v7, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v2, 0x0

    :goto_3
    goto :goto_2

    :cond_5
    const/4 v2, 0x1

    goto :goto_3

    .line 298
    :cond_6
    const-string v10, "wifinetwork"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 299
    const-string v10, "off"

    invoke-virtual {v7, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v9, 0x0

    :goto_4
    goto :goto_2

    :cond_7
    const/4 v9, 0x1

    goto :goto_4

    .line 300
    :cond_8
    const-string v10, "gpsprovider"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 301
    const-string v10, "off"

    invoke-virtual {v7, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v4, 0x0

    :goto_5
    goto :goto_2

    :cond_9
    const/4 v4, 0x1

    goto :goto_5

    .line 302
    :cond_a
    const-string v10, "networkprovider"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 303
    const-string v10, "off"

    invoke-virtual {v7, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v8, 0x0

    :goto_6
    goto :goto_2

    :cond_b
    const/4 v8, 0x1

    goto :goto_6

    .line 304
    :cond_c
    const-string v10, "agpsprovider"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 305
    const-string v10, "off"

    invoke-virtual {v7, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v10

    if-eqz v10, :cond_d

    const/4 v1, 0x0

    :goto_7
    goto :goto_2

    :cond_d
    const/4 v1, 0x1

    goto :goto_7

    .line 311
    :cond_e
    if-eqz v6, :cond_0

    .line 313
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 314
    :catch_0
    move-exception v10

    goto/16 :goto_0

    .line 308
    .end local v6    # "inReader":Ljava/io/BufferedReader;
    .end local v7    # "line":Ljava/lang/String;
    .restart local v5    # "inReader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v3

    .line 309
    .local v3, "e":Ljava/lang/Exception;
    :goto_8
    :try_start_3
    const-string v10, "EmergencyLauncher"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception in BufferedReader : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 311
    if-eqz v5, :cond_0

    .line 313
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 314
    :catch_2
    move-exception v10

    goto/16 :goto_0

    .line 311
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    :goto_9
    if-eqz v5, :cond_f

    .line 313
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 315
    :cond_f
    :goto_a
    throw v10

    .line 337
    .end local v5    # "inReader":Ljava/io/BufferedReader;
    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 314
    .restart local v5    # "inReader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v11

    goto :goto_a

    .line 311
    .end local v5    # "inReader":Ljava/io/BufferedReader;
    .restart local v6    # "inReader":Ljava/io/BufferedReader;
    .restart local v7    # "line":Ljava/lang/String;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "inReader":Ljava/io/BufferedReader;
    .restart local v5    # "inReader":Ljava/io/BufferedReader;
    goto :goto_9

    .line 308
    .end local v5    # "inReader":Ljava/io/BufferedReader;
    .restart local v6    # "inReader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v3

    move-object v5, v6

    .end local v6    # "inReader":Ljava/io/BufferedReader;
    .restart local v5    # "inReader":Ljava/io/BufferedReader;
    goto :goto_8
.end method

.method private setSystemState(ILjava/lang/String;)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "callNo"    # Ljava/lang/String;

    .prologue
    .line 256
    const-string v3, ""

    .line 257
    .local v3, "file":Ljava/lang/String;
    const-string v0, "119"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    const-string v3, "/data/data/com.winitech.mm119t/files/report.txt"

    .line 263
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyLauncher;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 264
    .local v4, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyLauncher;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .local v5, "mWifiManager":Landroid/net/wifi/WifiManager;
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 266
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/EmergencyLauncher;->processEmergencyMode(ILjava/lang/String;Ljava/lang/String;Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;)V

    .line 268
    return-void

    .line 259
    .end local v4    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    .end local v5    # "mWifiManager":Landroid/net/wifi/WifiManager;
    :cond_1
    const-string v0, "112"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    const-string v3, "/data/data/go.police.report/files/report.txt"

    goto :goto_0
.end method


# virtual methods
.method cancelPendingEmergencyLauncherChord()V
    .locals 2

    .prologue
    .line 107
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/EmergencyLauncher;->mVolumeUpKeyConsumedByEmergencyLauncher:Z

    .line 108
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyLauncher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/EmergencyLauncher;->m112AppChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 109
    return-void
.end method

.method dumpEmergencyLauncher(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 178
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 179
    const-string v0, " mEmergencyLauncherConfigEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 180
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/EmergencyLauncher;->mEmergencyLauncherConfigEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 181
    return-void
.end method

.method interceptEmegencyLauncher()Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 80
    sput-boolean v3, Lcom/android/internal/policy/impl/EmergencyLauncher;->mVolumeUpKeyConsumedByEmergencyLauncher:Z

    .line 81
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 89
    .local v0, "now":J
    iget-wide v4, p0, Lcom/android/internal/policy/impl/EmergencyLauncher;->mVolumeUpKeyTimeByEmergencyLauncher:J

    add-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    iget-wide v4, p0, Lcom/android/internal/policy/impl/EmergencyLauncher;->mPowerKeyTimeByEmergencyLauncher:J

    add-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    .line 96
    const-string v4, "go.police.report"

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/EmergencyLauncher;->isAppInstalledProperly(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 97
    sput-boolean v2, Lcom/android/internal/policy/impl/EmergencyLauncher;->mVolumeUpKeyConsumedByEmergencyLauncher:Z

    .line 98
    iget-object v3, p0, Lcom/android/internal/policy/impl/EmergencyLauncher;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/EmergencyLauncher;->m112AppChordLongPress:Ljava/lang/Runnable;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 103
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method isEmergencyLauncherConfigEnabled()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/EmergencyLauncher;->mEmergencyLauncherConfigEnabled:Z

    return v0
.end method
