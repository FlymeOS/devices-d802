.class public Lcom/lge/wfds/send/WfdsSendIfaceManager;
.super Ljava/lang/Object;
.source "WfdsSendIfaceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WfdsSendIfaceManager"

.field private static mWfdsSendMainClass:Ljava/lang/Class;

.field private static sWfdsSendMainIface:Lcom/lge/wfds/send/main/WfdsSendMainIface;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 14
    sput-object v2, Lcom/lge/wfds/send/WfdsSendIfaceManager;->mWfdsSendMainClass:Ljava/lang/Class;

    .line 15
    sput-object v2, Lcom/lge/wfds/send/WfdsSendIfaceManager;->sWfdsSendMainIface:Lcom/lge/wfds/send/main/WfdsSendMainIface;

    .line 18
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_WFDS_SEND:Z

    if-ne v2, v3, :cond_1

    .line 20
    :try_start_0
    sget-object v2, Lcom/lge/wfds/send/WfdsSendIfaceManager;->mWfdsSendMainClass:Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 21
    const-string v2, "WfdsSendIfaceManager"

    const-string v3, "Load Class"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v2, "/system/framework/com.lge.wfds.send.v2.jar"

    const-class v3, Lcom/lge/wfds/send/WfdsSendIfaceManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 25
    .local v0, "cLoader":Ljava/lang/ClassLoader;
    const-string v2, "com.lge.wfds.send.main.WfdsSendMain"

    const/4 v3, 0x1

    invoke-static {v2, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/lge/wfds/send/WfdsSendIfaceManager;->mWfdsSendMainClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .local v1, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 28
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v1

    .line 29
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v2, "WfdsSendIfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 32
    .end local v0    # "cLoader":Ljava/lang/ClassLoader;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v2, "WfdsSendIfaceManager"

    const-string v3, "ConfigBuildFlags.CAPP_WFDS_SEND is not enabled!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static getWfdsSendMainInstance()Lcom/lge/wfds/send/main/WfdsSendMainIface;
    .locals 2

    .prologue
    .line 49
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_WFDS_SEND:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/lge/wfds/send/WfdsSendIfaceManager;->sWfdsSendMainIface:Lcom/lge/wfds/send/main/WfdsSendMainIface;

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/lge/wfds/send/WfdsSendIfaceManager;->sWfdsSendMainIface:Lcom/lge/wfds/send/main/WfdsSendMainIface;

    .line 55
    :goto_0
    return-object v0

    .line 52
    :cond_0
    const-string v0, "WfdsSendIfaceManager"

    const-string v1, "ConfigBuildFlags.CAPP_WFDS_SEND is not enabled!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setWfdsSendMainInstance(Lcom/lge/wfds/send/main/WfdsSendMainIface;)V
    .locals 2
    .param p0, "sendMain"    # Lcom/lge/wfds/send/main/WfdsSendMainIface;

    .prologue
    .line 41
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_WFDS_SEND:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/lge/wfds/send/WfdsSendIfaceManager;->sWfdsSendMainIface:Lcom/lge/wfds/send/main/WfdsSendMainIface;

    if-nez v0, :cond_0

    .line 42
    sput-object p0, Lcom/lge/wfds/send/WfdsSendIfaceManager;->sWfdsSendMainIface:Lcom/lge/wfds/send/main/WfdsSendMainIface;

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    const-string v0, "WfdsSendIfaceManager"

    const-string v1, "can not set WfdsSendMainIface Instance!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
