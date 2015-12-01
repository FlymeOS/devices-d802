.class public Lcom/lge/morpho/utils/opengl/DefaultEGLConfigChooser;
.super Ljava/lang/Object;
.source "DefaultEGLConfigChooser.java"

# interfaces
.implements Lcom/lge/morpho/app/morphopanorama/GLTextureView$EGLConfigChooser;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAlphaSize:I

.field private mBlueSize:I

.field private mDepthSize:I

.field private mGreenSize:I

.field private mRedSize:I

.field private mStencilSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/lge/morpho/utils/opengl/DefaultEGLConfigChooser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/morpho/utils/opengl/DefaultEGLConfigChooser;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0x8

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lcom/lge/morpho/utils/opengl/DefaultEGLConfigChooser;->mRedSize:I

    .line 25
    iput v0, p0, Lcom/lge/morpho/utils/opengl/DefaultEGLConfigChooser;->mGreenSize:I

    .line 26
    iput v0, p0, Lcom/lge/morpho/utils/opengl/DefaultEGLConfigChooser;->mBlueSize:I

    .line 27
    iput v1, p0, Lcom/lge/morpho/utils/opengl/DefaultEGLConfigChooser;->mAlphaSize:I

    .line 28
    const/16 v0, 0x10

    iput v0, p0, Lcom/lge/morpho/utils/opengl/DefaultEGLConfigChooser;->mDepthSize:I

    .line 29
    iput v1, p0, Lcom/lge/morpho/utils/opengl/DefaultEGLConfigChooser;->mStencilSize:I

    .line 30
    return-void
.end method

.method private createConfigSpec(Lcom/lge/morpho/utils/opengl/GLESVersion;)[I
    .locals 4
    .param p1, "version"    # Lcom/lge/morpho/utils/opengl/GLESVersion;

    .prologue
    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v1, "config_spec_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v3, Lcom/lge/morpho/utils/opengl/GLESVersion;->GLES20:Lcom/lge/morpho/utils/opengl/GLESVersion;

    if-ne p1, v3, :cond_0

    .line 71
    const/16 v3, 0x3040

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_0
    const/16 v3, 0x3024

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget v3, p0, Lcom/lge/morpho/utils/opengl/DefaultEGLConfigChooser;->mRedSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    const/16 v3, 0x3023

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget v3, p0, Lcom/lge/morpho/utils/opengl/DefaultEGLConfigChooser;->mGreenSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    const/16 v3, 0x3022

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget v3, p0, Lcom/lge/morpho/utils/opengl/DefaultEGLConfigChooser;->mBlueSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget v3, p0, Lcom/lge/morpho/utils/opengl/DefaultEGLConfigChooser;->mAlphaSize:I

    if-lez v3, :cond_1

    .line 81
    const/16 v3, 0x3021

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget v3, p0, Lcom/lge/morpho/utils/opengl/DefaultEGLConfigChooser;->mAlphaSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_1
    iget v3, p0, Lcom/lge/morpho/utils/opengl/DefaultEGLConfigChooser;->mDepthSize:I

    if-lez v3, :cond_2

    .line 85
    const/16 v3, 0x3025

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget v3, p0, Lcom/lge/morpho/utils/opengl/DefaultEGLConfigChooser;->mDepthSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_2
    iget v3, p0, Lcom/lge/morpho/utils/opengl/DefaultEGLConfigChooser;->mStencilSize:I

    if-lez v3, :cond_3

    .line 89
    const/16 v3, 0x3026

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget v3, p0, Lcom/lge/morpho/utils/opengl/DefaultEGLConfigChooser;->mStencilSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_3
    const/16 v3, 0x3038

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [I

    .line 95
    .local v0, "config_spec_array":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 96
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v2

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    :cond_4
    return-object v0
.end method

.method private findConfigAttribute(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p4, "attribute"    # I
    .param p5, "defaultValue"    # I

    .prologue
    .line 102
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 103
    .local v0, "value":[I
    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const/4 v1, 0x0

    aget p5, v0, v1

    .line 106
    .end local p5    # "defaultValue":I
    :cond_0
    return p5
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Lcom/lge/morpho/utils/opengl/GLESVersion;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 21
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "version"    # Lcom/lge/morpho/utils/opengl/GLESVersion;

    .prologue
    .line 34
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/lge/morpho/utils/opengl/DefaultEGLConfigChooser;->createConfigSpec(Lcom/lge/morpho/utils/opengl/GLESVersion;)[I

    move-result-object v4

    .line 35
    .local v4, "config_spec":[I
    const/4 v2, 0x1

    new-array v7, v2, [I

    .line 36
    .local v7, "config_num":[I
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 37
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "eglChooseConfig failed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 39
    :cond_0
    const/4 v2, 0x0

    aget v2, v7, v2

    if-gtz v2, :cond_1

    .line 40
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No match configSpec"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 43
    :cond_1
    const/4 v2, 0x0

    aget v2, v7, v2

    new-array v5, v2, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 44
    .local v5, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    array-length v6, v5

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 45
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "eglChooseConfig failed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50
    :cond_2
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    const/4 v2, 0x0

    aget v2, v7, v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_4

    .line 51
    aget-object v11, v5, v20

    .line 52
    .local v11, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v12, 0x3025

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v8 .. v13}, Lcom/lge/morpho/utils/opengl/DefaultEGLConfigChooser;->findConfigAttribute(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v16

    .line 53
    .local v16, "c_d":I
    const/16 v12, 0x3026

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v8 .. v13}, Lcom/lge/morpho/utils/opengl/DefaultEGLConfigChooser;->findConfigAttribute(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v19

    .line 54
    .local v19, "c_s":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lge/morpho/utils/opengl/DefaultEGLConfigChooser;->mDepthSize:I

    move/from16 v0, v16

    if-lt v0, v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lge/morpho/utils/opengl/DefaultEGLConfigChooser;->mStencilSize:I

    move/from16 v0, v19

    if-lt v0, v2, :cond_3

    .line 55
    const/16 v12, 0x3024

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v8 .. v13}, Lcom/lge/morpho/utils/opengl/DefaultEGLConfigChooser;->findConfigAttribute(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v18

    .line 56
    .local v18, "c_r":I
    const/16 v12, 0x3023

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v8 .. v13}, Lcom/lge/morpho/utils/opengl/DefaultEGLConfigChooser;->findConfigAttribute(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v17

    .line 57
    .local v17, "c_g":I
    const/16 v12, 0x3022

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v8 .. v13}, Lcom/lge/morpho/utils/opengl/DefaultEGLConfigChooser;->findConfigAttribute(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v15

    .line 58
    .local v15, "c_b":I
    const/16 v12, 0x3021

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v8 .. v13}, Lcom/lge/morpho/utils/opengl/DefaultEGLConfigChooser;->findConfigAttribute(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v14

    .line 59
    .local v14, "c_a":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lge/morpho/utils/opengl/DefaultEGLConfigChooser;->mRedSize:I

    move/from16 v0, v18

    if-ne v0, v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lge/morpho/utils/opengl/DefaultEGLConfigChooser;->mGreenSize:I

    move/from16 v0, v17

    if-ne v0, v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lge/morpho/utils/opengl/DefaultEGLConfigChooser;->mBlueSize:I

    if-ne v15, v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lge/morpho/utils/opengl/DefaultEGLConfigChooser;->mAlphaSize:I

    if-ne v14, v2, :cond_3

    .line 60
    sget-object v2, Lcom/lge/morpho/utils/opengl/DefaultEGLConfigChooser;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[%d] R:%d G:%d B:%d A:%d D:%d S:%d"

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x5

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x6

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .end local v11    # "config":Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v14    # "c_a":I
    .end local v15    # "c_b":I
    .end local v16    # "c_d":I
    .end local v17    # "c_g":I
    .end local v18    # "c_r":I
    .end local v19    # "c_s":I
    :goto_1
    return-object v11

    .line 50
    .restart local v11    # "config":Ljavax/microedition/khronos/egl/EGLConfig;
    .restart local v16    # "c_d":I
    .restart local v19    # "c_s":I
    :cond_3
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 65
    .end local v11    # "config":Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v16    # "c_d":I
    .end local v19    # "c_s":I
    :cond_4
    const/4 v11, 0x0

    goto :goto_1
.end method
