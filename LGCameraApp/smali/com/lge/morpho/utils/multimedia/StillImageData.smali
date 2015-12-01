.class public Lcom/lge/morpho/utils/multimedia/StillImageData;
.super Ljava/lang/Object;
.source "StillImageData.java"


# instance fields
.field public mId:I

.field public mImage:Ljava/nio/ByteBuffer;

.field public mMotionData:Ljava/nio/ByteBuffer;

.field public mPreviewCnt:I


# direct methods
.method public constructor <init>(II[B[B)V
    .locals 1
    .param p1, "image_id"    # I
    .param p2, "preview_cnt"    # I
    .param p3, "still_image"    # [B
    .param p4, "motion_data"    # [B

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/lge/morpho/utils/multimedia/StillImageData;->mId:I

    .line 16
    iput p2, p0, Lcom/lge/morpho/utils/multimedia/StillImageData;->mPreviewCnt:I

    .line 17
    invoke-direct {p0, p3}, Lcom/lge/morpho/utils/multimedia/StillImageData;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/morpho/utils/multimedia/StillImageData;->mImage:Ljava/nio/ByteBuffer;

    .line 18
    invoke-direct {p0, p4}, Lcom/lge/morpho/utils/multimedia/StillImageData;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/morpho/utils/multimedia/StillImageData;->mMotionData:Ljava/nio/ByteBuffer;

    .line 19
    return-void
.end method

.method private createByteBuffer([B)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "src"    # [B

    .prologue
    const/4 v2, 0x0

    .line 22
    array-length v1, p1

    invoke-static {v1}, Lcom/lge/morpho/utils/NativeMemoryAllocator;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 23
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 24
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 25
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 26
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 27
    return-object v0
.end method
