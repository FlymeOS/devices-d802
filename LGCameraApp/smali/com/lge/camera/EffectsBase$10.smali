.class Lcom/lge/camera/EffectsBase$10;
.super Ljava/lang/Object;
.source "EffectsBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/EffectsBase;->sendMessage(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/EffectsBase;

.field final synthetic val$effect:I

.field final synthetic val$msg:I


# direct methods
.method constructor <init>(Lcom/lge/camera/EffectsBase;II)V
    .locals 0

    .prologue
    .line 1328
    iput-object p1, p0, Lcom/lge/camera/EffectsBase$10;->this$0:Lcom/lge/camera/EffectsBase;

    iput p2, p0, Lcom/lge/camera/EffectsBase$10;->val$effect:I

    iput p3, p0, Lcom/lge/camera/EffectsBase$10;->val$msg:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/lge/camera/EffectsBase$10;->this$0:Lcom/lge/camera/EffectsBase;

    # getter for: Lcom/lge/camera/EffectsBase;->mEffectsListener:Lcom/lge/camera/EffectsBase$EffectsListener;
    invoke-static {v0}, Lcom/lge/camera/EffectsBase;->access$400(Lcom/lge/camera/EffectsBase;)Lcom/lge/camera/EffectsBase$EffectsListener;

    move-result-object v0

    iget v1, p0, Lcom/lge/camera/EffectsBase$10;->val$effect:I

    iget v2, p0, Lcom/lge/camera/EffectsBase$10;->val$msg:I

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/EffectsBase$EffectsListener;->onEffectsUpdate(II)V

    .line 1331
    return-void
.end method
