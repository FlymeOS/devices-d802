.class public Lcom/lge/net/FDCallback;
.super Lcom/lge/net/IFDCallback$Stub;
.source "FDCallback.java"


# static fields
.field public static final ANDROID_EVENT_MAX:I = 0x7

.field public static final ANDROID_EVENT_MOBILE_BANDWIDTH_SLOW:I = 0x6

.field public static final ANDROID_EVENT_MOBILE_HIPRI_CONNECTED:I = 0x1

.field public static final ANDROID_EVENT_MOBILE_HIPRI_DISCONNECTED:I = 0x2

.field public static final ANDROID_EVENT_NONE:I = 0x0

.field public static final ANDROID_EVENT_WIFI_BANDWIDTH_SLOW:I = 0x5

.field public static final ANDROID_EVENT_WIFI_CONNECTED:I = 0x3

.field public static final ANDROID_EVENT_WIFI_DISCONNECTED:I = 0x4

.field public static final APACHE_FDAGENT:I = 0x1

.field private static final CLASSNAME_APACHE_FDAGENT:Ljava/lang/String; = "org.apache.http.multibearer.FDAgent"

.field private static final CLASSNAME_OKHTTP_FDAGENT:Ljava/lang/String; = "com.android.okhttp.internal.http.FDAgent"

.field private static final LOG_PREFIX:Ljava/lang/String; = "[FastDN][FDS][CALLBACK] "

.field private static final METHODNAME_FDAGENT_ANDRIODEVENTRECEIVER:Ljava/lang/String; = "androidEventReceiver"

.field private static final METHODNAME_FDAGENT_GETINSTANCE:Ljava/lang/String; = "getInstance"

.field public static final OKHTTP_FDAGENT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FDCallback"


# instance fields
.field private mCallbackAgent:I

.field private mFDAgent:Ljava/lang/Object;

.field private mFDAgentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Lcom/lge/net/IFDCallback$Stub;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/lge/net/FDCallback;->mFDAgentClass:Ljava/lang/Class;

    .line 31
    iput-object v0, p0, Lcom/lge/net/FDCallback;->mFDAgent:Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "caller"    # I

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/lge/net/IFDCallback$Stub;-><init>()V

    .line 30
    iput-object v1, p0, Lcom/lge/net/FDCallback;->mFDAgentClass:Ljava/lang/Class;

    .line 31
    iput-object v1, p0, Lcom/lge/net/FDCallback;->mFDAgent:Ljava/lang/Object;

    .line 39
    if-nez p1, :cond_0

    const-string v0, "OKHTTP_FDAGENT"

    .line 40
    .local v0, "fdAgent":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FDCallback Constructor: fdAgent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/net/FDCallback;->log(Ljava/lang/String;)V

    .line 41
    iput p1, p0, Lcom/lge/net/FDCallback;->mCallbackAgent:I

    .line 42
    invoke-direct {p0}, Lcom/lge/net/FDCallback;->init()V

    .line 43
    return-void

    .line 39
    .end local v0    # "fdAgent":Ljava/lang/String;
    :cond_0
    const-string v0, "APACHE_FDAGENT"

    goto :goto_0
.end method

.method private checkFDAgentAccessible()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lge/net/FDCallback;->mFDAgent:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/net/FDCallback;->mFDAgentClass:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 86
    :cond_0
    const-string v0, "checkFDAgentAccessible: FDAgent.getInstance() failed"

    invoke-static {v0}, Lcom/lge/net/FDCallback;->log(Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x0

    .line 89
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 66
    const-string v2, "init: enter"

    invoke-static {v2}, Lcom/lge/net/FDCallback;->log(Ljava/lang/String;)V

    .line 67
    iget-object v2, p0, Lcom/lge/net/FDCallback;->mFDAgent:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 69
    :try_start_0
    iget v2, p0, Lcom/lge/net/FDCallback;->mCallbackAgent:I

    if-nez v2, :cond_2

    .line 70
    const-string v2, "com.android.okhttp.internal.http.FDAgent"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/net/FDCallback;->mFDAgentClass:Ljava/lang/Class;

    .line 74
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lge/net/FDCallback;->mFDAgentClass:Ljava/lang/Class;

    const-string v3, "getInstance"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 75
    .local v1, "getInstanceMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/net/FDCallback;->mFDAgent:Ljava/lang/Object;

    .line 82
    .end local v1    # "getInstanceMethod":Ljava/lang/reflect/Method;
    :cond_1
    :goto_1
    return-void

    .line 71
    :cond_2
    iget v2, p0, Lcom/lge/net/FDCallback;->mCallbackAgent:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 72
    const-string v2, "org.apache.http.multibearer.FDAgent"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/net/FDCallback;->mFDAgentClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init: Class.forName() failed due to Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/net/FDCallback;->log(Ljava/lang/String;)V

    .line 78
    iput-object v5, p0, Lcom/lge/net/FDCallback;->mFDAgentClass:Ljava/lang/Class;

    .line 79
    iput-object v5, p0, Lcom/lge/net/FDCallback;->mFDAgent:Ljava/lang/Object;

    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 93
    const-string v0, "FDCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FastDN][FDS][CALLBACK] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method


# virtual methods
.method public notifyAndroidEvent(I)V
    .locals 6
    .param p1, "event"    # I

    .prologue
    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyAndroidEvent: Event = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/net/FDCallback;->log(Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Lcom/lge/net/FDCallback;->checkFDAgentAccessible()Z

    move-result v4

    if-nez v4, :cond_0

    .line 63
    :goto_0
    return-void

    .line 53
    :cond_0
    const/4 v4, 0x1

    :try_start_0
    new-array v3, v4, [Ljava/lang/Class;

    .line 54
    .local v3, "parmTypes":[Ljava/lang/Class;
    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 55
    iget-object v4, p0, Lcom/lge/net/FDCallback;->mFDAgentClass:Ljava/lang/Class;

    const-string v5, "androidEventReceiver"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 57
    .local v0, "androidEventReceiver":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v1, v4, [Ljava/lang/Object;

    .line 58
    .local v1, "args":[Ljava/lang/Object;
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v1, v4

    .line 59
    iget-object v4, p0, Lcom/lge/net/FDCallback;->mFDAgent:Ljava/lang/Object;

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    .end local v0    # "androidEventReceiver":Ljava/lang/reflect/Method;
    .end local v1    # "args":[Ljava/lang/Object;
    .end local v3    # "parmTypes":[Ljava/lang/Class;
    :catch_0
    move-exception v2

    .line 61
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyAndroidEvent: failed due to Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/net/FDCallback;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
