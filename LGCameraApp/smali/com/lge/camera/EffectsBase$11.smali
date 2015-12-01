.class Lcom/lge/camera/EffectsBase$11;
.super Ljava/lang/Object;
.source "EffectsBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/EffectsBase;->raiseError(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/EffectsBase;

.field final synthetic val$exception:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/lge/camera/EffectsBase;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 1342
    iput-object p1, p0, Lcom/lge/camera/EffectsBase$11;->this$0:Lcom/lge/camera/EffectsBase;

    iput-object p2, p0, Lcom/lge/camera/EffectsBase$11;->val$exception:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/lge/camera/EffectsBase$11;->this$0:Lcom/lge/camera/EffectsBase;

    iget-object v0, v0, Lcom/lge/camera/EffectsBase;->mFd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/lge/camera/EffectsBase$11;->this$0:Lcom/lge/camera/EffectsBase;

    # getter for: Lcom/lge/camera/EffectsBase;->mEffectsListener:Lcom/lge/camera/EffectsBase$EffectsListener;
    invoke-static {v0}, Lcom/lge/camera/EffectsBase;->access$400(Lcom/lge/camera/EffectsBase;)Lcom/lge/camera/EffectsBase$EffectsListener;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/EffectsBase$11;->val$exception:Ljava/lang/Exception;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/EffectsBase$EffectsListener;->onEffectsError(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1349
    :goto_0
    return-void

    .line 1347
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/EffectsBase$11;->this$0:Lcom/lge/camera/EffectsBase;

    # getter for: Lcom/lge/camera/EffectsBase;->mEffectsListener:Lcom/lge/camera/EffectsBase$EffectsListener;
    invoke-static {v0}, Lcom/lge/camera/EffectsBase;->access$400(Lcom/lge/camera/EffectsBase;)Lcom/lge/camera/EffectsBase$EffectsListener;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/EffectsBase$11;->val$exception:Ljava/lang/Exception;

    iget-object v2, p0, Lcom/lge/camera/EffectsBase$11;->this$0:Lcom/lge/camera/EffectsBase;

    iget-object v2, v2, Lcom/lge/camera/EffectsBase;->mOutputFile:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/EffectsBase$EffectsListener;->onEffectsError(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method
