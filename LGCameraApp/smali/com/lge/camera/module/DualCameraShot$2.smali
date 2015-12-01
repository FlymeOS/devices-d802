.class Lcom/lge/camera/module/DualCameraShot$2;
.super Ljava/lang/Object;
.source "DualCameraShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/module/DualCameraShot;->jpegCallbackOnPictureTaken([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/module/DualCameraShot;

.field final synthetic val$jpegData:[B


# direct methods
.method constructor <init>(Lcom/lge/camera/module/DualCameraShot;[B)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/lge/camera/module/DualCameraShot$2;->this$0:Lcom/lge/camera/module/DualCameraShot;

    iput-object p2, p0, Lcom/lge/camera/module/DualCameraShot$2;->val$jpegData:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lge/camera/module/DualCameraShot$2;->this$0:Lcom/lge/camera/module/DualCameraShot;

    iget-object v1, p0, Lcom/lge/camera/module/DualCameraShot$2;->val$jpegData:[B

    # invokes: Lcom/lge/camera/module/DualCameraShot;->saveResultImage([B)Z
    invoke-static {v0, v1}, Lcom/lge/camera/module/DualCameraShot;->access$000(Lcom/lge/camera/module/DualCameraShot;[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/lge/camera/module/DualCameraShot$2;->this$0:Lcom/lge/camera/module/DualCameraShot;

    # invokes: Lcom/lge/camera/module/DualCameraShot;->doComplete()V
    invoke-static {v0}, Lcom/lge/camera/module/DualCameraShot;->access$100(Lcom/lge/camera/module/DualCameraShot;)V

    .line 96
    :cond_0
    return-void
.end method
