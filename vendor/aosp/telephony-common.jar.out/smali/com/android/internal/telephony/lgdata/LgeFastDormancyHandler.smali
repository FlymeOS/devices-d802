.class public Lcom/android/internal/telephony/lgdata/LgeFastDormancyHandler;
.super Ljava/lang/Object;
.source "LgeFastDormancyHandler.java"


# static fields
.field private static fastDormancyConstructor:Ljava/lang/reflect/Constructor;

.field private static mClass:Ljava/lang/Class;

.field private static mILgeFastDormancyHandler:Lcom/android/internal/telephony/lgdata/ILgeFastDormancyHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 38
    sput-object v1, Lcom/android/internal/telephony/lgdata/LgeFastDormancyHandler;->fastDormancyConstructor:Ljava/lang/reflect/Constructor;

    .line 39
    sput-object v1, Lcom/android/internal/telephony/lgdata/LgeFastDormancyHandler;->mClass:Ljava/lang/Class;

    .line 40
    sput-object v1, Lcom/android/internal/telephony/lgdata/LgeFastDormancyHandler;->mILgeFastDormancyHandler:Lcom/android/internal/telephony/lgdata/ILgeFastDormancyHandler;

    .line 43
    :try_start_0
    const-string v1, "persist.lg.data.autoprof.msim"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    const-string v1, "com.lge.telephony.msim.lgdata.MSimLgeFDHandlerInterfaceImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/lgdata/LgeFastDormancyHandler;->mClass:Ljava/lang/Class;

    .line 48
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/lgdata/LgeFastDormancyHandler;->mClass:Ljava/lang/Class;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/android/internal/telephony/CommandsInterface;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Lcom/android/internal/telephony/ServiceStateTracker;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Lcom/android/internal/telephony/dataconnection/DcTracker;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-class v4, Lcom/android/internal/telephony/PhoneBase;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/lgdata/LgeFastDormancyHandler;->fastDormancyConstructor:Ljava/lang/reflect/Constructor;

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 46
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v1, "com.android.internal.telephony.lgdata.LgeFDHandlerInterfaceImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/lgdata/LgeFastDormancyHandler;->mClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "LgeFastDormancyHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Library loading failure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispose()V
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgeFastDormancyHandler;->mILgeFastDormancyHandler:Lcom/android/internal/telephony/lgdata/ILgeFastDormancyHandler;

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgeFastDormancyHandler;->mILgeFastDormancyHandler:Lcom/android/internal/telephony/lgdata/ILgeFastDormancyHandler;

    invoke-interface {v0}, Lcom/android/internal/telephony/lgdata/ILgeFastDormancyHandler;->dispose()V

    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/lgdata/LgeFastDormancyHandler;->mILgeFastDormancyHandler:Lcom/android/internal/telephony/lgdata/ILgeFastDormancyHandler;

    .line 74
    :cond_0
    return-void
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/ServiceStateTracker;Lcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/lgdata/ILgeFastDormancyHandler;
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mCi"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p2, "mSst"    # Lcom/android/internal/telephony/ServiceStateTracker;
    .param p3, "mDct"    # Lcom/android/internal/telephony/dataconnection/DcTracker;
    .param p4, "mP"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 57
    sget-object v1, Lcom/android/internal/telephony/lgdata/LgeFastDormancyHandler;->mILgeFastDormancyHandler:Lcom/android/internal/telephony/lgdata/ILgeFastDormancyHandler;

    if-eqz v1, :cond_0

    .line 58
    sget-object v1, Lcom/android/internal/telephony/lgdata/LgeFastDormancyHandler;->mILgeFastDormancyHandler:Lcom/android/internal/telephony/lgdata/ILgeFastDormancyHandler;

    .line 65
    :goto_0
    return-object v1

    .line 61
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/lgdata/LgeFastDormancyHandler;->fastDormancyConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    const/4 v3, 0x4

    aput-object p4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/lgdata/ILgeFastDormancyHandler;

    sput-object v1, Lcom/android/internal/telephony/lgdata/LgeFastDormancyHandler;->mILgeFastDormancyHandler:Lcom/android/internal/telephony/lgdata/ILgeFastDormancyHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_1
    sget-object v1, Lcom/android/internal/telephony/lgdata/LgeFastDormancyHandler;->mILgeFastDormancyHandler:Lcom/android/internal/telephony/lgdata/ILgeFastDormancyHandler;

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LgeFastDormancyHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not make newInstance of fastDormancyConstructor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
