.class Lcom/lge/uicc/framework/IccFileIO$CommonLoaded;
.super Lcom/lge/uicc/framework/IccHandler$RecordLoaded;
.source "IccFileIO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/framework/IccFileIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommonLoaded"
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
    .line 379
    iput-object p1, p0, Lcom/lge/uicc/framework/IccFileIO$CommonLoaded;->this$0:Lcom/lge/uicc/framework/IccFileIO;

    invoke-direct {p0, p1}, Lcom/lge/uicc/framework/IccHandler$RecordLoaded;-><init>(Lcom/lge/uicc/framework/IccHandler;)V

    .line 380
    iput-object p2, p0, Lcom/lge/uicc/framework/IccFileIO$CommonLoaded;->mInput:Landroid/os/Bundle;

    .line 381
    iput-object p3, p0, Lcom/lge/uicc/framework/IccFileIO$CommonLoaded;->mReply:Landroid/os/IRemoteCallback;

    .line 382
    return-void
.end method


# virtual methods
.method onLoadCompleted(Ljava/lang/Object;)V
    .locals 11
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x0

    .line 385
    check-cast p1, [B

    .end local p1    # "result":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [B

    .line 387
    .local v0, "dataBytes":[B
    iget-object v5, p0, Lcom/lge/uicc/framework/IccFileIO$CommonLoaded;->mInput:Landroid/os/Bundle;

    const-string v6, "int.slot"

    invoke-virtual {v5, v6, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 388
    .local v4, "slot":I
    iget-object v5, p0, Lcom/lge/uicc/framework/IccFileIO$CommonLoaded;->mInput:Landroid/os/Bundle;

    const-string v6, "int.efid"

    invoke-virtual {v5, v6, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 389
    .local v2, "efid":I
    iget-object v5, p0, Lcom/lge/uicc/framework/IccFileIO$CommonLoaded;->this$0:Lcom/lge/uicc/framework/IccFileIO;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read: completed: slot="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", efid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%x"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lge/uicc/framework/IccFileIO;->logd(Ljava/lang/String;)V

    .line 391
    iget-object v3, p0, Lcom/lge/uicc/framework/IccFileIO$CommonLoaded;->mInput:Landroid/os/Bundle;

    .line 392
    .local v3, "out":Landroid/os/Bundle;
    const-string v5, "byte[].result"

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 394
    iget-object v5, p0, Lcom/lge/uicc/framework/IccFileIO$CommonLoaded;->this$0:Lcom/lge/uicc/framework/IccFileIO;

    # invokes: Lcom/lge/uicc/framework/IccFileIO;->decodeBytesToString(I[B)Ljava/lang/String;
    invoke-static {v5, v2, v0}, Lcom/lge/uicc/framework/IccFileIO;->access$000(Lcom/lge/uicc/framework/IccFileIO;I[B)Ljava/lang/String;

    move-result-object v1

    .line 395
    .local v1, "dataString":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 396
    const-string v5, "String.result"

    invoke-virtual {v3, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :cond_0
    iget-object v5, p0, Lcom/lge/uicc/framework/IccFileIO$CommonLoaded;->this$0:Lcom/lge/uicc/framework/IccFileIO;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read: send result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lge/uicc/framework/IccFileIO;->logp(Ljava/lang/String;)V

    .line 400
    iget-object v5, p0, Lcom/lge/uicc/framework/IccFileIO$CommonLoaded;->this$0:Lcom/lge/uicc/framework/IccFileIO;

    iget-object v6, p0, Lcom/lge/uicc/framework/IccFileIO$CommonLoaded;->mReply:Landroid/os/IRemoteCallback;

    # invokes: Lcom/lge/uicc/framework/IccFileIO;->sendResult(Landroid/os/IRemoteCallback;Landroid/os/Bundle;)V
    invoke-static {v5, v6, v3}, Lcom/lge/uicc/framework/IccFileIO;->access$100(Lcom/lge/uicc/framework/IccFileIO;Landroid/os/IRemoteCallback;Landroid/os/Bundle;)V

    .line 401
    return-void
.end method

.method onLoadException(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 404
    iget-object v0, p0, Lcom/lge/uicc/framework/IccFileIO$CommonLoaded;->this$0:Lcom/lge/uicc/framework/IccFileIO;

    const-string v1, "read: send fail result"

    invoke-virtual {v0, v1}, Lcom/lge/uicc/framework/IccFileIO;->logd(Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/lge/uicc/framework/IccFileIO$CommonLoaded;->this$0:Lcom/lge/uicc/framework/IccFileIO;

    iget-object v1, p0, Lcom/lge/uicc/framework/IccFileIO$CommonLoaded;->mReply:Landroid/os/IRemoteCallback;

    const/4 v2, 0x0

    # invokes: Lcom/lge/uicc/framework/IccFileIO;->sendResult(Landroid/os/IRemoteCallback;Landroid/os/Bundle;)V
    invoke-static {v0, v1, v2}, Lcom/lge/uicc/framework/IccFileIO;->access$100(Lcom/lge/uicc/framework/IccFileIO;Landroid/os/IRemoteCallback;Landroid/os/Bundle;)V

    .line 406
    return-void
.end method
