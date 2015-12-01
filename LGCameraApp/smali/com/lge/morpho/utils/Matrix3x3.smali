.class public Lcom/lge/morpho/utils/Matrix3x3;
.super Ljava/lang/Object;
.source "Matrix3x3.java"


# instance fields
.field private mMat:[F

.field private mMatD:[D


# direct methods
.method public constructor <init>(Z)V
    .locals 2
    .param p1, "set_identity"    # Z

    .prologue
    const/16 v1, 0x9

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-array v0, v1, [D

    iput-object v0, p0, Lcom/lge/morpho/utils/Matrix3x3;->mMatD:[D

    .line 8
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/lge/morpho/utils/Matrix3x3;->mMat:[F

    .line 11
    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/lge/morpho/utils/Matrix3x3;->setIdentity()V

    .line 14
    :cond_0
    return-void
.end method

.method public constructor <init>([F)V
    .locals 3
    .param p1, "src"    # [F

    .prologue
    const/16 v1, 0x9

    const/4 v2, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-array v0, v1, [D

    iput-object v0, p0, Lcom/lge/morpho/utils/Matrix3x3;->mMatD:[D

    .line 8
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/lge/morpho/utils/Matrix3x3;->mMat:[F

    .line 17
    iget-object v0, p0, Lcom/lge/morpho/utils/Matrix3x3;->mMat:[F

    array-length v0, v0

    array-length v1, p1

    if-ne v0, v1, :cond_0

    .line 18
    iget-object v0, p0, Lcom/lge/morpho/utils/Matrix3x3;->mMat:[F

    iget-object v1, p0, Lcom/lge/morpho/utils/Matrix3x3;->mMat:[F

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 20
    :cond_0
    return-void
.end method

.method public static convMatrix16to9([F[F)V
    .locals 7
    .param p0, "dst"    # [F
    .param p1, "src"    # [F

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    array-length v0, p0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 121
    :cond_0
    aget v0, p1, v2

    aput v0, p0, v2

    .line 122
    aget v0, p1, v3

    aput v0, p0, v3

    .line 123
    aget v0, p1, v4

    aput v0, p0, v4

    .line 124
    const/4 v0, 0x3

    aget v1, p1, v5

    aput v1, p0, v0

    .line 125
    aget v0, p1, v6

    aput v0, p0, v5

    .line 126
    const/4 v0, 0x6

    aget v0, p1, v0

    aput v0, p0, v6

    .line 127
    const/4 v0, 0x6

    const/16 v1, 0x8

    aget v1, p1, v1

    aput v1, p0, v0

    .line 128
    const/4 v0, 0x7

    const/16 v1, 0x9

    aget v1, p1, v1

    aput v1, p0, v0

    .line 129
    const/16 v0, 0x8

    const/16 v1, 0xa

    aget v1, p1, v1

    aput v1, p0, v0

    goto :goto_0
.end method

.method public static getAngleDiff([F[F[F)V
    .locals 13
    .param p0, "angle"    # [F
    .param p1, "mat"    # [F
    .param p2, "prev_mat"    # [F

    .prologue
    const/4 v12, 0x7

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 138
    array-length v5, p0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    array-length v5, p1

    const/16 v6, 0x9

    if-ne v5, v6, :cond_0

    array-length v5, p2

    const/16 v6, 0x9

    if-eq v5, v6, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    const/4 v5, 0x0

    aget v5, p2, v5

    aget v6, p1, v10

    mul-float/2addr v5, v6

    const/4 v6, 0x3

    aget v6, p2, v6

    aget v7, p1, v8

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    const/4 v6, 0x6

    aget v6, p2, v6

    aget v7, p1, v12

    mul-float/2addr v6, v7

    add-float v0, v5, v6

    .line 142
    .local v0, "rd1":F
    aget v5, p2, v10

    aget v6, p1, v10

    mul-float/2addr v5, v6

    aget v6, p2, v8

    aget v7, p1, v8

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    aget v6, p2, v12

    aget v7, p1, v12

    mul-float/2addr v6, v7

    add-float v1, v5, v6

    .line 143
    .local v1, "rd4":F
    aget v5, p2, v11

    const/4 v6, 0x0

    aget v6, p1, v6

    mul-float/2addr v5, v6

    aget v6, p2, v9

    const/4 v7, 0x3

    aget v7, p1, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    const/16 v6, 0x8

    aget v6, p2, v6

    const/4 v7, 0x6

    aget v7, p1, v7

    mul-float/2addr v6, v7

    add-float v2, v5, v6

    .line 144
    .local v2, "rd6":F
    aget v5, p2, v11

    aget v6, p1, v10

    mul-float/2addr v5, v6

    aget v6, p2, v9

    aget v7, p1, v8

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    const/16 v6, 0x8

    aget v6, p2, v6

    aget v7, p1, v12

    mul-float/2addr v6, v7

    add-float v3, v5, v6

    .line 145
    .local v3, "rd7":F
    aget v5, p2, v11

    aget v6, p1, v11

    mul-float/2addr v5, v6

    aget v6, p2, v9

    aget v7, p1, v9

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    const/16 v6, 0x8

    aget v6, p2, v6

    const/16 v7, 0x8

    aget v7, p1, v7

    mul-float/2addr v6, v7

    add-float v4, v5, v6

    .line 147
    .local v4, "rd8":F
    const/4 v5, 0x0

    float-to-double v6, v0

    float-to-double v8, v1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v6, v6

    aput v6, p0, v5

    .line 148
    neg-float v5, v3

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    double-to-float v5, v6

    aput v5, p0, v10

    .line 149
    neg-float v5, v2

    float-to-double v6, v5

    float-to-double v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v5, v6

    aput v5, p0, v11

    goto/16 :goto_0
.end method

.method public static getRotationMatrix([FFFF)V
    .locals 11
    .param p0, "out_mat"    # [F
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 92
    invoke-static {p1}, Landroid/util/FloatMath;->sin(F)F

    move-result v3

    .line 93
    .local v3, "sinx":F
    invoke-static {p1}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    .line 94
    .local v0, "cosx":F
    const/16 v9, 0x9

    new-array v6, v9, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v6, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v6, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput v10, v6, v9

    const/4 v9, 0x3

    const/4 v10, 0x0

    aput v10, v6, v9

    const/4 v9, 0x4

    aput v0, v6, v9

    const/4 v9, 0x5

    neg-float v10, v3

    aput v10, v6, v9

    const/4 v9, 0x6

    const/4 v10, 0x0

    aput v10, v6, v9

    const/4 v9, 0x7

    aput v3, v6, v9

    const/16 v9, 0x8

    aput v0, v6, v9

    .line 99
    .local v6, "x_rmat":[F
    invoke-static {p2}, Landroid/util/FloatMath;->sin(F)F

    move-result v4

    .line 100
    .local v4, "siny":F
    invoke-static {p2}, Landroid/util/FloatMath;->cos(F)F

    move-result v1

    .line 101
    .local v1, "cosy":F
    const/16 v9, 0x9

    new-array v7, v9, [F

    const/4 v9, 0x0

    aput v1, v7, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v7, v9

    const/4 v9, 0x2

    aput v4, v7, v9

    const/4 v9, 0x3

    const/4 v10, 0x0

    aput v10, v7, v9

    const/4 v9, 0x4

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v7, v9

    const/4 v9, 0x5

    const/4 v10, 0x0

    aput v10, v7, v9

    const/4 v9, 0x6

    neg-float v10, v4

    aput v10, v7, v9

    const/4 v9, 0x7

    const/4 v10, 0x0

    aput v10, v7, v9

    const/16 v9, 0x8

    aput v1, v7, v9

    .line 106
    .local v7, "y_rmat":[F
    invoke-static {p3}, Landroid/util/FloatMath;->sin(F)F

    move-result v5

    .line 107
    .local v5, "sinz":F
    invoke-static {p3}, Landroid/util/FloatMath;->cos(F)F

    move-result v2

    .line 108
    .local v2, "cosz":F
    const/16 v9, 0x9

    new-array v8, v9, [F

    const/4 v9, 0x0

    aput v2, v8, v9

    const/4 v9, 0x1

    neg-float v10, v5

    aput v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput v10, v8, v9

    const/4 v9, 0x3

    aput v5, v8, v9

    const/4 v9, 0x4

    aput v2, v8, v9

    const/4 v9, 0x5

    const/4 v10, 0x0

    aput v10, v8, v9

    const/4 v9, 0x6

    const/4 v10, 0x0

    aput v10, v8, v9

    const/4 v9, 0x7

    const/4 v10, 0x0

    aput v10, v8, v9

    const/16 v9, 0x8

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    .line 113
    .local v8, "z_rmat":[F
    invoke-static {v7, v7, v6}, Lcom/lge/morpho/utils/Matrix3x3;->multiply([F[F[F)V

    .line 114
    invoke-static {p0, v8, v7}, Lcom/lge/morpho/utils/Matrix3x3;->multiply([F[F[F)V

    .line 115
    return-void
.end method

.method public static multiply(Lcom/lge/morpho/utils/Matrix3x3;Lcom/lge/morpho/utils/Matrix3x3;Lcom/lge/morpho/utils/Matrix3x3;)V
    .locals 3
    .param p0, "dst_mat"    # Lcom/lge/morpho/utils/Matrix3x3;
    .param p1, "src_mat1"    # Lcom/lge/morpho/utils/Matrix3x3;
    .param p2, "src_mat2"    # Lcom/lge/morpho/utils/Matrix3x3;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/lge/morpho/utils/Matrix3x3;->get()[F

    move-result-object v0

    .line 65
    .local v0, "d_mat":[F
    invoke-virtual {p1}, Lcom/lge/morpho/utils/Matrix3x3;->get()[F

    move-result-object v1

    .line 66
    .local v1, "s_mat1":[F
    invoke-virtual {p2}, Lcom/lge/morpho/utils/Matrix3x3;->get()[F

    move-result-object v2

    .line 67
    .local v2, "s_mat2":[F
    invoke-static {v0, v1, v2}, Lcom/lge/morpho/utils/Matrix3x3;->multiply([F[F[F)V

    .line 68
    return-void
.end method

.method public static multiply([F[F[F)V
    .locals 9
    .param p0, "dst_mat"    # [F
    .param p1, "in_m1"    # [F
    .param p2, "in_m2"    # [F

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    .line 72
    const/16 v5, 0x9

    new-array v3, v5, [F

    .line 73
    .local v3, "matrix":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v7, :cond_2

    .line 74
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v7, :cond_1

    .line 75
    const/4 v4, 0x0

    .line 76
    .local v4, "sum":F
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_2
    if-ge v2, v7, :cond_0

    .line 77
    mul-int/lit8 v5, v0, 0x3

    add-int/2addr v5, v2

    aget v5, p1, v5

    mul-int/lit8 v6, v2, 0x3

    add-int/2addr v6, v1

    aget v6, p2, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 79
    :cond_0
    mul-int/lit8 v5, v0, 0x3

    add-int/2addr v5, v1

    aput v4, v3, v5

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 73
    .end local v2    # "k":I
    .end local v4    # "sum":F
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    .end local v1    # "j":I
    :cond_2
    array-length v5, v3

    invoke-static {v3, v8, p0, v8, v5}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 83
    return-void
.end method


# virtual methods
.method public copyDoubleArray([D)V
    .locals 4
    .param p1, "dst"    # [D

    .prologue
    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lge/morpho/utils/Matrix3x3;->mMat:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/lge/morpho/utils/Matrix3x3;->mMat:[F

    aget v1, v1, v0

    float-to-double v2, v1

    aput-wide v2, p1, v0

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method

.method public get()[F
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/morpho/utils/Matrix3x3;->mMat:[F

    return-object v0
.end method

.method public print(Ljava/lang/String;)V
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 58
    const-string v0, "{ %6.3f, %6.3f, %6.3f  "

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/lge/morpho/utils/Matrix3x3;->mMat:[F

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/lge/morpho/utils/Matrix3x3;->mMat:[F

    aget v2, v2, v5

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/lge/morpho/utils/Matrix3x3;->mMat:[F

    aget v2, v2, v6

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const-string v0, "  %6.3f, %6.3f, %6.3f  "

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/lge/morpho/utils/Matrix3x3;->mMat:[F

    aget v2, v2, v7

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/lge/morpho/utils/Matrix3x3;->mMat:[F

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/lge/morpho/utils/Matrix3x3;->mMat:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v0, "  %6.3f, %6.3f, %6.3f }"

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/lge/morpho/utils/Matrix3x3;->mMat:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/lge/morpho/utils/Matrix3x3;->mMat:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/lge/morpho/utils/Matrix3x3;->mMat:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method

.method public set([F)V
    .locals 3
    .param p1, "src"    # [F

    .prologue
    const/4 v2, 0x0

    .line 35
    array-length v0, p1

    iget-object v1, p0, Lcom/lge/morpho/utils/Matrix3x3;->mMat:[F

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 36
    iget-object v0, p0, Lcom/lge/morpho/utils/Matrix3x3;->mMat:[F

    iget-object v1, p0, Lcom/lge/morpho/utils/Matrix3x3;->mMat:[F

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 38
    :cond_0
    return-void
.end method

.method public setIdentity()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 23
    iget-object v0, p0, Lcom/lge/morpho/utils/Matrix3x3;->mMat:[F

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 24
    iget-object v0, p0, Lcom/lge/morpho/utils/Matrix3x3;->mMat:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 25
    iget-object v0, p0, Lcom/lge/morpho/utils/Matrix3x3;->mMat:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 26
    iget-object v0, p0, Lcom/lge/morpho/utils/Matrix3x3;->mMat:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 27
    iget-object v0, p0, Lcom/lge/morpho/utils/Matrix3x3;->mMat:[F

    const/4 v1, 0x4

    aput v3, v0, v1

    .line 28
    iget-object v0, p0, Lcom/lge/morpho/utils/Matrix3x3;->mMat:[F

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 29
    iget-object v0, p0, Lcom/lge/morpho/utils/Matrix3x3;->mMat:[F

    const/4 v1, 0x6

    aput v2, v0, v1

    .line 30
    iget-object v0, p0, Lcom/lge/morpho/utils/Matrix3x3;->mMat:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 31
    iget-object v0, p0, Lcom/lge/morpho/utils/Matrix3x3;->mMat:[F

    const/16 v1, 0x8

    aput v3, v0, v1

    .line 32
    return-void
.end method

.method public toDoubleArray()[D
    .locals 4

    .prologue
    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lge/morpho/utils/Matrix3x3;->mMat:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/lge/morpho/utils/Matrix3x3;->mMatD:[D

    iget-object v2, p0, Lcom/lge/morpho/utils/Matrix3x3;->mMat:[F

    aget v2, v2, v0

    float-to-double v2, v2

    aput-wide v2, v1, v0

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/lge/morpho/utils/Matrix3x3;->mMatD:[D

    return-object v1
.end method
