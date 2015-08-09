.class Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$1;
.super Ljava/lang/Object;
.source "SmartCoverServiceDelegate.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 58
    const-string v0, "SmartCoverServiceDelegate"

    const-string v1, "*** Cover connected (yay!)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;

    new-instance v1, Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;

    invoke-static {p2}, Lcom/android/internal/policy/ISmartCoverViewManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/ISmartCoverViewManagerService;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;-><init>(Lcom/android/internal/policy/ISmartCoverViewManagerService;)V

    iput-object v1, v0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mSmartCoverService:Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;

    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;

    # getter for: Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mCoverState:Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$CoverState;
    invoke-static {v0}, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->access$000(Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;)Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$CoverState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$CoverState;->systemIsReady:Z

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;

    iget-object v0, v0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mSmartCoverService:Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;->onSystemReady()V

    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;

    iget-object v0, v0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mSmartCoverService:Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;->onScreenTurnedOn()V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;

    # getter for: Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mCoverState:Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$CoverState;
    invoke-static {v0}, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->access$000(Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;)Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$CoverState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$CoverState;->bootCompleted:Z

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;

    iget-object v0, v0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mSmartCoverService:Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;->onBootCompleted()V

    .line 70
    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 74
    const-string v0, "SmartCoverServiceDelegate"

    const-string v1, "*** Cover disconnected (boo!)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mSmartCoverService:Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;

    .line 76
    return-void
.end method
