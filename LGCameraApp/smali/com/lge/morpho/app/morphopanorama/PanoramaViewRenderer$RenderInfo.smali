.class Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;
.super Ljava/lang/Object;
.source "PanoramaViewRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderInfo"
.end annotation


# instance fields
.field public ac_mat:[D

.field public gr_mat:[D

.field public gr_value_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[F>;"
        }
    .end annotation
.end field

.field public image:[B

.field public is_set:Z

.field public mLock:Ljava/lang/Object;

.field public mOnDrawEndTime:J

.field public mSetRenderInfoEndTime:J

.field public mSetRenderInfoStartTime:J

.field public mSetRenderInfoTime:J

.field public preview_id:I

.field public rv_mat:[D

.field final synthetic this$0:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

.field public use_ac_mat:Z

.field public use_gr_mat:Z

.field public use_image:I

.field public use_rv_mat:Z


# direct methods
.method public constructor <init>(Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;I)V
    .locals 3
    .param p2, "image_buff_size"    # I

    .prologue
    const/16 v2, 0x9

    const/4 v1, 0x0

    .line 75
    iput-object p1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->this$0:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->mLock:Ljava/lang/Object;

    .line 77
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->image:[B

    .line 78
    new-array v0, v2, [D

    iput-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->gr_mat:[D

    .line 79
    new-array v0, v2, [D

    iput-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->rv_mat:[D

    .line 80
    new-array v0, v2, [D

    iput-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->ac_mat:[D

    .line 81
    iput-boolean v1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->use_gr_mat:Z

    .line 82
    iput-boolean v1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->use_rv_mat:Z

    .line 83
    iput-boolean v1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->use_ac_mat:Z

    .line 84
    iput-boolean v1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->is_set:Z

    .line 85
    return-void
.end method
