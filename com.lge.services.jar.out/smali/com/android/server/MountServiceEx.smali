.class Lcom/android/server/MountServiceEx;
.super Lcom/android/server/MountService;
.source "MountServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MountServiceEx$VoldResponseCodeEx;
    }
.end annotation


# static fields
.field private static final DEBUG_EVENTS:Z = true

.field private static final DEBUG_UNMOUNT:Z = false

.field private static final H_UNMOUNT_PM_DONE:I = 0x2

.field private static final H_UNMOUNT_PM_UPDATE:I = 0x1

.field static final NOSDCARD:Z

.field private static final SECONDARY_STORAGE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MountServiceEx"

.field private static sIsExistSecondaryStorage:Z

.field private static sIsOwnerUser:Z


# instance fields
.field private final mUserSwitchedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nosdcard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/MountServiceEx;->NOSDCARD:Z

    .line 56
    const-string v0, "SECONDARY_STORAGE"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/MountServiceEx;->SECONDARY_STORAGE:Ljava/lang/String;

    .line 57
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/MountServiceEx;->sIsOwnerUser:Z

    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/MountServiceEx;->sIsExistSecondaryStorage:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 475
    invoke-direct {p0, p1}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V

    .line 439
    new-instance v2, Lcom/android/server/MountServiceEx$2;

    invoke-direct {v2, p0}, Lcom/android/server/MountServiceEx$2;-><init>(Lcom/android/server/MountServiceEx;)V

    iput-object v2, p0, Lcom/android/server/MountServiceEx;->mUserSwitchedReceiver:Landroid/content/BroadcastReceiver;

    .line 478
    const/4 v0, 0x0

    .line 480
    .local v0, "isMultiUserEnabled":Z
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120063

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 485
    :goto_0
    if-eqz v0, :cond_0

    .line 487
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 488
    .local v1, "userSwitchedFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 489
    iget-object v2, p0, Lcom/android/server/MountServiceEx;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/MountServiceEx;->mUserSwitchedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/MountServiceEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 494
    .end local v1    # "userSwitchedFilter":Landroid/content/IntentFilter;
    :goto_1
    iget-object v2, p0, Lcom/android/server/MountServiceEx;->mVolumesByPath:Ljava/util/HashMap;

    sget-object v3, Lcom/android/server/MountServiceEx;->SECONDARY_STORAGE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_2
    sput-boolean v2, Lcom/android/server/MountServiceEx;->sIsExistSecondaryStorage:Z

    .line 495
    return-void

    .line 491
    :cond_0
    const-string v2, "MountServiceEx"

    const-string v3, "Multi user is not supported."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 494
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 481
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/android/server/MountServiceEx;->sIsOwnerUser:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 43
    sput-boolean p0, Lcom/android/server/MountServiceEx;->sIsOwnerUser:Z

    return p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/android/server/MountServiceEx;->sIsExistSecondaryStorage:Z

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/server/MountServiceEx;->SECONDARY_STORAGE:Ljava/lang/String;

    return-object v0
.end method

.method private isAvailableSecondaryStorage()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/android/server/MountServiceEx;->sIsExistSecondaryStorage:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/MountServiceEx;->sIsOwnerUser:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected copyLocaleFromMountService()V
    .locals 0

    .prologue
    .line 631
    invoke-super {p0}, Lcom/android/server/MountService;->copyLocaleFromMountService()V

    .line 632
    return-void
.end method

.method protected doMountVolume(Ljava/lang/String;)I
    .locals 13
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v9, -0x1

    const/16 v4, -0x63

    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 234
    if-nez p1, :cond_1

    .line 235
    const-string v8, "MountServiceEx"

    const-string v10, "Cannot mount storage. volume path is null."

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v9

    .line 352
    :cond_0
    :goto_0
    return v4

    .line 239
    :cond_1
    sget-object v10, Lcom/android/server/MountServiceEx;->SECONDARY_STORAGE:Ljava/lang/String;

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-direct {p0}, Lcom/android/server/MountServiceEx;->isAvailableSecondaryStorage()Z

    move-result v10

    if-nez v10, :cond_2

    .line 240
    const-string v8, "MountServiceEx"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Secondary storage is not available. path: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/server/MountServiceEx;->SECONDARY_STORAGE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", is owner user?: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/android/server/MountServiceEx;->sIsOwnerUser:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v9

    .line 241
    goto :goto_0

    .line 245
    :cond_2
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 246
    if-eqz p1, :cond_3

    const-string v10, "USBstorage"

    invoke-virtual {p1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 248
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/server/MountServiceEx;->mContext:Landroid/content/Context;

    invoke-interface {v10, v11, v12, p1}, Lcom/lge/cappuccino/IMdm;->checkDisabledMountService(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 253
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v10

    invoke-interface {v10}, Lcom/lge/cappuccino/IMdm;->checkCIDMountServiceWhitelist()Z

    move-result v10

    if-nez v10, :cond_4

    .line 254
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v8

    invoke-interface {v8}, Lcom/lge/cappuccino/IMdm;->notificationCIDMountServiceWhitelist()Z

    goto :goto_0

    .line 260
    :cond_3
    if-eqz p1, :cond_4

    const-string v10, "USBstorage"

    invoke-virtual {p1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-ne v10, v6, :cond_4

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/server/MountServiceEx;->mContext:Landroid/content/Context;

    invoke-interface {v10, v11, v12, p1}, Lcom/lge/cappuccino/IMdm;->checkDisabledMountServiceUSBHostStorage(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 268
    :cond_4
    const/4 v4, 0x0

    .line 270
    .local v4, "rc":I
    iget-object v10, p0, Lcom/android/server/MountServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "sd_encryption"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v6, :cond_5

    .line 274
    .local v6, "sd_encryption":Z
    :goto_1
    iget-object v10, p0, Lcom/android/server/MountServiceEx;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v10

    .line 275
    :try_start_0
    iget-object v8, p0, Lcom/android/server/MountServiceEx;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageVolume;

    .line 276
    .local v7, "volume":Landroid/os/storage/StorageVolume;
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "no_physical_media"

    invoke-virtual {p0, v8}, Lcom/android/server/MountServiceEx;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 279
    const-string v8, "MountServiceEx"

    const-string v10, "User has restriction DISALLOW_MOUNT_PHYSICAL_MEDIA; cannot mount volume."

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v9

    .line 280
    goto/16 :goto_0

    .end local v6    # "sd_encryption":Z
    .end local v7    # "volume":Landroid/os/storage/StorageVolume;
    :cond_5
    move v6, v8

    .line 270
    goto :goto_1

    .line 276
    .restart local v6    # "sd_encryption":Z
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 283
    .restart local v7    # "volume":Landroid/os/storage/StorageVolume;
    :cond_6
    const-string v8, "MountServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "doMountVolume: Mouting "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :try_start_2
    sget-boolean v8, Lcom/lge/config/ThreelmMdmConfig;->THREELM_MDM:Z

    if-eqz v8, :cond_b

    .line 287
    const-string v3, "null"

    .line 288
    .local v3, "key":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/MountServiceEx;->mKeyStore:Landroid/security/KeyStore;

    const-string v9, "sd_encryption"

    invoke-virtual {v8, v9}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/server/MountServiceEx;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v8}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v8

    sget-object v9, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v8, v9, :cond_7

    .line 290
    new-instance v3, Ljava/lang/String;

    .end local v3    # "key":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/MountServiceEx;->mKeyStore:Landroid/security/KeyStore;

    const-string v9, "sd_encryption"

    invoke-virtual {v8, v9}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/String;-><init>([B)V

    .line 292
    .restart local v3    # "key":Ljava/lang/String;
    :cond_7
    const-string v8, "3LM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[MountServiceEx][doMountVolume] key : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "sd_encryption : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v9, p0, Lcom/android/server/MountServiceEx;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v10, "volume"

    const/4 v8, 0x4

    new-array v11, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v12, "mount_encrypted"

    aput-object v12, v11, v8

    const/4 v8, 0x1

    aput-object p1, v11, v8

    const/4 v8, 0x2

    aput-object v3, v11, v8

    const/4 v12, 0x3

    if-eqz v6, :cond_a

    const-string v8, "on"

    :goto_2
    aput-object v8, v11, v12

    invoke-virtual {v9, v10, v11}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 306
    .end local v3    # "key":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 310
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v0, 0x0

    .line 311
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 314
    .local v1, "code":I
    const-string v8, "vold.sdcard_fs_type"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 315
    .local v5, "recognizedFS":Ljava/lang/String;
    const/16 v8, 0x190

    if-ne v1, v8, :cond_9

    const-string v8, "ntfs"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "hfsplus"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 316
    :cond_8
    const/16 v1, 0x192

    .line 319
    :cond_9
    const/16 v8, 0x191

    if-ne v1, v8, :cond_c

    .line 323
    const/4 v4, -0x2

    .line 347
    :goto_3
    if-eqz v0, :cond_0

    .line 348
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v7, v8}, Lcom/android/server/MountServiceEx;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 301
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "code":I
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .end local v5    # "recognizedFS":Ljava/lang/String;
    .restart local v3    # "key":Ljava/lang/String;
    :cond_a
    :try_start_3
    const-string v8, "off"

    goto :goto_2

    .line 304
    .end local v3    # "key":Ljava/lang/String;
    :cond_b
    iget-object v8, p0, Lcom/android/server/MountServiceEx;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v9, "volume"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "mount"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object p1, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 324
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "code":I
    .restart local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v5    # "recognizedFS":Ljava/lang/String;
    :cond_c
    const/16 v8, 0x192

    if-ne v1, v8, :cond_d

    .line 325
    const-string v8, "MountServiceEx"

    const-string v9, " updating volume state :: media nofs"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v8, "nofs"

    invoke-virtual {p0, v7, v8}, Lcom/android/server/MountServiceEx;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 330
    const-string v0, "android.intent.action.MEDIA_NOFS"

    .line 331
    const/4 v4, -0x3

    goto :goto_3

    .line 332
    :cond_d
    const/16 v8, 0x193

    if-ne v1, v8, :cond_e

    .line 333
    const-string v8, "MountServiceEx"

    const-string v9, "updating volume state media corrupt"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const-string v8, "unmountable"

    invoke-virtual {p0, v7, v8}, Lcom/android/server/MountServiceEx;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 338
    const-string v0, "android.intent.action.MEDIA_UNMOUNTABLE"

    .line 339
    const/4 v4, -0x4

    goto :goto_3

    .line 341
    :cond_e
    const/4 v4, -0x1

    goto :goto_3
.end method

.method protected doUnmountVolume(Ljava/lang/String;ZZ)I
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "removeEncryption"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x1

    const/16 v4, 0x194

    .line 368
    if-nez p1, :cond_1

    .line 369
    const-string v4, "MountServiceEx"

    const-string v5, "Cannot unmount storage. volume path is null."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_0
    :goto_0
    return v3

    .line 371
    :cond_1
    sget-object v6, Lcom/android/server/MountServiceEx;->SECONDARY_STORAGE:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 372
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;ZZ)I

    move-result v3

    goto :goto_0

    .line 375
    :cond_2
    sget-boolean v6, Lcom/lge/config/ThreelmMdmConfig;->THREELM_MDM:Z

    if-eqz v6, :cond_3

    .line 376
    invoke-virtual {p0, p1}, Lcom/android/server/MountServiceEx;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "mounted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/server/MountServiceEx;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "mounted_ro"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    move v3, v4

    .line 378
    goto :goto_0

    .line 381
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/MountServiceEx;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "mounted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    move v3, v4

    .line 382
    goto :goto_0

    .line 392
    :cond_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->gc()V

    .line 395
    :try_start_0
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v6, "volume"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "unmount"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-direct {v0, v6, v7}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p3, :cond_6

    .line 397
    const-string v6, "force_and_revert"

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 401
    :cond_5
    :goto_1
    iget-object v6, p0, Lcom/android/server/MountServiceEx;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v6, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;

    move v3, v5

    .line 403
    goto :goto_0

    .line 398
    :cond_6
    if-eqz p2, :cond_5

    .line 399
    const-string v6, "force"

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 404
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :catch_0
    move-exception v2

    .line 407
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 408
    .local v1, "code":I
    if-ne v1, v4, :cond_7

    .line 409
    const/4 v3, -0x5

    goto :goto_0

    .line 410
    :cond_7
    const/16 v4, 0x195

    if-ne v1, v4, :cond_0

    .line 411
    const/4 v3, -0x7

    goto :goto_0
.end method

.method public getBackupSecureContainerList()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 611
    iget-object v5, p0, Lcom/android/server/MountServiceEx;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 612
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountServiceEx;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 613
    iget-object v4, p0, Lcom/android/server/MountServiceEx;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 614
    .local v3, "list":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/MountServiceEx;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 615
    .local v2, "it":Ljava/util/Iterator;
    const/4 v0, 0x0

    .local v0, "i":I
    move v1, v0

    .line 616
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 618
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v1

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 622
    .end local v1    # "i":I
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v3    # "list":[Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    monitor-exit v5

    .line 625
    :goto_1
    return-object v3

    .line 624
    .restart local v1    # "i":I
    .restart local v2    # "it":Ljava/util/Iterator;
    .restart local v3    # "list":[Ljava/lang/String;
    :cond_1
    monitor-exit v5

    goto :goto_1

    .end local v1    # "i":I
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v3    # "list":[Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getSecureContainerList()[Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 499
    const-string v5, "android.permission.ASEC_ACCESS"

    invoke-virtual {p0, v5}, Lcom/android/server/MountServiceEx;->validatePermission(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0}, Lcom/android/server/MountServiceEx;->waitForReady()V

    .line 501
    invoke-virtual {p0}, Lcom/android/server/MountServiceEx;->warnOnNotMounted()V

    .line 505
    :try_start_0
    const-string v5, "vold.decrypt"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "trigger_restart_min_framework"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 506
    const/4 v5, 0x0

    new-array v4, v5, [Ljava/lang/String;

    .line 529
    :cond_0
    :goto_0
    return-object v4

    .line 510
    :cond_1
    iget-object v5, p0, Lcom/android/server/MountServiceEx;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v6, "asec"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "list"

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v5

    const/16 v6, 0x6f

    invoke-static {v5, v6}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v4

    .line 513
    .local v4, "list":[Ljava/lang/String;
    if-eqz v4, :cond_2

    array-length v5, v4

    if-nez v5, :cond_0

    .line 514
    :cond_2
    const-string v5, "MountServiceEx"

    const-string v6, "asec list is empty, lookup AsecMountSet"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v6, p0, Lcom/android/server/MountServiceEx;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v6
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :try_start_1
    iget-object v5, p0, Lcom/android/server/MountServiceEx;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 517
    iget-object v5, p0, Lcom/android/server/MountServiceEx;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 518
    iget-object v5, p0, Lcom/android/server/MountServiceEx;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 519
    .local v3, "it":Ljava/util/Iterator;
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, v1

    .line 520
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 521
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v2

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 524
    .end local v2    # "i":I
    .end local v3    # "it":Ljava/util/Iterator;
    :cond_3
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0

    .line 528
    .end local v4    # "list":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    new-array v4, v10, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getVolumeList()[Landroid/os/storage/StorageVolume;
    .locals 13

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 584
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 585
    .local v1, "callingUserId":I
    iget-object v9, p0, Lcom/android/server/MountServiceEx;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.ACCESS_ALL_EXTERNAL_STORAGE"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v9

    if-nez v9, :cond_3

    move v0, v7

    .line 589
    .local v0, "accessAll":Z
    :goto_0
    iget-object v9, p0, Lcom/android/server/MountServiceEx;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v9

    .line 590
    :try_start_0
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 591
    .local v2, "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    iget-object v10, p0, Lcom/android/server/MountServiceEx;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageVolume;

    .line 592
    .local v6, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v4

    .line 593
    .local v4, "owner":Landroid/os/UserHandle;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    if-ne v10, v1, :cond_4

    :cond_1
    move v5, v7

    .line 594
    .local v5, "ownerMatch":Z
    :goto_2
    if-nez v0, :cond_2

    if-eqz v5, :cond_0

    .line 596
    :cond_2
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v10

    if-ne v10, v7, :cond_5

    .line 597
    const/4 v10, 0x0

    invoke-virtual {v2, v10, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 605
    .end local v2    # "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "owner":Landroid/os/UserHandle;
    .end local v5    # "ownerMatch":Z
    .end local v6    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .end local v0    # "accessAll":Z
    :cond_3
    move v0, v8

    .line 585
    goto :goto_0

    .restart local v0    # "accessAll":Z
    .restart local v2    # "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "owner":Landroid/os/UserHandle;
    .restart local v6    # "volume":Landroid/os/storage/StorageVolume;
    :cond_4
    move v5, v8

    .line 593
    goto :goto_2

    .line 599
    .restart local v5    # "ownerMatch":Z
    :cond_5
    :try_start_1
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 604
    .end local v4    # "owner":Landroid/os/UserHandle;
    .end local v5    # "ownerMatch":Z
    .end local v6    # "volume":Landroid/os/storage/StorageVolume;
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Landroid/os/storage/StorageVolume;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/os/storage/StorageVolume;

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v7
.end method

.method public onDaemonConnected()V
    .locals 2

    .prologue
    .line 147
    new-instance v0, Lcom/android/server/MountServiceEx$1;

    const-string v1, "MountService#onDaemonConnected"

    invoke-direct {v0, p0, v1}, Lcom/android/server/MountServiceEx$1;-><init>(Lcom/android/server/MountServiceEx;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/MountServiceEx$1;->start()V

    .line 230
    return-void
.end method

.method protected readStorageListLocked()V
    .locals 18

    .prologue
    .line 420
    invoke-super/range {p0 .. p0}, Lcom/android/server/MountService;->readStorageListLocked()V

    .line 422
    const-string v3, "SECONDARY_STORAGE"

    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 423
    .local v13, "SecondaryStorage":Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/MountServiceEx;->NOSDCARD:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountServiceEx;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 424
    new-instance v2, Landroid/os/storage/StorageVolume;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/lge/internal/R$string;->storage_sd_card:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V

    .line 425
    .local v2, "volumesd":Landroid/os/storage/StorageVolume;
    const-string v3, "MountServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/lge/internal/R$string;->storage_sd_card:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", false, true, false, 0, false, 0, null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/MountServiceEx;->addVolumeLocked(Landroid/os/storage/StorageVolume;)V

    .line 430
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/MountServiceEx;->isExternalStorageEmulated()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v15, 0x1

    .line 431
    .local v15, "index":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountServiceEx;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/storage/StorageVolume;

    .line 432
    .local v17, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 433
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "index":I
    .local v16, "index":I
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    move/from16 v15, v16

    .end local v16    # "index":I
    .restart local v15    # "index":I
    goto :goto_1

    .line 430
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "index":I
    .end local v17    # "volume":Landroid/os/storage/StorageVolume;
    :cond_1
    const/4 v15, 0x0

    goto :goto_0

    .line 437
    .end local v2    # "volumesd":Landroid/os/storage/StorageVolume;
    :cond_2
    return-void
.end method

.method protected sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    .locals 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "volume"    # Landroid/os/storage/StorageVolume;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 636
    new-instance v0, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 637
    .local v0, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 638
    .local v2, "secondaryStoragePath":Ljava/lang/String;
    const-string v3, "storage_volume"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 640
    sget-boolean v3, Lcom/android/server/MountServiceEx;->NOSDCARD:Z

    if-nez v3, :cond_1

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "SECONDARY_STORAGE"

    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 643
    if-eqz v2, :cond_1

    .line 644
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 646
    .local v1, "secondaryStorage":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v4

    .line 648
    .local v4, "secondaryStorageUsableSpace":J
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 650
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 651
    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 657
    :cond_0
    :goto_0
    const-string v3, "SHOWS"

    const/4 v6, 0x1

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 658
    const-string v3, "SECONDARY_STORAGE_USABLE_SPACE"

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 662
    .end local v1    # "secondaryStorage":Ljava/io/File;
    .end local v4    # "secondaryStorageUsableSpace":J
    :cond_1
    const/high16 v3, 0x4000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 663
    const-string v3, "MountServiceEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendStorageIntent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v3, p0, Lcom/android/server/MountServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 665
    return-void

    .line 652
    .restart local v1    # "secondaryStorage":Ljava/io/File;
    .restart local v4    # "secondaryStorageUsableSpace":J
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public unmountSecureContainer(Ljava/lang/String;Z)I
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    .line 535
    const-string v4, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-virtual {p0, v4}, Lcom/android/server/MountServiceEx;->validatePermission(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p0}, Lcom/android/server/MountServiceEx;->waitForReady()V

    .line 537
    invoke-virtual {p0}, Lcom/android/server/MountServiceEx;->warnOnNotMounted()V

    .line 539
    iget-object v5, p0, Lcom/android/server/MountServiceEx;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 540
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountServiceEx;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 541
    const/4 v3, -0x5

    monitor-exit v5

    .line 579
    :cond_0
    :goto_0
    return v3

    .line 543
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 551
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    .line 553
    const/4 v3, 0x0

    .line 555
    .local v3, "rc":I
    :try_start_1
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "unmount"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 556
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p2, :cond_2

    .line 557
    const-string v4, "force"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 559
    :cond_2
    iget-object v4, p0, Lcom/android/server/MountServiceEx;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    .line 574
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :goto_1
    if-nez v3, :cond_0

    .line 575
    iget-object v5, p0, Lcom/android/server/MountServiceEx;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 576
    :try_start_2
    iget-object v4, p0, Lcom/android/server/MountServiceEx;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 577
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 543
    .end local v3    # "rc":I
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 560
    .restart local v3    # "rc":I
    :catch_0
    move-exception v2

    .line 561
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 562
    .local v1, "code":I
    const/16 v4, 0x195

    if-ne v1, v4, :cond_3

    .line 563
    const/4 v3, -0x7

    goto :goto_1

    .line 565
    :cond_3
    const/4 v3, -0x1

    .line 567
    iget-object v5, p0, Lcom/android/server/MountServiceEx;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 568
    :try_start_4
    iget-object v4, p0, Lcom/android/server/MountServiceEx;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 569
    monitor-exit v5

    goto :goto_1

    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v4
.end method

.method public unmountVolume(Ljava/lang/String;ZZ)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "removeEncryption"    # Z

    .prologue
    const/4 v4, 0x1

    .line 669
    if-nez p1, :cond_1

    .line 670
    const-string v2, "MountServiceEx"

    const-string v3, "unmountVolume: path == null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    const-string v2, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {p0, v2}, Lcom/android/server/MountServiceEx;->validatePermission(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p0}, Lcom/android/server/MountServiceEx;->waitForReady()V

    .line 676
    invoke-virtual {p0, p1}, Lcom/android/server/MountServiceEx;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 682
    .local v1, "volState":Ljava/lang/String;
    const-string v2, "unmounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "removed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "shared"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "unmountable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 690
    iput-boolean v4, p0, Lcom/android/server/MountServiceEx;->mUnmounted:Z

    .line 691
    new-instance v0, Lcom/android/server/MountService$UnmountCallBack;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V

    .line 692
    .local v0, "ucb":Lcom/android/server/MountService$UnmountCallBack;
    sget-object v2, Lcom/android/server/MountServiceEx;->SECONDARY_STORAGE:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 693
    iget-object v2, p0, Lcom/android/server/MountServiceEx;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/MountServiceEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 695
    :cond_2
    iget-object v2, p0, Lcom/android/server/MountServiceEx;->mHandler:Landroid/os/Handler;

    check-cast v2, Lcom/android/server/MountService$MountServiceHandler;

    iget-object v2, v2, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    iget-object v2, p0, Lcom/android/server/MountServiceEx;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/MountServiceEx;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    .locals 12
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;
    .param p2, "state"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 71
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, "path":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/MountServiceEx;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 74
    :try_start_0
    iget-object v6, p0, Lcom/android/server/MountServiceEx;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v6, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 75
    .local v3, "oldState":Ljava/lang/String;
    invoke-virtual {p1, p2}, Landroid/os/storage/StorageVolume;->setState(Ljava/lang/String;)V

    .line 76
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 79
    const-string v6, "MountServiceEx"

    const-string v7, "Duplicate state transition (%s -> %s) for %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p2, v8, v9

    aput-object p2, v8, v10

    const/4 v9, 0x2

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_0
    return-void

    .line 76
    .end local v3    # "oldState":Ljava/lang/String;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 84
    .restart local v3    # "oldState":Ljava/lang/String;
    :cond_0
    const-string v6, "MountServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "volume state changed for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v6

    if-nez v6, :cond_4

    .line 89
    const-string v6, "unmounted"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 90
    iget-object v6, p0, Lcom/android/server/MountServiceEx;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v9, v9}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 97
    iget-object v6, p0, Lcom/android/server/MountServiceEx;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v7, p0, Lcom/android/server/MountServiceEx;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    invoke-virtual {v7, v11, v4}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 123
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/android/server/MountServiceEx;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 124
    :try_start_2
    iget-object v6, p0, Lcom/android/server/MountServiceEx;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_2
    if-ltz v2, :cond_6

    .line 125
    iget-object v6, p0, Lcom/android/server/MountServiceEx;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 127
    .local v0, "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_3
    iget-object v6, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    invoke-interface {v6, v4, v3, p2}, Landroid/os/storage/IMountServiceListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 124
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 99
    .end local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2    # "i":I
    :cond_2
    const-string v6, "mounted"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-boolean v6, Lcom/lge/config/ThreelmMdmConfig;->THREELM_MDM:Z

    if-eqz v6, :cond_1

    const-string v6, "mounted_ro"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 100
    :cond_3
    iget-object v6, p0, Lcom/android/server/MountServiceEx;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v10, v9}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    goto :goto_1

    .line 104
    :cond_4
    sget-object v6, Lcom/android/server/MountServiceEx;->SECONDARY_STORAGE:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0}, Lcom/android/server/MountServiceEx;->isAvailableSecondaryStorage()Z

    move-result v6

    if-eqz v6, :cond_1

    sget-boolean v6, Lcom/lge/config/ConfigBuildFlags;->CAPP_MOVE_SDCARD:Z

    if-eqz v6, :cond_1

    .line 108
    const-string v6, "unmounted"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 109
    iget-object v6, p0, Lcom/android/server/MountServiceEx;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v9, v9}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 116
    iget-object v6, p0, Lcom/android/server/MountServiceEx;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v7, p0, Lcom/android/server/MountServiceEx;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    invoke-virtual {v7, v11, v4}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 118
    :cond_5
    const-string v6, "mounted"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 119
    iget-object v6, p0, Lcom/android/server/MountServiceEx;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v10, v9}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    goto :goto_1

    .line 128
    .restart local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2    # "i":I
    :catch_0
    move-exception v5

    .line 129
    .local v5, "rex":Landroid/os/RemoteException;
    :try_start_4
    const-string v6, "MountServiceEx"

    const-string v8, "Listener dead"

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v6, p0, Lcom/android/server/MountServiceEx;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 135
    .end local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2    # "i":I
    .end local v5    # "rex":Landroid/os/RemoteException;
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6

    .line 131
    .restart local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2    # "i":I
    :catch_1
    move-exception v1

    .line 132
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_5
    const-string v6, "MountServiceEx"

    const-string v8, "Listener failed"

    invoke-static {v6, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 135
    .end local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_6
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0
.end method
