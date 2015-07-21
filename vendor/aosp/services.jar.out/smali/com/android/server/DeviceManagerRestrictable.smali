.class public Lcom/android/server/DeviceManagerRestrictable;
.super Ljava/lang/Object;
.source "DeviceManagerRestrictable.java"

# interfaces
.implements Landroid/os/IDeviceManagerRestrictable3LM;


# static fields
.field public static final ADDRESS_BOOK:Ljava/lang/String; = "address_book"

.field private static final API_VERSION:I = 0x1

.field private static final DEBUG:Z = false

.field public static final FELICA:Ljava/lang/String; = "felica"

.field public static final INFRARED:Ljava/lang/String; = "infrared"

.field public static final ONE_SEG:Ljava/lang/String; = "one_seg"

.field public static final STATUS_DISABLED:I = 0x0

.field public static final STATUS_ENABLED:I = 0x1

.field public static final STATUS_UNSUPPORTED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "DeviceManagerRestrictable"

.field private static mSelf:Lcom/android/server/DeviceManagerRestrictable;


# instance fields
.field private isAddable:Z

.field private mContext:Landroid/content/Context;

.field private mDeviceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IRestrictableDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPublicKey3LM:Lcom/android/server/DeviceManager3LMService$PublicKey3LM;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/DeviceManagerRestrictable;->mSelf:Lcom/android/server/DeviceManagerRestrictable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceManagerRestrictable;->isAddable:Z

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceManagerRestrictable;->mDeviceMap:Ljava/util/HashMap;

    .line 65
    return-void
.end method

.method private checkCallingPermission(Ljava/lang/String;)Z
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 157
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v0

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/android/server/DeviceManagerRestrictable;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static declared-synchronized getInstance()Lcom/android/server/DeviceManagerRestrictable;
    .locals 2

    .prologue
    .line 59
    const-class v1, Lcom/android/server/DeviceManagerRestrictable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/DeviceManagerRestrictable;->mSelf:Lcom/android/server/DeviceManagerRestrictable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/DeviceManagerRestrictable;

    invoke-direct {v0}, Lcom/android/server/DeviceManagerRestrictable;-><init>()V

    sput-object v0, Lcom/android/server/DeviceManagerRestrictable;->mSelf:Lcom/android/server/DeviceManagerRestrictable;

    .line 61
    :cond_0
    sget-object v0, Lcom/android/server/DeviceManagerRestrictable;->mSelf:Lcom/android/server/DeviceManagerRestrictable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isAccessPermitted()Z
    .locals 15

    .prologue
    .line 80
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 81
    .local v2, "callerUid":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v12

    if-ne v2, v12, :cond_0

    const/4 v12, 0x1

    .line 107
    :goto_0
    return v12

    .line 86
    :cond_0
    :try_start_0
    iget-object v12, p0, Lcom/android/server/DeviceManagerRestrictable;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v12, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    .line 88
    .local v9, "packages":[Ljava/lang/String;
    move-object v0, v9

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v5, v4

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v10, v0, v5

    .line 90
    .local v10, "pkg":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/DeviceManagerRestrictable;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v13, 0x40

    invoke-virtual {v12, v10, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 94
    .local v8, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v1, "arr$":[Landroid/content/pm/Signature;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_2
    if-ge v4, v7, :cond_2

    aget-object v11, v1, v4

    .line 95
    .local v11, "pkgSignature":Landroid/content/pm/Signature;
    iget-object v12, p0, Lcom/android/server/DeviceManagerRestrictable;->mPublicKey3LM:Lcom/android/server/DeviceManager3LMService$PublicKey3LM;

    invoke-virtual {v11}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/android/server/DeviceManager3LMService$PublicKey3LM;->comparePublicKey([BZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    if-eqz v12, :cond_1

    .line 99
    const/4 v12, 0x1

    goto :goto_0

    .line 94
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 88
    .end local v11    # "pkgSignature":Landroid/content/pm/Signature;
    :cond_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_1

    .line 103
    .end local v1    # "arr$":[Landroid/content/pm/Signature;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v9    # "packages":[Ljava/lang/String;
    .end local v10    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 104
    .local v3, "e":Ljava/lang/Exception;
    const-string v12, "DeviceManagerRestrictable"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error trying to verify package public key against 3LM pub key:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v12, "DeviceManagerRestrictable"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Access denied to UID: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v12, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addLockFunc(Ljava/lang/String;Landroid/os/IRestrictableDevice;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "device"    # Landroid/os/IRestrictableDevice;

    .prologue
    .line 139
    const-string v0, "com.threelm.permission.DEVICE_INIT"

    invoke-direct {p0, v0}, Lcom/android/server/DeviceManagerRestrictable;->checkCallingPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    iget-boolean v0, p0, Lcom/android/server/DeviceManagerRestrictable;->isAddable:Z

    if-eqz v0, :cond_1

    .line 141
    iget-object v1, p0, Lcom/android/server/DeviceManagerRestrictable;->mDeviceMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceManagerRestrictable;->mDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/server/DeviceManagerRestrictable;->mDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    monitor-exit v1

    .line 154
    return-void

    .line 145
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Registered"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 149
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Time Out"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission Denial"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStatus(Ljava/lang/String;)I
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 128
    const/4 v1, -0x1

    .line 129
    .local v1, "status":I
    iget-object v3, p0, Lcom/android/server/DeviceManagerRestrictable;->mDeviceMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 130
    :try_start_0
    iget-object v2, p0, Lcom/android/server/DeviceManagerRestrictable;->mDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IRestrictableDevice;

    .line 131
    .local v0, "device":Landroid/os/IRestrictableDevice;
    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0}, Landroid/os/IRestrictableDevice;->getStatus()I

    move-result v1

    .line 134
    :cond_0
    monitor-exit v3

    .line 135
    return v1

    .line 134
    .end local v0    # "device":Landroid/os/IRestrictableDevice;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method initEnd()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceManagerRestrictable;->isAddable:Z

    .line 76
    return-void
.end method

.method initStart(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/server/DeviceManagerRestrictable;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceManagerRestrictable;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 70
    new-instance v0, Lcom/android/server/DeviceManager3LMService$PublicKey3LM;

    invoke-direct {v0, p1}, Lcom/android/server/DeviceManager3LMService$PublicKey3LM;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/DeviceManagerRestrictable;->mPublicKey3LM:Lcom/android/server/DeviceManager3LMService$PublicKey3LM;

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DeviceManagerRestrictable;->isAddable:Z

    .line 72
    return-void
.end method

.method public setStatus(Ljava/lang/String;I)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/server/DeviceManagerRestrictable;->isAccessPermitted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v2, p0, Lcom/android/server/DeviceManagerRestrictable;->mDeviceMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DeviceManagerRestrictable;->mDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IRestrictableDevice;

    .line 121
    .local v0, "device":Landroid/os/IRestrictableDevice;
    if-eqz v0, :cond_1

    .line 122
    invoke-interface {v0, p2}, Landroid/os/IRestrictableDevice;->setStatus(I)V

    .line 124
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "device":Landroid/os/IRestrictableDevice;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
