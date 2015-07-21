.class public Lcom/lge/telephony/msim/LGMSimTelephonyManager;
.super Ljava/lang/Object;
.source "LGMSimTelephonyManager.java"


# static fields
.field private static final MSIM_TELEPHONY_MANAGER_ADAPTORS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "LGMSimTelephonyManager"

.field private static mActiveMSimTelephonyManager:Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;

.field private static mMSimConstructorWithContext:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static mMSimDefaultConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/lge/telephony/msim/LGMSimTelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "com.lge.telephony.msim.TargetMSimTelephonyManagerAdaptor"

    aput-object v2, v1, v3

    sput-object v1, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->MSIM_TELEPHONY_MANAGER_ADAPTORS:[Ljava/lang/String;

    .line 28
    sget-object v1, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->MSIM_TELEPHONY_MANAGER_ADAPTORS:[Ljava/lang/String;

    invoke-static {v1}, Lcom/lge/telephony/msim/BaseRuntimeLoader;->getActiveDefaultConstructorFromClassList([Ljava/lang/String;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->mMSimDefaultConstructor:Ljava/lang/reflect/Constructor;

    .line 30
    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    aput-object v1, v0, v3

    .line 31
    .local v0, "paramType":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    sget-object v1, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->MSIM_TELEPHONY_MANAGER_ADAPTORS:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/lge/telephony/msim/BaseRuntimeLoader;->getActiveConstructorFromClassList([Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->mMSimConstructorWithContext:Ljava/lang/reflect/Constructor;

    .line 33
    sget-object v1, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->mMSimDefaultConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->mMSimConstructorWithContext:Ljava/lang/reflect/Constructor;

    if-nez v1, :cond_1

    .line 34
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error!! don\'t load target msim telephony manager"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_1
    new-instance v1, Lcom/lge/telephony/msim/LGMSimTelephonyManager;

    invoke-direct {v1}, Lcom/lge/telephony/msim/LGMSimTelephonyManager;-><init>()V

    sput-object v1, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->sInstance:Lcom/lge/telephony/msim/LGMSimTelephonyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v1, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->mMSimDefaultConstructor:Ljava/lang/reflect/Constructor;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error !! LGMSimTelephonyManager() initialization"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_0
    :try_start_0
    sget-object v1, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->mMSimDefaultConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;

    sput-object v1, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->mActiveMSimTelephonyManager:Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 60
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 53
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 55
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 57
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-object v1, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->mMSimConstructorWithContext:Ljava/lang/reflect/Constructor;

    if-nez v1, :cond_0

    .line 64
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error !! LGMSimTelephonyManager(Context) initialization"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_0
    :try_start_0
    sget-object v1, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->mMSimConstructorWithContext:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;

    sput-object v1, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->mActiveMSimTelephonyManager:Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 80
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 73
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 75
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 77
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getDefault()Lcom/lge/telephony/msim/LGMSimTelephonyManager;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->sInstance:Lcom/lge/telephony/msim/LGMSimTelephonyManager;

    return-object v0
.end method

.method public static getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "index"    # I
    .param p2, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 233
    sget-object v0, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->mActiveMSimTelephonyManager:Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;

    invoke-virtual {v0, p0, p1, p2}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCallState(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 229
    sget-object v0, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->mActiveMSimTelephonyManager:Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->getCallState(I)I

    move-result v0

    return v0
.end method

.method public getCurrentPhoneType(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 134
    sget-object v0, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->mActiveMSimTelephonyManager:Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->getCurrentPhoneType(I)I

    move-result v0

    return v0
.end method

.method public getDefaultSubscription()I
    .locals 1

    .prologue
    .line 241
    sget-object v0, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->mActiveMSimTelephonyManager:Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;

    invoke-virtual {v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->getDefaultSubscription()I

    move-result v0

    return v0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 124
    sget-object v0, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->mActiveMSimTelephonyManager:Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSoftwareVersion(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 114
    sget-object v0, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->mActiveMSimTelephonyManager:Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->getDeviceSoftwareVersion(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupIdLevel1(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 259
    sget-object v0, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->mActiveMSimTelephonyManager:Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 221
    sget-object v0, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->mActiveMSimTelephonyManager:Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMSIN(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 256
    sget-object v0, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->mActiveMSimTelephonyManager:Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->getMSIN(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMultiSimConfiguration()Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->mActiveMSimTelephonyManager:Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;

    invoke-virtual {v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->getMultiSimConfiguration()Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 173
    sget-object v0, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->mActiveMSimTelephonyManager:Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 169
    sget-object v0, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->mActiveMSimTelephonyManager:Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 185
    sget-object v0, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->mActiveMSimTelephonyManager:Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->getNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 189
    sget-object v0, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->mActiveMSimTelephonyManager:Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneCount()I
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->mActiveMSimTelephonyManager:Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;

    invoke-virtual {v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method public getPreferredDataSubscription()I
    .locals 1

    .prologue
    .line 245
    sget-object v0, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->mActiveMSimTelephonyManager:Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;

    invoke-virtual {v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->getPreferredDataSubscription()I

    move-result v0

    return v0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 205
    sget-object v0, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->mActiveMSimTelephonyManager:Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimState(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 197
    sget-object v0, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->mActiveMSimTelephonyManager:Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->getSimState(I)I

    move-result v0

    return v0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 213
    sget-object v0, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->mActiveMSimTelephonyManager:Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasIccCard(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 193
    sget-object v0, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->mActiveMSimTelephonyManager:Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public isMultiSimEnabled()Z
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->mActiveMSimTelephonyManager:Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;

    invoke-virtual {v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->isMultiSimEnabled()Z

    move-result v0

    return v0
.end method

.method public isNetworkRoaming(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 181
    sget-object v0, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->mActiveMSimTelephonyManager:Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->isNetworkRoaming(I)Z

    move-result v0

    return v0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 1
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I

    .prologue
    .line 143
    sget-object v0, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->mActiveMSimTelephonyManager:Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;

    invoke-virtual {v0, p1, p2}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 144
    return-void
.end method

.method public setPreferredDataSubscription(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 249
    sget-object v0, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->mActiveMSimTelephonyManager:Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->setPreferredDataSubscription(I)Z

    move-result v0

    return v0
.end method

.method public setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 161
    sget-object v0, Lcom/lge/telephony/msim/LGMSimTelephonyManager;->mActiveMSimTelephonyManager:Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 162
    return-void
.end method
