.class public Lcom/lge/wifi/impl/mobilehotspot/MHPManager;
.super Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver$Stub;
.source "MHPManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;
    }
.end annotation


# static fields
.field private static final DHCP_DEFAULT_RANGE1_START:Ljava/lang/String; = "192.168.42.2"

.field private static final DHCP_DEFAULT_RANGE1_STOP:Ljava/lang/String; = "192.168.42.254"

.field private static final DHCP_DEFAULT_RANGE2_START:Ljava/lang/String; = "192.168.1.2"

.field private static final DHCP_DEFAULT_RANGE2_STOP:Ljava/lang/String; = "192.168.1.254"

.field private static final DNS_DEFAULT_SERVER1:Ljava/lang/String; = "8.8.8.8"

.field private static final DNS_DEFAULT_SERVER2:Ljava/lang/String; = "4.2.2.2"

.field private static final TAG:Ljava/lang/String; = "MHPManager"

.field private static mIfaceName:Ljava/lang/String;

.field private static newUpstreamIfaceName:Ljava/lang/String;

.field private static sLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

.field private static sServiceContext:Lcom/lge/systemservice/core/LGContext;


# instance fields
.field private iP2PInitialized:Z

.field public mCallbackRcvLooper:Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;

.field private final mContext:Landroid/content/Context;

.field private mDhcpRange:[Ljava/lang/String;

.field private final mDnsServers:[Ljava/lang/String;

.field private final mEventLoop:Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;

.field private mNetDynamicInterface:Ljava/lang/String;

.field private mNetIPAddress:Ljava/lang/String;

.field private mNetInterface:Ljava/lang/String;

.field private mNetMask:Ljava/lang/String;

.field private mSoftAPOn:Z

.field private mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    const-string v0, "wlan0"

    sput-object v0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mIfaceName:Ljava/lang/String;

    .line 68
    const-string v0, "rmnet0"

    sput-object v0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->newUpstreamIfaceName:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->sLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

    .line 78
    const-string v0, "MHPManager"

    const-string v1, "[MHP_GOOKY] Load Library libandroid_runtime.so"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventLoop"    # Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver$Stub;-><init>()V

    .line 48
    const-string v0, "wlan0"

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mNetInterface:Ljava/lang/String;

    .line 50
    const-string v0, "192.168.1.1"

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mNetIPAddress:Ljava/lang/String;

    .line 51
    const-string v0, "255.255.255.0"

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mNetMask:Ljava/lang/String;

    .line 53
    iput-boolean v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mSoftAPOn:Z

    .line 57
    iput-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mCallbackRcvLooper:Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;

    .line 71
    iput-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    .line 87
    const-string v0, "MHPManager"

    const-string v1, "MHPManager constructor>>>>>"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iput-object p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mEventLoop:Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;

    .line 92
    new-instance v0, Lcom/lge/systemservice/core/LGContext;

    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/systemservice/core/LGContext;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->sServiceContext:Lcom/lge/systemservice/core/LGContext;

    .line 93
    sget-object v0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->sServiceContext:Lcom/lge/systemservice/core/LGContext;

    const-string v1, "lgnetworkmanagementservice"

    invoke-virtual {v0, v1}, Lcom/lge/systemservice/core/LGContext;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/LGNetworkManager;

    sput-object v0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->sLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mDhcpRange:[Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mDhcpRange:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mDhcpRange:[Ljava/lang/String;

    array-length v0, v0

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 98
    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mDhcpRange:[Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mDhcpRange:[Ljava/lang/String;

    const-string v1, "192.168.42.2"

    aput-object v1, v0, v2

    .line 100
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mDhcpRange:[Ljava/lang/String;

    const-string v1, "192.168.42.254"

    aput-object v1, v0, v3

    .line 101
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mDhcpRange:[Ljava/lang/String;

    const-string v1, "192.168.1.2"

    aput-object v1, v0, v4

    .line 102
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mDhcpRange:[Ljava/lang/String;

    const-string v1, "192.168.1.254"

    aput-object v1, v0, v5

    .line 105
    :cond_1
    new-array v0, v5, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mDnsServers:[Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mDnsServers:[Ljava/lang/String;

    const-string v1, "8.8.8.8"

    aput-object v1, v0, v2

    .line 107
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mDnsServers:[Ljava/lang/String;

    const-string v1, "4.2.2.2"

    aput-object v1, v0, v3

    .line 108
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mDnsServers:[Ljava/lang/String;

    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dns_server"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 111
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gateway"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 113
    const-string v0, "MHPManager"

    const-string v1, "DHCP_SETTINGS_GATEWAY_KEY is null uss default 192.168.1.1"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_0
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gateway"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 121
    const-string v0, "MHPManager"

    const-string v1, "DHCP_SETTINGS_MASK_KEY is null uss default 255.255.255.0"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_1
    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->init()V

    .line 129
    return-void

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gateway"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mNetIPAddress:Ljava/lang/String;

    goto :goto_0

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mask"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mNetMask:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/lge/wifi/impl/mobilehotspot/MHPManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/wifi/impl/mobilehotspot/MHPManager;)Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mEventLoop:Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lge/wifi/impl/mobilehotspot/MHPManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/mobilehotspot/MHPManager;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mSoftAPOn:Z

    return p1
.end method

.method public static getInstance(Landroid/content/Context;Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;)Lcom/lge/wifi/impl/mobilehotspot/MHPManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventLoop"    # Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;

    .prologue
    .line 82
    const-string v0, "MHPManager"

    const-string v1, "MHPManager getInstance >>>>>"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-direct {v0, p0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;-><init>(Landroid/content/Context;Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;)V

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 132
    iput-boolean v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->iP2PInitialized:Z

    .line 133
    const-string v0, "MHPManager"

    const-string v1, "init >>>>>"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iput-boolean v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mSoftAPOn:Z

    .line 136
    const-string v0, "MHPManager"

    const-string v1, "init >>>>> broadcom HSL service is not enabled"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;-><init>(Landroid/content/Context;Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    .line 140
    return-void
.end method

.method private transStringIpToNumber(Ljava/lang/String;)I
    .locals 6
    .param p1, "strIp"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1145
    const-string v3, "\\."

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1146
    .local v2, "nums":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    .line 1147
    const-string v3, "MHPManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[dongseok.ok] length is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    :goto_0
    return v1

    .line 1153
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v3, v4

    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    const/4 v4, 0x3

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    add-int v1, v3, v4

    .local v1, "numIp":I
    goto :goto_0

    .line 1157
    .end local v1    # "numIp":I
    :catch_0
    move-exception v0

    .line 1158
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "MHPManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[dongseok.ok] IP is not number format "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public IsP2PIntialized()Z
    .locals 1

    .prologue
    .line 1385
    iget-boolean v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->iP2PInitialized:Z

    return v0
.end method

.method public clearPortFilterRule()V
    .locals 5

    .prologue
    .line 728
    const-string v3, "MHPManager"

    const-string v4, "[antonio] clearPortFilterRule"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 731
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 733
    .local v2, "service":Landroid/os/INetworkManagementService;
    if-nez v2, :cond_1

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 737
    :cond_1
    sget-object v3, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->sLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

    if-eqz v3, :cond_0

    .line 739
    :try_start_0
    const-string v3, "MHPManager"

    const-string v4, "sLGNetworkManager is not null calling runClearPortFilterRule"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    sget-object v3, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->sLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

    invoke-virtual {v3}, Lcom/lge/systemservice/core/LGNetworkManager;->runClearPortFilterRule()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 741
    :catch_0
    move-exception v1

    .line 742
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "MHPManager"

    const-string v4, "error in runClearPortFilterRule : "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearPortForwardRule()V
    .locals 5

    .prologue
    .line 772
    const-string v3, "MHPManager"

    const-string v4, "[antonio] clearPortForwardRule"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 775
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 777
    .local v2, "service":Landroid/os/INetworkManagementService;
    if-nez v2, :cond_1

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 781
    :cond_1
    sget-object v3, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->sLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

    if-eqz v3, :cond_0

    .line 783
    :try_start_0
    const-string v3, "MHPManager"

    const-string v4, "sLGNetworkManager is not null calling runClearPortForwardRule"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    sget-object v3, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->sLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

    invoke-virtual {v3}, Lcom/lge/systemservice/core/LGNetworkManager;->runClearPortForwardRule()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 785
    :catch_0
    move-exception v1

    .line 786
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "MHPManager"

    const-string v4, "error in runClearPortForwardRule : "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public closeSoftAP()I
    .locals 3

    .prologue
    .line 244
    const-string v1, "MHPManager"

    const-string v2, "CloseSoftAP >>>>>"

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const/4 v0, 0x0

    .line 247
    .local v0, "ret":I
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->closeSoftAP()I

    move-result v0

    .line 248
    if-nez v0, :cond_0

    .line 249
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->iP2PInitialized:Z

    .line 251
    :cond_0
    return v0
.end method

.method public createSoftAP()I
    .locals 2

    .prologue
    .line 190
    const-string v0, "MHPManager"

    const-string v1, "[MHP_GOOKY] createSoftAP >>>>>"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->createSoftAP()I

    move-result v0

    return v0
.end method

.method public destroySoftAP()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 199
    const-string v3, "MHPManager"

    const-string v4, "[MHP_GOOKY] destroySoftAP >>>>>"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const/16 v0, 0xa

    .line 203
    .local v0, "nCount":I
    :goto_0
    if-lez v0, :cond_0

    .line 204
    iget-boolean v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mSoftAPOn:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 205
    const-string v3, "MHPManager"

    const-string v4, "[MHP_GOOKY] Mobile Hotspot is turned On status... OK!!\n"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_0
    const-string v3, "MHPManager"

    const-string v4, "[MHP_GOOKY] softap destroy...\n"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v3}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->destroySoftAP()I

    move-result v1

    .line 221
    .local v1, "ret":I
    if-eqz v1, :cond_2

    .line 222
    const-string v3, "MHPManager"

    const-string v4, "[MHP_GOOKY] soft destroy failed\n"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iput-boolean v6, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mSoftAPOn:Z

    move v2, v1

    .line 240
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_1
    return v2

    .line 209
    .end local v2    # "ret":I
    :cond_1
    const-string v3, "MHPManager"

    const-string v4, "[MHP_GOOKY] Mobile Hotspot is not turned On status... wait...\n"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 227
    .restart local v1    # "ret":I
    :cond_2
    const-string v3, "MHPManager"

    const-string v4, "[MHP_GOOKY] softap close...\n"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->closeSoftAP()I

    move-result v1

    .line 230
    if-eqz v1, :cond_3

    .line 231
    const-string v3, "MHPManager"

    const-string v4, "[MHP_GOOKY] soft close failed\n"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 232
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_1

    .line 235
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_3
    const-string v3, "MHPManager"

    const-string v4, "[MHP_GOOKY] Unload driver\n"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->unloadP2PDriver()I

    .line 238
    iput-boolean v6, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mSoftAPOn:Z

    move v2, v1

    .line 240
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_1

    .line 213
    .end local v2    # "ret":I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public isEnabledSoftAp()Z
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mSoftAPOn:Z

    return v0
.end method

.method public loadP2PDriver(I)I
    .locals 1
    .param p1, "wlan_country"    # I

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->loadP2PDriver()I

    move-result v0

    return v0
.end method

.method public openSoftAP()I
    .locals 6

    .prologue
    .line 144
    const-string v4, "MHPManager"

    const-string v5, "OpenSoftAP >>>>>"

    invoke-static {v4, v5}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const/16 v2, 0x14

    .line 148
    .local v2, "nCount":I
    :goto_0
    if-lez v2, :cond_0

    .line 149
    iget-boolean v4, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mSoftAPOn:Z

    if-nez v4, :cond_3

    .line 150
    const-string v4, "MHPManager"

    const-string v5, "[MHP_GOOKY] Mobile Hotspot is turned off status... OK!!\n"

    invoke-static {v4, v5}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_0
    const-string v4, "MHPManager"

    const-string v5, "[MHP_GOOKY] start callback receive looper\n"

    invoke-static {v4, v5}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    new-instance v0, Landroid/os/HandlerThread;

    const-string v4, "Mobile Hotspot Handler Thread"

    invoke-direct {v0, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 170
    iget-object v4, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mCallbackRcvLooper:Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;

    if-nez v4, :cond_4

    .line 172
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 173
    .local v1, "looper":Landroid/os/Looper;
    if-eqz v1, :cond_1

    .line 174
    new-instance v4, Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;

    invoke-direct {v4, p0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;-><init>(Lcom/lge/wifi/impl/mobilehotspot/MHPManager;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mCallbackRcvLooper:Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;

    .line 181
    .end local v1    # "looper":Landroid/os/Looper;
    :cond_1
    :goto_1
    const/4 v3, 0x0

    .line 182
    .local v3, "ret":I
    iget-object v4, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v4}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->openSoftAP()I

    move-result v3

    .line 183
    if-nez v3, :cond_2

    .line 184
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->iP2PInitialized:Z

    .line 186
    :cond_2
    return v3

    .line 154
    .end local v0    # "handlerThread":Landroid/os/HandlerThread;
    .end local v3    # "ret":I
    :cond_3
    const-string v4, "MHPManager"

    const-string v5, "[MHP_GOOKY] Mobile Hotspot is not turned off status... wait...\n"

    invoke-static {v4, v5}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 178
    .restart local v0    # "handlerThread":Landroid/os/HandlerThread;
    :cond_4
    const-string v4, "MHPManager"

    const-string v5, "[MHP_GOOKY] ERROR!!! mCallbackRcvLooper is not null"

    invoke-static {v4, v5}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 158
    .end local v0    # "handlerThread":Landroid/os/HandlerThread;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public p2pAddMacFilterAllowList(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "addORdel"    # I

    .prologue
    .line 580
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1, p2}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pAddMacFilterAllowList(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public p2pAddMacFilterDenyList(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "addORdel"    # I

    .prologue
    .line 584
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1, p2}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pAddMacFilterDenyList(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public p2pDeAuthMac(Ljava/lang/String;)I
    .locals 1
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 576
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pDeAuthMac(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public p2pDhcpdGetDNS1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1361
    const/4 v0, 0x0

    return-object v0
.end method

.method public p2pDhcpdGetDNS2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1371
    const/4 v0, 0x0

    return-object v0
.end method

.method public p2pDhcpdGetEndIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1331
    const/4 v0, 0x0

    return-object v0
.end method

.method public p2pDhcpdGetGateway()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1351
    const/4 v0, 0x0

    return-object v0
.end method

.method public p2pDhcpdGetStartIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1321
    const/4 v0, 0x0

    return-object v0
.end method

.method public p2pDhcpdGetSubnetMask()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1341
    const/4 v0, 0x0

    return-object v0
.end method

.method public p2pDhcpdSetDNS1(Ljava/lang/String;)I
    .locals 1
    .param p1, "dns1"    # Ljava/lang/String;

    .prologue
    .line 1356
    const/4 v0, 0x0

    return v0
.end method

.method public p2pDhcpdSetDNS2(Ljava/lang/String;)I
    .locals 1
    .param p1, "dns2"    # Ljava/lang/String;

    .prologue
    .line 1366
    const/4 v0, 0x0

    return v0
.end method

.method public p2pDhcpdSetEndIP(Ljava/lang/String;)I
    .locals 1
    .param p1, "endip"    # Ljava/lang/String;

    .prologue
    .line 1326
    const/4 v0, 0x0

    return v0
.end method

.method public p2pDhcpdSetGateway(Ljava/lang/String;)I
    .locals 1
    .param p1, "gateway"    # Ljava/lang/String;

    .prologue
    .line 1346
    const/4 v0, 0x0

    return v0
.end method

.method public p2pDhcpdSetStartIP(Ljava/lang/String;)I
    .locals 1
    .param p1, "startip"    # Ljava/lang/String;

    .prologue
    .line 1316
    const/4 v0, 0x0

    return v0
.end method

.method public p2pDhcpdSetSubnetMask(Ljava/lang/String;)I
    .locals 1
    .param p1, "mask"    # Ljava/lang/String;

    .prologue
    .line 1336
    const/4 v0, 0x0

    return v0
.end method

.method public p2pDhcpdStart()I
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v4, -0x1

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 857
    const-string v6, "network_management"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 858
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    .line 860
    .local v3, "service":Landroid/os/INetworkManagementService;
    if-nez v3, :cond_0

    .line 904
    :goto_0
    return v4

    .line 864
    :cond_0
    const-string v6, "MHPManager"

    const-string v7, "[antonio] setIpForwardingEnabled"

    invoke-static {v6, v7}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    iget-object v6, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "cdma_dns_server_1"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 868
    iget-object v6, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mDnsServers:[Ljava/lang/String;

    iget-object v7, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "cdma_dns_server_1"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    .line 871
    :cond_1
    iget-object v6, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "cdma_dns_server_2"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 873
    iget-object v6, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mDnsServers:[Ljava/lang/String;

    iget-object v7, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "cdma_dns_server_2"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 876
    :cond_2
    iget-object v6, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dns_server"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 878
    iget-object v6, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mDnsServers:[Ljava/lang/String;

    iget-object v7, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "dns_server"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    .line 883
    :cond_3
    const/4 v6, 0x1

    :try_start_0
    invoke-interface {v3, v6}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    const-string v4, "MHPManager"

    const-string v6, "[antonio] startTethering"

    invoke-static {v4, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    const/4 v4, 0x7

    new-array v1, v4, [Ljava/lang/String;

    .line 891
    .local v1, "dhcpOption":[Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mDhcpRange:[Ljava/lang/String;

    aget-object v4, v4, v5

    aput-object v4, v1, v5

    .line 892
    iget-object v4, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mDhcpRange:[Ljava/lang/String;

    aget-object v4, v4, v9

    aput-object v4, v1, v9

    .line 893
    iget-object v4, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "start_ip"

    invoke-static {v4, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v10

    .line 895
    const/4 v4, 0x3

    iget-object v6, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "end_ip"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    .line 897
    const/4 v4, 0x4

    iget-object v6, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "mask"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    .line 899
    const/4 v4, 0x5

    iget-object v6, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "gateway"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    .line 901
    const/4 v4, 0x6

    iget-object v6, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dns_server"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    move v4, v5

    .line 904
    goto/16 :goto_0

    .line 884
    .end local v1    # "dhcpOption":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 885
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "MHPManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[dongseok.ok] setIpForwardingEnabled "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public p2pDhcpdStop()I
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 909
    const-string v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 910
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 912
    .local v2, "service":Landroid/os/INetworkManagementService;
    if-nez v2, :cond_0

    .line 930
    :goto_0
    return v3

    .line 917
    :cond_0
    :try_start_0
    const-string v5, "MHPManager"

    const-string v6, "[antonio] stop setIpForwardingEnabled"

    invoke-static {v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 924
    :try_start_1
    const-string v5, "MHPManager"

    const-string v6, "[antonio] stopTethering"

    invoke-static {v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    invoke-interface {v2}, Landroid/os/INetworkManagementService;->stopTethering()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v4

    .line 930
    goto :goto_0

    .line 919
    :catch_0
    move-exception v1

    .line 920
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "MHPManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[antonio] Fail stop setIpForwardingEnabled"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 926
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 927
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v4, "MHPManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[antonio] Fail stopTethering"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public p2pDisableNatMasquerade(Ljava/lang/String;)V
    .locals 6
    .param p1, "UpstreamIface"    # Ljava/lang/String;

    .prologue
    .line 637
    const-string v3, "MHPManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[antonio] disableNatMasquerade UpstreamIface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    if-eqz p1, :cond_0

    .line 640
    sput-object p1, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->newUpstreamIfaceName:Ljava/lang/String;

    .line 642
    :cond_0
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 643
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 645
    .local v2, "service":Landroid/os/INetworkManagementService;
    if-nez v2, :cond_1

    .line 658
    :goto_0
    return-void

    .line 650
    :cond_1
    :try_start_0
    sget-object v3, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mIfaceName:Ljava/lang/String;

    sget-object v4, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->newUpstreamIfaceName:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->disableNat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 651
    :catch_0
    move-exception v1

    .line 653
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "MHPManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[antonio] Fail to disable NAT %s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    sget-object v3, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mIfaceName:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 655
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public p2pGetAllAssocDevicename()[Ljava/lang/String;
    .locals 11

    .prologue
    .line 467
    const/4 v0, 0x0

    .line 469
    .local v0, "count":I
    iget-object v8, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v8}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetAllAssocMacVZW()Ljava/util/List;

    move-result-object v6

    .line 471
    .local v6, "mStations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-nez v6, :cond_1

    .line 472
    const/4 v7, 0x0

    .line 492
    :cond_0
    return-object v7

    .line 475
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 477
    new-array v7, v0, [Ljava/lang/String;

    .line 478
    .local v7, "macList":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 480
    .local v2, "i":I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 482
    .local v5, "iface":Landroid/net/wifi/ScanResult;
    iget-object v1, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 484
    .local v1, "devicename":Ljava/lang/String;
    const-string v8, "MHPManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[NEZZIMOM] devicename : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    if-eqz v1, :cond_2

    .line 486
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aput-object v1, v7, v2

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 488
    :cond_2
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    const-string v8, "No name"

    aput-object v8, v7, v2

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_0
.end method

.method public p2pGetAllAssocMac()[Ljava/lang/String;
    .locals 11

    .prologue
    .line 438
    const/4 v0, 0x0

    .line 440
    .local v0, "count":I
    iget-object v8, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v8}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetAllAssocMacVZW()Ljava/util/List;

    move-result-object v5

    .line 442
    .local v5, "mStations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-nez v5, :cond_1

    .line 443
    const/4 v6, 0x0

    .line 460
    :cond_0
    return-object v6

    .line 446
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 448
    new-array v6, v0, [Ljava/lang/String;

    .line 449
    .local v6, "macList":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 451
    .local v1, "i":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 452
    .local v4, "iface":Landroid/net/wifi/ScanResult;
    iget-object v7, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 454
    .local v7, "macaddr":Ljava/lang/String;
    const-string v8, "MHPManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[NEZZIMOM] macaddr : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aput-object v7, v6, v1

    move v1, v2

    .line 458
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public p2pGetAllow11B()I
    .locals 2

    .prologue
    .line 603
    const-string v0, "MHPManager"

    const-string v1, "[DPKIM] p2pGetAllow11B"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetAllow11B()I

    move-result v0

    return v0
.end method

.method public p2pGetAssocIPAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 498
    const-string v0, ""

    .line 500
    .local v0, "deviceIp":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v4}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetAllAssocMacVZW()Ljava/util/List;

    move-result-object v3

    .line 502
    .local v3, "mStations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-nez v3, :cond_0

    .line 503
    const-string v4, ""

    .line 517
    :goto_0
    return-object v4

    .line 506
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 507
    .local v2, "iface":Landroid/net/wifi/ScanResult;
    if-eqz p1, :cond_1

    iget-object v4, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 508
    iget-object v0, v2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 512
    .end local v2    # "iface":Landroid/net/wifi/ScanResult;
    :cond_2
    const-string v4, "MHPManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[NEZZIMOM] deviceIp : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    if-eqz v0, :cond_3

    move-object v4, v0

    .line 515
    goto :goto_0

    .line 517
    :cond_3
    const-string v4, ""

    goto :goto_0
.end method

.method public p2pGetAssocIpHostname(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 1054
    const-string v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1055
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v4

    .line 1057
    .local v4, "service":Landroid/os/INetworkManagementService;
    const/4 v5, 0x2

    new-array v2, v5, [Ljava/lang/String;

    .line 1061
    .local v2, "ip_hostname":[Ljava/lang/String;
    if-nez v4, :cond_0

    move-object v3, v2

    .line 1080
    .end local v2    # "ip_hostname":[Ljava/lang/String;
    .local v3, "ip_hostname":[Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1067
    .end local v3    # "ip_hostname":[Ljava/lang/String;
    .restart local v2    # "ip_hostname":[Ljava/lang/String;
    :cond_0
    sget-object v5, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->sLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

    if-eqz v5, :cond_1

    .line 1069
    :try_start_0
    const-string v5, "MHPManager"

    const-string v6, "sLGNetworkManager is not null calling getAssociatedIpHostnameWithMac"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    const/4 v2, 0x0

    .line 1072
    if-eqz v2, :cond_1

    .line 1073
    const-string v5, "MHPManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ip address : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v2, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    const-string v5, "MHPManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hostname : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v2, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    move-object v3, v2

    .line 1080
    .end local v2    # "ip_hostname":[Ljava/lang/String;
    .restart local v3    # "ip_hostname":[Ljava/lang/String;
    goto :goto_0

    .line 1076
    .end local v3    # "ip_hostname":[Ljava/lang/String;
    .restart local v2    # "ip_hostname":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1077
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "MHPManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public p2pGetAssocListCount()I
    .locals 4

    .prologue
    .line 429
    const/4 v0, 0x0

    .line 430
    .local v0, "count":I
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetAssocListCount()I

    move-result v0

    .line 431
    const-string v1, "MHPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MHP_GOOKY] Assoc Count >> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    return v0
.end method

.method public p2pGetAuthentication()I
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetAuthentication()I

    move-result v0

    return v0
.end method

.method public p2pGetDHCPDNS1()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1033
    const-string v0, "MHPManager"

    const-string v1, "p2pGetDHCPDNS1()"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dns_server"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pGetDHCPDNS2()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1040
    const-string v0, "MHPManager"

    const-string v1, "p2pGetDHCPDNS2()"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cdma_dns_server_2"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pGetDHCPEndAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 966
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "end_ip"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pGetDHCPGateway()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1027
    const-string v0, "MHPManager"

    const-string v1, "p2pGetDHCPGateway()"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gateway"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pGetDHCPMask()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1020
    const-string v0, "MHPManager"

    const-string v1, "p2pGetDHCPMask()"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mask"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pGetDHCPStartAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 961
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "start_ip"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pGetEncryption()I
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetEncryption()I

    move-result v0

    return v0
.end method

.method public p2pGetFrequency()I
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetFrequency()I

    move-result v0

    return v0
.end method

.method public p2pGetHideSSID()I
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetHideSSID()I

    move-result v0

    return v0
.end method

.method public p2pGetMacFilterByIndex(I)Ljava/lang/String;
    .locals 1
    .param p1, "iIndex"    # I

    .prologue
    .line 538
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetMacFilterByIndex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pGetMacFilterCount()I
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetMacFilterCount()I

    move-result v0

    return v0
.end method

.method public p2pGetMacFilterMode()I
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetMacFilterMode()I

    move-result v0

    return v0
.end method

.method public p2pGetMaxClients()I
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetMaxClients()I

    move-result v0

    return v0
.end method

.method public p2pGetNetDynamicInterface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mNetDynamicInterface:Ljava/lang/String;

    return-object v0
.end method

.method public p2pGetNetInterface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mNetInterface:Ljava/lang/String;

    return-object v0
.end method

.method public p2pGetSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetSSID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pGetSocialChannel()I
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetSocialChannel()I

    move-result v0

    return v0
.end method

.method public p2pGetSoftapIsolation()Z
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetSoftapIsolation()Z

    move-result v0

    return v0
.end method

.method public p2pGetStaticIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mNetIPAddress:Ljava/lang/String;

    return-object v0
.end method

.method public p2pGetStaticSubnet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mNetMask:Ljava/lang/String;

    return-object v0
.end method

.method public p2pGetWEPIndex()I
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetWEPIndex()I

    move-result v0

    return v0
.end method

.method public p2pGetWEPKey1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetWEPKey1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pGetWEPKey2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetWEPKey2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pGetWEPKey3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetWEPKey3()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pGetWEPKey4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetWEPKey4()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pGetWPAKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetWPAKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pIfconfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ifs"    # Ljava/lang/String;
    .param p2, "mask"    # Ljava/lang/String;

    .prologue
    .line 1095
    return-void
.end method

.method public p2pIfconfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "ifs"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "mask"    # Ljava/lang/String;

    .prologue
    .line 1103
    const-string v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1104
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v4

    .line 1107
    .local v4, "service":Landroid/os/INetworkManagementService;
    if-nez v4, :cond_0

    .line 1142
    :goto_0
    return-void

    .line 1113
    :cond_0
    const/4 v2, 0x0

    .line 1115
    .local v2, "ifcg":Landroid/net/InterfaceConfiguration;
    const-string v5, "MHPManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[dongseok.ok] p2pIfconfig START "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ip "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mask "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    :try_start_0
    invoke-interface {v4, p1}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v2

    .line 1119
    new-instance v5, Landroid/net/LinkAddress;

    invoke-static {p2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    const/16 v7, 0x18

    invoke-direct {v5, v6, v7}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v2, v5}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 1121
    const-string v5, "down"

    invoke-virtual {v2, v5}, Landroid/net/InterfaceConfiguration;->setFlag(Ljava/lang/String;)V

    .line 1122
    const-string v5, "up"

    invoke-virtual {v2, v5}, Landroid/net/InterfaceConfiguration;->setFlag(Ljava/lang/String;)V

    .line 1123
    const-string v5, "up"

    invoke-virtual {v2, v5}, Landroid/net/InterfaceConfiguration;->setFlag(Ljava/lang/String;)V

    .line 1124
    const-string v5, "running"

    invoke-virtual {v2, v5}, Landroid/net/InterfaceConfiguration;->setFlag(Ljava/lang/String;)V

    .line 1125
    const-string v5, ""

    invoke-virtual {v2, v5}, Landroid/net/InterfaceConfiguration;->setFlag(Ljava/lang/String;)V

    .line 1126
    invoke-virtual {v2}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 1133
    const-string v5, "MHPManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[dongseok.ok] ip : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " subnetmask : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " flags "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/net/InterfaceConfiguration;->getFlags()Ljava/lang/Iterable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    invoke-interface {v4, p1, v2}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 1135
    :catch_0
    move-exception v3

    .line 1136
    .local v3, "re":Landroid/os/RemoteException;
    const-string v5, "MHPManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[dongseok.ok] getInterfaceConfig error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1138
    .end local v3    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1139
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "MHPManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[dongseok.ok] p2pifconfig error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public p2pIfconfigUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ifs"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;

    .prologue
    .line 1090
    return-void
.end method

.method public p2pIpForwardingEnableStart()V
    .locals 6

    .prologue
    .line 819
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 820
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 822
    .local v2, "service":Landroid/os/INetworkManagementService;
    if-nez v2, :cond_1

    .line 835
    :cond_0
    :goto_0
    return-void

    .line 827
    :cond_1
    :try_start_0
    invoke-interface {v2}, Landroid/os/INetworkManagementService;->getIpForwardingEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 828
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 830
    :catch_0
    move-exception v1

    .line 831
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "MHPManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " setIpForwardingEnabled failed can not runSetPortForwardRule "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public p2pIpForwardingEnableStop()V
    .locals 6

    .prologue
    .line 837
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 838
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 840
    .local v2, "service":Landroid/os/INetworkManagementService;
    if-nez v2, :cond_1

    .line 852
    :cond_0
    :goto_0
    return-void

    .line 845
    :cond_1
    :try_start_0
    invoke-interface {v2}, Landroid/os/INetworkManagementService;->getIpForwardingEnabled()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 846
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 848
    :catch_0
    move-exception v1

    .line 849
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "MHPManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " setIpForwardingEnabled failed can not runSetPortForwardRule "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public p2pMacFilterremoveAllowedList(Ljava/lang/String;)I
    .locals 1
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 548
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pMacFilterremoveAllowedList(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public p2pMacFilterremoveDeniedList(Ljava/lang/String;)I
    .locals 1
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 553
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pMacFilterremoveDeniedList(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public p2pMacaddracl(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 365
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pMacaddracl(I)Z

    move-result v0

    return v0
.end method

.method public p2pMssChange(Ljava/lang/String;)I
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1375
    const/4 v0, 0x0

    return v0
.end method

.method public p2pMssRestore()I
    .locals 1

    .prologue
    .line 1379
    const/4 v0, 0x0

    return v0
.end method

.method public p2pNatMasqurade(Ljava/lang/String;)V
    .locals 7
    .param p1, "UpstreamIface"    # Ljava/lang/String;

    .prologue
    .line 610
    const-string v4, "MHPManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[antonio] p2pNatMasqurade UpstreamIface "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    if-eqz p1, :cond_0

    .line 613
    sput-object p1, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->newUpstreamIfaceName:Ljava/lang/String;

    .line 615
    :cond_0
    const-string v4, "network_management"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 616
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    .line 618
    .local v3, "service":Landroid/os/INetworkManagementService;
    if-nez v3, :cond_1

    .line 632
    :goto_0
    return-void

    .line 623
    :cond_1
    :try_start_0
    sget-object v4, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mIfaceName:Ljava/lang/String;

    sget-object v5, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->newUpstreamIfaceName:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/os/INetworkManagementService;->enableNat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 624
    :catch_0
    move-exception v1

    .line 626
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "MHPManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[antonio] Fail to NAT %s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    sget-object v4, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mIfaceName:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 628
    :catch_1
    move-exception v2

    .line 629
    .local v2, "ee":Ljava/lang/Exception;
    const-string v4, "MHPManager"

    const-string v5, "[antonio] Fail untetherInterface"

    invoke-static {v4, v5}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public p2pNatRuleClear()V
    .locals 5

    .prologue
    .line 663
    const-string v3, "MHPManager"

    const-string v4, "[antonio] p2pNatRuleClear"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 666
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 668
    .local v2, "service":Landroid/os/INetworkManagementService;
    if-nez v2, :cond_1

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    sget-object v3, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->sLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

    if-eqz v3, :cond_0

    .line 674
    :try_start_0
    const-string v3, "MHPManager"

    const-string v4, "sLGNetworkManager is not null calling runClearNatRule"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    sget-object v3, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->sLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

    invoke-virtual {v3}, Lcom/lge/systemservice/core/LGNetworkManager;->runClearNatRule()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 676
    :catch_0
    move-exception v1

    .line 677
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "MHPManager"

    const-string v4, "error in runClearNatRule : "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public p2pNatSetRule(Ljava/lang/String;)V
    .locals 0
    .param p1, "rule"    # Ljava/lang/String;

    .prologue
    .line 686
    return-void
.end method

.method public p2pRoute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ifs"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;

    .prologue
    .line 1100
    return-void
.end method

.method public p2pSetAllow11B(I)I
    .locals 3
    .param p1, "iCommand"    # I

    .prologue
    .line 597
    const-string v0, "MHPManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DPKIM] p2pSetAllow11B"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetAllow11B(I)I

    move-result v0

    return v0
.end method

.method public p2pSetAuthentication(I)I
    .locals 1
    .param p1, "iCommand"    # I

    .prologue
    .line 356
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetAuthentication(I)I

    move-result v0

    return v0
.end method

.method public p2pSetDHCPDNS1(Ljava/lang/String;)I
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 996
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dns_server"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 998
    const-string v1, "MHPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "p2pSetDHCPDNS1() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result : true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    :goto_0
    return v0

    .line 1002
    :cond_0
    const-string v0, "MHPManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p2pSetDHCPDNS1() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result : false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p2pSetDHCPDNS2(Ljava/lang/String;)I
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1008
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cdma_dns_server_2"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1010
    const-string v1, "MHPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "p2pSetDHCPDNS2() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result:true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    :goto_0
    return v0

    .line 1014
    :cond_0
    const-string v0, "MHPManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p2pSetDHCPDNS2() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result:false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p2pSetDHCPEndAddress(Ljava/lang/String;)I
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 949
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "end_ip"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 951
    const-string v1, "MHPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "p2pSetDHCPEndAddress(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result:true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    :goto_0
    return v0

    .line 955
    :cond_0
    const-string v0, "MHPManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p2pSetDHCPEndAddress(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result:false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p2pSetDHCPGateway(Ljava/lang/String;)I
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 984
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gateway"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 986
    const-string v1, "MHPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "p2pSetDHCPGateway() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result:true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    :goto_0
    return v0

    .line 990
    :cond_0
    const-string v0, "MHPManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p2pSetDHCPGateway() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result:false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p2pSetDHCPMask(Ljava/lang/String;)I
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 972
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mask"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 974
    const-string v1, "MHPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "p2pSetDHCPMask(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result : true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    :goto_0
    return v0

    .line 978
    :cond_0
    const-string v0, "MHPManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p2pSetDHCPMask(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result:false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p2pSetDHCPStartAddress(Ljava/lang/String;)I
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 936
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "start_ip"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 938
    const-string v1, "MHPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "p2pSetDHCPStartAddress(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result:true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    :goto_0
    return v0

    .line 942
    :cond_0
    const-string v0, "MHPManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p2pSetDHCPStartAddress(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result:false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p2pSetEncryption(I)I
    .locals 1
    .param p1, "iCommand"    # I

    .prologue
    .line 336
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetEncryption(I)I

    move-result v0

    return v0
.end method

.method public p2pSetFrequency(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetFrequency(I)V

    .line 1191
    return-void
.end method

.method public p2pSetHideSSID(I)I
    .locals 1
    .param p1, "iCommand"    # I

    .prologue
    .line 346
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetHideSSID(I)I

    move-result v0

    return v0
.end method

.method public p2pSetMacFilterByIndex(ILjava/lang/String;)I
    .locals 1
    .param p1, "iIndex"    # I
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    .line 533
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1, p2}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetMacFilterByIndex(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public p2pSetMacFilterCount(I)I
    .locals 1
    .param p1, "iCount"    # I

    .prologue
    .line 543
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetMacFilterCount(I)I

    move-result v0

    return v0
.end method

.method public p2pSetMacFilterMode(I)I
    .locals 1
    .param p1, "iMode"    # I

    .prologue
    .line 523
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetMacFilterMode(I)I

    move-result v0

    return v0
.end method

.method public p2pSetMaxAssoc(I)I
    .locals 1
    .param p1, "max_assoc_num"    # I

    .prologue
    .line 592
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetMaxAssoc(I)I

    move-result v0

    return v0
.end method

.method public p2pSetMaxClients(I)Z
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 370
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetMaxClients(I)Z

    move-result v0

    return v0
.end method

.method public p2pSetNetDynamicInterface(Ljava/lang/String;)V
    .locals 0
    .param p1, "ifs"    # Ljava/lang/String;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mNetDynamicInterface:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public p2pSetNetInterface(Ljava/lang/String;)V
    .locals 0
    .param p1, "ifs"    # Ljava/lang/String;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mNetInterface:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public p2pSetSSID(Ljava/lang/String;)I
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetSSID(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public p2pSetSocialChannel(I)I
    .locals 1
    .param p1, "iCommand"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetSocialChannel(I)I

    move-result v0

    return v0
.end method

.method public p2pSetSoftapIsolation(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetSoftapIsolation(Z)Z

    move-result v0

    return v0
.end method

.method public p2pSetStaticIP(Ljava/lang/String;)V
    .locals 2
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mNetIPAddress:Ljava/lang/String;

    .line 283
    iget-boolean v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mSoftAPOn:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mNetInterface:Ljava/lang/String;

    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mNetIPAddress:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pIfconfigUp(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mNetInterface:Ljava/lang/String;

    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mNetIPAddress:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pIfconfigUp(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_0
    return-void
.end method

.method public p2pSetStaticSubnet(Ljava/lang/String;)V
    .locals 2
    .param p1, "netmask"    # Ljava/lang/String;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mNetMask:Ljava/lang/String;

    .line 298
    iget-boolean v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mSoftAPOn:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mNetInterface:Ljava/lang/String;

    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mNetMask:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pIfconfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_0
    return-void
.end method

.method public p2pSetTxPower(I)I
    .locals 1
    .param p1, "txpower"    # I

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetTxPower(I)I

    move-result v0

    return v0
.end method

.method public p2pSetWEPIndex(I)I
    .locals 1
    .param p1, "iCommand"    # I

    .prologue
    .line 567
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetWEPIndex(I)I

    move-result v0

    return v0
.end method

.method public p2pSetWEPKey1(Ljava/lang/String;)I
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 389
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetWEPKey1(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public p2pSetWEPKey2(Ljava/lang/String;)I
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetWEPKey2(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public p2pSetWEPKey3(Ljava/lang/String;)I
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetWEPKey3(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public p2pSetWEPKey4(Ljava/lang/String;)I
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 404
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetWEPKey4(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public p2pSetWPAKey(Ljava/lang/String;)I
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetWPAKey(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public p2premoveAlltheList()I
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2premoveAlltheList()I

    move-result v0

    return v0
.end method

.method public sendP2PNotificaiton(I)V
    .locals 2
    .param p1, "notiCode"    # I

    .prologue
    .line 1213
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mCallbackRcvLooper:Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;

    if-eqz v1, :cond_0

    .line 1215
    move v0, p1

    .line 1216
    .local v0, "what":I
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mCallbackRcvLooper:Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;

    invoke-virtual {v1, v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;->sendEmptyMessage(I)Z

    .line 1218
    .end local v0    # "what":I
    :cond_0
    return-void
.end method

.method public setCountryCode(I)I
    .locals 1
    .param p1, "countrycode"    # I

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetCountryCode(I)I

    move-result v0

    return v0
.end method

.method public setIsolationEnabled(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetSoftapIsolation(Z)Z

    move-result v0

    return v0
.end method

.method public setMssSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "rule"    # Ljava/lang/String;

    .prologue
    .line 701
    return-void
.end method

.method public setNatForward(Ljava/lang/String;)V
    .locals 5
    .param p1, "rule"    # Ljava/lang/String;

    .prologue
    .line 705
    const-string v3, "MHPManager"

    const-string v4, "[antonio] setNatForward"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 708
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 710
    .local v2, "service":Landroid/os/INetworkManagementService;
    if-nez v2, :cond_1

    .line 723
    :cond_0
    :goto_0
    return-void

    .line 714
    :cond_1
    sget-object v3, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->sLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

    if-eqz v3, :cond_0

    .line 716
    :try_start_0
    const-string v3, "MHPManager"

    const-string v4, "sLGNetworkManager is not null calling runSetNatForwardRule"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    sget-object v3, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->sLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

    invoke-virtual {v3, p1}, Lcom/lge/systemservice/core/LGNetworkManager;->runSetNatForwardRule(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 718
    :catch_0
    move-exception v1

    .line 719
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "MHPManager"

    const-string v4, "error in runSetNatForwardRule : "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPortFilterRule(Ljava/lang/String;I)V
    .locals 5
    .param p1, "rule"    # Ljava/lang/String;
    .param p2, "addORdel"    # I

    .prologue
    .line 750
    const-string v3, "MHPManager"

    const-string v4, "[antonio] setPortFilterRule"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 753
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 755
    .local v2, "service":Landroid/os/INetworkManagementService;
    if-nez v2, :cond_1

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    sget-object v3, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->sLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

    if-eqz v3, :cond_0

    .line 761
    :try_start_0
    const-string v3, "MHPManager"

    const-string v4, "sLGNetworkManager is not null calling runSetPortFilterRule"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    sget-object v3, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->sLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

    invoke-virtual {v3, p1, p2}, Lcom/lge/systemservice/core/LGNetworkManager;->runSetPortFilterRule(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 763
    :catch_0
    move-exception v1

    .line 764
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "MHPManager"

    const-string v4, "error in runSetPortFilterRule : "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPortForwardRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "addr"    # Ljava/lang/String;
    .param p4, "addORdel"    # I

    .prologue
    .line 794
    const-string v3, "MHPManager"

    const-string v4, "[antonio] setPortForwardRule"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 797
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 799
    .local v2, "service":Landroid/os/INetworkManagementService;
    if-nez v2, :cond_1

    .line 816
    :cond_0
    :goto_0
    return-void

    .line 803
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_3

    .line 804
    :cond_2
    const-string v3, "MHPManager"

    const-string v4, " setIpForwardingEnabled but nothing to set "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 807
    :cond_3
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pIpForwardingEnableStart()V

    .line 808
    sget-object v3, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->sLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

    if-eqz v3, :cond_0

    .line 810
    :try_start_0
    const-string v3, "MHPManager"

    const-string v4, "sLGNetworkManager is not null calling runSetPortForwardRule"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    sget-object v3, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->sLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/lge/systemservice/core/LGNetworkManager;->runSetPortForwardRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 812
    :catch_0
    move-exception v1

    .line 813
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "MHPManager"

    const-string v4, "error in runSetPortForwardRule : "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unloadP2PDriver()I
    .locals 1

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->unloadP2PDriver()I

    move-result v0

    return v0
.end method
