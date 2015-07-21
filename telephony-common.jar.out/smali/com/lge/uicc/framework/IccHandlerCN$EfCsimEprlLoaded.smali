.class Lcom/lge/uicc/framework/IccHandlerCN$EfCsimEprlLoaded;
.super Lcom/lge/uicc/framework/IccHandler$RecordLoaded;
.source "IccHandlerCN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/framework/IccHandlerCN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfCsimEprlLoaded"
.end annotation


# instance fields
.field mSlotId:I

.field final synthetic this$0:Lcom/lge/uicc/framework/IccHandlerCN;


# direct methods
.method constructor <init>(Lcom/lge/uicc/framework/IccHandlerCN;I)V
    .locals 0
    .param p2, "slotId"    # I

    .prologue
    .line 154
    iput-object p1, p0, Lcom/lge/uicc/framework/IccHandlerCN$EfCsimEprlLoaded;->this$0:Lcom/lge/uicc/framework/IccHandlerCN;

    invoke-direct {p0, p1}, Lcom/lge/uicc/framework/IccHandler$RecordLoaded;-><init>(Lcom/lge/uicc/framework/IccHandler;)V

    .line 155
    iput p2, p0, Lcom/lge/uicc/framework/IccHandlerCN$EfCsimEprlLoaded;->mSlotId:I

    .line 156
    return-void
.end method


# virtual methods
.method public onLoadCompleted(Ljava/lang/Object;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 161
    check-cast p1, [B

    .end local p1    # "result":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [B

    .line 163
    .local v0, "data":[B
    iget-object v2, p0, Lcom/lge/uicc/framework/IccHandlerCN$EfCsimEprlLoaded;->this$0:Lcom/lge/uicc/framework/IccHandlerCN;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CSIM_EPRL="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/uicc/framework/IccHandlerCN;->logd(Ljava/lang/String;)V

    .line 165
    array-length v2, v0

    if-le v2, v6, :cond_0

    .line 166
    aget-byte v2, v0, v5

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    aget-byte v3, v0, v6

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 167
    .local v1, "prlId":I
    iget-object v2, p0, Lcom/lge/uicc/framework/IccHandlerCN$EfCsimEprlLoaded;->this$0:Lcom/lge/uicc/framework/IccHandlerCN;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/lge/uicc/framework/IccHandlerCN;->mPrlVersion:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/lge/uicc/framework/IccHandlerCN;->access$002(Lcom/lge/uicc/framework/IccHandlerCN;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "CTC"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "CTO"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    const-string v2, "PrlVersion"

    iget v3, p0, Lcom/lge/uicc/framework/IccHandlerCN$EfCsimEprlLoaded;->mSlotId:I

    iget-object v4, p0, Lcom/lge/uicc/framework/IccHandlerCN$EfCsimEprlLoaded;->this$0:Lcom/lge/uicc/framework/IccHandlerCN;

    # getter for: Lcom/lge/uicc/framework/IccHandlerCN;->mPrlVersion:Ljava/lang/String;
    invoke-static {v4}, Lcom/lge/uicc/framework/IccHandlerCN;->access$000(Lcom/lge/uicc/framework/IccHandlerCN;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/lge/uicc/framework/LGUICC;->setConfig(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 174
    .end local v1    # "prlId":I
    :cond_0
    iget-object v2, p0, Lcom/lge/uicc/framework/IccHandlerCN$EfCsimEprlLoaded;->this$0:Lcom/lge/uicc/framework/IccHandlerCN;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CSIM PRL version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/uicc/framework/IccHandlerCN$EfCsimEprlLoaded;->this$0:Lcom/lge/uicc/framework/IccHandlerCN;

    # getter for: Lcom/lge/uicc/framework/IccHandlerCN;->mPrlVersion:Ljava/lang/String;
    invoke-static {v4}, Lcom/lge/uicc/framework/IccHandlerCN;->access$000(Lcom/lge/uicc/framework/IccHandlerCN;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "slot_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/uicc/framework/IccHandlerCN$EfCsimEprlLoaded;->mSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/uicc/framework/IccHandlerCN;->logd(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method onLoadException(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/lge/uicc/framework/IccHandlerCN$EfCsimEprlLoaded;->this$0:Lcom/lge/uicc/framework/IccHandlerCN;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception querying CSIM_EPRL, Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/uicc/framework/IccHandlerCN;->logd(Ljava/lang/String;)V

    .line 178
    return-void
.end method
