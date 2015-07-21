.class public Lcom/qti/dpmapi/DpmApi;
.super Ljava/lang/Object;
.source "DpmApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/dpmapi/DpmApi$1;,
        Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;,
        Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;,
        Lcom/qti/dpmapi/DpmApi$FeatureType;
    }
.end annotation


# static fields
.field private static final DPM_CONFIG_FEATURE_MASK_NSRM:I = 0x4

.field private static final DPM_ENABLE_PROPERTY:Ljava/lang/String; = "persist.dpm.feature"

.field private static final DPM_FEATURE_OFF:I = 0x1

.field private static final DPM_FEATURE_ON:I = 0x2

.field public static final DPM_PREFERENCE_CHANGED_ACTION:Ljava/lang/String; = "com.qti.dpmframework.DPM_PREFERENCE_CHANGED"

.field private static final DPM_RET_BUSY:I = -0x2

.field private static final DPM_RET_ERROR:I = -0x1

.field private static final DPM_RET_FEATURE_UNSUPPORTED:I = -0x4

.field private static final DPM_RET_FILE_SIZE_TOO_LARGE:I = -0x5

.field private static final DPM_RET_INVALID_ARGS:I = -0x3

.field private static final DPM_RET_INVALID_VERSION:I = -0x8

.field private static final DPM_RET_PATH_ACCESS_DENIED:I = -0x6

.field private static final DPM_RET_PATH_NAME_TOO_LONG:I = -0x7

.field private static final DPM_RET_SUCCESS:I = 0x3e8

.field public static final EXTRA_FEATURE_ID:Ljava/lang/String; = "dpmFeatureId"

.field public static final EXTRA_FEATURE_PARAMETER:Ljava/lang/String; = "dpmFeatureParameter"

.field public static final EXTRA_PARAMETER_VALUE:Ljava/lang/String; = "dpmParameterValue"

.field public static final EXTRA_VALUE_UNKNOWN:I = -0x3e9

.field public static final NSRM_FEATURE:I = 0x1

.field public static final NSRM_FEATURE_ENABLED:I = 0x1

.field public static final POLICY_TYPE_NSRM:I = 0x1

.field private static TAG:Ljava/lang/String; = null

.field public static final VERSION_UNKNOWN:Ljava/lang/String; = "unknown"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDpmApiClass:Ljava/lang/Class;

.field private mDpmService:Ljava/lang/Object;

.field private mGetPolVersionMethod:Ljava/lang/reflect/Method;

.field private mNSRMGetMethod:Ljava/lang/reflect/Method;

.field private mNSRMSetMethod:Ljava/lang/reflect/Method;

.field private mUpdatePolMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "DpmApi"

    sput-object v0, Lcom/qti/dpmapi/DpmApi;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/qti/dpmapi/DpmApi;->mDpmApiClass:Ljava/lang/Class;

    .line 42
    iput-object v1, p0, Lcom/qti/dpmapi/DpmApi;->mDpmService:Ljava/lang/Object;

    .line 43
    iput-object v1, p0, Lcom/qti/dpmapi/DpmApi;->mNSRMGetMethod:Ljava/lang/reflect/Method;

    .line 44
    iput-object v1, p0, Lcom/qti/dpmapi/DpmApi;->mNSRMSetMethod:Ljava/lang/reflect/Method;

    .line 45
    iput-object v1, p0, Lcom/qti/dpmapi/DpmApi;->mUpdatePolMethod:Ljava/lang/reflect/Method;

    .line 46
    iput-object v1, p0, Lcom/qti/dpmapi/DpmApi;->mGetPolVersionMethod:Ljava/lang/reflect/Method;

    .line 47
    iput-object v1, p0, Lcom/qti/dpmapi/DpmApi;->mContext:Landroid/content/Context;

    .line 146
    :try_start_0
    invoke-direct {p0}, Lcom/qti/dpmapi/DpmApi;->loadDpmService()V

    .line 147
    invoke-direct {p0}, Lcom/qti/dpmapi/DpmApi;->loadMethods()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/qti/dpmapi/DpmApi;->mDpmApiClass:Ljava/lang/Class;

    .line 42
    iput-object v1, p0, Lcom/qti/dpmapi/DpmApi;->mDpmService:Ljava/lang/Object;

    .line 43
    iput-object v1, p0, Lcom/qti/dpmapi/DpmApi;->mNSRMGetMethod:Ljava/lang/reflect/Method;

    .line 44
    iput-object v1, p0, Lcom/qti/dpmapi/DpmApi;->mNSRMSetMethod:Ljava/lang/reflect/Method;

    .line 45
    iput-object v1, p0, Lcom/qti/dpmapi/DpmApi;->mUpdatePolMethod:Ljava/lang/reflect/Method;

    .line 46
    iput-object v1, p0, Lcom/qti/dpmapi/DpmApi;->mGetPolVersionMethod:Ljava/lang/reflect/Method;

    .line 47
    iput-object v1, p0, Lcom/qti/dpmapi/DpmApi;->mContext:Landroid/content/Context;

    .line 163
    if-eqz p1, :cond_0

    .line 164
    iput-object p1, p0, Lcom/qti/dpmapi/DpmApi;->mContext:Landroid/content/Context;

    .line 169
    :try_start_0
    invoke-direct {p0}, Lcom/qti/dpmapi/DpmApi;->loadDpmService()V

    .line 170
    invoke-direct {p0}, Lcom/qti/dpmapi/DpmApi;->loadMethods()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    return-void

    .line 166
    :cond_0
    new-instance v1, Lcom/qti/dpmapi/DpmApiInvalidArgumentException;

    const-string v2, "Context cannot be null"

    invoke-direct {v1, v2}, Lcom/qti/dpmapi/DpmApiInvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    throw v0
.end method

.method private checkFeatureEnabled(Lcom/qti/dpmapi/DpmApi$FeatureType;)V
    .locals 4
    .param p1, "feature"    # Lcom/qti/dpmapi/DpmApi$FeatureType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qti/dpmapi/DpmApiFeatureUnsupportedException;
        }
    .end annotation

    .prologue
    .line 394
    const-string v2, "persist.dpm.feature"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 395
    .local v1, "value":I
    const/4 v0, 0x0

    .line 396
    .local v0, "enabled":Z
    sget-object v2, Lcom/qti/dpmapi/DpmApi$1;->$SwitchMap$com$qti$dpmapi$DpmApi$FeatureType:[I

    invoke-virtual {p1}, Lcom/qti/dpmapi/DpmApi$FeatureType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 401
    const/4 v0, 0x0

    .line 403
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 404
    new-instance v2, Lcom/qti/dpmapi/DpmApiFeatureUnsupportedException;

    invoke-direct {v2}, Lcom/qti/dpmapi/DpmApiFeatureUnsupportedException;-><init>()V

    throw v2

    .line 398
    :pswitch_0
    and-int/lit8 v2, v1, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 399
    const/4 v0, 0x1

    goto :goto_0

    .line 406
    :cond_1
    return-void

    .line 396
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private checkPermissions()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qti/dpmapi/DpmApiSecurityException;
        }
    .end annotation

    .prologue
    .line 384
    iget-object v1, p0, Lcom/qti/dpmapi/DpmApi;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 385
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    .line 387
    new-instance v1, Lcom/qti/dpmapi/DpmApiSecurityException;

    const-string v2, "Not a system app!!"

    invoke-direct {v1, v2}, Lcom/qti/dpmapi/DpmApiSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 389
    :cond_0
    return-void
.end method

.method private convertVersionToString(I)Ljava/lang/String;
    .locals 4
    .param p1, "intVersion"    # I

    .prologue
    .line 610
    div-int/lit8 v0, p1, 0x64

    .line 611
    .local v0, "major":I
    rem-int/lit8 v1, p1, 0x64

    .line 612
    .local v1, "minor":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getFeatureEnabled(Ljava/lang/reflect/Method;)Z
    .locals 7
    .param p1, "mGetMethod"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qti/dpmapi/DpmApiException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 279
    :try_start_0
    iget-object v5, p0, Lcom/qti/dpmapi/DpmApi;->mDpmService:Ljava/lang/Object;

    if-eqz v5, :cond_2

    if-eqz p1, :cond_2

    .line 280
    iget-object v5, p0, Lcom/qti/dpmapi/DpmApi;->mDpmService:Ljava/lang/Object;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 281
    .local v2, "result":Ljava/lang/Object;
    instance-of v5, v2, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    .line 282
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "result":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 283
    .local v3, "rv":I
    invoke-direct {p0, v3}, Lcom/qti/dpmapi/DpmApi;->mapErrorToException(I)V

    .line 284
    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 285
    const/4 v4, 0x1

    .line 299
    .end local v3    # "rv":I
    :cond_0
    :goto_0
    return v4

    .line 287
    .restart local v2    # "result":Ljava/lang/Object;
    :cond_1
    sget-object v5, Lcom/qti/dpmapi/DpmApi;->TAG:Ljava/lang/String;

    const-string v6, "Return value of getFeatureEnabled method has unexpected type."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/qti/dpmapi/DpmApiException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 293
    .end local v2    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 294
    .local v0, "dpm":Lcom/qti/dpmapi/DpmApiException;
    throw v0

    .line 291
    .end local v0    # "dpm":Lcom/qti/dpmapi/DpmApiException;
    :cond_2
    :try_start_1
    sget-object v5, Lcom/qti/dpmapi/DpmApi;->TAG:Ljava/lang/String;

    const-string v6, "dpm preference interface is not available."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/qti/dpmapi/DpmApiException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 295
    :catch_1
    move-exception v1

    .line 296
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/qti/dpmapi/DpmApi;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception happened: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v4, Lcom/qti/dpmapi/DpmApiException;

    invoke-direct {v4}, Lcom/qti/dpmapi/DpmApiException;-><init>()V

    throw v4
.end method

.method private getNSRMFeatureEnabled(Ljava/lang/reflect/Method;Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;)Z
    .locals 8
    .param p1, "mGetMethod"    # Ljava/lang/reflect/Method;
    .param p2, "feature"    # Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qti/dpmapi/DpmApiException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 306
    :try_start_0
    iget-object v6, p0, Lcom/qti/dpmapi/DpmApi;->mDpmService:Ljava/lang/Object;

    if-eqz v6, :cond_5

    if-eqz p1, :cond_5

    .line 307
    iget-object v6, p0, Lcom/qti/dpmapi/DpmApi;->mDpmService:Ljava/lang/Object;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p1, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 308
    .local v2, "result":Ljava/lang/Object;
    instance-of v6, v2, Ljava/lang/Integer;

    if-eqz v6, :cond_4

    .line 309
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "result":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 310
    .local v3, "rv":I
    invoke-direct {p0, v3}, Lcom/qti/dpmapi/DpmApi;->mapErrorToException(I)V

    .line 311
    sget-object v6, Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;->SYNC_CONNECT_DNS_WRITE:Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;

    # getter for: Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;->value:I
    invoke-static {v6}, Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;->access$000(Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;)I

    move-result v6

    if-ne v3, v6, :cond_1

    .line 312
    sget-object v6, Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;->SYNC_CONNECT_DNS_WRITE:Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;

    if-eq p2, v6, :cond_0

    sget-object v6, Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;->SYNC_CONNECT_DNS:Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;

    if-ne p2, v6, :cond_2

    .line 338
    :cond_0
    :goto_0
    return v4

    .line 316
    :cond_1
    sget-object v6, Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;->SYNC_CONNECT_DNS:Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;

    # getter for: Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;->value:I
    invoke-static {v6}, Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;->access$000(Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;)I

    move-result v6

    if-ne v3, v6, :cond_3

    .line 317
    sget-object v6, Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;->SYNC_CONNECT_DNS:Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;

    if-eq p2, v6, :cond_0

    :cond_2
    move v4, v5

    .line 338
    goto :goto_0

    :cond_3
    move v4, v5

    .line 321
    goto :goto_0

    .line 324
    .end local v3    # "rv":I
    .restart local v2    # "result":Ljava/lang/Object;
    :cond_4
    sget-object v4, Lcom/qti/dpmapi/DpmApi;->TAG:Ljava/lang/String;

    const-string v5, "Return value of getNSRMFeatureEnabled method has unexpected type."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    new-instance v4, Lcom/qti/dpmapi/DpmApiException;

    invoke-direct {v4}, Lcom/qti/dpmapi/DpmApiException;-><init>()V

    throw v4
    :try_end_0
    .catch Lcom/qti/dpmapi/DpmApiException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 332
    .end local v2    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 333
    .local v0, "dpm":Lcom/qti/dpmapi/DpmApiException;
    throw v0

    .line 329
    .end local v0    # "dpm":Lcom/qti/dpmapi/DpmApiException;
    :cond_5
    :try_start_1
    sget-object v4, Lcom/qti/dpmapi/DpmApi;->TAG:Ljava/lang/String;

    const-string v5, "dpm preference interface is not available."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance v4, Lcom/qti/dpmapi/DpmApiException;

    invoke-direct {v4}, Lcom/qti/dpmapi/DpmApiException;-><init>()V

    throw v4
    :try_end_1
    .catch Lcom/qti/dpmapi/DpmApiException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 334
    :catch_1
    move-exception v1

    .line 335
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/qti/dpmapi/DpmApi;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception happened: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    new-instance v4, Lcom/qti/dpmapi/DpmApiException;

    invoke-direct {v4}, Lcom/qti/dpmapi/DpmApiException;-><init>()V

    throw v4
.end method

.method private loadDpmService()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 232
    const-string v5, "dpmservice"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 233
    .local v0, "DpmService":Landroid/os/IBinder;
    if-eqz v0, :cond_4

    .line 235
    :try_start_0
    new-instance v2, Ldalvik/system/PathClassLoader;

    const-string v5, "/system/framework/com.qti.dpmframework.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 238
    .local v2, "dpmClassLoader":Ldalvik/system/PathClassLoader;
    const-string v5, "com.qti.dpm.IDpmService"

    invoke-virtual {v2, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    iput-object v5, p0, Lcom/qti/dpmapi/DpmApi;->mDpmApiClass:Ljava/lang/Class;

    .line 240
    iget-object v5, p0, Lcom/qti/dpmapi/DpmApi;->mDpmApiClass:Ljava/lang/Class;

    if-nez v5, :cond_1

    .line 241
    sget-object v5, Lcom/qti/dpmapi/DpmApi;->TAG:Ljava/lang/String;

    const-string v6, "com.qti.dpm.IDpmApi class is not found in dpm library."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .end local v2    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    :cond_0
    :goto_0
    return-void

    .line 246
    .restart local v2    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    :cond_1
    const-string v5, "com.qti.dpm.IDpmService$Stub"

    invoke-virtual {v2, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 248
    .local v3, "dpmStubClass":Ljava/lang/Class;
    if-nez v3, :cond_2

    .line 249
    sget-object v5, Lcom/qti/dpmapi/DpmApi;->TAG:Ljava/lang/String;

    const-string v6, "IDpmService$Stub class is not found in dpm library."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 266
    .end local v2    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .end local v3    # "dpmStubClass":Ljava/lang/Class;
    :catch_0
    move-exception v4

    .line 267
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/qti/dpmapi/DpmApi;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception happened: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    throw v4

    .line 253
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .restart local v3    # "dpmStubClass":Ljava/lang/Class;
    :cond_2
    :try_start_1
    const-string v5, "asInterface"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 256
    .local v1, "asInterfaceMethod":Ljava/lang/reflect/Method;
    if-nez v1, :cond_3

    .line 257
    sget-object v5, Lcom/qti/dpmapi/DpmApi;->TAG:Ljava/lang/String;

    const-string v6, "Method asInterface is not fount in IDpmApi$Stub class."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 261
    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/qti/dpmapi/DpmApi;->mDpmService:Ljava/lang/Object;

    .line 262
    iget-object v5, p0, Lcom/qti/dpmapi/DpmApi;->mDpmService:Ljava/lang/Object;

    if-nez v5, :cond_0

    .line 263
    sget-object v5, Lcom/qti/dpmapi/DpmApi;->TAG:Ljava/lang/String;

    const-string v6, "Failed to get DpmService as interface."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 271
    .end local v1    # "asInterfaceMethod":Ljava/lang/reflect/Method;
    .end local v2    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .end local v3    # "dpmStubClass":Ljava/lang/Class;
    :cond_4
    sget-object v5, Lcom/qti/dpmapi/DpmApi;->TAG:Ljava/lang/String;

    const-string v6, "dpm service is not found."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadMethods()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 185
    :try_start_0
    iget-object v2, p0, Lcom/qti/dpmapi/DpmApi;->mDpmApiClass:Ljava/lang/Class;

    if-eqz v2, :cond_4

    .line 186
    iget-object v2, p0, Lcom/qti/dpmapi/DpmApi;->mDpmApiClass:Ljava/lang/Class;

    const-string v3, "setNSRMEnabled"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/qti/dpmapi/DpmApi;->mNSRMSetMethod:Ljava/lang/reflect/Method;

    .line 188
    iget-object v2, p0, Lcom/qti/dpmapi/DpmApi;->mNSRMSetMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    .line 189
    sget-object v2, Lcom/qti/dpmapi/DpmApi;->TAG:Ljava/lang/String;

    const-string v3, "DPM preference interface is not accessible."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v2, p0, Lcom/qti/dpmapi/DpmApi;->mDpmApiClass:Ljava/lang/Class;

    const-string v3, "getNSRMEnabled"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/qti/dpmapi/DpmApi;->mNSRMGetMethod:Ljava/lang/reflect/Method;

    .line 195
    iget-object v2, p0, Lcom/qti/dpmapi/DpmApi;->mNSRMGetMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_2

    .line 196
    sget-object v2, Lcom/qti/dpmapi/DpmApi;->TAG:Ljava/lang/String;

    const-string v3, "DPM preference interface is not accessible."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v1

    .line 220
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/qti/dpmapi/DpmApi;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception happened: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    throw v1

    .line 200
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x2

    :try_start_1
    new-array v0, v2, [Ljava/lang/Class;

    .line 201
    .local v0, "args":[Ljava/lang/Class;
    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v2

    .line 202
    const/4 v2, 0x1

    const-class v3, Ljava/lang/String;

    aput-object v3, v0, v2

    .line 203
    iget-object v2, p0, Lcom/qti/dpmapi/DpmApi;->mDpmApiClass:Ljava/lang/Class;

    const-string v3, "updatePolicy"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/qti/dpmapi/DpmApi;->mUpdatePolMethod:Ljava/lang/reflect/Method;

    .line 205
    iget-object v2, p0, Lcom/qti/dpmapi/DpmApi;->mUpdatePolMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_3

    .line 206
    sget-object v2, Lcom/qti/dpmapi/DpmApi;->TAG:Ljava/lang/String;

    const-string v3, "DPM UpdatePolicy interface is not accessible."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    :cond_3
    iget-object v2, p0, Lcom/qti/dpmapi/DpmApi;->mDpmApiClass:Ljava/lang/Class;

    const-string v3, "getPolicyVersion"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/qti/dpmapi/DpmApi;->mGetPolVersionMethod:Ljava/lang/reflect/Method;

    .line 212
    iget-object v2, p0, Lcom/qti/dpmapi/DpmApi;->mGetPolVersionMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 213
    sget-object v2, Lcom/qti/dpmapi/DpmApi;->TAG:Ljava/lang/String;

    const-string v3, "DPM GetPolVersion interface is not accessible."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    .end local v0    # "args":[Ljava/lang/Class;
    :cond_4
    sget-object v2, Lcom/qti/dpmapi/DpmApi;->TAG:Ljava/lang/String;

    const-string v3, "DPM preference interface is not accessible."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private mapErrorToException(I)V
    .locals 2
    .param p1, "err"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qti/dpmapi/DpmApiException;
        }
    .end annotation

    .prologue
    .line 616
    sparse-switch p1, :sswitch_data_0

    .line 638
    :sswitch_0
    return-void

    .line 620
    :sswitch_1
    new-instance v0, Lcom/qti/dpmapi/DpmApiInvalidArgumentException;

    invoke-direct {v0}, Lcom/qti/dpmapi/DpmApiInvalidArgumentException;-><init>()V

    throw v0

    .line 622
    :sswitch_2
    new-instance v0, Lcom/qti/dpmapi/DpmApiBusyException;

    invoke-direct {v0}, Lcom/qti/dpmapi/DpmApiBusyException;-><init>()V

    throw v0

    .line 624
    :sswitch_3
    new-instance v0, Lcom/qti/dpmapi/DpmApiException;

    invoke-direct {v0}, Lcom/qti/dpmapi/DpmApiException;-><init>()V

    throw v0

    .line 626
    :sswitch_4
    new-instance v0, Lcom/qti/dpmapi/DpmApiFeatureUnsupportedException;

    invoke-direct {v0}, Lcom/qti/dpmapi/DpmApiFeatureUnsupportedException;-><init>()V

    throw v0

    .line 628
    :sswitch_5
    new-instance v0, Lcom/qti/dpmapi/DpmApiInvalidArgumentException;

    const-string v1, "File Size is too large"

    invoke-direct {v0, v1}, Lcom/qti/dpmapi/DpmApiInvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 630
    :sswitch_6
    new-instance v0, Lcom/qti/dpmapi/DpmApiInvalidArgumentException;

    const-string v1, "File Path access deined"

    invoke-direct {v0, v1}, Lcom/qti/dpmapi/DpmApiInvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 632
    :sswitch_7
    new-instance v0, Lcom/qti/dpmapi/DpmApiInvalidArgumentException;

    const-string v1, "File Path is too long"

    invoke-direct {v0, v1}, Lcom/qti/dpmapi/DpmApiInvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 634
    :sswitch_8
    new-instance v0, Lcom/qti/dpmapi/DpmApiFeatureUnsupportedException;

    const-string v1, "Supported version not found"

    invoke-direct {v0, v1}, Lcom/qti/dpmapi/DpmApiFeatureUnsupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 616
    :sswitch_data_0
    .sparse-switch
        -0x8 -> :sswitch_8
        -0x7 -> :sswitch_7
        -0x6 -> :sswitch_6
        -0x5 -> :sswitch_5
        -0x4 -> :sswitch_4
        -0x3 -> :sswitch_1
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_3
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method private setFeatureEnabled(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "mSetMethod"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qti/dpmapi/DpmApiException;
        }
    .end annotation

    .prologue
    .line 360
    :try_start_0
    iget-object v4, p0, Lcom/qti/dpmapi/DpmApi;->mDpmService:Ljava/lang/Object;

    if-eqz v4, :cond_3

    if-eqz p2, :cond_3

    .line 361
    instance-of v4, p1, Ljava/lang/Integer;

    if-nez v4, :cond_0

    instance-of v4, p1, Ljava/lang/Boolean;

    if-eqz v4, :cond_2

    .line 362
    :cond_0
    iget-object v4, p0, Lcom/qti/dpmapi/DpmApi;->mDpmService:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {p2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 363
    .local v2, "result":Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 364
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "result":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 365
    .local v3, "rv":I
    invoke-direct {p0, v3}, Lcom/qti/dpmapi/DpmApi;->mapErrorToException(I)V

    .line 381
    .end local v3    # "rv":I
    :goto_0
    return-void

    .line 367
    .restart local v2    # "result":Ljava/lang/Object;
    :cond_1
    sget-object v4, Lcom/qti/dpmapi/DpmApi;->TAG:Ljava/lang/String;

    const-string v5, "Return value of get method has unexpected type."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/qti/dpmapi/DpmApiException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 375
    .end local v2    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 376
    .local v0, "dpm":Lcom/qti/dpmapi/DpmApiException;
    throw v0

    .line 370
    .end local v0    # "dpm":Lcom/qti/dpmapi/DpmApiException;
    :cond_2
    :try_start_1
    sget-object v4, Lcom/qti/dpmapi/DpmApi;->TAG:Ljava/lang/String;

    const-string v5, "Passing non-boolean non-integer parameter to setFeatureEnabled."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/qti/dpmapi/DpmApiException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 377
    :catch_1
    move-exception v1

    .line 378
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/qti/dpmapi/DpmApi;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception happened: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    new-instance v4, Lcom/qti/dpmapi/DpmApiException;

    invoke-direct {v4}, Lcom/qti/dpmapi/DpmApiException;-><init>()V

    throw v4

    .line 373
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_2
    sget-object v4, Lcom/qti/dpmapi/DpmApi;->TAG:Ljava/lang/String;

    const-string v5, "dpm preference interface is not available."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/qti/dpmapi/DpmApiException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method private setNSRMFeatureEnabled(Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;Ljava/lang/reflect/Method;)V
    .locals 5
    .param p1, "feature"    # Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;
    .param p2, "mSetMethod"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qti/dpmapi/DpmApiException;
        }
    .end annotation

    .prologue
    .line 345
    :try_start_0
    iget-object v1, p0, Lcom/qti/dpmapi/DpmApi;->mDpmService:Ljava/lang/Object;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 346
    iget-object v1, p0, Lcom/qti/dpmapi/DpmApi;->mDpmService:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    # getter for: Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;->value:I
    invoke-static {p1}, Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;->access$000(Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p2, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    :goto_0
    return-void

    .line 348
    :cond_0
    sget-object v1, Lcom/qti/dpmapi/DpmApi;->TAG:Ljava/lang/String;

    const-string v2, "dpm preference interface is not available."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/qti/dpmapi/DpmApi;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception happened: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    new-instance v1, Lcom/qti/dpmapi/DpmApiException;

    invoke-direct {v1}, Lcom/qti/dpmapi/DpmApiException;-><init>()V

    throw v1
.end method


# virtual methods
.method public getNSRMEnabled(Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;)Z
    .locals 1
    .param p1, "feature"    # Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qti/dpmapi/DpmApiException;
        }
    .end annotation

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/qti/dpmapi/DpmApi;->checkPermissions()V

    .line 442
    sget-object v0, Lcom/qti/dpmapi/DpmApi$FeatureType;->NSRM:Lcom/qti/dpmapi/DpmApi$FeatureType;

    invoke-direct {p0, v0}, Lcom/qti/dpmapi/DpmApi;->checkFeatureEnabled(Lcom/qti/dpmapi/DpmApi$FeatureType;)V

    .line 443
    iget-object v0, p0, Lcom/qti/dpmapi/DpmApi;->mNSRMGetMethod:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, p1}, Lcom/qti/dpmapi/DpmApi;->getNSRMFeatureEnabled(Ljava/lang/reflect/Method;Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;)Z

    move-result v0

    return v0
.end method

.method public getPolicyVersion(I)Ljava/lang/String;
    .locals 8
    .param p1, "policyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qti/dpmapi/DpmApiException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 582
    const/4 v2, -0x1

    .line 583
    .local v2, "retVal":I
    invoke-direct {p0}, Lcom/qti/dpmapi/DpmApi;->checkPermissions()V

    .line 584
    if-ne p1, v3, :cond_0

    sget-object v3, Lcom/qti/dpmapi/DpmApi$FeatureType;->NSRM:Lcom/qti/dpmapi/DpmApi$FeatureType;

    invoke-direct {p0, v3}, Lcom/qti/dpmapi/DpmApi;->checkFeatureEnabled(Lcom/qti/dpmapi/DpmApi$FeatureType;)V

    .line 586
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/qti/dpmapi/DpmApi;->mDpmService:Ljava/lang/Object;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/qti/dpmapi/DpmApi;->mGetPolVersionMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_2

    .line 587
    iget-object v3, p0, Lcom/qti/dpmapi/DpmApi;->mGetPolVersionMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/qti/dpmapi/DpmApi;->mDpmService:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 588
    .local v1, "result":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 589
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "result":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 602
    :goto_0
    const/4 v3, -0x1

    if-gt v2, v3, :cond_3

    .line 603
    invoke-direct {p0, v2}, Lcom/qti/dpmapi/DpmApi;->mapErrorToException(I)V

    .line 604
    const-string v3, "unknown"

    .line 606
    :goto_1
    return-object v3

    .line 591
    .restart local v1    # "result":Ljava/lang/Object;
    :cond_1
    :try_start_1
    sget-object v3, Lcom/qti/dpmapi/DpmApi;->TAG:Ljava/lang/String;

    const-string v4, "Return value of getPolicyVersion method has unexpected type."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 597
    .end local v1    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 598
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v3, Lcom/qti/dpmapi/DpmApi;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalAccessException happened: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 595
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_2
    :try_start_2
    sget-object v3, Lcom/qti/dpmapi/DpmApi;->TAG:Ljava/lang/String;

    const-string v4, "dpm getPolicyVersion interface is not available."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 599
    :catch_1
    move-exception v0

    .line 600
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v3, Lcom/qti/dpmapi/DpmApi;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InvocationTargetException happened: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 606
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_3
    invoke-direct {p0, v2}, Lcom/qti/dpmapi/DpmApi;->convertVersionToString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public setNSRMEnabled(Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;)V
    .locals 1
    .param p1, "value"    # Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qti/dpmapi/DpmApiException;
        }
    .end annotation

    .prologue
    .line 483
    invoke-direct {p0}, Lcom/qti/dpmapi/DpmApi;->checkPermissions()V

    .line 484
    sget-object v0, Lcom/qti/dpmapi/DpmApi$FeatureType;->NSRM:Lcom/qti/dpmapi/DpmApi$FeatureType;

    invoke-direct {p0, v0}, Lcom/qti/dpmapi/DpmApi;->checkFeatureEnabled(Lcom/qti/dpmapi/DpmApi$FeatureType;)V

    .line 485
    iget-object v0, p0, Lcom/qti/dpmapi/DpmApi;->mNSRMSetMethod:Ljava/lang/reflect/Method;

    invoke-direct {p0, p1, v0}, Lcom/qti/dpmapi/DpmApi;->setNSRMFeatureEnabled(Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;Ljava/lang/reflect/Method;)V

    .line 486
    return-void
.end method

.method public updatePolicy(ILjava/lang/String;)V
    .locals 8
    .param p1, "policyType"    # I
    .param p2, "filepath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qti/dpmapi/DpmApiException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 531
    const/4 v2, -0x1

    .line 532
    .local v2, "retVal":I
    invoke-direct {p0}, Lcom/qti/dpmapi/DpmApi;->checkPermissions()V

    .line 533
    if-ne p1, v3, :cond_0

    sget-object v3, Lcom/qti/dpmapi/DpmApi$FeatureType;->NSRM:Lcom/qti/dpmapi/DpmApi$FeatureType;

    invoke-direct {p0, v3}, Lcom/qti/dpmapi/DpmApi;->checkFeatureEnabled(Lcom/qti/dpmapi/DpmApi$FeatureType;)V

    .line 534
    :cond_0
    sget-object v3, Lcom/qti/dpmapi/DpmApi;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to update policy "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :try_start_0
    iget-object v3, p0, Lcom/qti/dpmapi/DpmApi;->mDpmService:Ljava/lang/Object;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/qti/dpmapi/DpmApi;->mUpdatePolMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_2

    .line 537
    iget-object v3, p0, Lcom/qti/dpmapi/DpmApi;->mUpdatePolMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/qti/dpmapi/DpmApi;->mDpmService:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 538
    .local v1, "result":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 539
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "result":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 552
    :goto_0
    invoke-direct {p0, v2}, Lcom/qti/dpmapi/DpmApi;->mapErrorToException(I)V

    .line 553
    return-void

    .line 541
    .restart local v1    # "result":Ljava/lang/Object;
    :cond_1
    :try_start_1
    sget-object v3, Lcom/qti/dpmapi/DpmApi;->TAG:Ljava/lang/String;

    const-string v4, "Return value of updatePolicy method has unexpected type."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 547
    .end local v1    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 548
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v3, Lcom/qti/dpmapi/DpmApi;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalAccessException happened: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 545
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_2
    :try_start_2
    sget-object v3, Lcom/qti/dpmapi/DpmApi;->TAG:Ljava/lang/String;

    const-string v4, "dpm UpdatePolicy interface is not available."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 549
    :catch_1
    move-exception v0

    .line 550
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v3, Lcom/qti/dpmapi/DpmApi;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InvocationTargetException happened: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
