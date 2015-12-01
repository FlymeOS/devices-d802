.class Lcom/lge/filterpacks/DualRecorderFilter$4;
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
    .line 1516
    iput-object p1, p0, Lcom/lge/filterpacks/DualRecorderFilter$4;->this$0:Lcom/lge/filterpacks/DualRecorderFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 1522
    iget-object v1, p0, Lcom/lge/filterpacks/DualRecorderFilter$4;->this$0:Lcom/lge/filterpacks/DualRecorderFilter;

    monitor-enter v1

    .line 1523
    :try_start_0
    iget-object v0, p0, Lcom/lge/filterpacks/DualRecorderFilter$4;->this$0:Lcom/lge/filterpacks/DualRecorderFilter;

    const/4 v2, 0x1

    # setter for: Lcom/lge/filterpacks/DualRecorderFilter;->mNewFrameAvailable:Z
    invoke-static {v0, v2}, Lcom/lge/filterpacks/DualRecorderFilter;->access$302(Lcom/lge/filterpacks/DualRecorderFilter;Z)Z

    .line 1524
    iget-object v0, p0, Lcom/lge/filterpacks/DualRecorderFilter$4;->this$0:Lcom/lge/filterpacks/DualRecorderFilter;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1525
    monitor-exit v1

    .line 1526
    return-void

    .line 1525
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
