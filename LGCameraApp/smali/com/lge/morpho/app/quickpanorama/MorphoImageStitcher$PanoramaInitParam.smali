.class public Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;
.super Ljava/lang/Object;
.source "MorphoImageStitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PanoramaInitParam"
.end annotation


# instance fields
.field public all_guide_disp_remaining_num:I

.field public alpha_blending_image_frame:I

.field public angle_fov:I

.field public bg_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$BgColor;

.field public blink_preview_mode:I

.field public disp_current_image:I

.field public effective_input_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

.field public fix_current_image:I

.field public format:Ljava/lang/String;

.field public gradually_disp_guide_frame:I

.field public guide_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

.field public input_angle_of_view_degree:D

.field public input_height:I

.field public input_width:I

.field public mask_poles:I

.field public max_angle_fov:I

.field public mode:I

.field public preview_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

.field public registered_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

.field public render_mode:I

.field public scroll_limit_type:I

.field public state_error_alignment_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

.field public state_info_stitchable_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

.field public state_warning_need_to_stop_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

.field public state_warning_rotated_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

.field public state_warning_toofar_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

.field public state_warning_toofast_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

.field public still_angle_of_view_degree:D

.field public still_height:I

.field public still_width:I

.field public use_still_capture:I

.field public version:I

.field public wire_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    invoke-direct {v0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;-><init>()V

    iput-object v0, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->wire_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    .line 184
    new-instance v0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    invoke-direct {v0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;-><init>()V

    iput-object v0, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->preview_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    .line 185
    new-instance v0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    invoke-direct {v0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;-><init>()V

    iput-object v0, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->registered_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    .line 186
    new-instance v0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    invoke-direct {v0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;-><init>()V

    iput-object v0, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->effective_input_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    .line 187
    new-instance v0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    invoke-direct {v0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;-><init>()V

    iput-object v0, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->state_warning_need_to_stop_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    .line 188
    new-instance v0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    invoke-direct {v0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;-><init>()V

    iput-object v0, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->state_info_stitchable_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    .line 189
    new-instance v0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    invoke-direct {v0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;-><init>()V

    iput-object v0, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->state_warning_toofast_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    .line 190
    new-instance v0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    invoke-direct {v0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;-><init>()V

    iput-object v0, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->state_warning_toofar_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    .line 191
    new-instance v0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    invoke-direct {v0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;-><init>()V

    iput-object v0, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->state_error_alignment_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    .line 192
    new-instance v0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    invoke-direct {v0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;-><init>()V

    iput-object v0, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->state_warning_rotated_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    .line 193
    new-instance v0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$BgColor;

    invoke-direct {v0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$BgColor;-><init>()V

    iput-object v0, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->bg_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$BgColor;

    .line 194
    new-instance v0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    invoke-direct {v0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;-><init>()V

    iput-object v0, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->guide_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    .line 197
    return-void
.end method
