.class public Lcom/lge/internal/telephony/DataConnectionInterface;
.super Ljava/lang/Object;
.source "DataConnectionInterface.java"


# static fields
.field private static final DBG:Z = true

.field private static final IS_SUPPORT_NSRM:I = 0x4

.field private static final TAG:Ljava/lang/String; = "DataConnectionInterface "

.field private static sDataConnectionInterface:Lcom/lge/internal/telephony/DataConnectionInterface;


# instance fields
.field featureset:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

.field private mPhoneMgr:Lcom/android/internal/telephony/ITelephony;

.field private mPhoneProxy:Lcom/android/internal/telephony/PhoneProxy;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "DataConnectionInterface "

    const-string v1, "DataConnectionInterface() has created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iput-object p1, p0, Lcom/lge/internal/telephony/DataConnectionInterface;->mContext:Landroid/content/Context;

    .line 53
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/internal/telephony/DataConnectionInterface;->mPhoneMgr:Lcom/android/internal/telephony/ITelephony;

    .line 54
    const-string v0, "ro.afwdata.LGfeatureset"

    const-string v1, "none"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/internal/telephony/DataConnectionInterface;->featureset:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/internal/telephony/DataConnectionInterface;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 67
    sget-object v0, Lcom/lge/internal/telephony/DataConnectionInterface;->sDataConnectionInterface:Lcom/lge/internal/telephony/DataConnectionInterface;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/lge/internal/telephony/DataConnectionInterface;

    invoke-direct {v0, p0}, Lcom/lge/internal/telephony/DataConnectionInterface;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/internal/telephony/DataConnectionInterface;->sDataConnectionInterface:Lcom/lge/internal/telephony/DataConnectionInterface;

    .line 71
    :cond_0
    sget-object v0, Lcom/lge/internal/telephony/DataConnectionInterface;->sDataConnectionInterface:Lcom/lge/internal/telephony/DataConnectionInterface;

    return-object v0
.end method

.method public static get_data_optimize(Landroid/content/Context;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    .line 256
    const/4 v8, 0x0

    .line 257
    .local v8, "retValue":Z
    const-string v11, "persist.dpm.feature"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 258
    .local v4, "mNSRM_value":I
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 259
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    const-string v11, "com.lge.software.data_optimize"

    invoke-virtual {v5, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 260
    const-string v11, "DataConnectionInterface "

    const-string v12, "com.lge.software.data_optimize is true"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    const/4 v11, 0x4

    if-ne v4, v11, :cond_1

    .line 264
    :try_start_0
    const-string v11, "com.qti.dpmapi.DpmApi"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 265
    .local v0, "cls":Ljava/lang/Class;
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Landroid/content/Context;

    aput-object v13, v11, v12

    invoke-virtual {v0, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 266
    .local v1, "ct":Ljava/lang/reflect/Constructor;
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p0, v11, v12

    invoke-virtual {v1, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 267
    .local v9, "retobj":Ljava/lang/Object;
    const-string v11, "com.qti.dpmapi.DpmApi$NSRMFeatureGetType"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 268
    .local v10, "subcls":Ljava/lang/Class;
    const/4 v11, 0x1

    new-array v6, v11, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v10, v6, v11

    .line 269
    .local v6, "paramTypes":[Ljava/lang/Class;
    const/4 v11, 0x1

    new-array v7, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v10}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v12, v12, v13

    aput-object v12, v7, v11

    .line 270
    .local v7, "parameters":[Ljava/lang/Object;
    const-string v11, "getNSRMEnabled"

    invoke-virtual {v0, v11, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 271
    .local v3, "getNSRMEnabled":Ljava/lang/reflect/Method;
    invoke-virtual {v3, v9, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 275
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v1    # "ct":Ljava/lang/reflect/Constructor;
    .end local v3    # "getNSRMEnabled":Ljava/lang/reflect/Method;
    .end local v6    # "paramTypes":[Ljava/lang/Class;
    .end local v7    # "parameters":[Ljava/lang/Object;
    .end local v9    # "retobj":Ljava/lang/Object;
    .end local v10    # "subcls":Ljava/lang/Class;
    :goto_0
    const-string v11, "DataConnectionInterface "

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "get_nsrm_state() :: mIsSyncOptimization = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v8

    .line 280
    :goto_1
    return v11

    .line 272
    :catch_0
    move-exception v2

    .line 273
    .local v2, "dpm":Ljava/lang/Exception;
    const-string v11, "DataConnectionInterface "

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getNSRMEnabled() :: dpm = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 278
    .end local v2    # "dpm":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Landroid/net/DataSchedulerManager;->getDataSchedulerEnabled()Z

    move-result v11

    goto :goto_1
.end method

.method public static set_data_optimize(Landroid/content/Context;Z)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isChecked"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 284
    const-string v10, "persist.dpm.feature"

    invoke-static {v10, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 285
    .local v4, "mNSRM_value":I
    const/4 v10, 0x4

    if-ne v4, v10, :cond_2

    .line 287
    :try_start_0
    const-string v10, "DataConnectionInterface "

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setNSRMEnabled() :: isChecked = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string v10, "com.qti.dpmapi.DpmApi$NSRMFeatureSetType"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 290
    .local v3, "mNSRMFeatureSetTypeCls":Ljava/lang/Class;
    if-eqz p1, :cond_0

    .line 291
    .local v8, "setValue":I
    :goto_0
    const-string v9, "com.qti.dpmapi.DpmApi"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 292
    .local v0, "cls":Ljava/lang/Class;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 293
    .local v1, "ct":Ljava/lang/reflect/Constructor;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 295
    .local v6, "retobj":Ljava/lang/Object;
    const/4 v9, 0x1

    new-array v5, v9, [Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v3, v5, v9

    .line 296
    .local v5, "paramTypes":[Ljava/lang/Class;
    const-string v9, "setNSRMEnabled"

    invoke-virtual {v0, v9, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 297
    .local v7, "setNSRMEnabled":Ljava/lang/reflect/Method;
    if-eqz p1, :cond_1

    .line 298
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v3}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v11

    const/4 v12, 0x2

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    invoke-virtual {v7, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v1    # "ct":Ljava/lang/reflect/Constructor;
    .end local v3    # "mNSRMFeatureSetTypeCls":Ljava/lang/Class;
    .end local v5    # "paramTypes":[Ljava/lang/Class;
    .end local v6    # "retobj":Ljava/lang/Object;
    .end local v7    # "setNSRMEnabled":Ljava/lang/reflect/Method;
    .end local v8    # "setValue":I
    :goto_1
    return-void

    .restart local v3    # "mNSRMFeatureSetTypeCls":Ljava/lang/Class;
    :cond_0
    move v8, v9

    .line 290
    goto :goto_0

    .line 300
    .restart local v0    # "cls":Ljava/lang/Class;
    .restart local v1    # "ct":Ljava/lang/reflect/Constructor;
    .restart local v5    # "paramTypes":[Ljava/lang/Class;
    .restart local v6    # "retobj":Ljava/lang/Object;
    .restart local v7    # "setNSRMEnabled":Ljava/lang/reflect/Method;
    .restart local v8    # "setValue":I
    :cond_1
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v3}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    invoke-virtual {v7, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 302
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v1    # "ct":Ljava/lang/reflect/Constructor;
    .end local v3    # "mNSRMFeatureSetTypeCls":Ljava/lang/Class;
    .end local v5    # "paramTypes":[Ljava/lang/Class;
    .end local v6    # "retobj":Ljava/lang/Object;
    .end local v7    # "setNSRMEnabled":Ljava/lang/reflect/Method;
    .end local v8    # "setValue":I
    :catch_0
    move-exception v2

    .line 303
    .local v2, "dpm":Ljava/lang/Exception;
    const-string v9, "DataConnectionInterface "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 307
    .end local v2    # "dpm":Ljava/lang/Exception;
    :cond_2
    invoke-static {}, Landroid/net/DataSchedulerManager;->getInstance()Landroid/net/DataSchedulerManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/net/DataSchedulerManager;->setDataSchedulerEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public functionForPacketDrop(Z)V
    .locals 5
    .param p1, "ok"    # Z

    .prologue
    .line 184
    const-string v2, "DataConnectionInterface "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "functionForPacketDrop ok."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v2, p0, Lcom/lge/internal/telephony/DataConnectionInterface;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/telephony/lgdata/DataConnectionManager;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/lgdata/DataConnectionManager;

    move-result-object v0

    .line 189
    .local v0, "dcm":Lcom/android/internal/telephony/lgdata/DataConnectionManager;
    if-eqz v0, :cond_0

    .line 191
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/lgdata/DataConnectionManager;->functionForPacketDrop(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v1

    .line 196
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "DataConnectionInterface "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "functionForPacketDrop exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDataOnRoamingEnabled()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 228
    const/4 v3, 0x0

    .line 229
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 230
    const-string v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 233
    .local v1, "mPhoneServiceEx":Lcom/lge/internal/telephony/ITelephonyEx;
    if-eqz v1, :cond_1

    .line 235
    :try_start_0
    const-string v6, "getDataOnRoamingEnabled"

    invoke-interface {v1, v6}, Lcom/lge/internal/telephony/ITelephonyEx;->handleDataInterface(Ljava/lang/String;)I

    move-result v2

    .line 236
    .local v2, "result":I
    if-ne v2, v4, :cond_0

    .line 237
    const-string v6, "DataConnectionInterface "

    const-string v7, "getDataOnRoamingEnabled true!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .end local v2    # "result":I
    :goto_0
    return v4

    .line 241
    .restart local v2    # "result":I
    :cond_0
    const-string v4, "DataConnectionInterface "

    const-string v6, "getDataOnRoamingEnabled false!!"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 242
    goto :goto_0

    .line 245
    .end local v2    # "result":I
    :cond_1
    const-string v4, "DataConnectionInterface "

    const-string v6, "getDataOnRoamingEnabled Error!!"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 246
    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v4, "DataConnectionInterface "

    const-string v6, "getDataOnRoamingEnabled RemoteException Error!!"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 250
    goto :goto_0
.end method

.method public handleConnectMobile()V
    .locals 5

    .prologue
    .line 83
    iget-object v3, p0, Lcom/lge/internal/telephony/DataConnectionInterface;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 85
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 86
    .local v1, "mPhoneService":Lcom/android/internal/telephony/ITelephony;
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v2

    .line 90
    .local v2, "mPhoneServiceEx":Lcom/lge/internal/telephony/ITelephonyEx;
    if-eqz v2, :cond_0

    .line 92
    :try_start_0
    const-string v3, "enable_mUserDataEnabled"

    invoke-interface {v2, v3}, Lcom/lge/internal/telephony/ITelephonyEx;->handleDataInterface(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public handleDisconnectMobile()V
    .locals 3

    .prologue
    .line 114
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v0

    .line 115
    .local v0, "mPhoneServiceEx":Lcom/lge/internal/telephony/ITelephonyEx;
    const-string v1, "DataConnectionInterface "

    const-string v2, "handleDisconnectMobile !!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    if-eqz v0, :cond_0

    .line 122
    :try_start_0
    const-string v1, "disable_mUserDataEnabled"

    invoke-interface {v0, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->handleDataInterface(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 134
    :try_start_1
    const-string v1, "mobileData_PdpReset"

    invoke-interface {v0, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->handleDataInterface(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    :cond_1
    :goto_1
    return-void

    .line 138
    :catch_0
    move-exception v1

    goto :goto_1

    .line 126
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public isDataPossible(I)Z
    .locals 9
    .param p1, "type"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 314
    sparse-switch p1, :sswitch_data_0

    .line 351
    :cond_0
    :goto_0
    return v5

    .line 316
    :sswitch_0
    const-string v0, "mms"

    .line 324
    .local v0, "apntype":Ljava/lang/String;
    :goto_1
    const/4 v4, 0x0

    .line 325
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 326
    const-string v7, "phone"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v2

    .line 327
    .local v2, "mPhoneServiceEx":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v0, :cond_1

    .line 328
    const-string v5, "DataConnectionInterface "

    const-string v7, "[LGE_DATA] apntype null!!"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 329
    goto :goto_0

    .line 319
    .end local v0    # "apntype":Ljava/lang/String;
    .end local v2    # "mPhoneServiceEx":Lcom/lge/internal/telephony/ITelephonyEx;
    .end local v4    # "tm":Landroid/telephony/TelephonyManager;
    :sswitch_1
    const-string v0, "ims"

    .line 320
    .restart local v0    # "apntype":Ljava/lang/String;
    goto :goto_1

    .line 331
    .restart local v2    # "mPhoneServiceEx":Lcom/lge/internal/telephony/ITelephonyEx;
    .restart local v4    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    if-nez v2, :cond_2

    .line 332
    const-string v5, "DataConnectionInterface "

    const-string v7, "[LGE_DATA] mPhoneServiceEx null!!"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 333
    goto :goto_0

    .line 338
    :cond_2
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isDataPossible,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/lge/internal/telephony/ITelephonyEx;->handleDataInterface(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 340
    .local v3, "result":I
    if-eq v3, v5, :cond_0

    move v5, v6

    .line 346
    goto :goto_0

    .line 349
    .end local v3    # "result":I
    :catch_0
    move-exception v1

    .line 350
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v5, "DataConnectionInterface "

    const-string v7, "isDataPossible RemoteException Error!!"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 351
    goto :goto_0

    .line 314
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xb -> :sswitch_1
    .end sparse-switch
.end method

.method public mobileDataPdpReset()V
    .locals 5

    .prologue
    .line 150
    const/4 v2, 0x0

    .line 151
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 152
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 155
    .local v1, "mPhoneServiceEx":Lcom/lge/internal/telephony/ITelephonyEx;
    if-eqz v1, :cond_0

    .line 158
    :try_start_0
    const-string v3, "isRoamingOOS"

    invoke-interface {v1, v3}, Lcom/lge/internal/telephony/ITelephonyEx;->handleDataInterface(Ljava/lang/String;)I

    move-result v0

    .line 160
    .local v0, "isRoaming":I
    if-nez v0, :cond_1

    .line 163
    const-string v3, "DataConnectionInterface "

    const-string v4, "mobileDataPdpReset is not allowed when it is not in network roaming."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .end local v0    # "isRoaming":I
    :cond_0
    :goto_0
    return-void

    .line 166
    .restart local v0    # "isRoaming":I
    :cond_1
    const-string v3, "DataConnectionInterface "

    const-string v4, "mobileDataPdpReset !!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-string v3, "mobileData_PdpReset"

    invoke-interface {v1, v3}, Lcom/lge/internal/telephony/ITelephonyEx;->handleDataInterface(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    .end local v0    # "isRoaming":I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public setDataOnRoamingEnabled(Z)V
    .locals 5
    .param p1, "flag"    # Z

    .prologue
    .line 201
    const/4 v2, 0x0

    .line 202
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 203
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 206
    .local v1, "mPhoneServiceEx":Lcom/lge/internal/telephony/ITelephonyEx;
    if-eqz v1, :cond_1

    .line 208
    if-eqz p1, :cond_0

    .line 209
    :try_start_0
    const-string v3, "setDataOnRoamingEnabled"

    invoke-interface {v1, v3}, Lcom/lge/internal/telephony/ITelephonyEx;->handleDataInterface(Ljava/lang/String;)I

    .line 210
    const-string v3, "DataConnectionInterface "

    const-string v4, "setDataOnRoamingEnabled true !!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :goto_0
    return-void

    .line 213
    :cond_0
    const-string v3, "setDataOnRoamingDisabled"

    invoke-interface {v1, v3}, Lcom/lge/internal/telephony/ITelephonyEx;->handleDataInterface(Ljava/lang/String;)I

    .line 214
    const-string v3, "DataConnectionInterface "

    const-string v4, "setDataOnRoamingEnabled false !!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "DataConnectionInterface "

    const-string v4, "setDataOnRoamingEnabled RemoteException Error!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 218
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    const-string v3, "DataConnectionInterface "

    const-string v4, "setDataOnRoamingEnabled Error!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
