.class public Lcom/android/nfc/dhimpl/VNativeNfcManager;
.super Lcom/android/nfc/dhimpl/NativeNfcManager;
.source "VNativeNfcManager.java"

# interfaces
.implements Lcom/android/nfc/LDeviceHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;
    }
.end annotation


# static fields
.field private static final MW_STRING_LENGTH:I = 0xa

.field private static final TAG:Ljava/lang/String; = "VNativeNfcManager"


# instance fields
.field public final POWER_STATE_OFF:I

.field public final POWER_STATE_SCREEN_OFF:I

.field public final POWER_STATE_SCREEN_ON_LOCKED:I

.field public final POWER_STATE_SCREEN_ON_UNLOCKED:I

.field public final POWER_STATE_UNKNOWN:I

.field private final mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/VNfcService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/nfc/VNfcService;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcManager;-><init>(Landroid/content/Context;Lcom/android/nfc/DeviceHost$DeviceHostListener;)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->POWER_STATE_UNKNOWN:I

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->POWER_STATE_OFF:I

    .line 29
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->POWER_STATE_SCREEN_OFF:I

    .line 30
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->POWER_STATE_SCREEN_ON_LOCKED:I

    .line 31
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->POWER_STATE_SCREEN_ON_UNLOCKED:I

    .line 48
    iput-object p2, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;

    .line 49
    return-void
.end method

.method private native doSetColdBootFlag(Z)V
.end method

.method private native doSetPowerMode(I)Z
.end method

.method private notifyHostEmuExceedAidTable()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;

    check-cast v0, Lcom/android/nfc/LDeviceHost$LDeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/LDeviceHost$LDeviceHostListener;->onHostCardEmulationExceedAidTable()V

    .line 102
    return-void
.end method


# virtual methods
.method public checkChipVer()Ljava/lang/String;
    .locals 6

    .prologue
    .line 131
    const-string v0, "unKnown"

    .line 132
    .local v0, "mCheckChipVer":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->getChipVer()I

    move-result v1

    .line 134
    .local v1, "mChipVer":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 135
    const-string v2, "%x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 136
    const-string v2, "VNativeNfcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCheckChipVer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    return-object v0
.end method

.method public checkFWVersion()Ljava/lang/String;
    .locals 7

    .prologue
    const v6, 0xffff

    .line 157
    const-string v0, "unKnown"

    .line 158
    .local v0, "mCheckFWVersion":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->getFWVersion()I

    move-result v1

    .line 160
    .local v1, "mFWVersion":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 161
    const-string v2, "%d.%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    shr-int/lit8 v5, v1, 0x10

    and-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    and-int v5, v1, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 162
    const-string v2, "VNativeNfcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCheckFWVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    return-object v0
.end method

.method public checkMWVersion()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v2, 0xa

    .line 144
    const-string v0, "unKnown"

    .line 145
    .local v0, "mcheckMWVersion":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->getMWVersion()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 148
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    const-string v1, "VNativeNfcManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mcheckMWVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    return-object v0
.end method

.method public downloadFirmware()Z
    .locals 3

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "isSuccess":Z
    const-string v1, "VNativeNfcManager"

    const-string v2, "downloadFirmware : ENTER"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doDownload()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    const-string v1, "VNativeNfcManager"

    const-string v2, "downloadFirmware : SUCCESS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v0, 0x1

    .line 63
    :goto_0
    const-string v1, "VNativeNfcManager"

    const-string v2, "downloadFirmware : EXIT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return v0

    .line 60
    :cond_0
    const-string v1, "VNativeNfcManager"

    const-string v2, "downloadFirmware : FAIL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public native getChipVer()I
.end method

.method public native getFWVersion()I
.end method

.method public native getMWVersion()Ljava/lang/String;
.end method

.method public native getRoutingTableFreeSpace()I
.end method

.method protected notifySeFieldActivated()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;

    check-cast v0, Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onRemoteFieldActivated()V

    .line 114
    return-void
.end method

.method protected notifySeFieldDeactivated()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;

    check-cast v0, Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onRemoteFieldDeactivated()V

    .line 118
    return-void
.end method

.method protected notifySeListenActivated()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;->onSeListenActivated()V

    .line 122
    return-void
.end method

.method protected notifySeListenDeactivated()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;->onSeListenDeactivated()V

    .line 126
    return-void
.end method

.method protected notifyTransactionListeners([B)V
    .locals 1
    .param p1, "aid"    # [B

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;->onCardEmulationAidSelected([B)V

    .line 110
    return-void
.end method

.method public notifyTransactionPreListeners([B)V
    .locals 1
    .param p1, "aid"    # [B

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;->onCardEmulationAidPreSelected([B)V

    .line 106
    return-void
.end method

.method public native onPpseRouted(I)Z
.end method

.method public native reRouteAid([BIZZ)Z
.end method

.method public native removeHceOffHostAidRoute([B)V
.end method

.method public setColdBootFlag(Z)V
    .locals 0
    .param p1, "isColdBoot"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doSetColdBootFlag(Z)V

    .line 88
    return-void
.end method

.method public native setDefaultRouteDestinations(II)V
.end method

.method public native setHceOffHostAidRoute([BZZZIZZZ)V
.end method

.method public setPowerMode(I)Z
    .locals 3
    .param p1, "powerState"    # I

    .prologue
    .line 96
    const-string v0, "VNativeNfcManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "power state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doSetPowerMode(I)Z

    move-result v0

    return v0
.end method

.method public native setStaticRouteByProto(IZZZIZZZ)V
.end method

.method public native setStaticRouteByTech(IZZZIZZZ)V
.end method
