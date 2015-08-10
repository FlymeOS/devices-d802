.class Lcom/android/nfc/VNfcService$VEnableDisableTask;
.super Lcom/android/nfc/LNfcService$LEnableDisableTask;
.source "VNfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/VNfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VEnableDisableTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/VNfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/VNfcService;)V
    .locals 0

    .prologue
    .line 528
    iput-object p1, p0, Lcom/android/nfc/VNfcService$VEnableDisableTask;->this$0:Lcom/android/nfc/VNfcService;

    invoke-direct {p0, p1}, Lcom/android/nfc/LNfcService$LEnableDisableTask;-><init>(Lcom/android/nfc/LNfcService;)V

    return-void
.end method


# virtual methods
.method checkSecureElementConfiguration()V
    .locals 4

    .prologue
    .line 546
    iget-object v1, p0, Lcom/android/nfc/VNfcService$VEnableDisableTask;->this$0:Lcom/android/nfc/VNfcService;

    iget v1, v1, Lcom/android/nfc/VNfcService;->mScreenState:I

    if-nez v1, :cond_0

    .line 547
    const/4 v0, 0x3

    .line 548
    .local v0, "screenState":I
    sget-object v1, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initDefaultRoute : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/VNfcService$VEnableDisableTask;->this$0:Lcom/android/nfc/VNfcService;

    iget v3, v3, Lcom/android/nfc/VNfcService;->mScreenState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/VNfcService$VEnableDisableTask;->this$0:Lcom/android/nfc/VNfcService;

    # getter for: Lcom/android/nfc/VNfcService;->mVCardEmulationManager:Lcom/android/nfc/cardemulation/VCardEmulationManager;
    invoke-static {v1}, Lcom/android/nfc/VNfcService;->access$300(Lcom/android/nfc/VNfcService;)Lcom/android/nfc/cardemulation/VCardEmulationManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->initDefaultRoute(I)V

    .line 555
    return-void

    .line 551
    .end local v0    # "screenState":I
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/VNfcService$VEnableDisableTask;->this$0:Lcom/android/nfc/VNfcService;

    iget v0, v1, Lcom/android/nfc/VNfcService;->mScreenState:I

    .line 552
    .restart local v0    # "screenState":I
    sget-object v1, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initDefaultRoute : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method downloadFirmware()V
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/nfc/VNfcService$VEnableDisableTask;->this$0:Lcom/android/nfc/VNfcService;

    iget-object v0, v0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->downloadFirmware()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    sget-object v0, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v1, "BRCM Firmware downloading Success"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    :goto_0
    sget-object v0, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v1, "loading TASK_BOOT"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    return-void

    .line 535
    :cond_0
    sget-object v0, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v1, "BRCM Firmware downloading Fail"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
