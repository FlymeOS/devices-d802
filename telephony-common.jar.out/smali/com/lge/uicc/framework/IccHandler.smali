.class public abstract Lcom/lge/uicc/framework/IccHandler;
.super Landroid/os/Handler;
.source "IccHandler.java"

# interfaces
.implements Lcom/lge/uicc/LGUiccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/uicc/framework/IccHandler$RecordUpdated;,
        Lcom/lge/uicc/framework/IccHandler$RecordLoaded;
    }
.end annotation


# static fields
.field protected static final APP_FAM_3GPP:I = 0x1

.field protected static final APP_FAM_3GPP2:I = 0x2

.field protected static final APP_FAM_IMS:I = 0x3

.field protected static final EVENT_LOAD_ICC_RECORD_DONE:I = 0xf4241

.field protected static final EVENT_UPDATE_ICC_RECORD_DONE:I = 0xf4242


# instance fields
.field private final LOGNAME:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/uicc/framework/IccHandler;->LOGNAME:Ljava/lang/String;

    .line 39
    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/uicc/framework/IccHandler;->LOGNAME:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private sendExceptionForMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 66
    if-eqz p1, :cond_0

    .line 67
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 68
    .local v0, "exception":Lcom/android/internal/telephony/CommandException;
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 69
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 71
    .end local v0    # "exception":Lcom/android/internal/telephony/CommandException;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getEFLinearRecordSize(IIILandroid/os/Message;)V
    .locals 1
    .param p1, "slot"    # I
    .param p2, "family"    # I
    .param p3, "fileid"    # I
    .param p4, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 74
    invoke-static {p1, p2}, Lcom/lge/uicc/framework/IccTools;->getFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 75
    .local v0, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v0, :cond_0

    .line 76
    invoke-direct {p0, p4}, Lcom/lge/uicc/framework/IccHandler;->sendExceptionForMessage(Landroid/os/Message;)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {v0, p3, p4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 140
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 187
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 143
    :pswitch_0
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 144
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/lge/uicc/framework/IccHandler$RecordLoaded;

    .line 145
    .local v2, "loaded":Lcom/lge/uicc/framework/IccHandler$RecordLoaded;
    if-eqz v2, :cond_1

    .line 146
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Record Load Done : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/lge/uicc/framework/IccHandler;->logd(Ljava/lang/String;)V

    .line 147
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Record Load Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/lge/uicc/framework/IccHandler;->loge(Ljava/lang/String;)V

    .line 149
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Lcom/lge/uicc/framework/IccHandler$RecordLoaded;->onLoadException(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/lge/uicc/framework/IccHandler;->onRecordLoaded()V

    goto :goto_0

    .line 150
    :cond_2
    :try_start_1
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_3

    .line 151
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Lcom/lge/uicc/framework/IccHandler$RecordLoaded;->onLoadCompleted(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 156
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "loaded":Lcom/lge/uicc/framework/IccHandler$RecordLoaded;
    :catch_0
    move-exception v1

    .line 158
    .local v1, "exc":Ljava/lang/RuntimeException;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception parsing record: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/lge/uicc/framework/IccHandler;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    invoke-virtual {p0}, Lcom/lge/uicc/framework/IccHandler;->onRecordLoaded()V

    goto :goto_0

    .line 153
    .end local v1    # "exc":Ljava/lang/RuntimeException;
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v2    # "loaded":Lcom/lge/uicc/framework/IccHandler$RecordLoaded;
    :cond_3
    :try_start_3
    const-string v4, "Invalid state"

    invoke-virtual {p0, v4}, Lcom/lge/uicc/framework/IccHandler;->loge(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 161
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "loaded":Lcom/lge/uicc/framework/IccHandler$RecordLoaded;
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lcom/lge/uicc/framework/IccHandler;->onRecordLoaded()V

    throw v4

    .line 167
    :pswitch_1
    :try_start_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 168
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/lge/uicc/framework/IccHandler$RecordUpdated;

    .line 169
    .local v3, "updated":Lcom/lge/uicc/framework/IccHandler$RecordUpdated;
    if-eqz v3, :cond_0

    .line 170
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Record Update Done : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/lge/uicc/framework/IccHandler;->logd(Ljava/lang/String;)V

    .line 171
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_4

    .line 172
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Record Update Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/lge/uicc/framework/IccHandler;->loge(Ljava/lang/String;)V

    .line 173
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Lcom/lge/uicc/framework/IccHandler$RecordUpdated;->onUpdateException(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 180
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "updated":Lcom/lge/uicc/framework/IccHandler$RecordUpdated;
    :catch_1
    move-exception v1

    .line 182
    .restart local v1    # "exc":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception updating record: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/lge/uicc/framework/IccHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 174
    .end local v1    # "exc":Ljava/lang/RuntimeException;
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v3    # "updated":Lcom/lge/uicc/framework/IccHandler$RecordUpdated;
    :cond_4
    :try_start_5
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_5

    .line 175
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    invoke-virtual {v3, v4}, Lcom/lge/uicc/framework/IccHandler$RecordUpdated;->onUpdateCompleted(Lcom/android/internal/telephony/uicc/IccIoResult;)V

    goto/16 :goto_0

    .line 177
    :cond_5
    const-string v4, "Invalid state"

    invoke-virtual {p0, v4}, Lcom/lge/uicc/framework/IccHandler;->loge(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0xf4241
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected loadEFLinearFixed(IIIILandroid/os/Message;)V
    .locals 1
    .param p1, "slot"    # I
    .param p2, "family"    # I
    .param p3, "fileid"    # I
    .param p4, "recordNum"    # I
    .param p5, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 83
    invoke-static {p1, p2}, Lcom/lge/uicc/framework/IccTools;->getFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 84
    .local v0, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v0, :cond_0

    .line 85
    invoke-direct {p0, p5}, Lcom/lge/uicc/framework/IccHandler;->sendExceptionForMessage(Landroid/os/Message;)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-virtual {v0, p3, p4, p5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto :goto_0
.end method

.method protected loadEFLinearFixedAll(IIILandroid/os/Message;)V
    .locals 1
    .param p1, "slot"    # I
    .param p2, "family"    # I
    .param p3, "fileid"    # I
    .param p4, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 92
    invoke-static {p1, p2}, Lcom/lge/uicc/framework/IccTools;->getFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 93
    .local v0, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v0, :cond_0

    .line 94
    invoke-direct {p0, p4}, Lcom/lge/uicc/framework/IccHandler;->sendExceptionForMessage(Landroid/os/Message;)V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-virtual {v0, p3, p4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method protected loadEFTransparent(IIIILandroid/os/Message;)V
    .locals 1
    .param p1, "slot"    # I
    .param p2, "family"    # I
    .param p3, "fileid"    # I
    .param p4, "size"    # I
    .param p5, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 110
    invoke-static {p1, p2}, Lcom/lge/uicc/framework/IccTools;->getFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 111
    .local v0, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v0, :cond_0

    .line 112
    invoke-direct {p0, p5}, Lcom/lge/uicc/framework/IccHandler;->sendExceptionForMessage(Landroid/os/Message;)V

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-virtual {v0, p3, p4, p5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(IILandroid/os/Message;)V

    goto :goto_0
.end method

.method protected loadEFTransparent(IIILandroid/os/Message;)V
    .locals 1
    .param p1, "slot"    # I
    .param p2, "family"    # I
    .param p3, "fileid"    # I
    .param p4, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 101
    invoke-static {p1, p2}, Lcom/lge/uicc/framework/IccTools;->getFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 102
    .local v0, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v0, :cond_0

    .line 103
    invoke-direct {p0, p4}, Lcom/lge/uicc/framework/IccHandler;->sendExceptionForMessage(Landroid/os/Message;)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-virtual {v0, p3, p4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/uicc/framework/IccHandler;->LOGNAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->logd(Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/uicc/framework/IccHandler;->LOGNAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->loge(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method protected logp(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/uicc/framework/IccHandler;->LOGNAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->logp(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method protected obtainMessage(Lcom/lge/uicc/framework/IccHandler$RecordLoaded;)Landroid/os/Message;
    .locals 1
    .param p1, "loaded"    # Lcom/lge/uicc/framework/IccHandler$RecordLoaded;

    .prologue
    .line 58
    const v0, 0xf4241

    invoke-virtual {p0, v0, p1}, Lcom/lge/uicc/framework/IccHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method protected obtainMessage(Lcom/lge/uicc/framework/IccHandler$RecordUpdated;)Landroid/os/Message;
    .locals 1
    .param p1, "updated"    # Lcom/lge/uicc/framework/IccHandler$RecordUpdated;

    .prologue
    .line 62
    const v0, 0xf4242

    invoke-virtual {p0, v0, p1}, Lcom/lge/uicc/framework/IccHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method protected onRecordLoaded()V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method protected updateEFLinearFixed(IIII[BLjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "slot"    # I
    .param p2, "family"    # I
    .param p3, "fileid"    # I
    .param p4, "recordNum"    # I
    .param p5, "data"    # [B
    .param p6, "pin2"    # Ljava/lang/String;
    .param p7, "onUpdated"    # Landroid/os/Message;

    .prologue
    .line 120
    invoke-static {p1, p2}, Lcom/lge/uicc/framework/IccTools;->getFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 121
    .local v0, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v0, :cond_0

    .line 122
    invoke-direct {p0, p7}, Lcom/lge/uicc/framework/IccHandler;->sendExceptionForMessage(Landroid/os/Message;)V

    .line 126
    :goto_0
    return-void

    :cond_0
    move v1, p3

    move v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 124
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected updateEFTransparent(III[BLandroid/os/Message;)V
    .locals 1
    .param p1, "slot"    # I
    .param p2, "family"    # I
    .param p3, "fileid"    # I
    .param p4, "data"    # [B
    .param p5, "onUpdated"    # Landroid/os/Message;

    .prologue
    .line 129
    invoke-static {p1, p2}, Lcom/lge/uicc/framework/IccTools;->getFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 130
    .local v0, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v0, :cond_0

    .line 131
    invoke-direct {p0, p5}, Lcom/lge/uicc/framework/IccHandler;->sendExceptionForMessage(Landroid/os/Message;)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-virtual {v0, p3, p4, p5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    goto :goto_0
.end method
