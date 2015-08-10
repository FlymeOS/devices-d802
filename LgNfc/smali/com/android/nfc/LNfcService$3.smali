.class Lcom/android/nfc/LNfcService$3;
.super Ljava/lang/Object;
.source "LNfcService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/LNfcService;->CardEmlationThreadstart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/LNfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/LNfcService;)V
    .locals 0

    .prologue
    .line 1610
    iput-object p1, p0, Lcom/android/nfc/LNfcService$3;->this$0:Lcom/android/nfc/LNfcService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1613
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1614
    iget-object v0, p0, Lcom/android/nfc/LNfcService$3;->this$0:Lcom/android/nfc/LNfcService;

    new-instance v1, Lcom/android/nfc/LNfcService$LCardEmlationHandler;

    iget-object v2, p0, Lcom/android/nfc/LNfcService$3;->this$0:Lcom/android/nfc/LNfcService;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/nfc/LNfcService$LCardEmlationHandler;-><init>(Lcom/android/nfc/LNfcService;Lcom/android/nfc/LNfcService$1;)V

    # setter for: Lcom/android/nfc/LNfcService;->mCeHandler:Lcom/android/nfc/LNfcService$LCardEmlationHandler;
    invoke-static {v0, v1}, Lcom/android/nfc/LNfcService;->access$002(Lcom/android/nfc/LNfcService;Lcom/android/nfc/LNfcService$LCardEmlationHandler;)Lcom/android/nfc/LNfcService$LCardEmlationHandler;

    .line 1616
    const-string v1, "LNfcService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CardEmlationThreadstart "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/nfc/LNfcService$3;->this$0:Lcom/android/nfc/LNfcService;

    # getter for: Lcom/android/nfc/LNfcService;->mCeHandler:Lcom/android/nfc/LNfcService$LCardEmlationHandler;
    invoke-static {v0}, Lcom/android/nfc/LNfcService;->access$000(Lcom/android/nfc/LNfcService;)Lcom/android/nfc/LNfcService$LCardEmlationHandler;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ERROR"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1626
    return-void

    .line 1616
    :cond_0
    const-string v0, "success"

    goto :goto_0
.end method
