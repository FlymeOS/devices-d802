.class Lcom/lge/camera/command/ResetFreePanorama$1;
.super Ljava/lang/Object;
.source "ResetFreePanorama.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/ResetFreePanorama;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/ResetFreePanorama;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/ResetFreePanorama;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/lge/camera/command/ResetFreePanorama$1;->this$0:Lcom/lge/camera/command/ResetFreePanorama;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/command/ResetFreePanorama$1;->this$0:Lcom/lge/camera/command/ResetFreePanorama;

    iget-object v0, v0, Lcom/lge/camera/command/ResetFreePanorama;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lcom/lge/camera/command/ResetFreePanorama$1;->this$0:Lcom/lge/camera/command/ResetFreePanorama;

    iget-object v0, v0, Lcom/lge/camera/command/ResetFreePanorama;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->restartFreePanorama()V

    .line 29
    return-void
.end method
