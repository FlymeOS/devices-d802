.class Lcom/lge/filterpacks/DualRecorderFilter$2;
.super Ljava/lang/Object;
.source "DualRecorderFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/filterpacks/DualRecorderFilter;->process(Landroid/filterfw/core/FilterContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/filterpacks/DualRecorderFilter;

.field final synthetic val$mPreviewBitmap_origin:Landroid/graphics/Bitmap;

.field final synthetic val$mPreviewFrame:Landroid/filterfw/core/Frame;


# direct methods
.method constructor <init>(Lcom/lge/filterpacks/DualRecorderFilter;Landroid/graphics/Bitmap;Landroid/filterfw/core/Frame;)V
    .locals 0

    .prologue
    .line 976
    iput-object p1, p0, Lcom/lge/filterpacks/DualRecorderFilter$2;->this$0:Lcom/lge/filterpacks/DualRecorderFilter;

    iput-object p2, p0, Lcom/lge/filterpacks/DualRecorderFilter$2;->val$mPreviewBitmap_origin:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/lge/filterpacks/DualRecorderFilter$2;->val$mPreviewFrame:Landroid/filterfw/core/Frame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 978
    const/4 v1, 0x0

    .line 980
    .local v1, "mPreviewBitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/lge/filterpacks/DualRecorderFilter$2;->this$0:Lcom/lge/filterpacks/DualRecorderFilter;

    # getter for: Lcom/lge/filterpacks/DualRecorderFilter;->mCaptureRotationDegree:I
    invoke-static {v3}, Lcom/lge/filterpacks/DualRecorderFilter;->access$000(Lcom/lge/filterpacks/DualRecorderFilter;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 981
    iget-object v3, p0, Lcom/lge/filterpacks/DualRecorderFilter$2;->val$mPreviewBitmap_origin:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/lge/filterpacks/DualRecorderFilter$2;->this$0:Lcom/lge/filterpacks/DualRecorderFilter;

    # getter for: Lcom/lge/filterpacks/DualRecorderFilter;->mCaptureRotationDegree:I
    invoke-static {v4}, Lcom/lge/filterpacks/DualRecorderFilter;->access$000(Lcom/lge/filterpacks/DualRecorderFilter;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/lge/filterpacks/DualRecorderFilter;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 984
    :cond_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 985
    .local v2, "mPreviewStream":Ljava/io/ByteArrayOutputStream;
    if-eqz v1, :cond_2

    .line 986
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v4, p0, Lcom/lge/filterpacks/DualRecorderFilter$2;->this$0:Lcom/lge/filterpacks/DualRecorderFilter;

    # getter for: Lcom/lge/filterpacks/DualRecorderFilter;->mQuality:I
    invoke-static {v4}, Lcom/lge/filterpacks/DualRecorderFilter;->access$100(Lcom/lge/filterpacks/DualRecorderFilter;)I

    move-result v4

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 988
    iget-object v3, p0, Lcom/lge/filterpacks/DualRecorderFilter$2;->this$0:Lcom/lge/filterpacks/DualRecorderFilter;

    # getter for: Lcom/lge/filterpacks/DualRecorderFilter;->mPreviewFrameListener:Lcom/lge/filterpacks/DualRecorderFilter$PreviewFrameListener;
    invoke-static {v3}, Lcom/lge/filterpacks/DualRecorderFilter;->access$200(Lcom/lge/filterpacks/DualRecorderFilter;)Lcom/lge/filterpacks/DualRecorderFilter$PreviewFrameListener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 989
    iget-object v3, p0, Lcom/lge/filterpacks/DualRecorderFilter$2;->this$0:Lcom/lge/filterpacks/DualRecorderFilter;

    # getter for: Lcom/lge/filterpacks/DualRecorderFilter;->mPreviewFrameListener:Lcom/lge/filterpacks/DualRecorderFilter$PreviewFrameListener;
    invoke-static {v3}, Lcom/lge/filterpacks/DualRecorderFilter;->access$200(Lcom/lge/filterpacks/DualRecorderFilter;)Lcom/lge/filterpacks/DualRecorderFilter$PreviewFrameListener;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/lge/filterpacks/DualRecorderFilter$PreviewFrameListener;->onPreviewFrame([B)V

    .line 993
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 997
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 999
    :cond_2
    iget-object v3, p0, Lcom/lge/filterpacks/DualRecorderFilter$2;->val$mPreviewFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 1000
    return-void

    .line 994
    :catch_0
    move-exception v0

    .line 995
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "DualRecorderFilter"

    const-string v4, "mPreviewStream.close() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
