.class final Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;
.super Ljava/lang/Object;
.source "PreviewController.java"

# interfaces
.implements Lcom/lge/camera/EffectsBase$EffectsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/PreviewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EffectRecorderListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/PreviewController;


# direct methods
.method private constructor <init>(Lcom/lge/camera/controller/PreviewController;)V
    .locals 0

    .prologue
    .line 3125
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;->this$0:Lcom/lge/camera/controller/PreviewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/camera/controller/PreviewController;Lcom/lge/camera/controller/PreviewController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/camera/controller/PreviewController;
    .param p2, "x1"    # Lcom/lge/camera/controller/PreviewController$1;

    .prologue
    .line 3125
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onEffectsError(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Exception;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 3131
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;->this$0:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/PreviewController;->doOnEffectesError(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3132
    monitor-exit p0

    return-void

    .line 3131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onEffectsUpdate(II)V
    .locals 1
    .param p1, "effectId"    # I
    .param p2, "effectMsg"    # I

    .prologue
    .line 3127
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;->this$0:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/PreviewController;->doOnEffectsUpdate(II)V

    .line 3128
    return-void
.end method
