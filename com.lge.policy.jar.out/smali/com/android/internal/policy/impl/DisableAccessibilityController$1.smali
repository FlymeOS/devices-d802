.class Lcom/android/internal/policy/impl/DisableAccessibilityController$1;
.super Landroid/os/Handler;
.source "DisableAccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/DisableAccessibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/DisableAccessibilityController;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/DisableAccessibilityController;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController$1;->this$0:Lcom/android/internal/policy/impl/DisableAccessibilityController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 63
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 85
    :goto_0
    return-void

    .line 65
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController$1;->this$0:Lcom/android/internal/policy/impl/DisableAccessibilityController;

    # getter for: Lcom/android/internal/policy/impl/DisableAccessibilityController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/DisableAccessibilityController;->access$000(Lcom/android/internal/policy/impl/DisableAccessibilityController;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/lge/internal/R$string;->continue_to_disable_talkback:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController$1;->this$0:Lcom/android/internal/policy/impl/DisableAccessibilityController;

    # getter for: Lcom/android/internal/policy/impl/DisableAccessibilityController;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lcom/android/internal/policy/impl/DisableAccessibilityController;->access$100(Lcom/android/internal/policy/impl/DisableAccessibilityController;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_0

    .line 69
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController$1;->this$0:Lcom/android/internal/policy/impl/DisableAccessibilityController;

    # getter for: Lcom/android/internal/policy/impl/DisableAccessibilityController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/DisableAccessibilityController;->access$000(Lcom/android/internal/policy/impl/DisableAccessibilityController;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/lge/internal/R$string;->talkback_off:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    .restart local v0    # "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController$1;->this$0:Lcom/android/internal/policy/impl/DisableAccessibilityController;

    # getter for: Lcom/android/internal/policy/impl/DisableAccessibilityController;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lcom/android/internal/policy/impl/DisableAccessibilityController;->access$100(Lcom/android/internal/policy/impl/DisableAccessibilityController;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_0

    .line 73
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController$1;->this$0:Lcom/android/internal/policy/impl/DisableAccessibilityController;

    # getter for: Lcom/android/internal/policy/impl/DisableAccessibilityController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/DisableAccessibilityController;->access$000(Lcom/android/internal/policy/impl/DisableAccessibilityController;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040639

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    .restart local v0    # "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController$1;->this$0:Lcom/android/internal/policy/impl/DisableAccessibilityController;

    # getter for: Lcom/android/internal/policy/impl/DisableAccessibilityController;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lcom/android/internal/policy/impl/DisableAccessibilityController;->access$100(Lcom/android/internal/policy/impl/DisableAccessibilityController;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_0

    .line 77
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController$1;->this$0:Lcom/android/internal/policy/impl/DisableAccessibilityController;

    # invokes: Lcom/android/internal/policy/impl/DisableAccessibilityController;->disableAccessibility()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/DisableAccessibilityController;->access$200(Lcom/android/internal/policy/impl/DisableAccessibilityController;)V

    .line 78
    iget-object v1, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController$1;->this$0:Lcom/android/internal/policy/impl/DisableAccessibilityController;

    # getter for: Lcom/android/internal/policy/impl/DisableAccessibilityController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/DisableAccessibilityController;->access$000(Lcom/android/internal/policy/impl/DisableAccessibilityController;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/lge/internal/R$string;->talkback_off:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    .restart local v0    # "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController$1;->this$0:Lcom/android/internal/policy/impl/DisableAccessibilityController;

    # getter for: Lcom/android/internal/policy/impl/DisableAccessibilityController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/DisableAccessibilityController;->access$000(Lcom/android/internal/policy/impl/DisableAccessibilityController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 80
    iget-object v1, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController$1;->this$0:Lcom/android/internal/policy/impl/DisableAccessibilityController;

    # getter for: Lcom/android/internal/policy/impl/DisableAccessibilityController;->mTone:Landroid/media/Ringtone;
    invoke-static {v1}, Lcom/android/internal/policy/impl/DisableAccessibilityController;->access$300(Lcom/android/internal/policy/impl/DisableAccessibilityController;)Landroid/media/Ringtone;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
