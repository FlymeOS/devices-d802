.class Lcom/lge/camera/util/OnScreenHint$2;
.super Ljava/lang/Object;
.source "OnScreenHint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/util/OnScreenHint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/util/OnScreenHint;


# direct methods
.method constructor <init>(Lcom/lge/camera/util/OnScreenHint;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/lge/camera/util/OnScreenHint$2;->this$0:Lcom/lge/camera/util/OnScreenHint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/lge/camera/util/OnScreenHint$2;->this$0:Lcom/lge/camera/util/OnScreenHint;

    # invokes: Lcom/lge/camera/util/OnScreenHint;->handleHide()V
    invoke-static {v0}, Lcom/lge/camera/util/OnScreenHint;->access$100(Lcom/lge/camera/util/OnScreenHint;)V

    .line 339
    return-void
.end method
