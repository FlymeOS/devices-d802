.class Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;
.super Landroid/os/Handler;
.source "SimPhonebookService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/framework/SimPhonebookService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PbmHandler"
.end annotation


# instance fields
.field private pbm_get_init_state_mask:I

.field final synthetic this$0:Lcom/lge/uicc/framework/SimPhonebookService;


# direct methods
.method private constructor <init>(Lcom/lge/uicc/framework/SimPhonebookService;)V
    .locals 1

    .prologue
    .line 63
    iput-object p1, p0, Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;->this$0:Lcom/lge/uicc/framework/SimPhonebookService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;->pbm_get_init_state_mask:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/uicc/framework/SimPhonebookService;Lcom/lge/uicc/framework/SimPhonebookService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/uicc/framework/SimPhonebookService;
    .param p2, "x1"    # Lcom/lge/uicc/framework/SimPhonebookService$1;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;-><init>(Lcom/lge/uicc/framework/SimPhonebookService;)V

    return-void
.end method

.method static synthetic access$400(Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;II)Lcom/lge/uicc/framework/PbmInfo;
    .locals 1
    .param p0, "x0"    # Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;->getInfo(II)Lcom/lge/uicc/framework/PbmInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;III)Lcom/lge/uicc/framework/PbmRecord;
    .locals 1
    .param p0, "x0"    # Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;->readRecord(III)Lcom/lge/uicc/framework/PbmRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;ILcom/lge/uicc/framework/PbmRecord;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/lge/uicc/framework/PbmRecord;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;->writeRecord(ILcom/lge/uicc/framework/PbmRecord;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;III)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;->deleteRecord(III)I

    move-result v0

    return v0
.end method

.method private deleteRecord(III)I
    .locals 8
    .param p1, "slot"    # I
    .param p2, "efdev"    # I
    .param p3, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 188
    invoke-static {p1}, Lcom/lge/uicc/framework/IccTools;->getRIL(I)Lcom/android/internal/telephony/RIL;

    move-result-object v2

    .line 189
    .local v2, "ril":Lcom/android/internal/telephony/RIL;
    if-nez v2, :cond_0

    .line 190
    const-string v3, "RIL==null"

    # invokes: Lcom/lge/uicc/framework/SimPhonebookService;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/lge/uicc/framework/SimPhonebookService;->access$300(Ljava/lang/String;)V

    move v3, v4

    .line 199
    :goto_0
    return v3

    .line 193
    :cond_0
    new-instance v0, Lcom/lge/uicc/framework/AsyncResultFetcher;

    invoke-direct {v0}, Lcom/lge/uicc/framework/AsyncResultFetcher;-><init>()V

    .line 194
    .local v0, "fetcher":Lcom/lge/uicc/framework/AsyncResultFetcher;
    invoke-virtual {v0}, Lcom/lge/uicc/framework/AsyncResultFetcher;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, p2, p3, v3}, Lcom/android/internal/telephony/RIL;->PBMDeleteRecord(IILandroid/os/Message;)V

    .line 195
    const-wide/16 v6, 0xbb8

    invoke-virtual {v0, v6, v7}, Lcom/lge/uicc/framework/AsyncResultFetcher;->waitResponse(J)Z

    .line 196
    invoke-virtual {v0}, Lcom/lge/uicc/framework/AsyncResultFetcher;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    move-object v1, v3

    check-cast v1, [I

    .line 197
    .local v1, "result":[I
    if-eqz v1, :cond_1

    aget v3, v1, v4

    if-nez v3, :cond_1

    .line 198
    const/4 v3, 0x2

    aget v3, v1, v3

    goto :goto_0

    :cond_1
    move v3, v4

    .line 199
    goto :goto_0
.end method

.method private getInfo(II)Lcom/lge/uicc/framework/PbmInfo;
    .locals 4
    .param p1, "slot"    # I
    .param p2, "efdev"    # I

    .prologue
    .line 149
    invoke-static {p1}, Lcom/lge/uicc/framework/IccTools;->getRIL(I)Lcom/android/internal/telephony/RIL;

    move-result-object v1

    .line 150
    .local v1, "ril":Lcom/android/internal/telephony/RIL;
    if-nez v1, :cond_0

    .line 151
    const-string v2, "RIL==null"

    # invokes: Lcom/lge/uicc/framework/SimPhonebookService;->loge(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/lge/uicc/framework/SimPhonebookService;->access$300(Ljava/lang/String;)V

    .line 152
    const/4 v2, 0x0

    .line 157
    :goto_0
    return-object v2

    .line 154
    :cond_0
    new-instance v0, Lcom/lge/uicc/framework/AsyncResultFetcher;

    invoke-direct {v0}, Lcom/lge/uicc/framework/AsyncResultFetcher;-><init>()V

    .line 155
    .local v0, "fetcher":Lcom/lge/uicc/framework/AsyncResultFetcher;
    invoke-virtual {v0}, Lcom/lge/uicc/framework/AsyncResultFetcher;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/android/internal/telephony/RIL;->PBMGetInfo(ILandroid/os/Message;)V

    .line 156
    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Lcom/lge/uicc/framework/AsyncResultFetcher;->waitResponse(J)Z

    .line 157
    invoke-virtual {v0}, Lcom/lge/uicc/framework/AsyncResultFetcher;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/uicc/framework/PbmInfo;

    goto :goto_0
.end method

.method private readRecord(III)Lcom/lge/uicc/framework/PbmRecord;
    .locals 4
    .param p1, "slot"    # I
    .param p2, "efdev"    # I
    .param p3, "index"    # I

    .prologue
    .line 161
    invoke-static {p1}, Lcom/lge/uicc/framework/IccTools;->getRIL(I)Lcom/android/internal/telephony/RIL;

    move-result-object v1

    .line 162
    .local v1, "ril":Lcom/android/internal/telephony/RIL;
    if-nez v1, :cond_0

    .line 163
    const-string v2, "RIL==null"

    # invokes: Lcom/lge/uicc/framework/SimPhonebookService;->loge(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/lge/uicc/framework/SimPhonebookService;->access$300(Ljava/lang/String;)V

    .line 164
    const/4 v2, 0x0

    .line 169
    :goto_0
    return-object v2

    .line 166
    :cond_0
    new-instance v0, Lcom/lge/uicc/framework/AsyncResultFetcher;

    invoke-direct {v0}, Lcom/lge/uicc/framework/AsyncResultFetcher;-><init>()V

    .line 167
    .local v0, "fetcher":Lcom/lge/uicc/framework/AsyncResultFetcher;
    invoke-virtual {v0}, Lcom/lge/uicc/framework/AsyncResultFetcher;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p2, p3, v2}, Lcom/android/internal/telephony/RIL;->PBMReadRecord(IILandroid/os/Message;)V

    .line 168
    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Lcom/lge/uicc/framework/AsyncResultFetcher;->waitResponse(J)Z

    .line 169
    invoke-virtual {v0}, Lcom/lge/uicc/framework/AsyncResultFetcher;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/uicc/framework/PbmRecord;

    goto :goto_0
.end method

.method private writeRecord(ILcom/lge/uicc/framework/PbmRecord;)I
    .locals 8
    .param p1, "slot"    # I
    .param p2, "record"    # Lcom/lge/uicc/framework/PbmRecord;

    .prologue
    const/4 v4, 0x0

    .line 173
    invoke-static {p1}, Lcom/lge/uicc/framework/IccTools;->getRIL(I)Lcom/android/internal/telephony/RIL;

    move-result-object v2

    .line 174
    .local v2, "ril":Lcom/android/internal/telephony/RIL;
    if-nez v2, :cond_0

    .line 175
    const-string v3, "RIL==null"

    # invokes: Lcom/lge/uicc/framework/SimPhonebookService;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/lge/uicc/framework/SimPhonebookService;->access$300(Ljava/lang/String;)V

    move v3, v4

    .line 184
    :goto_0
    return v3

    .line 178
    :cond_0
    new-instance v0, Lcom/lge/uicc/framework/AsyncResultFetcher;

    invoke-direct {v0}, Lcom/lge/uicc/framework/AsyncResultFetcher;-><init>()V

    .line 179
    .local v0, "fetcher":Lcom/lge/uicc/framework/AsyncResultFetcher;
    invoke-virtual {v0}, Lcom/lge/uicc/framework/AsyncResultFetcher;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lcom/android/internal/telephony/RIL;->PBMWriteRecord(Lcom/lge/uicc/framework/PbmRecord;Landroid/os/Message;)V

    .line 180
    const-wide/16 v6, 0xbb8

    invoke-virtual {v0, v6, v7}, Lcom/lge/uicc/framework/AsyncResultFetcher;->waitResponse(J)Z

    .line 181
    invoke-virtual {v0}, Lcom/lge/uicc/framework/AsyncResultFetcher;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    move-object v1, v3

    check-cast v1, [I

    .line 182
    .local v1, "result":[I
    if-eqz v1, :cond_1

    aget v3, v1, v4

    if-nez v3, :cond_1

    .line 183
    const/4 v3, 0x2

    aget v3, v1, v3

    goto :goto_0

    :cond_1
    move v3, v4

    .line 184
    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/high16 v9, 0x10000000

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 68
    const/4 v4, -0x1

    .line 70
    .local v4, "slotId":I
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/lge/uicc/framework/SimPhonebookService;->loge(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/lge/uicc/framework/SimPhonebookService;->access$300(Ljava/lang/String;)V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 72
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 73
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 76
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 77
    iget v5, p0, Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;->pbm_get_init_state_mask:I

    shl-int v6, v7, v4

    and-int/2addr v5, v6

    if-nez v5, :cond_0

    .line 79
    iget v5, p0, Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;->pbm_get_init_state_mask:I

    shl-int v6, v7, v4

    or-int/2addr v5, v6

    iput v5, p0, Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;->pbm_get_init_state_mask:I

    .line 81
    const-string v5, "pbm_state"

    invoke-static {v5, v4}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "READY"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 82
    const-string v5, "try to get PBM init state"

    # invokes: Lcom/lge/uicc/framework/SimPhonebookService;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/lge/uicc/framework/SimPhonebookService;->access$100(Ljava/lang/String;)V

    .line 83
    invoke-static {v4}, Lcom/lge/uicc/framework/IccTools;->getRIL(I)Lcom/android/internal/telephony/RIL;

    move-result-object v3

    .line 84
    .local v3, "ril":Lcom/android/internal/telephony/RIL;
    if-eqz v3, :cond_0

    .line 85
    iget-object v5, p0, Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;->this$0:Lcom/lge/uicc/framework/SimPhonebookService;

    # getter for: Lcom/lge/uicc/framework/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;
    invoke-static {v5}, Lcom/lge/uicc/framework/SimPhonebookService;->access$200(Lcom/lge/uicc/framework/SimPhonebookService;)Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/RIL;->PBMGetInitState(Landroid/os/Message;)V

    goto :goto_0

    .line 90
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "ril":Lcom/android/internal/telephony/RIL;
    :pswitch_1
    const-string v5, "EVENT_RIL_PBM_GET_INIT_STATE_DONE"

    # invokes: Lcom/lge/uicc/framework/SimPhonebookService;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/lge/uicc/framework/SimPhonebookService;->access$100(Ljava/lang/String;)V

    .line 91
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 92
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_1

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v5, :cond_2

    .line 93
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PBM_GET_INIT_STATE:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/lge/uicc/framework/SimPhonebookService;->loge(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/lge/uicc/framework/SimPhonebookService;->access$300(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_2
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    check-cast v5, [I

    aget v2, v5, v8

    .line 98
    .local v2, "pb_init_done":I
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 100
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pb_init_done="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/lge/uicc/framework/SimPhonebookService;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/lge/uicc/framework/SimPhonebookService;->access$100(Ljava/lang/String;)V

    .line 101
    if-ne v2, v7, :cond_0

    .line 102
    const-string v5, "pbm_state"

    const-string v6, "READY"

    invoke-static {v5, v4, v6}, Lcom/lge/uicc/framework/LGUICC;->setConfig(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 106
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "pb_init_done":I
    :pswitch_2
    const-string v5, "EVENT_PBREADY"

    # invokes: Lcom/lge/uicc/framework/SimPhonebookService;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/lge/uicc/framework/SimPhonebookService;->access$100(Ljava/lang/String;)V

    .line 107
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 108
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 111
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 112
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pbm_state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "pbm_state"

    invoke-static {v6, v4}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/lge/uicc/framework/SimPhonebookService;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/lge/uicc/framework/SimPhonebookService;->access$100(Ljava/lang/String;)V

    .line 114
    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "SPR"

    aput-object v6, v5, v8

    invoke-static {v5}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "USC"

    aput-object v6, v5, v8

    invoke-static {v5}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 115
    :cond_3
    const-string v5, "PBREADY, but SPR/USC carrier does not supports PBM on UICC"

    # invokes: Lcom/lge/uicc/framework/SimPhonebookService;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/lge/uicc/framework/SimPhonebookService;->access$100(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    :cond_4
    packed-switch v4, :pswitch_data_1

    goto/16 :goto_0

    .line 122
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.lge.intent.action.PBM_INIT_COMPLETE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "PBM_INIT_COMPLETE"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    invoke-virtual {v1, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 125
    invoke-static {v1}, Lcom/lge/uicc/framework/IccTools;->broadcastStickyIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 128
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.lge.intent.action.PBM_INIT_COMPLETE_SLOT2"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v5, "PBM_INIT_COMPLETE"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    invoke-virtual {v1, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 131
    invoke-static {v1}, Lcom/lge/uicc/framework/IccTools;->broadcastStickyIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 134
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.lge.intent.action.PBM_INIT_COMPLETE_SLOT3"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v5, "PBM_INIT_COMPLETE"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    invoke-virtual {v1, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 137
    invoke-static {v1}, Lcom/lge/uicc/framework/IccTools;->broadcastStickyIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 120
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
