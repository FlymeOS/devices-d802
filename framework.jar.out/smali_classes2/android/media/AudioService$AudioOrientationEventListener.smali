.class Landroid/media/AudioService$AudioOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method public constructor <init>(Landroid/media/AudioService;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1048
    iput-object p1, p0, Landroid/media/AudioService$AudioOrientationEventListener;->this$0:Landroid/media/AudioService;

    .line 1049
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 1050
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 1056
    iget-object v1, p0, Landroid/media/AudioService$AudioOrientationEventListener;->this$0:Landroid/media/AudioService;

    iget-object v1, v1, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1058
    .local v0, "newRotation":I
    iget-object v1, p0, Landroid/media/AudioService$AudioOrientationEventListener;->this$0:Landroid/media/AudioService;

    invoke-static {v1}, Landroid/media/AudioService;->access$400(Landroid/media/AudioService;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1059
    iget-object v1, p0, Landroid/media/AudioService$AudioOrientationEventListener;->this$0:Landroid/media/AudioService;

    invoke-static {v1, v0}, Landroid/media/AudioService;->access$402(Landroid/media/AudioService;I)I

    .line 1060
    iget-object v1, p0, Landroid/media/AudioService$AudioOrientationEventListener;->this$0:Landroid/media/AudioService;

    invoke-static {v1}, Landroid/media/AudioService;->access$500(Landroid/media/AudioService;)V

    .line 1062
    :cond_0
    return-void
.end method
