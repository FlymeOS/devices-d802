.class public Lcom/lge/wifi/impl/WifiLgeExtNative;
.super Ljava/lang/Object;
.source "WifiLgeExtNative.java"


# static fields
.field static final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/lge/wifi/impl/WifiLgeExtNative;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doBooleanCommand(Ljava/lang/String;)Z
    .locals 2
    .param p0, "command"    # Ljava/lang/String;

    .prologue
    .line 46
    sget-object v1, Lcom/lge/wifi/impl/WifiLgeExtNative;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 47
    :try_start_0
    invoke-static {p0}, Lcom/lge/wifi/impl/WifiLgeExtNative;->doBooleanCommandNative(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static native doBooleanCommandNative(Ljava/lang/String;)Z
.end method

.method public static native getGWSscanResults()Ljava/lang/String;
.end method

.method public static native getMacAddress()Ljava/lang/String;
.end method

.method public static native getNetworkIdCommand()I
.end method

.method public static native getNetworkVariableCommand_byte(ILjava/lang/String;)[B
.end method

.method public static native getWpsNfcHandoverNdef(I)Ljava/lang/String;
.end method

.method public static native scanResultsCommand_byte()[B
.end method

.method public static native selectDualbandAP(I)Z
.end method

.method public static native sendAutoJoinStatus(I)Ljava/lang/String;
.end method

.method public static sendDisableStaAutoConnect()Z
    .locals 1

    .prologue
    .line 64
    const-string v0, "DISABLE_STA_AUTO_CONNECT"

    invoke-static {v0}, Lcom/lge/wifi/impl/WifiLgeExtNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static native sendSetScanIntervalMax(I)Ljava/lang/String;
.end method

.method public static native setDisConnectRssiLevel(I)Ljava/lang/String;
.end method

.method public static native setDynamicBeaconWakeup(Z)Z
.end method

.method public static native setFastL2Roaming(I)Z
.end method

.method public static native setKTScanInterval()Ljava/lang/String;
.end method

.method public static native setKeepAlivePacketInterval(I)Z
.end method

.method public static setL2RoamingTrigger(III)Z
    .locals 2
    .param p0, "threshold"    # I
    .param p1, "delta"    # I
    .param p2, "scanperiod"    # I

    .prologue
    .line 52
    const/16 v0, -0x64

    if-le p0, v0, :cond_0

    if-gez p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DRIVER SETROAMTRIGGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/wifi/impl/WifiLgeExtNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 53
    :cond_0
    if-lez p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DRIVER SETROAMDELTA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/wifi/impl/WifiLgeExtNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 54
    :cond_1
    if-lez p2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DRIVER SETROAMSCANPERIOD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/wifi/impl/WifiLgeExtNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 56
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static native setManualConnection(I)Ljava/lang/String;
.end method

.method public static native setMaxNumOfStation(I)Z
.end method

.method public static native setNetworkVariableCommand_byte(ILjava/lang/String;[B)Z
.end method

.method public static native setPasspointEnable(I)Z
.end method

.method public static native setProhibitConnectAP(I)Z
.end method

.method public static native setWPSNfcTokenEnable(I)Ljava/lang/String;
.end method

.method public static setWifiAutoConnectValue(I)Z
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONFIRM_RESULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/wifi/impl/WifiLgeExtNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static native setWpsNfcReadNDEF(Ljava/lang/String;)Z
.end method

.method public static native setWpsNfcReportHandoverMsg(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native setWpsNfcRxHandover(Ljava/lang/String;)Z
.end method

.method public static native statusCommand_byte()[B
.end method

.method public static native waitForEvent_byte()[B
.end method


# virtual methods
.method public native setRssiBasedOperation(Ljava/lang/String;Z)Z
.end method
