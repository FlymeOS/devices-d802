.class public Lcom/lge/camera/EffectsCamera;
.super Lcom/lge/camera/EffectsBase;
.source "EffectsCamera.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/camera/EffectsBase$EffectBaseInterface;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inf"    # Lcom/lge/camera/EffectsBase$EffectBaseInterface;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/EffectsBase;-><init>(Landroid/content/Context;Lcom/lge/camera/EffectsBase$EffectBaseInterface;)V

    .line 33
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EffectsCamera created ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method
