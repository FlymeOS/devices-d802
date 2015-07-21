.class Lcom/lge/uicc/framework/IsimRecordLoader$GbaAuthBootstrapTest;
.super Lcom/lge/uicc/framework/IsimRecordLoader$IsimTest;
.source "IsimRecordLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/framework/IsimRecordLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GbaAuthBootstrapTest"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/uicc/framework/IsimRecordLoader;


# direct methods
.method private constructor <init>(Lcom/lge/uicc/framework/IsimRecordLoader;)V
    .locals 1

    .prologue
    .line 314
    iput-object p1, p0, Lcom/lge/uicc/framework/IsimRecordLoader$GbaAuthBootstrapTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/uicc/framework/IsimRecordLoader$IsimTest;-><init>(Lcom/lge/uicc/framework/IsimRecordLoader;Lcom/lge/uicc/framework/IsimRecordLoader$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/uicc/framework/IsimRecordLoader;Lcom/lge/uicc/framework/IsimRecordLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/uicc/framework/IsimRecordLoader;
    .param p2, "x1"    # Lcom/lge/uicc/framework/IsimRecordLoader$1;

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/lge/uicc/framework/IsimRecordLoader$GbaAuthBootstrapTest;-><init>(Lcom/lge/uicc/framework/IsimRecordLoader;)V

    return-void
.end method


# virtual methods
.method getTestName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    const-string v0, "GBA_AUTHENTICATE_BOOTSTRAP"

    return-object v0
.end method

.method onTestCompleted(Ljava/lang/Object;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 320
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    move-object v1, v0

    .line 321
    .local v1, "auth_rsp":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/lge/uicc/framework/IsimRecordLoader$GbaAuthBootstrapTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    const-string v4, "res"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/lge/uicc/framework/IsimRecordLoader;->res:Ljava/lang/String;

    .line 322
    iget-object v3, p0, Lcom/lge/uicc/framework/IsimRecordLoader$GbaAuthBootstrapTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    const-string v4, "auts"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/lge/uicc/framework/IsimRecordLoader;->auts:Ljava/lang/String;

    .line 324
    iget-object v3, p0, Lcom/lge/uicc/framework/IsimRecordLoader$GbaAuthBootstrapTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISIM GBA: res = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/uicc/framework/IsimRecordLoader$GbaAuthBootstrapTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    iget-object v5, v5, Lcom/lge/uicc/framework/IsimRecordLoader;->res:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/uicc/framework/IsimRecordLoader;->logp(Ljava/lang/String;)V

    .line 325
    iget-object v3, p0, Lcom/lge/uicc/framework/IsimRecordLoader$GbaAuthBootstrapTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISIM GBA: auts = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/uicc/framework/IsimRecordLoader$GbaAuthBootstrapTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    iget-object v5, v5, Lcom/lge/uicc/framework/IsimRecordLoader;->auts:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/uicc/framework/IsimRecordLoader;->logp(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .end local v1    # "auth_rsp":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {p0}, Lcom/lge/uicc/framework/IsimRecordLoader$GbaAuthBootstrapTest;->testGbaAuthNaf()V

    .line 332
    return-void

    .line 326
    :catch_0
    move-exception v2

    .line 327
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/lge/uicc/framework/IsimRecordLoader$GbaAuthBootstrapTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse ISIM GBA contents: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/uicc/framework/IsimRecordLoader;->loge(Ljava/lang/String;)V

    .line 328
    iget-object v3, p0, Lcom/lge/uicc/framework/IsimRecordLoader$GbaAuthBootstrapTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    iput-object v6, v3, Lcom/lge/uicc/framework/IsimRecordLoader;->res:Ljava/lang/String;

    .line 329
    iget-object v3, p0, Lcom/lge/uicc/framework/IsimRecordLoader$GbaAuthBootstrapTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    iput-object v6, v3, Lcom/lge/uicc/framework/IsimRecordLoader;->auts:Ljava/lang/String;

    goto :goto_0
.end method

.method onTestException(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/lge/uicc/framework/IsimRecordLoader$GbaAuthBootstrapTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception ISIM GBA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/uicc/framework/IsimRecordLoader;->loge(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Lcom/lge/uicc/framework/IsimRecordLoader$GbaAuthBootstrapTest;->testGbaAuthNaf()V

    .line 336
    return-void
.end method

.method testGbaAuthNaf()V
    .locals 8

    .prologue
    .line 338
    iget-object v0, p0, Lcom/lge/uicc/framework/IsimRecordLoader$GbaAuthBootstrapTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    const-string v1, "Requesting ISIM GBA NAF"

    invoke-virtual {v0, v1}, Lcom/lge/uicc/framework/IsimRecordLoader;->logd(Ljava/lang/String;)V

    .line 339
    # getter for: Lcom/lge/uicc/framework/IsimRecordLoader;->mRil:Lcom/android/internal/telephony/RIL;
    invoke-static {}, Lcom/lge/uicc/framework/IsimRecordLoader;->access$500()Lcom/android/internal/telephony/RIL;

    move-result-object v0

    sget v1, Lcom/lge/uicc/framework/IsimRecordLoader;->isim_session_id:I

    iget-object v2, p0, Lcom/lge/uicc/framework/IsimRecordLoader$GbaAuthBootstrapTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    iget-object v2, v2, Lcom/lge/uicc/framework/IsimRecordLoader;->naf_id:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/lge/uicc/framework/IsimRecordLoader$GbaAuthBootstrapTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    const/4 v4, 0x2

    new-instance v5, Lcom/lge/uicc/framework/IsimRecordLoader$GbaAuthNafTest;

    iget-object v6, p0, Lcom/lge/uicc/framework/IsimRecordLoader$GbaAuthBootstrapTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/lge/uicc/framework/IsimRecordLoader$GbaAuthNafTest;-><init>(Lcom/lge/uicc/framework/IsimRecordLoader;Lcom/lge/uicc/framework/IsimRecordLoader$1;)V

    invoke-virtual {v3, v4, v5}, Lcom/lge/uicc/framework/IsimRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/RIL;->uiccGbaAuthenticateNaf(I[BLandroid/os/Message;)V

    .line 340
    return-void
.end method
