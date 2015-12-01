.class public final Lcom/lge/camera/properties/StorageProperties;
.super Ljava/lang/Object;
.source "StorageProperties.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEmmcName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string v0, "internal storage"

    return-object v0
.end method

.method public static getNoOfStorageVolumes()I
    .locals 11

    .prologue
    const/4 v9, 0x1

    .line 59
    const/4 v7, 0x1

    .line 60
    .local v7, "volumeCount":I
    const/4 v6, 0x0

    .line 62
    .local v6, "svc":Landroid/os/IBinder;
    :try_start_0
    const-string v8, "mount"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 63
    if-eqz v6, :cond_0

    .line 64
    invoke-static {v6}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v3

    .line 65
    .local v3, "mountService":Landroid/os/storage/IMountService;
    if-eqz v3, :cond_0

    .line 66
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 67
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "getVolumeList"

    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Class;

    invoke-virtual {v1, v10, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 69
    .local v2, "md":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 70
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    move-object v0, v8

    check-cast v0, [Ljava/lang/Object;

    move-object v4, v0

    .line 71
    .local v4, "ob":[Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 72
    array-length v7, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "md":Ljava/lang/reflect/Method;
    .end local v3    # "mountService":Landroid/os/storage/IMountService;
    .end local v4    # "ob":[Ljava/lang/Object;
    :cond_0
    :goto_0
    if-le v7, v9, :cond_1

    const-string v8, "EXTERNAL_ADD_STORAGE"

    invoke-static {v8}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    move v7, v9

    .line 85
    .end local v7    # "volumeCount":I
    :goto_1
    return v7

    .line 77
    .restart local v7    # "volumeCount":I
    :catch_0
    move-exception v5

    .line 78
    .local v5, "rex":Ljava/lang/Exception;
    const-string v8, "CameraApp"

    const-string v10, "Exception : "

    invoke-static {v8, v10, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 84
    .end local v5    # "rex":Ljava/lang/Exception;
    :cond_1
    const-string v8, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Number of volumes = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static isAllMemorySupported()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 54
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->getNoOfStorageVolumes()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEMMCmemory()Z
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x1

    .line 33
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isExternalMemoryOnly()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 46
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->getNoOfStorageVolumes()I

    move-result v0

    .line 48
    .local v0, "volumeCount":I
    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isEMMCmemory()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isInternalMemoryOnly()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 38
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->getNoOfStorageVolumes()I

    move-result v0

    .line 40
    .local v0, "volumeCount":I
    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isEMMCmemory()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
