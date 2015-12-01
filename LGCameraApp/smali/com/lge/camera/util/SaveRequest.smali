.class public Lcom/lge/camera/util/SaveRequest;
.super Ljava/lang/Object;
.source "SaveRequest.java"


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public data:[B

.field public dateTaken:J

.field public degree:I

.field public exifData:[B

.field public isBurstFirst:Z

.field public isSetLastThumb:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v1, p0, Lcom/lge/camera/util/SaveRequest;->exifData:[B

    .line 16
    iput-object v1, p0, Lcom/lge/camera/util/SaveRequest;->data:[B

    .line 17
    iput-object v1, p0, Lcom/lge/camera/util/SaveRequest;->bitmap:Landroid/graphics/Bitmap;

    .line 19
    iput v0, p0, Lcom/lge/camera/util/SaveRequest;->degree:I

    .line 20
    iput-boolean v0, p0, Lcom/lge/camera/util/SaveRequest;->isSetLastThumb:Z

    .line 21
    iput-boolean v0, p0, Lcom/lge/camera/util/SaveRequest;->isBurstFirst:Z

    return-void
.end method
