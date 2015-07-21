.class Lcom/lge/uicc/framework/IccHandlerCommon$FdnRecordSizeLoaded;
.super Lcom/lge/uicc/framework/IccHandler$RecordLoaded;
.source "IccHandlerCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/framework/IccHandlerCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FdnRecordSizeLoaded"
.end annotation


# instance fields
.field mSlotId:I

.field final synthetic this$0:Lcom/lge/uicc/framework/IccHandlerCommon;


# direct methods
.method constructor <init>(Lcom/lge/uicc/framework/IccHandlerCommon;I)V
    .locals 0
    .param p2, "slotId"    # I

    .prologue
    .line 93
    iput-object p1, p0, Lcom/lge/uicc/framework/IccHandlerCommon$FdnRecordSizeLoaded;->this$0:Lcom/lge/uicc/framework/IccHandlerCommon;

    invoke-direct {p0, p1}, Lcom/lge/uicc/framework/IccHandler$RecordLoaded;-><init>(Lcom/lge/uicc/framework/IccHandler;)V

    .line 94
    iput p2, p0, Lcom/lge/uicc/framework/IccHandlerCommon$FdnRecordSizeLoaded;->mSlotId:I

    .line 95
    return-void
.end method


# virtual methods
.method onLoadCompleted(Ljava/lang/Object;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 98
    check-cast p1, [I

    .end local p1    # "result":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [I

    .line 102
    .local v0, "recordSizeArray":[I
    iget-object v1, p0, Lcom/lge/uicc/framework/IccHandlerCommon$FdnRecordSizeLoaded;->this$0:Lcom/lge/uicc/framework/IccHandlerCommon;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EF_FDN ATTR] GET_RECORD_SIZE Size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " total "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " #record "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/uicc/framework/IccHandlerCommon;->logd(Ljava/lang/String;)V

    .line 105
    const-string v1, "fdn_rec_num"

    iget v2, p0, Lcom/lge/uicc/framework/IccHandlerCommon$FdnRecordSizeLoaded;->mSlotId:I

    const-string v3, "%d"

    new-array v4, v7, [Ljava/lang/Object;

    aget v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/lge/uicc/framework/LGUICC;->setConfig(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 106
    const-string v1, "fdn_name_max"

    iget v2, p0, Lcom/lge/uicc/framework/IccHandlerCommon$FdnRecordSizeLoaded;->mSlotId:I

    const-string v3, "%d"

    new-array v4, v7, [Ljava/lang/Object;

    aget v5, v0, v6

    add-int/lit8 v5, v5, -0xe

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/lge/uicc/framework/LGUICC;->setConfig(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 107
    return-void
.end method

.method onLoadException(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/lge/uicc/framework/IccHandlerCommon$FdnRecordSizeLoaded;->this$0:Lcom/lge/uicc/framework/IccHandlerCommon;

    const-string v1, "[EF_FDN ATTR] GET_RECORD_SIZE zero "

    invoke-virtual {v0, v1}, Lcom/lge/uicc/framework/IccHandlerCommon;->logd(Ljava/lang/String;)V

    .line 111
    const-string v0, "fdn_rec_num"

    iget v1, p0, Lcom/lge/uicc/framework/IccHandlerCommon$FdnRecordSizeLoaded;->mSlotId:I

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/lge/uicc/framework/LGUICC;->setConfig(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 112
    const-string v0, "fdn_name_max"

    iget v1, p0, Lcom/lge/uicc/framework/IccHandlerCommon$FdnRecordSizeLoaded;->mSlotId:I

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/lge/uicc/framework/LGUICC;->setConfig(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 113
    return-void
.end method
