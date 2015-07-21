.class Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx$3;
.super Ljava/lang/Object;
.source "CdmaServiceStateTrackerEx.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;->setMediaPlayerForEriSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;)V
    .locals 0

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;->clearVZWERISound()V

    .line 1057
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;

    # invokes: Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;->sendBroadcastForEriFinish()V
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;->access$400(Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;)V

    .line 1058
    return-void
.end method
