.class public Lcom/lge/wifi/extension/LgWifiServerManager;
.super Ljava/lang/Object;
.source "LgWifiServerManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LgWifiServerManager"

.field private static mIWifiDataContinuityService:Lcom/lge/wifi/extension/IWifiDataContinuityService;

.field private static mIWifiHS20:Lcom/lge/wifi/extension/IWifiHS20;

.field private static mIWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

.field private static mLgWifiMonitorHelper:Lcom/lge/wifi/extension/ILgWifiMonitorHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/lge/wifi/extension/LgWifiServerManager;->mIWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

    .line 18
    sput-object v0, Lcom/lge/wifi/extension/LgWifiServerManager;->mLgWifiMonitorHelper:Lcom/lge/wifi/extension/ILgWifiMonitorHelper;

    .line 19
    sput-object v0, Lcom/lge/wifi/extension/LgWifiServerManager;->mIWifiHS20:Lcom/lge/wifi/extension/IWifiHS20;

    .line 20
    sput-object v0, Lcom/lge/wifi/extension/LgWifiServerManager;->mIWifiDataContinuityService:Lcom/lge/wifi/extension/IWifiDataContinuityService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static getDataContinuityServiceIface()Lcom/lge/wifi/extension/IWifiDataContinuityService;
    .locals 3

    .prologue
    .line 58
    sget-object v0, Lcom/lge/wifi/extension/LgWifiServerManager;->mIWifiDataContinuityService:Lcom/lge/wifi/extension/IWifiDataContinuityService;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/lge/wifi/impl/WifiDataContinuityService;

    invoke-direct {v0}, Lcom/lge/wifi/impl/WifiDataContinuityService;-><init>()V

    sput-object v0, Lcom/lge/wifi/extension/LgWifiServerManager;->mIWifiDataContinuityService:Lcom/lge/wifi/extension/IWifiDataContinuityService;

    .line 60
    const-string v0, "LgWifiServerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDataContinuityServiceIface Creation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/wifi/extension/LgWifiServerManager;->mIWifiDataContinuityService:Lcom/lge/wifi/extension/IWifiDataContinuityService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    sget-object v0, Lcom/lge/wifi/extension/LgWifiServerManager;->mIWifiDataContinuityService:Lcom/lge/wifi/extension/IWifiDataContinuityService;

    return-object v0
.end method

.method public static getILgWifiMonitorHelper()Lcom/lge/wifi/extension/ILgWifiMonitorHelper;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/lge/wifi/extension/LgWifiServerManager;->mLgWifiMonitorHelper:Lcom/lge/wifi/extension/ILgWifiMonitorHelper;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/lge/wifi/impl/LgWifiMonitorHelper;

    invoke-direct {v0}, Lcom/lge/wifi/impl/LgWifiMonitorHelper;-><init>()V

    sput-object v0, Lcom/lge/wifi/extension/LgWifiServerManager;->mLgWifiMonitorHelper:Lcom/lge/wifi/extension/ILgWifiMonitorHelper;

    .line 47
    :cond_0
    sget-object v0, Lcom/lge/wifi/extension/LgWifiServerManager;->mLgWifiMonitorHelper:Lcom/lge/wifi/extension/ILgWifiMonitorHelper;

    return-object v0
.end method

.method public static getWifiHS20Iface()Lcom/lge/wifi/extension/IWifiHS20;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/lge/wifi/extension/LgWifiServerManager;->mIWifiHS20:Lcom/lge/wifi/extension/IWifiHS20;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/lge/wifi/impl/WifiHS20;

    invoke-direct {v0}, Lcom/lge/wifi/impl/WifiHS20;-><init>()V

    sput-object v0, Lcom/lge/wifi/extension/LgWifiServerManager;->mIWifiHS20:Lcom/lge/wifi/extension/IWifiHS20;

    .line 54
    :cond_0
    sget-object v0, Lcom/lge/wifi/extension/LgWifiServerManager;->mIWifiHS20:Lcom/lge/wifi/extension/IWifiHS20;

    return-object v0
.end method

.method public static getWifiServerServiceExtIface()Lcom/lge/wifi/extension/IWifiServerServiceExt;
    .locals 3

    .prologue
    .line 36
    sget-object v0, Lcom/lge/wifi/extension/LgWifiServerManager;->mIWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/lge/wifi/impl/WifiServerServiceExt;

    invoke-direct {v0}, Lcom/lge/wifi/impl/WifiServerServiceExt;-><init>()V

    sput-object v0, Lcom/lge/wifi/extension/LgWifiServerManager;->mIWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

    .line 38
    const-string v0, "LgWifiServerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWifiServerServiceExtIface Creation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/wifi/extension/LgWifiServerManager;->mIWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    sget-object v0, Lcom/lge/wifi/extension/LgWifiServerManager;->mIWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

    return-object v0
.end method
