.class final Lcom/lge/camera/EffectsBase$2;
.super Ljava/lang/Object;
.source "EffectsBase.java"

# interfaces
.implements Lcom/lge/filterpacks/SmartZoomFilter$LearningDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/EffectsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLearningDone(Lcom/lge/filterpacks/SmartZoomFilter;)V
    .locals 2
    .param p1, "filter"    # Lcom/lge/filterpacks/SmartZoomFilter;

    .prologue
    .line 520
    const-string v0, "CameraApp"

    const-string v1, "onLearningDone callback is called - SmartZoomFilter"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    # getter for: Lcom/lge/camera/EffectsBase;->sGet:Lcom/lge/camera/EffectsBase$EffectBaseInterface;
    invoke-static {}, Lcom/lge/camera/EffectsBase;->access$000()Lcom/lge/camera/EffectsBase$EffectBaseInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/EffectsBase$EffectBaseInterface;->onLearningDoneProcess()V

    .line 523
    return-void
.end method
