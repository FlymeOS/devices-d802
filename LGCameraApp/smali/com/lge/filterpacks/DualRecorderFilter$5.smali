.class Lcom/lge/filterpacks/DualRecorderFilter$5;
.super Ljava/lang/Object;
.source "DualRecorderFilter.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/filterpacks/DualRecorderFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/filterpacks/DualRecorderFilter;


# direct methods
.method constructor <init>(Lcom/lge/filterpacks/DualRecorderFilter;)V
    .locals 0

    .prologue
    .line 1530
    iput-object p1, p0, Lcom/lge/filterpacks/DualRecorderFilter$5;->this$0:Lcom/lge/filterpacks/DualRecorderFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 1536
    iget-object v1, p0, Lcom/lge/filterpacks/DualRecorderFilter$5;->this$0:Lcom/lge/filterpacks/DualRecorderFilter;

    monitor-enter v1

    .line 1537
    :try_start_0
    iget-object v0, p0, Lcom/lge/filterpacks/DualRecorderFilter$5;->this$0:Lcom/lge/filterpacks/DualRecorderFilter;

    const/4 v2, 0x1

    # setter for: Lcom/lge/filterpacks/DualRecorderFilter;->mNewCameraFrameAvailable:Z
    invoke-static {v0, v2}, Lcom/lge/filterpacks/DualRecorderFilter;->access$402(Lcom/lge/filterpacks/DualRecorderFilter;Z)Z

    .line 1538
    iget-object v0, p0, Lcom/lge/filterpacks/DualRecorderFilter$5;->this$0:Lcom/lge/filterpacks/DualRecorderFilter;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1539
    monitor-exit v1

    .line 1540
    return-void

    .line 1539
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
