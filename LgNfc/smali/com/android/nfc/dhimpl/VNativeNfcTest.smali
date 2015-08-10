.class public Lcom/android/nfc/dhimpl/VNativeNfcTest;
.super Ljava/lang/Object;
.source "VNativeNfcTest.java"

# interfaces
.implements Lcom/android/nfc/LNfcServiceTestApis;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DeselectSecureElement()V
    .locals 0

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/VNativeNfcTest;->doDeselectSecureElement()V

    .line 105
    return-void
.end method

.method public DeselectSecureElement(I)V
    .locals 0
    .param p1, "seID"    # I

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/VNativeNfcTest;->doDeselectSecureElement(I)V

    .line 110
    return-void
.end method

.method public NfcAntennaSelfTest([B)Z
    .locals 1
    .param p1, "resData"    # [B

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/VNativeNfcTest;->doNfcAntennaSelfTest([B)Z

    move-result v0

    return v0
.end method

.method public NfcDownloadFirmware()Z
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/VNativeNfcTest;->doNfcDownloadFirmware()Z

    move-result v0

    return v0
.end method

.method public NfcGetRegValue([B)Z
    .locals 1
    .param p1, "resData"    # [B

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/VNativeNfcTest;->doNfcGetRegValue([B)Z

    move-result v0

    return v0
.end method

.method public NfcInitIOCT()Z
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/VNativeNfcTest;->doNfcInitIOCT()Z

    move-result v0

    return v0
.end method

.method public NfcPowerOff()Z
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/VNativeNfcTest;->doNfcPowerOff()Z

    move-result v0

    return v0
.end method

.method public NfcPowerOn(I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/VNativeNfcTest;->doNfcPowerOn(I)Z

    move-result v0

    return v0
.end method

.method public NfcReadFirmwareFileVersion([B)Z
    .locals 1
    .param p1, "resData"    # [B

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/VNativeNfcTest;->doNfcReadFirmwareFileVersion([B)Z

    move-result v0

    return v0
.end method

.method public NfcReadFirmwareVersion([B)Z
    .locals 1
    .param p1, "resData"    # [B

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/VNativeNfcTest;->doNfcReadFirmwareVersion([B)Z

    move-result v0

    return v0
.end method

.method public NfcReaderModeTest([B)Z
    .locals 1
    .param p1, "resData"    # [B

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/VNativeNfcTest;->doNfcReaderModeTest([B)Z

    move-result v0

    return v0
.end method

.method public NfcSecureElementConnection()I
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/VNativeNfcTest;->doNfcSecureElementConnection()I

    move-result v0

    return v0
.end method

.method public NfcSecureElementDisconnect(I)Z
    .locals 1
    .param p1, "handle"    # I

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/VNativeNfcTest;->doNfcSecureElementDisconnect(I)Z

    move-result v0

    return v0
.end method

.method public NfcSecureElementTransceive(I[B)[B
    .locals 1
    .param p1, "handle"    # I
    .param p2, "response"    # [B

    .prologue
    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/dhimpl/VNativeNfcTest;->doNfcSecureElementTransceive(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method public NfcSetRegValue([B)Z
    .locals 1
    .param p1, "resData"    # [B

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/VNativeNfcTest;->doNfcSetRegValue([B)Z

    move-result v0

    return v0
.end method

.method public NfcStartCWE([B)Z
    .locals 1
    .param p1, "resData"    # [B

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/VNativeNfcTest;->doNfcStartCWE([B)Z

    move-result v0

    return v0
.end method

.method public NfcStopCWE([B)Z
    .locals 1
    .param p1, "resData"    # [B

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/VNativeNfcTest;->doNfcStopCWE([B)Z

    move-result v0

    return v0
.end method

.method public NfcSwpSelfTest([B)Z
    .locals 1
    .param p1, "resData"    # [B

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/VNativeNfcTest;->doNfcSwpSelfTest([B)Z

    move-result v0

    return v0
.end method

.method public SelectSecureElement()V
    .locals 0

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/VNativeNfcTest;->doSelectSecureElement()V

    .line 95
    return-void
.end method

.method public SelectSecureElement(I)V
    .locals 0
    .param p1, "seID"    # I

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/VNativeNfcTest;->doSelectSecureElement(I)V

    .line 100
    return-void
.end method

.method public native doDeselectSecureElement()V
.end method

.method public native doDeselectSecureElement(I)V
.end method

.method public native doNfcAntennaSelfTest([B)Z
.end method

.method public native doNfcDownloadFirmware()Z
.end method

.method public native doNfcGetRegValue([B)Z
.end method

.method public native doNfcInitIOCT()Z
.end method

.method public native doNfcPowerOff()Z
.end method

.method public native doNfcPowerOn(I)Z
.end method

.method public native doNfcReadFirmwareFileVersion([B)Z
.end method

.method public native doNfcReadFirmwareVersion([B)Z
.end method

.method public native doNfcReaderModeTest([B)Z
.end method

.method public native doNfcSecureElementConnection()I
.end method

.method public native doNfcSecureElementDisconnect(I)Z
.end method

.method public native doNfcSecureElementTransceive(I[B)[B
.end method

.method public native doNfcSetRegValue([B)Z
.end method

.method public native doNfcStartCWE([B)Z
.end method

.method public native doNfcStopCWE([B)Z
.end method

.method public native doNfcSwpSelfTest([B)Z
.end method

.method public native doSelectSecureElement()V
.end method

.method public native doSelectSecureElement(I)V
.end method
