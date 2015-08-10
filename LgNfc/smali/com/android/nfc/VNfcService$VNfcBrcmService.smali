.class Lcom/android/nfc/VNfcService$VNfcBrcmService;
.super Lcom/lge/nfcaddon/INfcAdapterBrcm$Stub;
.source "VNfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/VNfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VNfcBrcmService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/VNfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/VNfcService;)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/nfc/VNfcService$VNfcBrcmService;->this$0:Lcom/android/nfc/VNfcService;

    invoke-direct {p0}, Lcom/lge/nfcaddon/INfcAdapterBrcm$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public config(II)Z
    .locals 3
    .param p1, "configItem"    # I
    .param p2, "configData"    # I

    .prologue
    .line 605
    const/4 v0, 0x0

    .line 609
    .local v0, "ret":Z
    sget-object v1, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v2, "config fail"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    return v0
.end method

.method public disable()Z
    .locals 3

    .prologue
    .line 572
    const/4 v0, 0x0

    .line 576
    .local v0, "ret":Z
    sget-object v1, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v2, "disable fail"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    return v0
.end method

.method public enable(Z)Z
    .locals 3
    .param p1, "autoStart"    # Z

    .prologue
    .line 561
    const/4 v0, 0x0

    .line 565
    .local v0, "ret":Z
    sget-object v1, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v2, "enable fail"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    return v0
.end method

.method public start(I[B)Z
    .locals 3
    .param p1, "patternNumber"    # I
    .param p2, "tlv"    # [B

    .prologue
    .line 594
    const/4 v0, 0x0

    .line 598
    .local v0, "ret":Z
    sget-object v1, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v2, "start fail"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    return v0
.end method

.method public stop()Z
    .locals 3

    .prologue
    .line 583
    const/4 v0, 0x0

    .line 587
    .local v0, "ret":Z
    sget-object v1, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v2, "stop fail"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    return v0
.end method
