.class Lcom/lge/uicc/framework/IsimRecordLoader$AkaAuthTest;
.super Lcom/lge/uicc/framework/IsimRecordLoader$IsimTest;
.source "IsimRecordLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/framework/IsimRecordLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AkaAuthTest"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/uicc/framework/IsimRecordLoader;


# direct methods
.method private constructor <init>(Lcom/lge/uicc/framework/IsimRecordLoader;)V
    .locals 1

    .prologue
    .line 277
    iput-object p1, p0, Lcom/lge/uicc/framework/IsimRecordLoader$AkaAuthTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/uicc/framework/IsimRecordLoader$IsimTest;-><init>(Lcom/lge/uicc/framework/IsimRecordLoader;Lcom/lge/uicc/framework/IsimRecordLoader$1;)V

    return-void
.end method


# virtual methods
.method getTestName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    const-string v0, "AKA_AUTHENTICATE"

    return-object v0
.end method

.method onTestCompleted(Ljava/lang/Object;)V
    .locals 12
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    const/4 v11, 0x0

    .line 283
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    move-object v1, v0

    .line 284
    .local v1, "auth_rsp":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/lge/uicc/framework/IsimRecordLoader$AkaAuthTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    const-string v4, "res"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/lge/uicc/framework/IsimRecordLoader;->res:Ljava/lang/String;

    .line 285
    iget-object v3, p0, Lcom/lge/uicc/framework/IsimRecordLoader$AkaAuthTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    const-string v4, "Ck"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/lge/uicc/framework/IsimRecordLoader;->ck:Ljava/lang/String;

    .line 286
    iget-object v3, p0, Lcom/lge/uicc/framework/IsimRecordLoader$AkaAuthTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    const-string v4, "Ik"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/lge/uicc/framework/IsimRecordLoader;->ik:Ljava/lang/String;

    .line 287
    iget-object v3, p0, Lcom/lge/uicc/framework/IsimRecordLoader$AkaAuthTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    const-string v4, "Kc"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/lge/uicc/framework/IsimRecordLoader;->kc:Ljava/lang/String;

    .line 288
    iget-object v3, p0, Lcom/lge/uicc/framework/IsimRecordLoader$AkaAuthTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    const-string v4, "auts"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/lge/uicc/framework/IsimRecordLoader;->auts:Ljava/lang/String;

    .line 290
    iget-object v3, p0, Lcom/lge/uicc/framework/IsimRecordLoader$AkaAuthTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISIM AKA: res = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/uicc/framework/IsimRecordLoader$AkaAuthTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    iget-object v5, v5, Lcom/lge/uicc/framework/IsimRecordLoader;->res:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/uicc/framework/IsimRecordLoader;->logp(Ljava/lang/String;)V

    .line 291
    iget-object v3, p0, Lcom/lge/uicc/framework/IsimRecordLoader$AkaAuthTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISIM AKA: ck = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/uicc/framework/IsimRecordLoader$AkaAuthTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    iget-object v5, v5, Lcom/lge/uicc/framework/IsimRecordLoader;->ck:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/uicc/framework/IsimRecordLoader;->logp(Ljava/lang/String;)V

    .line 292
    iget-object v3, p0, Lcom/lge/uicc/framework/IsimRecordLoader$AkaAuthTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISIM AKA: ik = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/uicc/framework/IsimRecordLoader$AkaAuthTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    iget-object v5, v5, Lcom/lge/uicc/framework/IsimRecordLoader;->ik:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/uicc/framework/IsimRecordLoader;->logp(Ljava/lang/String;)V

    .line 293
    iget-object v3, p0, Lcom/lge/uicc/framework/IsimRecordLoader$AkaAuthTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISIM AKA: kc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/uicc/framework/IsimRecordLoader$AkaAuthTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    iget-object v5, v5, Lcom/lge/uicc/framework/IsimRecordLoader;->kc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/uicc/framework/IsimRecordLoader;->logp(Ljava/lang/String;)V

    .line 294
    iget-object v3, p0, Lcom/lge/uicc/framework/IsimRecordLoader$AkaAuthTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISIM AKA: auts = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/uicc/framework/IsimRecordLoader$AkaAuthTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    iget-object v5, v5, Lcom/lge/uicc/framework/IsimRecordLoader;->auts:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/uicc/framework/IsimRecordLoader;->logp(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .end local v1    # "auth_rsp":Landroid/os/Bundle;
    :goto_0
    iget-object v3, p0, Lcom/lge/uicc/framework/IsimRecordLoader$AkaAuthTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    const-string v4, "Requesting ISIM GBA"

    invoke-virtual {v3, v4}, Lcom/lge/uicc/framework/IsimRecordLoader;->logd(Ljava/lang/String;)V

    .line 306
    # getter for: Lcom/lge/uicc/framework/IsimRecordLoader;->mRil:Lcom/android/internal/telephony/RIL;
    invoke-static {}, Lcom/lge/uicc/framework/IsimRecordLoader;->access$500()Lcom/android/internal/telephony/RIL;

    move-result-object v3

    sget v4, Lcom/lge/uicc/framework/IsimRecordLoader;->isim_session_id:I

    iget-object v5, p0, Lcom/lge/uicc/framework/IsimRecordLoader$AkaAuthTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    iget-object v5, v5, Lcom/lge/uicc/framework/IsimRecordLoader;->gba_rand:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v5

    iget-object v6, p0, Lcom/lge/uicc/framework/IsimRecordLoader$AkaAuthTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    iget-object v6, v6, Lcom/lge/uicc/framework/IsimRecordLoader;->gba_autn:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v6

    iget-object v7, p0, Lcom/lge/uicc/framework/IsimRecordLoader$AkaAuthTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    const/4 v8, 0x2

    new-instance v9, Lcom/lge/uicc/framework/IsimRecordLoader$GbaAuthBootstrapTest;

    iget-object v10, p0, Lcom/lge/uicc/framework/IsimRecordLoader$AkaAuthTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    invoke-direct {v9, v10, v11}, Lcom/lge/uicc/framework/IsimRecordLoader$GbaAuthBootstrapTest;-><init>(Lcom/lge/uicc/framework/IsimRecordLoader;Lcom/lge/uicc/framework/IsimRecordLoader$1;)V

    invoke-virtual {v7, v8, v9}, Lcom/lge/uicc/framework/IsimRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/internal/telephony/RIL;->uiccGbaAuthenticateBootstrap(I[B[BLandroid/os/Message;)V

    .line 308
    return-void

    .line 296
    :catch_0
    move-exception v2

    .line 297
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/lge/uicc/framework/IsimRecordLoader$AkaAuthTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse ISIM AKA contents: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/uicc/framework/IsimRecordLoader;->loge(Ljava/lang/String;)V

    .line 298
    iget-object v3, p0, Lcom/lge/uicc/framework/IsimRecordLoader$AkaAuthTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    iput-object v11, v3, Lcom/lge/uicc/framework/IsimRecordLoader;->res:Ljava/lang/String;

    .line 299
    iget-object v3, p0, Lcom/lge/uicc/framework/IsimRecordLoader$AkaAuthTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    iput-object v11, v3, Lcom/lge/uicc/framework/IsimRecordLoader;->ck:Ljava/lang/String;

    .line 300
    iget-object v3, p0, Lcom/lge/uicc/framework/IsimRecordLoader$AkaAuthTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    iput-object v11, v3, Lcom/lge/uicc/framework/IsimRecordLoader;->ik:Ljava/lang/String;

    .line 301
    iget-object v3, p0, Lcom/lge/uicc/framework/IsimRecordLoader$AkaAuthTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    iput-object v11, v3, Lcom/lge/uicc/framework/IsimRecordLoader;->kc:Ljava/lang/String;

    .line 302
    iget-object v3, p0, Lcom/lge/uicc/framework/IsimRecordLoader$AkaAuthTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    iput-object v11, v3, Lcom/lge/uicc/framework/IsimRecordLoader;->auts:Ljava/lang/String;

    goto :goto_0
.end method

.method onTestException(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/lge/uicc/framework/IsimRecordLoader$AkaAuthTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception ISIM AKA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/uicc/framework/IsimRecordLoader;->loge(Ljava/lang/String;)V

    .line 311
    return-void
.end method
