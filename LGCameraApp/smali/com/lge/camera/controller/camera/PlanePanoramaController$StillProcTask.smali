.class public Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;
.super Ljava/lang/Thread;
.source "PlanePanoramaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/camera/PlanePanoramaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StillProcTask"
.end annotation


# instance fields
.field private shootCount:I

.field final synthetic this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;


# direct methods
.method public constructor <init>(Lcom/lge/camera/controller/camera/PlanePanoramaController;)V
    .locals 1

    .prologue
    .line 71
    iput-object p1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;->shootCount:I

    return-void
.end method

.method private sendImageToEngine()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 102
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mStillProcList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$000(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 103
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mStillProcList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$000(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/morpho/utils/multimedia/StillImageData;

    .line 109
    .local v0, "data":Lcom/lge/morpho/utils/multimedia/StillImageData;
    sget-boolean v2, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->IS_PREVIEW_INPUT:Z

    if-eqz v2, :cond_2

    .line 110
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run attachStillImageRaw() start :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/lge/morpho/utils/multimedia/StillImageData;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    iget-object v3, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    iget-object v3, v3, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPanoramaGP:Lcom/lge/morpho/core/MorphoPanoramaGP;

    iget-object v4, v0, Lcom/lge/morpho/utils/multimedia/StillImageData;->mImage:Ljava/nio/ByteBuffer;

    iget v5, v0, Lcom/lge/morpho/utils/multimedia/StillImageData;->mId:I

    iget-object v6, v0, Lcom/lge/morpho/utils/multimedia/StillImageData;->mMotionData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4, v5, v6}, Lcom/lge/morpho/core/MorphoPanoramaGP;->attachStillImageRaw(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I

    move-result v3

    const-string v4, "attachStillImageRaw() -> "

    invoke-virtual {v2, v3, v4, v7}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->checkOK(ILjava/lang/String;Z)Z

    .line 141
    :cond_0
    :goto_0
    const-string v2, "CameraApp"

    const-string v3, "NativeMemoryAllocator free START"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;->shootCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;->shootCount:I

    .line 143
    iget-object v2, v0, Lcom/lge/morpho/utils/multimedia/StillImageData;->mImage:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/lge/morpho/utils/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    .line 144
    iget-object v2, v0, Lcom/lge/morpho/utils/multimedia/StillImageData;->mMotionData:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/lge/morpho/utils/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    .line 145
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    iget v3, v2, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCntProcessd:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCntProcessd:I

    .line 146
    const-string v2, "CameraApp"

    const-string v3, "NativeMemoryAllocator free END"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .end local v0    # "data":Lcom/lge/morpho/utils/multimedia/StillImageData;
    :cond_1
    return-void

    .line 114
    .restart local v0    # "data":Lcom/lge/morpho/utils/multimedia/StillImageData;
    :cond_2
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run attachStillImage() start :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/lge/morpho/utils/multimedia/StillImageData;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    iget-object v2, v2, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPanoramaGP:Lcom/lge/morpho/core/MorphoPanoramaGP;

    iget-object v3, v0, Lcom/lge/morpho/utils/multimedia/StillImageData;->mImage:Ljava/nio/ByteBuffer;

    iget v4, v0, Lcom/lge/morpho/utils/multimedia/StillImageData;->mId:I

    iget-object v5, v0, Lcom/lge/morpho/utils/multimedia/StillImageData;->mMotionData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3, v4, v5}, Lcom/lge/morpho/core/MorphoPanoramaGP;->attachStillImageExt(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I

    move-result v1

    .line 117
    .local v1, "ret":I
    if-eqz v1, :cond_3

    .line 118
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attachStillImageExt() ->("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v2}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$700(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v2

    new-instance v3, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask$1;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask$1;-><init>(Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;)V

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 132
    :cond_3
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run attachStillImage() end :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/lge/morpho/utils/multimedia/StillImageData;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;->shootCount:I

    if-nez v2, :cond_0

    .line 135
    const-string v2, "CameraApp"

    const-string v3, "attachSetJpegForCopyingExif START"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    iget-object v2, v2, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPanoramaGP:Lcom/lge/morpho/core/MorphoPanoramaGP;

    iget-object v3, v0, Lcom/lge/morpho/utils/multimedia/StillImageData;->mImage:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Lcom/lge/morpho/core/MorphoPanoramaGP;->attachSetJpegForCopyingExif(Ljava/nio/ByteBuffer;)I

    .line 137
    const-string v2, "CameraApp"

    const-string v3, "attachSetJpegForCopyingExif END"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 76
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    iget-boolean v2, v2, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mIsShooting:Z

    if-eqz v2, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;->sendImageToEngine()V

    .line 81
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 87
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove un-processed picture : mCntReqShoot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    iget v4, v4, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCntReqShoot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCntProcessd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    iget v4, v4, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCntProcessd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mStillProcList.size()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mStillProcList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$000(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    iget v2, v2, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCntReqShoot:I

    iget-object v3, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    iget v3, v3, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCntProcessd:I

    if-le v2, v3, :cond_2

    .line 91
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mStillProcList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$000(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 92
    const-string v2, "CameraApp"

    const-string v3, "remove StillImageData"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mStillProcList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$000(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/morpho/utils/multimedia/StillImageData;

    .line 94
    .local v0, "dat":Lcom/lge/morpho/utils/multimedia/StillImageData;
    iget-object v2, v0, Lcom/lge/morpho/utils/multimedia/StillImageData;->mImage:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/lge/morpho/utils/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    .line 95
    iget-object v2, v0, Lcom/lge/morpho/utils/multimedia/StillImageData;->mMotionData:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/lge/morpho/utils/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    .line 96
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    iget v3, v2, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCntProcessd:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCntProcessd:I

    goto :goto_1

    .line 99
    .end local v0    # "dat":Lcom/lge/morpho/utils/multimedia/StillImageData;
    :cond_2
    return-void
.end method
