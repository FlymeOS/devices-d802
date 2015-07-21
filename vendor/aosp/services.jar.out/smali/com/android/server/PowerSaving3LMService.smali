.class public Lcom/android/server/PowerSaving3LMService;
.super Landroid/os/IPowerSaving3LMService$Stub;
.source "PowerSaving3LMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PowerSaving3LMService$1;,
        Lcom/android/server/PowerSaving3LMService$RulesEngine;,
        Lcom/android/server/PowerSaving3LMService$PublicKeyCompare;,
        Lcom/android/server/PowerSaving3LMService$UserReceiver;,
        Lcom/android/server/PowerSaving3LMService$ScreenReceiver;,
        Lcom/android/server/PowerSaving3LMService$BootCompletedReceiver;,
        Lcom/android/server/PowerSaving3LMService$PowerSavingData;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "PowerSavingService"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mForgroundPackage:Ljava/lang/String;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPowerSavingEnabled:Z

.field private mPublicKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/PowerSaving3LMService$PublicKeyCompare;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/PowerSaving3LMService$PowerSavingData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/os/IPowerSaving3LMService$Stub;-><init>()V

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/PowerSaving3LMService;->mUserData:Landroid/util/SparseArray;

    .line 47
    iput v1, p0, Lcom/android/server/PowerSaving3LMService;->mCurrentUserId:I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/PowerSaving3LMService;->mForgroundPackage:Ljava/lang/String;

    .line 55
    iput-boolean v1, p0, Lcom/android/server/PowerSaving3LMService;->mPowerSavingEnabled:Z

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/PowerSaving3LMService;->mPublicKeyList:Ljava/util/ArrayList;

    .line 57
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/PowerSaving3LMService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PowerSaving3LMService;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/server/PowerSaving3LMService;->mPowerSavingEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/PowerSaving3LMService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PowerSaving3LMService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/PowerSaving3LMService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/PowerSaving3LMService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PowerSaving3LMService;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->setForgroundPackage()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/PowerSaving3LMService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PowerSaving3LMService;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->enablePowerSaving()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/PowerSaving3LMService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PowerSaving3LMService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/PowerSaving3LMService;->setForgroundPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/PowerSaving3LMService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PowerSaving3LMService;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->disablePowerSaving()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/PowerSaving3LMService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PowerSaving3LMService;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/PowerSaving3LMService;->removeUserData(I)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/server/PowerSaving3LMService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PowerSaving3LMService;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/android/server/PowerSaving3LMService;->mCurrentUserId:I

    return p1
.end method

.method private disablePowerSaving()V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PowerSaving3LMService;->mPowerSavingEnabled:Z

    .line 198
    return-void
.end method

.method private enablePowerSaving()V
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PowerSaving3LMService;->mPowerSavingEnabled:Z

    .line 206
    return-void
.end method

.method private getUserData()Lcom/android/server/PowerSaving3LMService$PowerSavingData;
    .locals 5

    .prologue
    .line 227
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 228
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 230
    .local v2, "userId":I
    iget-object v4, p0, Lcom/android/server/PowerSaving3LMService;->mUserData:Landroid/util/SparseArray;

    monitor-enter v4

    .line 231
    :try_start_0
    iget-object v3, p0, Lcom/android/server/PowerSaving3LMService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PowerSaving3LMService$PowerSavingData;

    .line 232
    .local v1, "data":Lcom/android/server/PowerSaving3LMService$PowerSavingData;
    if-nez v1, :cond_0

    .line 233
    new-instance v1, Lcom/android/server/PowerSaving3LMService$PowerSavingData;

    .end local v1    # "data":Lcom/android/server/PowerSaving3LMService$PowerSavingData;
    invoke-direct {v1, p0, v2}, Lcom/android/server/PowerSaving3LMService$PowerSavingData;-><init>(Lcom/android/server/PowerSaving3LMService;I)V

    .line 234
    .restart local v1    # "data":Lcom/android/server/PowerSaving3LMService$PowerSavingData;
    iget-object v3, p0, Lcom/android/server/PowerSaving3LMService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 236
    :cond_0
    monitor-exit v4

    return-object v1

    .line 237
    .end local v1    # "data":Lcom/android/server/PowerSaving3LMService$PowerSavingData;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private isAccessPermitted()Z
    .locals 26

    .prologue
    .line 248
    const/16 v19, 0x0

    .line 249
    .local v19, "permitted":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 250
    .local v7, "callerUid":I
    const-wide/16 v12, -0x1

    .line 252
    .local v12, "ident":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerSaving3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v17

    .line 253
    .local v17, "packages":[Ljava/lang/String;
    if-eqz v17, :cond_1

    .line 254
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 256
    move-object/from16 v4, v17

    .local v4, "arr$":[Ljava/lang/String;
    array-length v14, v4

    .local v14, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    move v11, v9

    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v14    # "len$":I
    .local v11, "i$":I
    :goto_0
    if-ge v11, v14, :cond_1

    aget-object v20, v4, v11

    .line 258
    .local v20, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerSaving3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v23, v0

    const/16 v24, 0x40

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v16

    .line 259
    .local v16, "packageInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v16

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v5, "arr$":[Landroid/content/pm/Signature;
    array-length v15, v5

    .local v15, "len$":I
    const/4 v9, 0x0

    .end local v11    # "i$":I
    .restart local v9    # "i$":I
    move v10, v9

    .end local v9    # "i$":I
    .local v10, "i$":I
    :goto_1
    if-ge v10, v15, :cond_5

    aget-object v21, v5, v10

    .line 260
    .local v21, "pkgSignature":Landroid/content/pm/Signature;
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    .line 261
    .local v6, "blob":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerSaving3LMService;->mPublicKeyList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v10    # "i$":I
    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/PowerSaving3LMService$PublicKeyCompare;

    .line 262
    .local v22, "publicKey":Lcom/android/server/PowerSaving3LMService$PublicKeyCompare;
    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lcom/android/server/PowerSaving3LMService$PublicKeyCompare;->comparePublicKey([B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 263
    .local v8, "compare":Z
    if-eqz v8, :cond_0

    .line 264
    const/16 v19, 0x1

    .line 276
    .end local v5    # "arr$":[Landroid/content/pm/Signature;
    .end local v6    # "blob":[B
    .end local v8    # "compare":Z
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v15    # "len$":I
    .end local v16    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v20    # "pkg":Ljava/lang/String;
    .end local v21    # "pkgSignature":Landroid/content/pm/Signature;
    .end local v22    # "publicKey":Lcom/android/server/PowerSaving3LMService$PublicKeyCompare;
    :cond_1
    const-wide/16 v24, -0x1

    cmp-long v23, v12, v24

    if-eqz v23, :cond_2

    .line 277
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 281
    .end local v17    # "packages":[Ljava/lang/String;
    :cond_2
    :goto_2
    if-nez v19, :cond_3

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerSaving3LMService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "com.threelm.android.permission.POWER_SAVING_3LM_SERVICE"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v18

    .line 283
    .local v18, "permission":I
    if-nez v18, :cond_3

    .line 284
    const/16 v19, 0x1

    .line 289
    .end local v18    # "permission":I
    :cond_3
    return v19

    .line 259
    .restart local v5    # "arr$":[Landroid/content/pm/Signature;
    .restart local v6    # "blob":[B
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v15    # "len$":I
    .restart local v16    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v17    # "packages":[Ljava/lang/String;
    .restart local v20    # "pkg":Ljava/lang/String;
    .restart local v21    # "pkgSignature":Landroid/content/pm/Signature;
    :cond_4
    add-int/lit8 v9, v10, 0x1

    .local v9, "i$":I
    move v10, v9

    .end local v9    # "i$":I
    .restart local v10    # "i$":I
    goto :goto_1

    .line 256
    .end local v6    # "blob":[B
    .end local v21    # "pkgSignature":Landroid/content/pm/Signature;
    :cond_5
    add-int/lit8 v9, v11, 0x1

    .end local v10    # "i$":I
    .restart local v9    # "i$":I
    move v11, v9

    .end local v9    # "i$":I
    .restart local v11    # "i$":I
    goto :goto_0

    .line 273
    .end local v5    # "arr$":[Landroid/content/pm/Signature;
    .end local v11    # "i$":I
    .end local v15    # "len$":I
    .end local v16    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v17    # "packages":[Ljava/lang/String;
    .end local v20    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v23

    .line 276
    const-wide/16 v24, -0x1

    cmp-long v23, v12, v24

    if-eqz v23, :cond_2

    .line 277
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 276
    :catchall_0
    move-exception v23

    const-wide/16 v24, -0x1

    cmp-long v24, v12, v24

    if-eqz v24, :cond_6

    .line 277
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_6
    throw v23
.end method

.method private removeUserData(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 242
    iget-object v1, p0, Lcom/android/server/PowerSaving3LMService;->mUserData:Landroid/util/SparseArray;

    monitor-enter v1

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerSaving3LMService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 244
    monitor-exit v1

    .line 245
    return-void

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setForgroundPackage()V
    .locals 6

    .prologue
    .line 215
    iget-object v3, p0, Lcom/android/server/PowerSaving3LMService;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v3, :cond_0

    .line 217
    :try_start_0
    iget-object v3, p0, Lcom/android/server/PowerSaving3LMService;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 218
    .local v2, "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "fpackageName":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/PowerSaving3LMService;->setForgroundPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v1    # "fpackageName":Ljava/lang/String;
    .end local v2    # "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_0
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PowerSavingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setForgroundPackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/server/PowerSaving3LMService;->mForgroundPackage:Ljava/lang/String;

    .line 211
    return-void
.end method


# virtual methods
.method public disablePackageWhilePowerSaving(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->isAccessPermitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->getUserData()Lcom/android/server/PowerSaving3LMService$PowerSavingData;

    move-result-object v0

    .line 136
    .local v0, "data":Lcom/android/server/PowerSaving3LMService$PowerSavingData;
    iget-object v2, v0, Lcom/android/server/PowerSaving3LMService$PowerSavingData;->mDeniedPackagesWhilePowerSaving:Lcom/android/server/PowerSaving3LMService$RulesEngine;

    monitor-enter v2

    .line 138
    :try_start_0
    iget-object v1, v0, Lcom/android/server/PowerSaving3LMService$PowerSavingData;->mDeniedPackagesWhilePowerSaving:Lcom/android/server/PowerSaving3LMService$RulesEngine;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v3}, Lcom/android/server/PowerSaving3LMService$RulesEngine;->updatePolicy(Ljava/lang/String;Z)Z

    .line 139
    monitor-exit v2

    .line 144
    return-void

    .line 139
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 142
    .end local v0    # "data":Lcom/android/server/PowerSaving3LMService$PowerSavingData;
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1}, Ljava/lang/SecurityException;-><init>()V

    throw v1
.end method

.method public enablePackageWhilePowerSaving(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->isAccessPermitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->getUserData()Lcom/android/server/PowerSaving3LMService$PowerSavingData;

    move-result-object v0

    .line 155
    .local v0, "data":Lcom/android/server/PowerSaving3LMService$PowerSavingData;
    iget-object v2, v0, Lcom/android/server/PowerSaving3LMService$PowerSavingData;->mDeniedPackagesWhilePowerSaving:Lcom/android/server/PowerSaving3LMService$RulesEngine;

    monitor-enter v2

    .line 157
    :try_start_0
    iget-object v1, v0, Lcom/android/server/PowerSaving3LMService$PowerSavingData;->mDeniedPackagesWhilePowerSaving:Lcom/android/server/PowerSaving3LMService$RulesEngine;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Lcom/android/server/PowerSaving3LMService$RulesEngine;->updatePolicy(Ljava/lang/String;Z)Z

    .line 158
    monitor-exit v2

    .line 163
    return-void

    .line 158
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 161
    .end local v0    # "data":Lcom/android/server/PowerSaving3LMService$PowerSavingData;
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1}, Ljava/lang/SecurityException;-><init>()V

    throw v1
.end method

.method public getPowerSavingMode()Z
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->isAccessPermitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->getUserData()Lcom/android/server/PowerSaving3LMService$PowerSavingData;

    move-result-object v0

    .line 100
    .local v0, "data":Lcom/android/server/PowerSaving3LMService$PowerSavingData;
    iget-boolean v1, v0, Lcom/android/server/PowerSaving3LMService$PowerSavingData;->mPowerSavingSettingsEnabled:Z

    return v1

    .line 103
    .end local v0    # "data":Lcom/android/server/PowerSaving3LMService$PowerSavingData;
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1}, Ljava/lang/SecurityException;-><init>()V

    throw v1
.end method

.method public init(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x0

    .line 61
    iput-object p1, p0, Lcom/android/server/PowerSaving3LMService;->mContext:Landroid/content/Context;

    .line 62
    const-string v8, "activity"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    iput-object v8, p0, Lcom/android/server/PowerSaving3LMService;->mActivityManager:Landroid/app/ActivityManager;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/PowerSaving3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 66
    .local v7, "resources":Landroid/content/res/Resources;
    const v8, 0x1070051

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, "powerSavingKey":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v3, v0, v1

    .line 68
    .local v3, "key":Ljava/lang/String;
    new-instance v6, Lcom/android/server/PowerSaving3LMService$PublicKeyCompare;

    invoke-direct {v6, v3}, Lcom/android/server/PowerSaving3LMService$PublicKeyCompare;-><init>(Ljava/lang/String;)V

    .line 69
    .local v6, "publicKey":Lcom/android/server/PowerSaving3LMService$PublicKeyCompare;
    iget-object v8, p0, Lcom/android/server/PowerSaving3LMService;->mPublicKeyList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v3    # "key":Ljava/lang/String;
    .end local v6    # "publicKey":Lcom/android/server/PowerSaving3LMService$PublicKeyCompare;
    :cond_0
    new-instance v8, Lcom/android/server/PowerSaving3LMService$BootCompletedReceiver;

    invoke-direct {v8, p0, v11}, Lcom/android/server/PowerSaving3LMService$BootCompletedReceiver;-><init>(Lcom/android/server/PowerSaving3LMService;Lcom/android/server/PowerSaving3LMService$1;)V

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 73
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 74
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v8, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    new-instance v8, Lcom/android/server/PowerSaving3LMService$UserReceiver;

    invoke-direct {v8, p0, v11}, Lcom/android/server/PowerSaving3LMService$UserReceiver;-><init>(Lcom/android/server/PowerSaving3LMService;Lcom/android/server/PowerSaving3LMService$1;)V

    invoke-virtual {p1, v8, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    return-void
.end method

.method public isPackageDisabledWhilePowerSaving(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 175
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 176
    .local v3, "userId":I
    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->getUserData()Lcom/android/server/PowerSaving3LMService$PowerSavingData;

    move-result-object v1

    .line 177
    .local v1, "data":Lcom/android/server/PowerSaving3LMService$PowerSavingData;
    iget-boolean v4, v1, Lcom/android/server/PowerSaving3LMService$PowerSavingData;->mPowerSavingSettingsEnabled:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/PowerSaving3LMService;->mPowerSavingEnabled:Z

    if-nez v4, :cond_1

    .line 178
    :cond_0
    const/4 v2, 0x0

    .line 189
    .local v2, "disabled":Z
    :goto_0
    return v2

    .line 180
    .end local v2    # "disabled":Z
    :cond_1
    iget-object v4, p0, Lcom/android/server/PowerSaving3LMService;->mForgroundPackage:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/PowerSaving3LMService;->mForgroundPackage:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/server/PowerSaving3LMService;->mCurrentUserId:I

    if-ne v3, v4, :cond_3

    .line 181
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "disabled":Z
    goto :goto_0

    .line 184
    .end local v2    # "disabled":Z
    :cond_3
    iget-object v5, v1, Lcom/android/server/PowerSaving3LMService$PowerSavingData;->mDeniedPackagesWhilePowerSaving:Lcom/android/server/PowerSaving3LMService$RulesEngine;

    monitor-enter v5

    .line 185
    :try_start_0
    iget-object v4, v1, Lcom/android/server/PowerSaving3LMService$PowerSavingData;->mDeniedPackagesWhilePowerSaving:Lcom/android/server/PowerSaving3LMService$RulesEngine;

    invoke-virtual {v4, p1}, Lcom/android/server/PowerSaving3LMService$RulesEngine;->checkPolicy(Ljava/lang/String;)Z

    move-result v2

    .line 187
    .restart local v2    # "disabled":Z
    monitor-exit v5

    goto :goto_0

    .end local v2    # "disabled":Z
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public setAllowedPackages(Ljava/util/Map;)Z
    .locals 3
    .param p1, "pkgNames"    # Ljava/util/Map;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->isAccessPermitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->getUserData()Lcom/android/server/PowerSaving3LMService$PowerSavingData;

    move-result-object v0

    .line 117
    .local v0, "data":Lcom/android/server/PowerSaving3LMService$PowerSavingData;
    iget-object v2, v0, Lcom/android/server/PowerSaving3LMService$PowerSavingData;->mDeniedPackagesWhilePowerSaving:Lcom/android/server/PowerSaving3LMService$RulesEngine;

    monitor-enter v2

    .line 119
    :try_start_0
    iget-object v1, v0, Lcom/android/server/PowerSaving3LMService$PowerSavingData;->mDeniedPackagesWhilePowerSaving:Lcom/android/server/PowerSaving3LMService$RulesEngine;

    invoke-virtual {v1, p1}, Lcom/android/server/PowerSaving3LMService$RulesEngine;->loadPolicy(Ljava/util/Map;)Z

    move-result v1

    monitor-exit v2

    return v1

    .line 120
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 123
    .end local v0    # "data":Lcom/android/server/PowerSaving3LMService$PowerSavingData;
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1}, Ljava/lang/SecurityException;-><init>()V

    throw v1
.end method

.method public setPowerSavingMode(Z)V
    .locals 2
    .param p1, "mode"    # Z

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->isAccessPermitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->getUserData()Lcom/android/server/PowerSaving3LMService$PowerSavingData;

    move-result-object v0

    .line 88
    .local v0, "data":Lcom/android/server/PowerSaving3LMService$PowerSavingData;
    iput-boolean p1, v0, Lcom/android/server/PowerSaving3LMService$PowerSavingData;->mPowerSavingSettingsEnabled:Z

    .line 93
    return-void

    .line 91
    .end local v0    # "data":Lcom/android/server/PowerSaving3LMService$PowerSavingData;
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1}, Ljava/lang/SecurityException;-><init>()V

    throw v1
.end method
