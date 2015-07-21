.class Lcom/lge/uicc/framework/IccFileIO$CommonUpdated;
.super Lcom/lge/uicc/framework/IccHandler$RecordUpdated;
.source "IccFileIO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/framework/IccFileIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommonUpdated"
.end annotation


# instance fields
.field mInput:Landroid/os/Bundle;

.field mReply:Landroid/os/IRemoteCallback;

.field final synthetic this$0:Lcom/lge/uicc/framework/IccFileIO;


# direct methods
.method constructor <init>(Lcom/lge/uicc/framework/IccFileIO;Landroid/os/Bundle;Landroid/os/IRemoteCallback;)V
    .locals 0
    .param p2, "in"    # Landroid/os/Bundle;
    .param p3, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/lge/uicc/framework/IccFileIO$CommonUpdated;->this$0:Lcom/lge/uicc/framework/IccFileIO;

    invoke-direct {p0, p1}, Lcom/lge/uicc/framework/IccHandler$RecordUpdated;-><init>(Lcom/lge/uicc/framework/IccHandler;)V

    .line 449
    iput-object p2, p0, Lcom/lge/uicc/framework/IccFileIO$CommonUpdated;->mInput:Landroid/os/Bundle;

    .line 450
    iput-object p3, p0, Lcom/lge/uicc/framework/IccFileIO$CommonUpdated;->mReply:Landroid/os/IRemoteCallback;

    .line 451
    return-void
.end method


# virtual methods
.method onUpdateCompleted(Lcom/android/internal/telephony/uicc/IccIoResult;)V
    .locals 9
    .param p1, "result"    # Lcom/android/internal/telephony/uicc/IccIoResult;

    .prologue
    const/4 v8, 0x0

    .line 454
    iget-object v3, p0, Lcom/lge/uicc/framework/IccFileIO$CommonUpdated;->mInput:Landroid/os/Bundle;

    const-string v4, "int.slot"

    invoke-virtual {v3, v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 455
    .local v2, "slot":I
    iget-object v3, p0, Lcom/lge/uicc/framework/IccFileIO$CommonUpdated;->mInput:Landroid/os/Bundle;

    const-string v4, "int.efid"

    invoke-virtual {v3, v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 456
    .local v0, "efid":I
    iget-object v3, p0, Lcom/lge/uicc/framework/IccFileIO$CommonUpdated;->this$0:Lcom/lge/uicc/framework/IccFileIO;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update: completed: slot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", efid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/uicc/framework/IccFileIO;->logd(Ljava/lang/String;)V

    .line 458
    iget-object v1, p0, Lcom/lge/uicc/framework/IccFileIO$CommonUpdated;->mInput:Landroid/os/Bundle;

    .line 459
    .local v1, "out":Landroid/os/Bundle;
    const-string v3, "byte[].data"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 460
    const-string v3, "String.data"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 461
    const-string v3, "boolean.result"

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccIoResult;->success()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 463
    iget-object v3, p0, Lcom/lge/uicc/framework/IccFileIO$CommonUpdated;->this$0:Lcom/lge/uicc/framework/IccFileIO;

    iget-object v4, p0, Lcom/lge/uicc/framework/IccFileIO$CommonUpdated;->mInput:Landroid/os/Bundle;

    const-string v5, "byte[].data"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    iget-object v5, p0, Lcom/lge/uicc/framework/IccFileIO$CommonUpdated;->mInput:Landroid/os/Bundle;

    const-string v6, "String.data"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/lge/uicc/framework/IccFileIO;->processAfterUpdate(II[BLjava/lang/String;)V
    invoke-static {v3, v2, v0, v4, v5}, Lcom/lge/uicc/framework/IccFileIO;->access$200(Lcom/lge/uicc/framework/IccFileIO;II[BLjava/lang/String;)V

    .line 465
    iget-object v3, p0, Lcom/lge/uicc/framework/IccFileIO$CommonUpdated;->this$0:Lcom/lge/uicc/framework/IccFileIO;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update: send result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/uicc/framework/IccFileIO;->logp(Ljava/lang/String;)V

    .line 466
    iget-object v3, p0, Lcom/lge/uicc/framework/IccFileIO$CommonUpdated;->this$0:Lcom/lge/uicc/framework/IccFileIO;

    iget-object v4, p0, Lcom/lge/uicc/framework/IccFileIO$CommonUpdated;->mReply:Landroid/os/IRemoteCallback;

    # invokes: Lcom/lge/uicc/framework/IccFileIO;->sendResult(Landroid/os/IRemoteCallback;Landroid/os/Bundle;)V
    invoke-static {v3, v4, v1}, Lcom/lge/uicc/framework/IccFileIO;->access$100(Lcom/lge/uicc/framework/IccFileIO;Landroid/os/IRemoteCallback;Landroid/os/Bundle;)V

    .line 467
    return-void
.end method

.method onUpdateException(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 470
    iget-object v0, p0, Lcom/lge/uicc/framework/IccFileIO$CommonUpdated;->this$0:Lcom/lge/uicc/framework/IccFileIO;

    const-string v1, "update: send fail result"

    invoke-virtual {v0, v1}, Lcom/lge/uicc/framework/IccFileIO;->logd(Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/lge/uicc/framework/IccFileIO$CommonUpdated;->this$0:Lcom/lge/uicc/framework/IccFileIO;

    iget-object v1, p0, Lcom/lge/uicc/framework/IccFileIO$CommonUpdated;->mReply:Landroid/os/IRemoteCallback;

    const/4 v2, 0x0

    # invokes: Lcom/lge/uicc/framework/IccFileIO;->sendResult(Landroid/os/IRemoteCallback;Landroid/os/Bundle;)V
    invoke-static {v0, v1, v2}, Lcom/lge/uicc/framework/IccFileIO;->access$100(Lcom/lge/uicc/framework/IccFileIO;Landroid/os/IRemoteCallback;Landroid/os/Bundle;)V

    .line 472
    return-void
.end method
