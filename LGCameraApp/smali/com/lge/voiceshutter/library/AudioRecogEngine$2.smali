.class Lcom/lge/voiceshutter/library/AudioRecogEngine$2;
.super Ljava/lang/Object;
.source "AudioRecogEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/voiceshutter/library/AudioRecogEngine;->Initialize()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/voiceshutter/library/AudioRecogEngine;


# direct methods
.method constructor <init>(Lcom/lge/voiceshutter/library/AudioRecogEngine;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine$2;->this$0:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 200
    const/4 v0, 0x1

    .line 203
    .local v0, "bAdvance":Z
    iget-object v3, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine$2;->this$0:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    # getter for: Lcom/lge/voiceshutter/library/AudioRecogEngine;->mLGR:Lcom/lge/voiceshutter/library/LGKeyRec;
    invoke-static {v3}, Lcom/lge/voiceshutter/library/AudioRecogEngine;->access$100(Lcom/lge/voiceshutter/library/AudioRecogEngine;)Lcom/lge/voiceshutter/library/LGKeyRec;

    move-result-object v3

    if-nez v3, :cond_0

    .line 204
    iget-object v3, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine$2;->this$0:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    # setter for: Lcom/lge/voiceshutter/library/AudioRecogEngine;->mAbortThread:Z
    invoke-static {v3, v6}, Lcom/lge/voiceshutter/library/AudioRecogEngine;->access$202(Lcom/lge/voiceshutter/library/AudioRecogEngine;Z)Z

    .line 205
    iget-object v3, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine$2;->this$0:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    # getter for: Lcom/lge/voiceshutter/library/AudioRecogEngine;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lge/voiceshutter/library/AudioRecogEngine;->access$300(Lcom/lge/voiceshutter/library/AudioRecogEngine;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 207
    const-string v3, "CameraApp"

    const-string v4, "mEngThread stop! mLGR is null. "

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :goto_0
    return-void

    .line 211
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine$2;->this$0:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    # getter for: Lcom/lge/voiceshutter/library/AudioRecogEngine;->mAbortThread:Z
    invoke-static {v3}, Lcom/lge/voiceshutter/library/AudioRecogEngine;->access$200(Lcom/lge/voiceshutter/library/AudioRecogEngine;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 213
    if-ne v0, v6, :cond_3

    .line 214
    iget-object v3, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine$2;->this$0:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    # getter for: Lcom/lge/voiceshutter/library/AudioRecogEngine;->mLGR:Lcom/lge/voiceshutter/library/LGKeyRec;
    invoke-static {v3}, Lcom/lge/voiceshutter/library/AudioRecogEngine;->access$100(Lcom/lge/voiceshutter/library/AudioRecogEngine;)Lcom/lge/voiceshutter/library/LGKeyRec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/voiceshutter/library/LGKeyRec;->Advance()I

    move-result v2

    .line 221
    .local v2, "event":I
    :goto_2
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 235
    :pswitch_1
    iget-object v3, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine$2;->this$0:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    const-string v4, "recognition results: [[type=RAW, text=OK!!!]]"

    # setter for: Lcom/lge/voiceshutter/library/AudioRecogEngine;->recogResult:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/lge/voiceshutter/library/AudioRecogEngine;->access$502(Lcom/lge/voiceshutter/library/AudioRecogEngine;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    const-string v3, "jaemin.joh"

    iget-object v4, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine$2;->this$0:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    # getter for: Lcom/lge/voiceshutter/library/AudioRecogEngine;->recogResult:Ljava/lang/String;
    invoke-static {v4}, Lcom/lge/voiceshutter/library/AudioRecogEngine;->access$500(Lcom/lge/voiceshutter/library/AudioRecogEngine;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const-string v3, "jaemin.joh"

    const-string v4, "MSG_SHOW_RESULTS_IN_BROWSER"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v3, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine$2;->this$0:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    # getter for: Lcom/lge/voiceshutter/library/AudioRecogEngine;->mRecorder:Lcom/lge/voiceshutter/library/ISTAudioRecorder;
    invoke-static {v3}, Lcom/lge/voiceshutter/library/AudioRecogEngine;->access$400(Lcom/lge/voiceshutter/library/AudioRecogEngine;)Lcom/lge/voiceshutter/library/ISTAudioRecorder;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 245
    iget-object v3, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine$2;->this$0:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    # getter for: Lcom/lge/voiceshutter/library/AudioRecogEngine;->mRecorder:Lcom/lge/voiceshutter/library/ISTAudioRecorder;
    invoke-static {v3}, Lcom/lge/voiceshutter/library/AudioRecogEngine;->access$400(Lcom/lge/voiceshutter/library/AudioRecogEngine;)Lcom/lge/voiceshutter/library/ISTAudioRecorder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->stop()V

    .line 248
    :cond_1
    iget-object v3, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine$2;->this$0:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    # getter for: Lcom/lge/voiceshutter/library/AudioRecogEngine;->mLGR:Lcom/lge/voiceshutter/library/LGKeyRec;
    invoke-static {v3}, Lcom/lge/voiceshutter/library/AudioRecogEngine;->access$100(Lcom/lge/voiceshutter/library/AudioRecogEngine;)Lcom/lge/voiceshutter/library/LGKeyRec;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 250
    iget-object v3, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine$2;->this$0:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    # getter for: Lcom/lge/voiceshutter/library/AudioRecogEngine;->mLGR:Lcom/lge/voiceshutter/library/LGKeyRec;
    invoke-static {v3}, Lcom/lge/voiceshutter/library/AudioRecogEngine;->access$100(Lcom/lge/voiceshutter/library/AudioRecogEngine;)Lcom/lge/voiceshutter/library/LGKeyRec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/voiceshutter/library/LGKeyRec;->Stop()V

    .line 253
    :cond_2
    iget-object v3, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine$2;->this$0:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    # setter for: Lcom/lge/voiceshutter/library/AudioRecogEngine;->mAbortThread:Z
    invoke-static {v3, v6}, Lcom/lge/voiceshutter/library/AudioRecogEngine;->access$202(Lcom/lge/voiceshutter/library/AudioRecogEngine;Z)Z

    .line 254
    iget-object v3, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine$2;->this$0:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    # getter for: Lcom/lge/voiceshutter/library/AudioRecogEngine;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lge/voiceshutter/library/AudioRecogEngine;->access$300(Lcom/lge/voiceshutter/library/AudioRecogEngine;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 255
    iget-object v3, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine$2;->this$0:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    # getter for: Lcom/lge/voiceshutter/library/AudioRecogEngine;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lge/voiceshutter/library/AudioRecogEngine;->access$300(Lcom/lge/voiceshutter/library/AudioRecogEngine;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 256
    iget-object v3, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine$2;->this$0:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    # getter for: Lcom/lge/voiceshutter/library/AudioRecogEngine;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lge/voiceshutter/library/AudioRecogEngine;->access$300(Lcom/lge/voiceshutter/library/AudioRecogEngine;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 217
    .end local v2    # "event":I
    :cond_3
    const/16 v2, 0x8

    .line 218
    .restart local v2    # "event":I
    const/4 v0, 0x1

    goto :goto_2

    .line 223
    :pswitch_2
    iget-object v3, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine$2;->this$0:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    # getter for: Lcom/lge/voiceshutter/library/AudioRecogEngine;->mRecorder:Lcom/lge/voiceshutter/library/ISTAudioRecorder;
    invoke-static {v3}, Lcom/lge/voiceshutter/library/AudioRecogEngine;->access$400(Lcom/lge/voiceshutter/library/AudioRecogEngine;)Lcom/lge/voiceshutter/library/ISTAudioRecorder;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 224
    iget-object v3, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine$2;->this$0:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    # getter for: Lcom/lge/voiceshutter/library/AudioRecogEngine;->mRecorder:Lcom/lge/voiceshutter/library/ISTAudioRecorder;
    invoke-static {v3}, Lcom/lge/voiceshutter/library/AudioRecogEngine;->access$400(Lcom/lge/voiceshutter/library/AudioRecogEngine;)Lcom/lge/voiceshutter/library/ISTAudioRecorder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->getBuffer()[B

    move-result-object v1

    .line 225
    .local v1, "buf":[B
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine$2;->this$0:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    # getter for: Lcom/lge/voiceshutter/library/AudioRecogEngine;->mLGR:Lcom/lge/voiceshutter/library/LGKeyRec;
    invoke-static {v3}, Lcom/lge/voiceshutter/library/AudioRecogEngine;->access$100(Lcom/lge/voiceshutter/library/AudioRecogEngine;)Lcom/lge/voiceshutter/library/LGKeyRec;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 226
    iget-object v3, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine$2;->this$0:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    # getter for: Lcom/lge/voiceshutter/library/AudioRecogEngine;->mLGR:Lcom/lge/voiceshutter/library/LGKeyRec;
    invoke-static {v3}, Lcom/lge/voiceshutter/library/AudioRecogEngine;->access$100(Lcom/lge/voiceshutter/library/AudioRecogEngine;)Lcom/lge/voiceshutter/library/LGKeyRec;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v1, v7, v4, v7}, Lcom/lge/voiceshutter/library/LGKeyRec;->PutAudio([BIIZ)V

    goto/16 :goto_1

    .line 228
    :cond_4
    const-wide/16 v4, 0x19

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 229
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 263
    .end local v1    # "buf":[B
    .end local v2    # "event":I
    :cond_5
    const-string v3, "guejun.jung"

    const-string v4, "thread break"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 221
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
