.class Lcom/android/internal/telephony/IMSPhone$MyHandler;
.super Landroid/os/Handler;
.source "IMSPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IMSPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IMSPhone;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/IMSPhone;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/internal/telephony/IMSPhone$MyHandler;->this$0:Lcom/android/internal/telephony/IMSPhone;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/IMSPhone;Lcom/android/internal/telephony/IMSPhone$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/IMSPhone;
    .param p2, "x1"    # Lcom/android/internal/telephony/IMSPhone$1;

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IMSPhone$MyHandler;-><init>(Lcom/android/internal/telephony/IMSPhone;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 310
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    move-object v1, v13

    check-cast v1, Landroid/os/AsyncResult;

    .line 312
    .local v1, "ar":Landroid/os/AsyncResult;
    # getter for: Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 313
    const-string v13, "LGIMS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleMessage :: event ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    if-nez v1, :cond_2

    .line 317
    # getter for: Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 318
    const-string v13, "LGIMS"

    const-string v14, "ar is null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_1
    :goto_0
    return-void

    .line 323
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->getSysMonitor()Lcom/android/internal/telephony/ISysMonitor;

    move-result-object v10

    .line 325
    .local v10, "sysMonitor":Lcom/android/internal/telephony/ISysMonitor;
    if-nez v10, :cond_3

    .line 326
    # getter for: Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 327
    const-string v13, "LGIMS"

    const-string v14, "SysMonitor is null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 332
    :cond_3
    iget-object v13, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v13, :cond_7

    .line 333
    # getter for: Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 334
    const-string v13, "LGIMS"

    const-string v14, "ar.exception is not null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_4
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    const/16 v14, 0x65

    if-eq v13, v14, :cond_5

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    const/16 v14, 0x66

    if-ne v13, v14, :cond_1

    .line 339
    :cond_5
    iget-object v5, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    .line 342
    .local v5, "fileId":Ljava/lang/Integer;
    const/4 v13, 0x3

    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x0

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-interface {v10, v13, v14, v15, v0}, Lcom/android/internal/telephony/ISysMonitor;->onPhoneStateChanged(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 343
    :catch_0
    move-exception v3

    .line 344
    .local v3, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 345
    const-string v13, "LGIMS"

    const-string v14, "Unexpected remote exception"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/IMSPhone$MyHandler;->this$0:Lcom/android/internal/telephony/IMSPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/IMSPhone;->handleRemoteException()V

    goto :goto_0

    .line 353
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v5    # "fileId":Ljava/lang/Integer;
    :cond_7
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_0

    .line 587
    :pswitch_0
    # getter for: Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 588
    const-string v13, "LGIMS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown event ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 386
    :pswitch_1
    # getter for: Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 387
    const-string v13, "LGIMS"

    const-string v14, "RIL_RESPONSE received"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 395
    :pswitch_2
    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v13, :cond_a

    .line 396
    # getter for: Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 397
    const-string v13, "LGIMS"

    const-string v14, "ar.result is null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_8
    iget-object v5, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    .line 403
    .restart local v5    # "fileId":Ljava/lang/Integer;
    const/4 v13, 0x3

    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x0

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-interface {v10, v13, v14, v15, v0}, Lcom/android/internal/telephony/ISysMonitor;->onPhoneStateChanged(IIILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 404
    :catch_1
    move-exception v3

    .line 405
    .restart local v3    # "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 406
    const-string v13, "LGIMS"

    const-string v14, "Unexpected remote exception"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/IMSPhone$MyHandler;->this$0:Lcom/android/internal/telephony/IMSPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/IMSPhone;->handleRemoteException()V

    goto/16 :goto_0

    .line 413
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v5    # "fileId":Ljava/lang/Integer;
    :cond_a
    iget-object v5, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    .line 415
    .restart local v5    # "fileId":Ljava/lang/Integer;
    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, Ljava/util/ArrayList;

    move-object v4, v13

    check-cast v4, Ljava/util/ArrayList;

    .line 416
    .local v4, "efRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const-string v2, ""

    .line 418
    .local v2, "data":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v6, v13, :cond_c

    .line 419
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    invoke-static {v13}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    .line 421
    .local v11, "tmp":Ljava/lang/String;
    if-eqz v11, :cond_b

    .line 422
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 425
    :cond_b
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "Z"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 418
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 429
    .end local v11    # "tmp":Ljava/lang/String;
    :cond_c
    const/4 v13, 0x3

    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x0

    invoke-interface {v10, v13, v14, v15, v2}, Lcom/android/internal/telephony/ISysMonitor;->onPhoneStateChanged(IIILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 430
    :catch_2
    move-exception v3

    .line 431
    .restart local v3    # "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 432
    const-string v13, "LGIMS"

    const-string v14, "Unexpected remote exception"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 434
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/IMSPhone$MyHandler;->this$0:Lcom/android/internal/telephony/IMSPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/IMSPhone;->handleRemoteException()V

    goto/16 :goto_0

    .line 441
    .end local v2    # "data":Ljava/lang/String;
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "efRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v5    # "fileId":Ljava/lang/Integer;
    .end local v6    # "i":I
    :pswitch_3
    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v13, :cond_10

    .line 442
    # getter for: Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 443
    const-string v13, "LGIMS"

    const-string v14, "ar.result is null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_e
    iget-object v5, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    .line 449
    .restart local v5    # "fileId":Ljava/lang/Integer;
    const/4 v13, 0x3

    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x0

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-interface {v10, v13, v14, v15, v0}, Lcom/android/internal/telephony/ISysMonitor;->onPhoneStateChanged(IIILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 450
    :catch_3
    move-exception v3

    .line 451
    .restart local v3    # "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v13

    if-eqz v13, :cond_f

    .line 452
    const-string v13, "LGIMS"

    const-string v14, "Unexpected remote exception"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 454
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/IMSPhone$MyHandler;->this$0:Lcom/android/internal/telephony/IMSPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/IMSPhone;->handleRemoteException()V

    goto/16 :goto_0

    .line 459
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v5    # "fileId":Ljava/lang/Integer;
    :cond_10
    iget-object v5, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    .line 460
    .restart local v5    # "fileId":Ljava/lang/Integer;
    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [B

    check-cast v13, [B

    invoke-static {v13}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 463
    .restart local v2    # "data":Ljava/lang/String;
    const/4 v13, 0x3

    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x0

    invoke-interface {v10, v13, v14, v15, v2}, Lcom/android/internal/telephony/ISysMonitor;->onPhoneStateChanged(IIILjava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 464
    :catch_4
    move-exception v3

    .line 465
    .restart local v3    # "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v13

    if-eqz v13, :cond_11

    .line 466
    const-string v13, "LGIMS"

    const-string v14, "Unexpected remote exception"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 468
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/IMSPhone$MyHandler;->this$0:Lcom/android/internal/telephony/IMSPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/IMSPhone;->handleRemoteException()V

    goto/16 :goto_0

    .line 476
    .end local v2    # "data":Ljava/lang/String;
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v5    # "fileId":Ljava/lang/Integer;
    :pswitch_4
    # getter for: Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 477
    const-string v13, "LGIMS"

    const-string v14, "RIL_IMS_STAUS_SET_DONE_FOR_DAN received"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 484
    :pswitch_5
    iget-object v5, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    .line 486
    .restart local v5    # "fileId":Ljava/lang/Integer;
    # getter for: Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 487
    const-string v13, "LGIMS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "RIL_IMS_SET_E911_STATE received fileId "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 495
    .end local v5    # "fileId":Ljava/lang/Integer;
    :pswitch_6
    # getter for: Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 496
    const-string v13, "LGIMS"

    const-string v14, "RIL_IMS_STATUS_FOR_UICC received"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 503
    :pswitch_7
    # getter for: Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 504
    const-string v13, "LGIMS"

    const-string v14, "RIL_RESPONSE_UPDATE_REG_STATE received"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 511
    :pswitch_8
    # getter for: Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 512
    const-string v13, "LGIMS"

    const-string v14, "RIL_RESPONSE_VOICE_DOMAIN received"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 519
    :pswitch_9
    # getter for: Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 520
    const-string v13, "LGIMS"

    const-string v14, "RIL_RESPONSE_VOLTE_CALL_STATE received"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 528
    :pswitch_a
    :try_start_5
    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [I

    move-object v0, v13

    check-cast v0, [I

    move-object v7, v0

    .line 529
    .local v7, "ret":[I
    array-length v8, v7

    .line 531
    .local v8, "ret_length":I
    const-string v13, "LGIMS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "result length = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/4 v13, 0x1

    if-le v8, v13, :cond_1

    .line 534
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/IMSPhone$MyHandler;->this$0:Lcom/android/internal/telephony/IMSPhone;

    const/4 v14, 0x0

    aget v14, v7, v14

    # setter for: Lcom/android/internal/telephony/IMSPhone;->mSysMode:I
    invoke-static {v13, v14}, Lcom/android/internal/telephony/IMSPhone;->access$202(Lcom/android/internal/telephony/IMSPhone;I)I

    .line 535
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/IMSPhone$MyHandler;->this$0:Lcom/android/internal/telephony/IMSPhone;

    const/4 v14, 0x1

    aget v14, v7, v14

    # setter for: Lcom/android/internal/telephony/IMSPhone;->mImsPrefState:I
    invoke-static {v13, v14}, Lcom/android/internal/telephony/IMSPhone;->access$302(Lcom/android/internal/telephony/IMSPhone;I)I

    .line 537
    const-string v13, "LGIMS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ims pref ind :: sys mode = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IMSPhone$MyHandler;->this$0:Lcom/android/internal/telephony/IMSPhone;

    # getter for: Lcom/android/internal/telephony/IMSPhone;->mSysMode:I
    invoke-static {v15}, Lcom/android/internal/telephony/IMSPhone;->access$200(Lcom/android/internal/telephony/IMSPhone;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " , pref state = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IMSPhone$MyHandler;->this$0:Lcom/android/internal/telephony/IMSPhone;

    # getter for: Lcom/android/internal/telephony/IMSPhone;->mImsPrefState:I
    invoke-static {v15}, Lcom/android/internal/telephony/IMSPhone;->access$300(Lcom/android/internal/telephony/IMSPhone;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const/4 v13, 0x4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IMSPhone$MyHandler;->this$0:Lcom/android/internal/telephony/IMSPhone;

    # getter for: Lcom/android/internal/telephony/IMSPhone;->mSysMode:I
    invoke-static {v14}, Lcom/android/internal/telephony/IMSPhone;->access$200(Lcom/android/internal/telephony/IMSPhone;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IMSPhone$MyHandler;->this$0:Lcom/android/internal/telephony/IMSPhone;

    # getter for: Lcom/android/internal/telephony/IMSPhone;->mImsPrefState:I
    invoke-static {v15}, Lcom/android/internal/telephony/IMSPhone;->access$300(Lcom/android/internal/telephony/IMSPhone;)I

    move-result v15

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-interface {v10, v13, v14, v15, v0}, Lcom/android/internal/telephony/ISysMonitor;->onPhoneStateChanged(IIILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 540
    .end local v7    # "ret":[I
    .end local v8    # "ret_length":I
    :catch_5
    move-exception v3

    .line 541
    .restart local v3    # "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/internal/telephony/IMSPhone;->DEBUG_LOG:Z
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v13

    if-eqz v13, :cond_12

    .line 542
    const-string v13, "LGIMS"

    const-string v14, "Unexpected remote exception"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 544
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/IMSPhone$MyHandler;->this$0:Lcom/android/internal/telephony/IMSPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/IMSPhone;->handleRemoteException()V

    goto/16 :goto_0

    .line 561
    .end local v3    # "e":Landroid/os/RemoteException;
    :pswitch_b
    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [I

    move-object v7, v13

    check-cast v7, [I

    .line 562
    .restart local v7    # "ret":[I
    array-length v8, v7

    .line 564
    .restart local v8    # "ret_length":I
    const-string v13, "LGIMS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "result length = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const/4 v13, 0x3

    if-le v8, v13, :cond_1

    .line 567
    const-string v13, "LGIMS"

    const-string v14, "send ssac intent"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    new-instance v12, Landroid/content/Intent;

    const-string v13, "com.lge.ims.action.LTE_CONNECTION_STATUS"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 570
    .local v12, "updateLteStatus":Landroid/content/Intent;
    const/4 v13, 0x5

    new-array v9, v13, [I

    .line 572
    .local v9, "ssac":[I
    const/4 v13, 0x0

    const/16 v14, 0x13

    aput v14, v9, v13

    .line 573
    const/4 v13, 0x1

    const/4 v14, 0x0

    aget v14, v7, v14

    aput v14, v9, v13

    .line 574
    const/4 v13, 0x2

    const/4 v14, 0x1

    aget v14, v7, v14

    aput v14, v9, v13

    .line 575
    const/4 v13, 0x3

    const/4 v14, 0x2

    aget v14, v7, v14

    aput v14, v9, v13

    .line 576
    const/4 v13, 0x4

    const/4 v14, 0x3

    aget v14, v7, v14

    aput v14, v9, v13

    .line 578
    const-string v13, "status"

    invoke-virtual {v12, v13, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 579
    const/16 v13, 0x20

    invoke-virtual {v12, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 580
    # getter for: Lcom/android/internal/telephony/IMSPhone;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$400()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 353
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
