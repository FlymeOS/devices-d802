.class public Lcom/lge/olaworks/library/FaceBeauty;
.super Lcom/lge/olaworks/library/BaseEngine;
.source "FaceBeauty.java"


# static fields
.field public static final ENGINE_TAG:Ljava/lang/String; = "FaceBeauty"

.field public static final TAG:Ljava/lang/String; = "CameraApp"


# instance fields
.field private mStrength:I

.field private mWhitening:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 17
    invoke-direct {p0}, Lcom/lge/olaworks/library/BaseEngine;-><init>()V

    .line 14
    iput v0, p0, Lcom/lge/olaworks/library/FaceBeauty;->mWhitening:I

    .line 15
    iput v0, p0, Lcom/lge/olaworks/library/FaceBeauty;->mStrength:I

    .line 17
    return-void
.end method


# virtual methods
.method public create()I
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public destroy()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string v0, "FaceBeauty"

    return-object v0
.end method

.method public needRenderMode()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public processImage(Landroid/graphics/Bitmap;I)I
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I

    .prologue
    .line 59
    iget v1, p0, Lcom/lge/olaworks/library/FaceBeauty;->mWhitening:I

    iget v2, p0, Lcom/lge/olaworks/library/FaceBeauty;->mStrength:I

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/lge/olaworks/jni/OlaFaceBeautyJNI;->processImage(Landroid/graphics/Bitmap;III)I

    move-result v0

    .line 60
    .local v0, "retVal":I
    return v0
.end method

.method public processPreview(Lcom/lge/olaworks/datastruct/JOlaBitmap;)I
    .locals 4
    .param p1, "olaBitmap"    # Lcom/lge/olaworks/datastruct/JOlaBitmap;

    .prologue
    .line 43
    iget v1, p0, Lcom/lge/olaworks/library/FaceBeauty;->mWhitening:I

    iget v2, p0, Lcom/lge/olaworks/library/FaceBeauty;->mStrength:I

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/lge/olaworks/jni/OlaFaceBeautyJNI;->processImage(Lcom/lge/olaworks/datastruct/JOlaBitmap;III)I

    move-result v0

    .line 44
    .local v0, "retVal":I
    return v0
.end method

.method public setParameter(II)V
    .locals 0
    .param p1, "whitening"    # I
    .param p2, "strength"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/lge/olaworks/library/FaceBeauty;->mWhitening:I

    .line 69
    iput p2, p0, Lcom/lge/olaworks/library/FaceBeauty;->mStrength:I

    .line 70
    return-void
.end method
