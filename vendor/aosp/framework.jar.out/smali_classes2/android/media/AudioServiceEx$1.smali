.class Landroid/media/AudioServiceEx$1;
.super Landroid/view/IRotationWatcher$Stub;
.source "AudioServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioServiceEx;


# direct methods
.method constructor <init>(Landroid/media/AudioServiceEx;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Landroid/media/AudioServiceEx$1;->this$0:Landroid/media/AudioServiceEx;

    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    .line 89
    const-string v0, "AudioServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRotationChanged(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioServiceEx$1;->this$0:Landroid/media/AudioServiceEx;

    # getter for: Landroid/media/AudioServiceEx;->mLastRotation:I
    invoke-static {v2}, Landroid/media/AudioServiceEx;->access$000(Landroid/media/AudioServiceEx;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Landroid/media/AudioServiceEx$1;->this$0:Landroid/media/AudioServiceEx;

    # setter for: Landroid/media/AudioServiceEx;->mLastRotation:I
    invoke-static {v0, p1}, Landroid/media/AudioServiceEx;->access$002(Landroid/media/AudioServiceEx;I)I

    .line 91
    iget-object v0, p0, Landroid/media/AudioServiceEx$1;->this$0:Landroid/media/AudioServiceEx;

    # invokes: Landroid/media/AudioServiceEx;->sendRotationParameter()V
    invoke-static {v0}, Landroid/media/AudioServiceEx;->access$100(Landroid/media/AudioServiceEx;)V

    .line 92
    return-void
.end method
