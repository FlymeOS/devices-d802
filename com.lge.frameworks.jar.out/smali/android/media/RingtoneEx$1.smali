.class Landroid/media/RingtoneEx$1;
.super Ljava/lang/Object;
.source "RingtoneEx.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RingtoneEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RingtoneEx;


# direct methods
.method constructor <init>(Landroid/media/RingtoneEx;)V
    .locals 0

    .prologue
    .line 769
    iput-object p1, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v1, 0x1

    .line 771
    packed-switch p2, :pswitch_data_0

    .line 779
    iget-object v2, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    iget-object v2, v2, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_2

    .line 780
    iget-object v2, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    # getter for: Landroid/media/RingtoneEx;->mErrorCheck:I
    invoke-static {v2}, Landroid/media/RingtoneEx;->access$000(Landroid/media/RingtoneEx;)I

    move-result v2

    if-nez v2, :cond_0

    .line 781
    const-string v2, "RingtoneEx"

    const-string v3, "LocalPlayer play a default ringtone."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v2, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    # setter for: Landroid/media/RingtoneEx;->mErrorCheck:I
    invoke-static {v2, v1}, Landroid/media/RingtoneEx;->access$002(Landroid/media/RingtoneEx;I)I

    .line 783
    iget-object v1, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    iget-object v1, v1, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 784
    iget-object v1, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/media/RingtoneEx;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 786
    iget-object v1, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    invoke-virtual {v1}, Landroid/media/RingtoneEx;->playFallbackRingtone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 787
    iget-object v1, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    const/4 v2, 0x2

    # setter for: Landroid/media/RingtoneEx;->mErrorCheck:I
    invoke-static {v1, v2}, Landroid/media/RingtoneEx;->access$002(Landroid/media/RingtoneEx;I)I

    .line 801
    :cond_0
    :goto_0
    const/4 v1, 0x0

    :cond_1
    :goto_1
    return v1

    .line 773
    :pswitch_0
    iget-object v2, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    # getter for: Landroid/media/RingtoneEx;->mErrorCheck:I
    invoke-static {v2}, Landroid/media/RingtoneEx;->access$000(Landroid/media/RingtoneEx;)I

    move-result v2

    if-nez v2, :cond_1

    .line 774
    iget-object v2, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    # setter for: Landroid/media/RingtoneEx;->mErrorCheck:I
    invoke-static {v2, v1}, Landroid/media/RingtoneEx;->access$002(Landroid/media/RingtoneEx;I)I

    .line 775
    iget-object v2, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    invoke-virtual {v2}, Landroid/media/RingtoneEx;->stop()V

    goto :goto_1

    .line 791
    :cond_2
    iget-object v1, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    iget-boolean v1, v1, Landroid/media/RingtoneEx;->mAllowRemote:Z

    if-eqz v1, :cond_0

    .line 793
    :try_start_0
    const-string v1, "RingtoneEx"

    const-string v2, "RemotePlayer play a default ringtone."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iget-object v1, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    iget-object v1, v1, Landroid/media/RingtoneEx;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v2, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    iget-object v2, v2, Landroid/media/RingtoneEx;->mRemoteToken:Landroid/os/Binder;

    iget-object v3, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    # invokes: Landroid/media/RingtoneEx;->getDefaultPath()Ljava/lang/String;
    invoke-static {v3}, Landroid/media/RingtoneEx;->access$100(Landroid/media/RingtoneEx;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Landroid/media/RingtoneEx$1;->this$0:Landroid/media/RingtoneEx;

    iget-object v4, v4, Landroid/media/RingtoneEx;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-interface {v1, v2, v3, v4}, Landroid/media/IRingtonePlayer;->play(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 795
    :catch_0
    move-exception v0

    .line 796
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RingtoneEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem playing default ringtone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 771
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
