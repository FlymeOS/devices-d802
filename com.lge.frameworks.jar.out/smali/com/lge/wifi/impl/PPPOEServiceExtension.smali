.class public Lcom/lge/wifi/impl/PPPOEServiceExtension;
.super Ljava/lang/Object;
.source "PPPOEServiceExtension.java"

# interfaces
.implements Lcom/lge/wifi/extension/IPPPOEServiceExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStopHandler;,
        Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStartHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final EXTRA_LINK_PROPERTIES:Ljava/lang/String; = "linkProperties"

.field public static final EXTRA_LINK_STATUS:Ljava/lang/String; = "pppoeLinkStatus"

.field public static final EXTRA_PPPOE_RESULT_ERROR_CODE:Ljava/lang/String; = "pppoe_result_error_code"

.field public static final EXTRA_PPPOE_RESULT_STATE:Ljava/lang/String; = "pppoe_result_status"

.field public static final MSG_CMD_PPPOE:I = 0x0

.field public static final MSG_QOS_PPPOE:I = 0x3

.field public static final MSG_START_PPPOE:I = 0x1

.field public static final MSG_STOP_PPPOE:I = 0x2

.field public static final MSG_UPDATECONFIG_PPPOE:I = 0x4

.field public static final PPPOE_COMPLETED_ACTION:Ljava/lang/String; = "android.net.wifi.PPPOE_COMPLETED_ACTION"

.field public static final PPPOE_LINK_CONFIGURATION_ACTION:Ljava/lang/String; = "android.net.wifi.PPPOE_LINK_CONFIGURATION_ACTION"

.field public static final PPPOE_RESULT_STATE_ALREADY_ONLINE:Ljava/lang/String; = "ALREADY_ONLINE"

.field public static final PPPOE_RESULT_STATE_FAILURE:Ljava/lang/String; = "FAILURE"

.field public static final PPPOE_RESULT_STATE_SUCCESS:Ljava/lang/String; = "SUCCESS"

.field public static final QOS_PPPOE_POLLING_INTERVAL_MS:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "PPPOEServiceExtension"

.field public static final UPDATECONFIG_DELAY_MS:I = 0x3e8


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mOnlineTime:J

.field private mPPPOEConfig:Landroid/net/wifi/PPPOEConfig;

.field private mPPPOEInfo:Landroid/net/wifi/PPPOEInfo;

.field private final mPPPOEReceiver:Landroid/content/BroadcastReceiver;

.field private mPPPoEStart:Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStartHandler;

.field private mPPPoEStop:Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStopHandler;

.field private mWiFiLinkProperties:Landroid/net/LinkProperties;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    new-instance v0, Lcom/lge/wifi/impl/PPPOEServiceExtension$1;

    invoke-direct {v0, p0}, Lcom/lge/wifi/impl/PPPOEServiceExtension$1;-><init>(Lcom/lge/wifi/impl/PPPOEServiceExtension;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/wifi/impl/PPPOEServiceExtension;Landroid/net/wifi/PPPOEConfig;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/PPPOEServiceExtension;
    .param p1, "x1"    # Landroid/net/wifi/PPPOEConfig;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/PPPOEServiceExtension;->startPPPOEHandle(Landroid/net/wifi/PPPOEConfig;)V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/wifi/impl/PPPOEServiceExtension;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/PPPOEServiceExtension;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/lge/wifi/impl/PPPOEServiceExtension;->monitorPPPOEHandle()V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/wifi/impl/PPPOEServiceExtension;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/PPPOEServiceExtension;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/lge/wifi/impl/PPPOEServiceExtension;->sendPPPOELinkConfigurationBroadcast()V

    return-void
.end method

.method static synthetic access$300(Lcom/lge/wifi/impl/PPPOEServiceExtension;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/PPPOEServiceExtension;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/lge/wifi/impl/PPPOEServiceExtension;->stopPPPOEHandle()V

    return-void
.end method

.method static synthetic access$400(Lcom/lge/wifi/impl/PPPOEServiceExtension;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/PPPOEServiceExtension;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/PPPOEServiceExtension;->processNetworkStateChangedAction(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/lge/wifi/impl/PPPOEServiceExtension;)Landroid/net/wifi/PPPOEInfo;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/PPPOEServiceExtension;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEInfo:Landroid/net/wifi/PPPOEInfo;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/wifi/impl/PPPOEServiceExtension;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/PPPOEServiceExtension;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/wifi/impl/PPPOEServiceExtension;)Landroid/net/LinkProperties;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/PPPOEServiceExtension;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mWiFiLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$702(Lcom/lge/wifi/impl/PPPOEServiceExtension;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/PPPOEServiceExtension;
    .param p1, "x1"    # Landroid/net/LinkProperties;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mWiFiLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$800(Lcom/lge/wifi/impl/PPPOEServiceExtension;)Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStartHandler;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/PPPOEServiceExtension;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPoEStart:Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStartHandler;

    return-object v0
.end method

.method private handleSuccessfulIpConfiguration()Z
    .locals 7

    .prologue
    .line 394
    new-instance v3, Landroid/net/LinkProperties;

    invoke-direct {v3}, Landroid/net/LinkProperties;-><init>()V

    .line 397
    .local v3, "linkProperties":Landroid/net/LinkProperties;
    :try_start_0
    const-string v4, "net.ppp.interface"

    const-string v5, "ppp0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, "ifname":Ljava/lang/String;
    invoke-virtual {v3, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 399
    const-string v4, "net.ppp0.ipaddress"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 400
    .local v2, "inetAddress":Ljava/net/InetAddress;
    new-instance v4, Landroid/net/LinkAddress;

    const/16 v5, 0x18

    invoke-direct {v4, v2, v5}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v3, v4}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 402
    const-string v4, "net.ppp0.gateway"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 403
    new-instance v4, Landroid/net/RouteInfo;

    invoke-direct {v4, v2}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {v3, v4}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 405
    const-string v4, "net.ppp0.dns1"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 408
    const-string v4, "net.ppp0.dns2"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 415
    iput-object v3, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mLinkProperties:Landroid/net/LinkProperties;

    .line 417
    const/4 v4, 0x1

    .end local v1    # "ifname":Ljava/lang/String;
    .end local v2    # "inetAddress":Ljava/net/InetAddress;
    :goto_0
    return v4

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "PPPOEServiceExtension"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSuccessfulIpConfiguration exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private monitorPPPOEHandle()V
    .locals 6

    .prologue
    .line 340
    iget-object v1, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEInfo:Landroid/net/wifi/PPPOEInfo;

    iget-object v1, v1, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    sget-object v2, Landroid/net/wifi/PPPOEInfo$Status;->ONLINE:Landroid/net/wifi/PPPOEInfo$Status;

    if-ne v1, v2, :cond_0

    .line 341
    const-string v1, "init.svc.pppoe_extd"

    const-string v2, "stopped"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "pppoeDaemonStatus":Ljava/lang/String;
    const-string v1, "stopped"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 343
    const-string v1, "PPPOEServiceExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppp daemon is stopped, start ppp daemon : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-direct {p0}, Lcom/lge/wifi/impl/PPPOEServiceExtension;->stopPPPOEHandle()V

    .line 345
    iget-object v1, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEConfig:Landroid/net/wifi/PPPOEConfig;

    invoke-direct {p0, v1}, Lcom/lge/wifi/impl/PPPOEServiceExtension;->startPPPOEHandle(Landroid/net/wifi/PPPOEConfig;)V

    .line 351
    .end local v0    # "pppoeDaemonStatus":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 348
    .restart local v0    # "pppoeDaemonStatus":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPoEStart:Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStartHandler;

    const/4 v2, 0x3

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStartHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private processNetworkStateChangedAction(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x4

    .line 448
    const-string v2, "networkInfo"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    iput-object v2, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 449
    iget-object v2, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v2, :cond_1

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    const-string v2, "linkProperties"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/LinkProperties;

    .line 455
    .local v0, "newLp":Landroid/net/LinkProperties;
    iget-object v2, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 456
    .local v1, "state":Landroid/net/NetworkInfo$DetailedState;
    if-eqz v0, :cond_2

    .line 457
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEInfo:Landroid/net/wifi/PPPOEInfo;

    iget-object v2, v2, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    sget-object v3, Landroid/net/wifi/PPPOEInfo$Status;->ONLINE:Landroid/net/wifi/PPPOEInfo$Status;

    if-ne v2, v3, :cond_2

    .line 458
    const-string v2, "PPPOEServiceExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Netstate configutaion old: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mWiFiLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const-string v2, "PPPOEServiceExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Netstate configutaion new: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iput-object v0, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mWiFiLinkProperties:Landroid/net/LinkProperties;

    .line 461
    iget-object v2, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPoEStart:Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStartHandler;

    invoke-virtual {v2, v6}, Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStartHandler;->removeMessages(I)V

    .line 462
    iget-object v2, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPoEStart:Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStartHandler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v6, v4, v5}, Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStartHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 467
    :cond_2
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_0

    .line 468
    invoke-virtual {p0}, Lcom/lge/wifi/impl/PPPOEServiceExtension;->stopPPPOE()V

    goto :goto_0
.end method

.method private sendPPPOECompleteBroadcast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "resultStatus"    # Ljava/lang/String;
    .param p2, "resultErrorCode"    # Ljava/lang/String;

    .prologue
    .line 355
    const-string v1, "PPPOEServiceExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send resultStatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resultErrorCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.PPPOE_COMPLETED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 358
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 359
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 360
    const-string v1, "pppoe_result_status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    const-string v1, "pppoe_result_error_code"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    iget-object v1, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 364
    :cond_0
    return-void
.end method

.method private sendPPPOELinkConfigurationBroadcast()V
    .locals 5

    .prologue
    .line 368
    const-string v2, "PPPOEServiceExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pppoe link configutaion : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const/4 v1, 0x0

    .line 371
    .local v1, "pppoeLinkStatus":I
    iget-object v2, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEInfo:Landroid/net/wifi/PPPOEInfo;

    iget-object v2, v2, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    sget-object v3, Landroid/net/wifi/PPPOEInfo$Status;->ONLINE:Landroid/net/wifi/PPPOEInfo$Status;

    if-ne v2, v3, :cond_0

    .line 372
    const/4 v1, 0x2

    .line 374
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.wifi.PPPOE_LINK_CONFIGURATION_ACTION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 375
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 376
    const-string v2, "linkProperties"

    new-instance v3, Landroid/net/LinkProperties;

    iget-object v4, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v3, v4}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 377
    const-string v2, "pppoeLinkStatus"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 378
    iget-object v2, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 379
    return-void
.end method

.method private sendWiFiLinkConfigurationBroadcast()V
    .locals 4

    .prologue
    .line 383
    const-string v1, "PPPOEServiceExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifi link configutaion : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mWiFiLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 386
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 387
    const-string v1, "linkProperties"

    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mWiFiLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 388
    iget-object v1, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 389
    return-void
.end method

.method private startPPPOEHandle(Landroid/net/wifi/PPPOEConfig;)V
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/PPPOEConfig;

    .prologue
    .line 228
    if-nez p1, :cond_1

    .line 229
    const-string v2, "PPPOEServiceExtension"

    const-string v3, "startPPPOE PPPOEConfig is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v2, p1, Landroid/net/wifi/PPPOEConfig;->username:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p1, Landroid/net/wifi/PPPOEConfig;->password:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 234
    :cond_2
    const-string v2, "PPPOEServiceExtension"

    const-string v3, "startPPPOE fail username or password is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    :cond_3
    iget-object v2, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v2, :cond_4

    .line 239
    const-string v2, "PPPOEServiceExtension"

    const-string v3, "mNetworkInfo is null, can\'t startPPPOEHandle"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 243
    :cond_4
    iget-object v2, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_5

    .line 244
    const-string v2, "PPPOEServiceExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wi-Fi is not connected yet. getDetailedState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 248
    :cond_5
    iget-object v2, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEInfo:Landroid/net/wifi/PPPOEInfo;

    iget-object v2, v2, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    sget-object v3, Landroid/net/wifi/PPPOEInfo$Status;->CONNECTING:Landroid/net/wifi/PPPOEInfo$Status;

    if-ne v2, v3, :cond_6

    .line 249
    const-string v2, "PPPOEServiceExtension"

    const-string v3, "startPPPOE is processing"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    :cond_6
    iget-object v2, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEInfo:Landroid/net/wifi/PPPOEInfo;

    iget-object v2, v2, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    sget-object v3, Landroid/net/wifi/PPPOEInfo$Status;->ONLINE:Landroid/net/wifi/PPPOEInfo$Status;

    if-ne v2, v3, :cond_7

    .line 254
    const-string v2, "ALREADY_ONLINE"

    const-string v3, "0"

    invoke-direct {p0, v2, v3}, Lcom/lge/wifi/impl/PPPOEServiceExtension;->sendPPPOECompleteBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :cond_7
    iget-object v2, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEInfo:Landroid/net/wifi/PPPOEInfo;

    sget-object v3, Landroid/net/wifi/PPPOEInfo$Status;->CONNECTING:Landroid/net/wifi/PPPOEInfo$Status;

    iput-object v3, v2, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    .line 261
    iget-object v2, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEConfig:Landroid/net/wifi/PPPOEConfig;

    iget-object v3, p1, Landroid/net/wifi/PPPOEConfig;->username:Ljava/lang/String;

    iget-object v4, p1, Landroid/net/wifi/PPPOEConfig;->password:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/PPPOEConfig;->setDefaultPPPOEConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget v2, p1, Landroid/net/wifi/PPPOEConfig;->lcp_echo_interval:I

    if-lez v2, :cond_8

    .line 263
    iget-object v2, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEConfig:Landroid/net/wifi/PPPOEConfig;

    iget v3, p1, Landroid/net/wifi/PPPOEConfig;->lcp_echo_interval:I

    iput v3, v2, Landroid/net/wifi/PPPOEConfig;->lcp_echo_interval:I

    .line 265
    :cond_8
    iget v2, p1, Landroid/net/wifi/PPPOEConfig;->lcp_echo_failure:I

    if-lez v2, :cond_9

    .line 266
    iget-object v2, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEConfig:Landroid/net/wifi/PPPOEConfig;

    iget v3, p1, Landroid/net/wifi/PPPOEConfig;->lcp_echo_failure:I

    iput v3, v2, Landroid/net/wifi/PPPOEConfig;->lcp_echo_failure:I

    .line 268
    :cond_9
    iget v2, p1, Landroid/net/wifi/PPPOEConfig;->mtu:I

    if-lez v2, :cond_a

    .line 269
    iget-object v2, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEConfig:Landroid/net/wifi/PPPOEConfig;

    iget v3, p1, Landroid/net/wifi/PPPOEConfig;->mtu:I

    iput v3, v2, Landroid/net/wifi/PPPOEConfig;->mtu:I

    .line 271
    :cond_a
    iget v2, p1, Landroid/net/wifi/PPPOEConfig;->mru:I

    if-lez v2, :cond_b

    .line 272
    iget-object v2, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEConfig:Landroid/net/wifi/PPPOEConfig;

    iget v3, p1, Landroid/net/wifi/PPPOEConfig;->mru:I

    iput v3, v2, Landroid/net/wifi/PPPOEConfig;->mru:I

    .line 274
    :cond_b
    iget v2, p1, Landroid/net/wifi/PPPOEConfig;->timeout:I

    if-lez v2, :cond_c

    .line 275
    iget-object v2, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEConfig:Landroid/net/wifi/PPPOEConfig;

    iget v3, p1, Landroid/net/wifi/PPPOEConfig;->timeout:I

    iput v3, v2, Landroid/net/wifi/PPPOEConfig;->timeout:I

    .line 277
    :cond_c
    iget v2, p1, Landroid/net/wifi/PPPOEConfig;->MSS:I

    if-lez v2, :cond_d

    .line 278
    iget-object v2, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEConfig:Landroid/net/wifi/PPPOEConfig;

    iget v3, p1, Landroid/net/wifi/PPPOEConfig;->MSS:I

    iput v3, v2, Landroid/net/wifi/PPPOEConfig;->MSS:I

    .line 282
    :cond_d
    invoke-static {}, Lcom/lge/wifi/impl/PPPOEExtNative;->stopPppoe()Z

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEConfig:Landroid/net/wifi/PPPOEConfig;

    iget-object v3, v3, Landroid/net/wifi/PPPOEConfig;->interf:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEConfig:Landroid/net/wifi/PPPOEConfig;

    iget v3, v3, Landroid/net/wifi/PPPOEConfig;->MSS:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEConfig:Landroid/net/wifi/PPPOEConfig;

    iget v3, v3, Landroid/net/wifi/PPPOEConfig;->mtu:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEConfig:Landroid/net/wifi/PPPOEConfig;

    iget v3, v3, Landroid/net/wifi/PPPOEConfig;->mru:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/PPPOEConfig;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/PPPOEConfig;->password:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEConfig:Landroid/net/wifi/PPPOEConfig;

    iget v3, v3, Landroid/net/wifi/PPPOEConfig;->lcp_echo_interval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEConfig:Landroid/net/wifi/PPPOEConfig;

    iget v3, v3, Landroid/net/wifi/PPPOEConfig;->lcp_echo_failure:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "cmd":Ljava/lang/String;
    const-string v2, "PPPOEServiceExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startPPPOE cmd : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-static {v0}, Lcom/lge/wifi/impl/PPPOEExtNative;->startPppoe(Ljava/lang/String;)Z

    move-result v1

    .line 291
    .local v1, "cmd_result":Z
    if-eqz v1, :cond_e

    invoke-direct {p0}, Lcom/lge/wifi/impl/PPPOEServiceExtension;->handleSuccessfulIpConfiguration()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 293
    iget-object v2, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEInfo:Landroid/net/wifi/PPPOEInfo;

    sget-object v3, Landroid/net/wifi/PPPOEInfo$Status;->ONLINE:Landroid/net/wifi/PPPOEInfo$Status;

    iput-object v3, v2, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    .line 294
    iget-object v2, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEInfo:Landroid/net/wifi/PPPOEInfo;

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Landroid/net/wifi/PPPOEInfo;->online_time:J

    .line 295
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mOnlineTime:J

    .line 296
    invoke-direct {p0}, Lcom/lge/wifi/impl/PPPOEServiceExtension;->sendPPPOELinkConfigurationBroadcast()V

    .line 297
    const-string v2, "SUCCESS"

    const-string v3, "0"

    invoke-direct {p0, v2, v3}, Lcom/lge/wifi/impl/PPPOEServiceExtension;->sendPPPOECompleteBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v2, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPoEStart:Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStartHandler;

    const/4 v3, 0x3

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStartHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 302
    :cond_e
    iget-object v2, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEInfo:Landroid/net/wifi/PPPOEInfo;

    iget-object v2, v2, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    sget-object v3, Landroid/net/wifi/PPPOEInfo$Status;->CONNECTING:Landroid/net/wifi/PPPOEInfo$Status;

    if-ne v2, v3, :cond_0

    .line 303
    const-string v2, "FAILURE"

    invoke-static {}, Lcom/lge/wifi/impl/PPPOEExtNative;->getPppoeErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/lge/wifi/impl/PPPOEServiceExtension;->sendPPPOECompleteBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-direct {p0}, Lcom/lge/wifi/impl/PPPOEServiceExtension;->stopPPPOEHandle()V

    goto/16 :goto_0
.end method

.method private stopPPPOEHandle()V
    .locals 4

    .prologue
    .line 311
    const/4 v0, 0x0

    .line 313
    .local v0, "bUpdateWifiLink":Z
    const-string v1, "PPPOEServiceExtension"

    const-string v2, "stopPPPOE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v1, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEInfo:Landroid/net/wifi/PPPOEInfo;

    iget-object v1, v1, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    sget-object v2, Landroid/net/wifi/PPPOEInfo$Status;->ONLINE:Landroid/net/wifi/PPPOEInfo$Status;

    if-ne v1, v2, :cond_0

    .line 318
    iget-object v1, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_0

    .line 319
    const/4 v0, 0x1

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEInfo:Landroid/net/wifi/PPPOEInfo;

    iget-object v1, v1, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    sget-object v2, Landroid/net/wifi/PPPOEInfo$Status;->OFFLINE:Landroid/net/wifi/PPPOEInfo$Status;

    if-eq v1, v2, :cond_1

    .line 324
    iget-object v1, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEInfo:Landroid/net/wifi/PPPOEInfo;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/net/wifi/PPPOEInfo;->online_time:J

    .line 325
    invoke-static {}, Lcom/lge/wifi/impl/PPPOEExtNative;->stopPppoe()Z

    .line 326
    iget-object v1, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->clear()V

    .line 327
    iget-object v1, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEInfo:Landroid/net/wifi/PPPOEInfo;

    sget-object v2, Landroid/net/wifi/PPPOEInfo$Status;->OFFLINE:Landroid/net/wifi/PPPOEInfo$Status;

    iput-object v2, v1, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    .line 328
    invoke-direct {p0}, Lcom/lge/wifi/impl/PPPOEServiceExtension;->sendPPPOELinkConfigurationBroadcast()V

    .line 329
    iget-object v1, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPoEStart:Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStartHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStartHandler;->removeMessages(I)V

    .line 330
    iget-object v1, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPoEStart:Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStartHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStartHandler;->removeMessages(I)V

    .line 333
    :cond_1
    if-eqz v0, :cond_2

    .line 334
    invoke-direct {p0}, Lcom/lge/wifi/impl/PPPOEServiceExtension;->sendWiFiLinkConfigurationBroadcast()V

    .line 336
    :cond_2
    return-void
.end method


# virtual methods
.method public PPPOEServiceExtension()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;
    .locals 6

    .prologue
    .line 169
    iget-object v0, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEInfo:Landroid/net/wifi/PPPOEInfo;

    iget-object v0, v0, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    sget-object v1, Landroid/net/wifi/PPPOEInfo$Status;->ONLINE:Landroid/net/wifi/PPPOEInfo$Status;

    if-ne v0, v1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEInfo:Landroid/net/wifi/PPPOEInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mOnlineTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v0, Landroid/net/wifi/PPPOEInfo;->online_time:J

    .line 176
    :goto_0
    const-string v0, "PPPOEServiceExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPPPOEInfo staus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEInfo:Landroid/net/wifi/PPPOEInfo;

    iget-object v2, v2, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEInfo:Landroid/net/wifi/PPPOEInfo;

    iget-wide v2, v2, Landroid/net/wifi/PPPOEInfo;->online_time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEInfo:Landroid/net/wifi/PPPOEInfo;

    return-object v0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEInfo:Landroid/net/wifi/PPPOEInfo;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/net/wifi/PPPOEInfo;->online_time:J

    goto :goto_0
.end method

.method public initPPPOESerivceExt(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wlanInterface"    # Ljava/lang/String;

    .prologue
    .line 82
    const-string v4, "CN"

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 114
    :goto_0
    return-void

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mContext:Landroid/content/Context;

    .line 89
    new-instance v4, Landroid/net/wifi/PPPOEConfig;

    invoke-direct {v4}, Landroid/net/wifi/PPPOEConfig;-><init>()V

    iput-object v4, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEConfig:Landroid/net/wifi/PPPOEConfig;

    .line 90
    iget-object v4, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEConfig:Landroid/net/wifi/PPPOEConfig;

    iput-object p2, v4, Landroid/net/wifi/PPPOEConfig;->interf:Ljava/lang/String;

    .line 92
    new-instance v4, Landroid/net/wifi/PPPOEInfo;

    invoke-direct {v4}, Landroid/net/wifi/PPPOEInfo;-><init>()V

    iput-object v4, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEInfo:Landroid/net/wifi/PPPOEInfo;

    .line 94
    new-instance v2, Landroid/os/HandlerThread;

    const-string v4, "PPPoEStartHandler"

    invoke-direct {v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 95
    .local v2, "pppoeStartThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 96
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 97
    .local v1, "loop":Landroid/os/Looper;
    if-eqz v1, :cond_1

    .line 98
    new-instance v4, Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStartHandler;

    invoke-direct {v4, p0, v1}, Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStartHandler;-><init>(Lcom/lge/wifi/impl/PPPOEServiceExtension;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPoEStart:Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStartHandler;

    .line 101
    :cond_1
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "PPPoEStopHandler"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 102
    .local v3, "pppoeStopThread":Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 103
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 104
    if-eqz v1, :cond_2

    .line 105
    new-instance v4, Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStopHandler;

    invoke-direct {v4, p0, v1}, Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStopHandler;-><init>(Lcom/lge/wifi/impl/PPPOEServiceExtension;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPoEStop:Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStopHandler;

    .line 108
    :cond_2
    new-instance v4, Landroid/net/LinkProperties;

    invoke-direct {v4}, Landroid/net/LinkProperties;-><init>()V

    iput-object v4, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mLinkProperties:Landroid/net/LinkProperties;

    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 111
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v4, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    iget-object v4, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public startPPPOE(Landroid/net/wifi/PPPOEConfig;)V
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/PPPOEConfig;

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 122
    const-string v0, "PPPOEServiceExtension"

    const-string v1, "startPPPOE PPPOEConfig is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/PPPOEConfig;->username:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/net/wifi/PPPOEConfig;->password:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 127
    :cond_1
    const-string v0, "PPPOEServiceExtension"

    const-string v1, "startPPPOE fail username or password is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v0, :cond_3

    .line 132
    const-string v0, "PPPOEServiceExtension"

    const-string v1, "mNetworkInfo is null, can\'t startPPPOEHandle"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 136
    :cond_3
    iget-object v0, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_4

    .line 137
    const-string v0, "PPPOEServiceExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wi-Fi is not connected yet. getDetailedState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    :cond_4
    iget-object v0, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEInfo:Landroid/net/wifi/PPPOEInfo;

    iget-object v0, v0, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    sget-object v1, Landroid/net/wifi/PPPOEInfo$Status;->CONNECTING:Landroid/net/wifi/PPPOEInfo$Status;

    if-ne v0, v1, :cond_5

    .line 142
    const-string v0, "PPPOEServiceExtension"

    const-string v1, "startPPPOE is processing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    :cond_5
    iget-object v0, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPoEStart:Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStartHandler;

    if-nez v0, :cond_6

    .line 147
    const-string v0, "PPPOEServiceExtension"

    const-string v1, "PPPOEServiceExtension is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 150
    :cond_6
    iget-object v0, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPoEStart:Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStartHandler;

    iget-object v1, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPoEStart:Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStartHandler;

    const/4 v2, 0x1

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStartHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public stopPPPOE()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPoEStop:Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStopHandler;

    if-nez v0, :cond_0

    .line 159
    const-string v0, "PPPOEServiceExtension"

    const-string v1, "PPPOEServiceExtension is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPoEStop:Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStopHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStopHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
