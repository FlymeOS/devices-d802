.class Lcom/android/internal/policy/impl/DisableAccessibilityController$2;
.super Ljava/lang/Object;
.source "DisableAccessibilityController.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/DisableAccessibilityController;-><init>(Landroid/content/Context;)V
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
    .line 114
    iput-object p1, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController$2;->this$0:Lcom/android/internal/policy/impl/DisableAccessibilityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController$2;->this$0:Lcom/android/internal/policy/impl/DisableAccessibilityController;

    # getter for: Lcom/android/internal/policy/impl/DisableAccessibilityController;->mDestroyed:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/DisableAccessibilityController;->access$400(Lcom/android/internal/policy/impl/DisableAccessibilityController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController$2;->this$0:Lcom/android/internal/policy/impl/DisableAccessibilityController;

    # getter for: Lcom/android/internal/policy/impl/DisableAccessibilityController;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v0}, Lcom/android/internal/policy/impl/DisableAccessibilityController;->access$100(Lcom/android/internal/policy/impl/DisableAccessibilityController;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 120
    :cond_0
    return-void
.end method
