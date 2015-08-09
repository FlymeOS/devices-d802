.class Lcom/android/internal/policy/impl/RestartAction$2;
.super Ljava/lang/Object;
.source "RestartAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/RestartAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/RestartAction;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/RestartAction;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/internal/policy/impl/RestartAction$2;->this$0:Lcom/android/internal/policy/impl/RestartAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 239
    sget-boolean v0, Lcom/android/internal/policy/impl/SmartCoverUtil;->mViewCoverClosed:Z

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction$2;->this$0:Lcom/android/internal/policy/impl/RestartAction;

    # invokes: Lcom/android/internal/policy/impl/RestartAction;->showRestartActionDialog()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/RestartAction;->access$500(Lcom/android/internal/policy/impl/RestartAction;)V

    .line 242
    :cond_0
    return-void
.end method
