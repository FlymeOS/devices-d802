.class public Lcom/lge/camera/components/CameraMultiWindowAFView;
.super Landroid/widget/RelativeLayout;
.source "CameraMultiWindowAFView.java"


# instance fields
.field private animationHandler:Landroid/os/Handler;

.field animationSetter:Ljava/lang/Runnable;

.field private areaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInit:Z

.field private previewOnScreenHeight:I

.field private previewOnScreenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 39
    iput v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenWidth:I

    .line 40
    iput v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenHeight:I

    .line 42
    iput-boolean v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->mInit:Z

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->animationHandler:Landroid/os/Handler;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    .line 48
    new-instance v0, Lcom/lge/camera/components/CameraMultiWindowAFView$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/CameraMultiWindowAFView$1;-><init>(Lcom/lge/camera/components/CameraMultiWindowAFView;)V

    iput-object v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->animationSetter:Ljava/lang/Runnable;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenWidth:I

    .line 40
    iput v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenHeight:I

    .line 42
    iput-boolean v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->mInit:Z

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->animationHandler:Landroid/os/Handler;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    .line 48
    new-instance v0, Lcom/lge/camera/components/CameraMultiWindowAFView$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/CameraMultiWindowAFView$1;-><init>(Lcom/lge/camera/components/CameraMultiWindowAFView;)V

    iput-object v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->animationSetter:Ljava/lang/Runnable;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/components/CameraMultiWindowAFView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/components/CameraMultiWindowAFView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->animationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private makeMultiFocusView()V
    .locals 22

    .prologue
    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    if-nez v20, :cond_2

    .line 86
    :cond_0
    const-string v20, "CameraApp"

    const-string v21, "Cannot make multi focus window because areaList/mContext == null"

    invoke-static/range {v20 .. v21}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_1
    return-void

    .line 90
    :cond_2
    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    .line 91
    .local v10, "outMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "window"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/WindowManager;

    .line 92
    .local v19, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v19 .. v19}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 97
    const/4 v4, 0x0

    .line 99
    .local v4, "NAVIGATION_BAR_HEIGHT":I
    iget v3, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 100
    .local v3, "LCD_WIDTH":I
    iget v2, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 104
    .local v2, "LCD_HEIGHT":I
    new-instance v16, Landroid/graphics/Point;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Point;-><init>()V

    .line 105
    .local v16, "size":Landroid/graphics/Point;
    invoke-interface/range {v19 .. v19}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 106
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    sub-int v4, v20, v2

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 115
    add-int/2addr v3, v4

    .line 123
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 124
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x44fa0000    # 2000.0f

    div-float v14, v20, v21

    .line 125
    .local v14, "scaleX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x44fa0000    # 2000.0f

    div-float v15, v20, v21

    .line 131
    .local v15, "scaleY":F
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0900a4

    invoke-static/range {v20 .. v21}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v12

    .line 132
    .local v12, "qflWidth":I
    const/4 v11, 0x0

    .line 133
    .local v11, "qflMargin":I
    const/16 v18, 0x0

    .line 135
    .local v18, "topMargin":I
    invoke-static {}, Lcom/lge/camera/util/Common;->isQuickWindowCameraMode()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f090016

    invoke-static/range {v20 .. v21}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v20

    mul-int/lit8 v12, v20, -0x1

    .line 139
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 140
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenWidth:I

    move/from16 v20, v0

    sub-int v20, v3, v20

    if-eqz v20, :cond_7

    move v11, v12

    .line 141
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenHeight:I

    move/from16 v20, v0

    sub-int v20, v2, v20

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenHeight:I

    move/from16 v20, v0

    sub-int v20, v2, v20

    div-int/lit8 v18, v20, 0x2

    .line 149
    :goto_3
    const/4 v7, 0x0

    .line 150
    .local v7, "left":I
    const/16 v17, 0x0

    .line 151
    .local v17, "top":I
    const/4 v13, 0x0

    .line 152
    .local v13, "right":I
    const/4 v5, 0x0

    .line 156
    .local v5, "bottom":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_1

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_1

    .line 161
    new-instance v9, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 162
    .local v9, "multiWindowAFGuide":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f020384

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    if-ne v6, v0, :cond_4

    .line 166
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/hardware/Camera$Area;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v14

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-int v7, v20, v11

    .line 171
    int-to-float v0, v3

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/hardware/Camera$Area;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v14

    sub-float v20, v21, v20

    int-to-float v0, v11

    move/from16 v21, v0

    sub-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v13, v0

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/hardware/Camera$Area;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v15

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-int v17, v20, v18

    .line 173
    int-to-float v0, v2

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/hardware/Camera$Area;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v15

    sub-float v20, v21, v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    sub-int v5, v20, v18

    .line 183
    :goto_5
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v20, -0x1

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 185
    .local v8, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    move/from16 v0, v17

    invoke-virtual {v8, v7, v0, v13, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 187
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v8}, Lcom/lge/camera/components/CameraMultiWindowAFView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 117
    .end local v5    # "bottom":I
    .end local v6    # "i":I
    .end local v7    # "left":I
    .end local v8    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9    # "multiWindowAFGuide":Landroid/widget/ImageView;
    .end local v11    # "qflMargin":I
    .end local v12    # "qflWidth":I
    .end local v13    # "right":I
    .end local v14    # "scaleX":F
    .end local v15    # "scaleY":F
    .end local v17    # "top":I
    .end local v18    # "topMargin":I
    :cond_5
    add-int/2addr v2, v4

    goto/16 :goto_0

    .line 127
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x44fa0000    # 2000.0f

    div-float v14, v20, v21

    .line 128
    .restart local v14    # "scaleX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x44fa0000    # 2000.0f

    div-float v15, v20, v21

    .restart local v15    # "scaleY":F
    goto/16 :goto_1

    .line 140
    .restart local v11    # "qflMargin":I
    .restart local v12    # "qflWidth":I
    .restart local v18    # "topMargin":I
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 141
    :cond_8
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 144
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenWidth:I

    move/from16 v20, v0

    sub-int v20, v2, v20

    if-eqz v20, :cond_a

    move v11, v12

    .line 145
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenHeight:I

    move/from16 v20, v0

    sub-int v20, v3, v20

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenHeight:I

    move/from16 v20, v0

    sub-int v20, v3, v20

    div-int/lit8 v18, v20, 0x2

    :goto_7
    goto/16 :goto_3

    .line 144
    :cond_a
    const/4 v11, 0x0

    goto :goto_6

    .line 145
    :cond_b
    const/16 v18, 0x0

    goto :goto_7

    .line 176
    .restart local v5    # "bottom":I
    .restart local v6    # "i":I
    .restart local v7    # "left":I
    .restart local v9    # "multiWindowAFGuide":Landroid/widget/ImageView;
    .restart local v13    # "right":I
    .restart local v17    # "top":I
    :cond_c
    int-to-float v0, v3

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/hardware/Camera$Area;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v14

    sub-float v20, v21, v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    sub-int v7, v20, v18

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/hardware/Camera$Area;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v14

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-int v13, v20, v18

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/hardware/Camera$Area;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v15

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-int v17, v20, v11

    .line 180
    int-to-float v0, v2

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/hardware/Camera$Area;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v15

    sub-float v20, v21, v20

    int-to-float v0, v11

    move/from16 v21, v0

    sub-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v5, v0

    goto/16 :goto_5
.end method


# virtual methods
.method public clearAnimation()V
    .locals 4

    .prologue
    .line 348
    const/4 v0, 0x0

    .line 349
    .local v0, "childView":Landroid/view/View;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 350
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 351
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 352
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/Animation;->cancel()V

    .line 353
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 349
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->animationHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->animationSetter:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 357
    iget-object v2, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->animationHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->animationSetter:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 359
    :cond_2
    invoke-super {p0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 360
    return-void
.end method

.method public destroyMultiWindowAFGuide()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 384
    iput-object v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->mContext:Landroid/content/Context;

    .line 385
    iput-object v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    .line 386
    iput-object v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->animationHandler:Landroid/os/Handler;

    .line 387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->mInit:Z

    .line 388
    return-void
.end method

.method public getWindowIndexArrayForAnimation()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .local v3, "windowIndexArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 366
    .local v2, "rnd":Ljava/util/Random;
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getChildCount()I

    move-result v5

    div-int/lit8 v1, v5, 0x3

    .line 369
    .local v1, "numberOfWindows":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 370
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v0, :cond_0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 371
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 376
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 377
    .local v4, "windowNumber":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 378
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 380
    .end local v4    # "windowNumber":I
    :cond_1
    return-object v3
.end method

.method public init(Landroid/content/Context;Ljava/util/List;[I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "previewSizeOnScreen"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const/4 v1, 0x1

    .line 66
    iput-object p1, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    .line 68
    const/4 v0, 0x0

    aget v0, p3, v0

    iput v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenWidth:I

    .line 69
    aget v0, p3, v1

    iput v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenHeight:I

    .line 70
    invoke-static {}, Lcom/lge/camera/util/Common;->isQuickWindowCameraMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    sget v0, Lcom/lge/camera/properties/CameraConstants;->smartCoverSizeWidth:I

    iput v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenWidth:I

    .line 72
    sget v0, Lcom/lge/camera/properties/CameraConstants;->smartCoverSizeHeight:I

    iput v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenHeight:I

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->makeMultiFocusView()V

    .line 77
    iput-boolean v1, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->mInit:Z

    .line 78
    return-void
.end method

.method public isInitialize()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->mInit:Z

    return v0
.end method

.method public refresh([I)V
    .locals 1
    .param p1, "previewSizeOnScreen"    # [I

    .prologue
    .line 192
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenWidth:I

    .line 193
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenHeight:I

    .line 194
    invoke-static {}, Lcom/lge/camera/util/Common;->isQuickWindowCameraMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    sget v0, Lcom/lge/camera/properties/CameraConstants;->smartCoverSizeWidth:I

    iput v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenWidth:I

    .line 196
    sget v0, Lcom/lge/camera/properties/CameraConstants;->smartCoverSizeHeight:I

    iput v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->previewOnScreenHeight:I

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->removeAllViews()V

    .line 200
    invoke-direct {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->makeMultiFocusView()V

    .line 201
    return-void
.end method

.method public setAnimation()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const-wide/16 v6, 0x190

    .line 314
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v8, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 315
    .local v4, "mAniAlphaFadeIn":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v4, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 316
    invoke-virtual {v4, v10}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 318
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v5, v9, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 319
    .local v5, "mAniAlphaFadeOut":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 320
    invoke-virtual {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 321
    invoke-virtual {v5, v10}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 323
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 324
    .local v0, "aniSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v0, v11}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 325
    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 326
    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 328
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getWindowIndexArrayForAnimation()Ljava/util/ArrayList;

    move-result-object v1

    .line 329
    .local v1, "animatedWindow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 330
    .local v2, "childView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 331
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 332
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 333
    if-eqz v2, :cond_0

    .line 334
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 331
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 338
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method public setBackgroundDefault()V
    .locals 4

    .prologue
    const v3, 0x7f020384

    .line 295
    const/4 v0, 0x0

    .line 296
    .local v0, "childView":Landroid/view/View;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 297
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 298
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    .line 299
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 300
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 296
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 305
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 308
    :cond_1
    return-void
.end method

.method public setCenterWindowStatus(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 273
    .local v0, "centerWindow":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 274
    packed-switch p1, :pswitch_data_0

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 276
    :pswitch_0
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020384

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 280
    :pswitch_1
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020388

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 284
    :pswitch_2
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020381

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCenterWindowVisibility(I)V
    .locals 7
    .param p1, "visibility"    # I

    .prologue
    const/16 v2, 0x8

    .line 253
    const/4 v1, 0x0

    .line 254
    .local v1, "childView":Landroid/view/View;
    if-ne p1, v2, :cond_0

    const/4 v2, 0x0

    .line 255
    .local v2, "childViewVisibility":I
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_2

    .line 256
    invoke-virtual {p0, v3}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 257
    if-eqz v1, :cond_1

    .line 258
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 255
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 262
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 263
    .local v0, "centerWindow":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 264
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "visibility = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020384

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 267
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 269
    :cond_3
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 237
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    iput-object p1, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    .line 250
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->animationSetter:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->animationSetter:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 344
    :cond_0
    return-void
.end method

.method public update()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f020388

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 204
    iget-object v2, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "childView":Landroid/view/View;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 207
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 209
    iget-object v2, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    iget v2, v2, Landroid/hardware/Camera$Area;->weight:I

    if-ne v2, v5, :cond_1

    .line 210
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 212
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 206
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_2

    .line 215
    invoke-virtual {v0, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 217
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    iget v2, v2, Landroid/hardware/Camera$Area;->weight:I

    if-nez v2, :cond_3

    .line 218
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 219
    invoke-virtual {v0, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 220
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/components/CameraMultiWindowAFView;->areaList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    iget v2, v2, Landroid/hardware/Camera$Area;->weight:I

    if-ne v2, v5, :cond_4

    .line 221
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 222
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 225
    :cond_4
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 226
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020381

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 234
    .end local v0    # "childView":Landroid/view/View;
    .end local v1    # "i":I
    :cond_5
    return-void
.end method
