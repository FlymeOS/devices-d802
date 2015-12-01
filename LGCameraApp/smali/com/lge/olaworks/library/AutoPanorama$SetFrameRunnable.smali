.class Lcom/lge/olaworks/library/AutoPanorama$SetFrameRunnable;
.super Ljava/lang/Object;
.source "AutoPanorama.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/olaworks/library/AutoPanorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetFrameRunnable"
.end annotation


# instance fields
.field mFrameId:I

.field final synthetic this$0:Lcom/lge/olaworks/library/AutoPanorama;


# direct methods
.method public constructor <init>(Lcom/lge/olaworks/library/AutoPanorama;I)V
    .locals 0
    .param p2, "frameId"    # I

    .prologue
    .line 234
    iput-object p1, p0, Lcom/lge/olaworks/library/AutoPanorama$SetFrameRunnable;->this$0:Lcom/lge/olaworks/library/AutoPanorama;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput p2, p0, Lcom/lge/olaworks/library/AutoPanorama$SetFrameRunnable;->mFrameId:I

    .line 236
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 240
    iget-object v1, p0, Lcom/lge/olaworks/library/AutoPanorama$SetFrameRunnable;->this$0:Lcom/lge/olaworks/library/AutoPanorama;

    # getter for: Lcom/lge/olaworks/library/AutoPanorama;->mSetFrameData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lge/olaworks/library/AutoPanorama;->access$000(Lcom/lge/olaworks/library/AutoPanorama;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/lge/olaworks/library/AutoPanorama$SetFrameRunnable;->mFrameId:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/olaworks/datastruct/JOlaBitmap;

    iget v2, p0, Lcom/lge/olaworks/library/AutoPanorama$SetFrameRunnable;->mFrameId:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lcom/lge/olaworks/jni/OlaAutoPanoramaJNI;->setFrame(Lcom/lge/olaworks/datastruct/JOlaBitmap;I)I

    move-result v0

    .line 241
    .local v0, "retVal":I
    if-gez v0, :cond_0

    .line 242
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error setFrame Id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/olaworks/library/AutoPanorama$SetFrameRunnable;->mFrameId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / retVal = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_0
    return-void
.end method
