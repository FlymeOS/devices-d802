.class Lcom/lge/uicc/framework/IccFileIO$OcsglLoaded;
.super Lcom/lge/uicc/framework/IccHandler$RecordLoaded;
.source "IccFileIO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/framework/IccFileIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OcsglLoaded"
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
    .line 412
    iput-object p1, p0, Lcom/lge/uicc/framework/IccFileIO$OcsglLoaded;->this$0:Lcom/lge/uicc/framework/IccFileIO;

    invoke-direct {p0, p1}, Lcom/lge/uicc/framework/IccHandler$RecordLoaded;-><init>(Lcom/lge/uicc/framework/IccHandler;)V

    .line 413
    iput-object p2, p0, Lcom/lge/uicc/framework/IccFileIO$OcsglLoaded;->mInput:Landroid/os/Bundle;

    .line 414
    iput-object p3, p0, Lcom/lge/uicc/framework/IccFileIO$OcsglLoaded;->mReply:Landroid/os/IRemoteCallback;

    .line 415
    return-void
.end method


# virtual methods
.method onLoadCompleted(Ljava/lang/Object;)V
    .locals 12
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    const/4 v11, 0x0

    .line 418
    iget-object v6, p0, Lcom/lge/uicc/framework/IccFileIO$OcsglLoaded;->mInput:Landroid/os/Bundle;

    const-string v7, "int.slot"

    invoke-virtual {v6, v7, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 419
    .local v5, "slot":I
    iget-object v6, p0, Lcom/lge/uicc/framework/IccFileIO$OcsglLoaded;->mInput:Landroid/os/Bundle;

    const-string v7, "int.efid"

    invoke-virtual {v6, v7, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 420
    .local v2, "efid":I
    iget-object v6, p0, Lcom/lge/uicc/framework/IccFileIO$OcsglLoaded;->this$0:Lcom/lge/uicc/framework/IccFileIO;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read: completed: slot="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", efid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%x"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lge/uicc/framework/IccFileIO;->logd(Ljava/lang/String;)V

    move-object v0, p1

    .line 422
    check-cast v0, Ljava/util/ArrayList;

    .line 424
    .local v0, "allDataBytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v1, v6, [Ljava/lang/String;

    .line 425
    .local v1, "allDataString":[Ljava/lang/String;
    iget-object v6, p0, Lcom/lge/uicc/framework/IccFileIO$OcsglLoaded;->this$0:Lcom/lge/uicc/framework/IccFileIO;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Record Number : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lge/uicc/framework/IccFileIO;->logd(Ljava/lang/String;)V

    .line 426
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 427
    iget-object v7, p0, Lcom/lge/uicc/framework/IccFileIO$OcsglLoaded;->this$0:Lcom/lge/uicc/framework/IccFileIO;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EFReadAll ["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "] : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-static {v6}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/lge/uicc/framework/IccFileIO;->logd(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-static {v6}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    .line 426
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 431
    :cond_0
    iget-object v4, p0, Lcom/lge/uicc/framework/IccFileIO$OcsglLoaded;->mInput:Landroid/os/Bundle;

    .line 432
    .local v4, "out":Landroid/os/Bundle;
    const-string v6, "String[].result"

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 434
    iget-object v6, p0, Lcom/lge/uicc/framework/IccFileIO$OcsglLoaded;->this$0:Lcom/lge/uicc/framework/IccFileIO;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read: send result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lge/uicc/framework/IccFileIO;->logp(Ljava/lang/String;)V

    .line 435
    iget-object v6, p0, Lcom/lge/uicc/framework/IccFileIO$OcsglLoaded;->this$0:Lcom/lge/uicc/framework/IccFileIO;

    iget-object v7, p0, Lcom/lge/uicc/framework/IccFileIO$OcsglLoaded;->mReply:Landroid/os/IRemoteCallback;

    # invokes: Lcom/lge/uicc/framework/IccFileIO;->sendResult(Landroid/os/IRemoteCallback;Landroid/os/Bundle;)V
    invoke-static {v6, v7, v4}, Lcom/lge/uicc/framework/IccFileIO;->access$100(Lcom/lge/uicc/framework/IccFileIO;Landroid/os/IRemoteCallback;Landroid/os/Bundle;)V

    .line 436
    return-void
.end method

.method onLoadException(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 439
    iget-object v0, p0, Lcom/lge/uicc/framework/IccFileIO$OcsglLoaded;->this$0:Lcom/lge/uicc/framework/IccFileIO;

    const-string v1, "read: send fail result"

    invoke-virtual {v0, v1}, Lcom/lge/uicc/framework/IccFileIO;->logd(Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/lge/uicc/framework/IccFileIO$OcsglLoaded;->this$0:Lcom/lge/uicc/framework/IccFileIO;

    iget-object v1, p0, Lcom/lge/uicc/framework/IccFileIO$OcsglLoaded;->mReply:Landroid/os/IRemoteCallback;

    const/4 v2, 0x0

    # invokes: Lcom/lge/uicc/framework/IccFileIO;->sendResult(Landroid/os/IRemoteCallback;Landroid/os/Bundle;)V
    invoke-static {v0, v1, v2}, Lcom/lge/uicc/framework/IccFileIO;->access$100(Lcom/lge/uicc/framework/IccFileIO;Landroid/os/IRemoteCallback;Landroid/os/Bundle;)V

    .line 441
    return-void
.end method
