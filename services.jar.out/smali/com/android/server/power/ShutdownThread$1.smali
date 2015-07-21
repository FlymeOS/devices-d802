.class final Lcom/android/server/power/ShutdownThread$1;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$restrictPoweroff:Z


# direct methods
.method constructor <init>(ZLandroid/content/Context;)V
    .locals 0

    .prologue
    .line 238
    iput-boolean p1, p0, Lcom/android/server/power/ShutdownThread$1;->val$restrictPoweroff:Z

    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/android/server/power/ShutdownThread$1;->val$restrictPoweroff:Z

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/server/power/ShutdownThread;->checkNoAutoBoot(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$000(Landroid/content/Context;)V

    .line 243
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$100(Landroid/content/Context;)V

    .line 246
    :cond_0
    return-void
.end method
