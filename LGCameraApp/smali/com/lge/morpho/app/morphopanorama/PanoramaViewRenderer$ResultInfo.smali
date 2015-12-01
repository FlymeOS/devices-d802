.class public Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;
.super Ljava/lang/Object;
.source "PanoramaViewRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultInfo"
.end annotation


# instance fields
.field public mAttachStatus:I

.field public mAttachTime:J

.field public mCount:J

.field public mFrameInterval:J

.field public mGyroCorrectionValue:[F

.field public mImageID:I

.field public mIsStootable:I

.field public mODFToOPF:J

.field public mPreviewID:I

.field public mRQRenderToOnDrawFrame:J

.field public mRenderTime:J

.field public mSetRenderInfoTime:J

.field public mStopThres:I

.field final synthetic this$0:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;


# direct methods
.method public constructor <init>(Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;->this$0:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
