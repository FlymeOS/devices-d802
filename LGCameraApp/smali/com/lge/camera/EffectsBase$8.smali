.class Lcom/lge/camera/EffectsBase$8;
.super Ljava/lang/Object;
.source "EffectsBase.java"

# interfaces
.implements Lcom/lge/filterpacks/MediaEncoderFilter$OnRecordingDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/EffectsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/EffectsBase;


# direct methods
.method constructor <init>(Lcom/lge/camera/EffectsBase;)V
    .locals 0

    .prologue
    .line 1138
    iput-object p1, p0, Lcom/lge/camera/EffectsBase$8;->this$0:Lcom/lge/camera/EffectsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordingDone()V
    .locals 3

    .prologue
    .line 1142
    const-string v0, "CameraApp"

    const-string v1, "Recording done callback triggered"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    iget-object v0, p0, Lcom/lge/camera/EffectsBase$8;->this$0:Lcom/lge/camera/EffectsBase;

    # getter for: Lcom/lge/camera/EffectsBase;->mEffectsListener:Lcom/lge/camera/EffectsBase$EffectsListener;
    invoke-static {v0}, Lcom/lge/camera/EffectsBase;->access$400(Lcom/lge/camera/EffectsBase;)Lcom/lge/camera/EffectsBase$EffectsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1144
    iget-object v0, p0, Lcom/lge/camera/EffectsBase$8;->this$0:Lcom/lge/camera/EffectsBase;

    # getter for: Lcom/lge/camera/EffectsBase;->mEffectsListener:Lcom/lge/camera/EffectsBase$EffectsListener;
    invoke-static {v0}, Lcom/lge/camera/EffectsBase;->access$400(Lcom/lge/camera/EffectsBase;)Lcom/lge/camera/EffectsBase$EffectsListener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/EffectsBase$EffectsListener;->onEffectsUpdate(II)V

    .line 1146
    :cond_0
    return-void
.end method
