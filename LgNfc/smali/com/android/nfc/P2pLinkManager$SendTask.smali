.class Lcom/android/nfc/P2pLinkManager$SendTask;
.super Landroid/os/AsyncTask;
.source "P2pLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/P2pLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field handoverClient:Lcom/android/nfc/handover/HandoverClient;

.field nppClient:Lcom/android/nfc/ndefpush/NdefPushClient;

.field snepClient:Lcom/android/nfc/snep/SnepClient;

.field final synthetic this$0:Lcom/android/nfc/P2pLinkManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/P2pLinkManager;)V
    .locals 0

    .prologue
    .line 799
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method doHandover([Landroid/net/Uri;)I
    .locals 5
    .param p1, "uris"    # [Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 805
    const/4 v1, 0x0

    .line 806
    .local v1, "response":Landroid/nfc/NdefMessage;
    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v4, v4, Lcom/android/nfc/P2pLinkManager;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v4}, Lcom/android/nfc/handover/HandoverManager;->createHandoverRequestMessage()Landroid/nfc/NdefMessage;

    move-result-object v0

    .line 807
    .local v0, "request":Landroid/nfc/NdefMessage;
    if-eqz v0, :cond_2

    .line 808
    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    if-eqz v4, :cond_0

    .line 809
    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    invoke-virtual {v4, v0}, Lcom/android/nfc/handover/HandoverClient;->sendHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;

    move-result-object v1

    .line 811
    :cond_0
    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    if-eqz v4, :cond_1

    .line 815
    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    invoke-virtual {v4, v0}, Lcom/android/nfc/snep/SnepClient;->get(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v2

    .line 816
    .local v2, "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    invoke-virtual {v2}, Lcom/android/nfc/snep/SnepMessage;->getNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v1

    .line 818
    .end local v2    # "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    :cond_1
    if-nez v1, :cond_3

    .line 825
    :cond_2
    :goto_0
    return v3

    .line 824
    :cond_3
    iget-object v3, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v3, v3, Lcom/android/nfc/P2pLinkManager;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v3, p1, v1}, Lcom/android/nfc/handover/HandoverManager;->doHandoverUri([Landroid/net/Uri;Landroid/nfc/NdefMessage;)V

    .line 825
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 799
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/P2pLinkManager$SendTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 12
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    const/4 v11, 0x0

    .line 841
    const/4 v3, 0x0

    .line 843
    .local v3, "result":Z
    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    monitor-enter v9

    .line 844
    :try_start_0
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget v8, v8, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v10, 0x3

    if-ne v8, v10, :cond_0

    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget v8, v8, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    const/4 v10, 0x4

    if-eq v8, v10, :cond_1

    .line 845
    :cond_0
    monitor-exit v9

    .line 918
    :goto_0
    return-object v11

    .line 847
    :cond_1
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v2, v8, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 848
    .local v2, "m":Landroid/nfc/NdefMessage;
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v5, v8, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 849
    .local v5, "uris":[Landroid/net/Uri;
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v8, v8, Lcom/android/nfc/P2pLinkManager;->mSnepClient:Lcom/android/nfc/snep/SnepClient;

    iput-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    .line 850
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v8, v8, Lcom/android/nfc/P2pLinkManager;->mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

    iput-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    .line 851
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v8, v8, Lcom/android/nfc/P2pLinkManager;->mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    iput-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->nppClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    .line 852
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 854
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 856
    .local v6, "time":J
    if-eqz v5, :cond_3

    .line 857
    sget-boolean v8, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    if-eqz v8, :cond_2

    const-string v8, "NfcP2pLinkManager"

    const-string v9, "Trying handover request"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_2
    :try_start_1
    invoke-virtual {p0, v5}, Lcom/android/nfc/P2pLinkManager$SendTask;->doHandover([Landroid/net/Uri;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 860
    .local v1, "handoverResult":I
    packed-switch v1, :pswitch_data_0

    .line 878
    .end local v1    # "handoverResult":I
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    if-eqz v8, :cond_4

    .line 880
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/android/nfc/P2pLinkManager$SendTask;->tryWPSHandover(Landroid/nfc/NdefMessage;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    .line 887
    :cond_4
    :goto_2
    if-nez v3, :cond_6

    if-eqz v2, :cond_6

    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    if-eqz v8, :cond_6

    .line 888
    sget-boolean v8, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    if-eqz v8, :cond_5

    const-string v8, "NfcP2pLinkManager"

    const-string v9, "Sending ndef via SNEP"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_5
    :try_start_3
    invoke-virtual {p0, v2}, Lcom/android/nfc/P2pLinkManager$SendTask;->doSnepProtocol(Landroid/nfc/NdefMessage;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v4

    .line 891
    .local v4, "snepResult":I
    packed-switch v4, :pswitch_data_1

    .line 899
    const/4 v3, 0x0

    .line 906
    .end local v4    # "snepResult":I
    :cond_6
    :goto_3
    if-nez v3, :cond_7

    if-eqz v2, :cond_7

    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->nppClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    if-eqz v8, :cond_7

    .line 907
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->nppClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    invoke-virtual {v8, v2}, Lcom/android/nfc/ndefpush/NdefPushClient;->push(Landroid/nfc/NdefMessage;)Z

    move-result v3

    .line 910
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v6, v8, v6

    .line 911
    sget-boolean v8, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    if-eqz v8, :cond_8

    const-string v8, "NfcP2pLinkManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SendTask result="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", time ms="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :cond_8
    if-eqz v3, :cond_9

    .line 913
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v8, v2, v6, v7}, Lcom/android/nfc/P2pLinkManager;->onSendComplete(Landroid/nfc/NdefMessage;J)V

    .line 916
    :cond_9
    invoke-virtual {p0, v3}, Lcom/android/nfc/P2pLinkManager$SendTask;->sendresultMessageforfinishBeamUI(Z)V

    goto/16 :goto_0

    .line 852
    .end local v2    # "m":Landroid/nfc/NdefMessage;
    .end local v5    # "uris":[Landroid/net/Uri;
    .end local v6    # "time":J
    :catchall_0
    move-exception v8

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v8

    .line 862
    .restart local v1    # "handoverResult":I
    .restart local v2    # "m":Landroid/nfc/NdefMessage;
    .restart local v5    # "uris":[Landroid/net/Uri;
    .restart local v6    # "time":J
    :pswitch_0
    const/4 v3, 0x1

    .line 863
    goto :goto_1

    .line 865
    :pswitch_1
    const/4 v3, 0x0

    .line 866
    goto :goto_1

    .line 868
    :pswitch_2
    const/4 v3, 0x0

    .line 869
    :try_start_5
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v8}, Lcom/android/nfc/P2pLinkManager;->onHandoverUnsupported()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 872
    .end local v1    # "handoverResult":I
    :catch_0
    move-exception v0

    .line 873
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_1

    .line 881
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 882
    .restart local v0    # "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_2

    .line 893
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "snepResult":I
    :pswitch_3
    const/4 v3, 0x1

    .line 894
    goto :goto_3

    .line 896
    :pswitch_4
    const/4 v3, 0x0

    .line 897
    goto :goto_3

    .line 901
    .end local v4    # "snepResult":I
    :catch_2
    move-exception v0

    .line 902
    .restart local v0    # "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_3

    .line 860
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 891
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method doSnepProtocol(Landroid/nfc/NdefMessage;)I
    .locals 1
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 829
    if-eqz p1, :cond_0

    .line 830
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    invoke-virtual {v0, p1}, Lcom/android/nfc/snep/SnepClient;->put(Landroid/nfc/NdefMessage;)V

    .line 831
    const/4 v0, 0x0

    .line 833
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected sendresultMessageforfinishBeamUI(Z)V
    .locals 0
    .param p1, "result"    # Z

    .prologue
    .line 922
    return-void
.end method

.method protected tryWPSHandover(Landroid/nfc/NdefMessage;)Z
    .locals 2
    .param p1, "m"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 927
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "Trying WPShandover request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    const/4 v0, 0x0

    return v0
.end method
