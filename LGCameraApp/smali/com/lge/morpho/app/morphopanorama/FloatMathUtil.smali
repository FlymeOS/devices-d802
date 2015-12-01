.class public Lcom/lge/morpho/app/morphopanorama/FloatMathUtil;
.super Ljava/lang/Object;
.source "FloatMathUtil.java"


# static fields
.field private static final CORRECT_MAT_000:[F

.field private static final CORRECT_MAT_090:[F

.field private static final CORRECT_MAT_180:[F

.field private static final CORRECT_MAT_270:[F

.field private static final EPSILON:D = 1.0E-8

.field private static final NS2S:F = 1.0E-9f


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 100
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lge/morpho/app/morphopanorama/FloatMathUtil;->CORRECT_MAT_000:[F

    .line 104
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/lge/morpho/app/morphopanorama/FloatMathUtil;->CORRECT_MAT_090:[F

    .line 108
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/lge/morpho/app/morphopanorama/FloatMathUtil;->CORRECT_MAT_180:[F

    .line 112
    new-array v0, v1, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/lge/morpho/app/morphopanorama/FloatMathUtil;->CORRECT_MAT_270:[F

    return-void

    .line 100
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 104
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 108
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 112
    :array_3
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 40
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    array-length v0, p0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 52
    :goto_0
    return-void

    .line 43
    :cond_0
    aget v0, p1, v2

    aput v0, p0, v2

    .line 44
    aget v0, p1, v3

    aput v0, p0, v3

    .line 45
    aget v0, p1, v4

    aput v0, p0, v4

    .line 46
    const/4 v0, 0x3

    aget v1, p1, v5

    aput v1, p0, v0

    .line 47
    aget v0, p1, v6

    aput v0, p0, v5

    .line 48
    const/4 v0, 0x6

    aget v0, p1, v0

    aput v0, p0, v6

    .line 49
    const/4 v0, 0x6

    const/16 v1, 0x8

    aget v1, p1, v1

    aput v1, p0, v0

    .line 50
    const/4 v0, 0x7

    const/16 v1, 0x9

    aget v1, p1, v1

    aput v1, p0, v0

    .line 51
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

    .line 60
    array-length v5, p0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    array-length v5, p1

    const/16 v6, 0x9

    if-ne v5, v6, :cond_0

    array-length v5, p2

    const/16 v6, 0x9

    if-eq v5, v6, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 63
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

    .line 64
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

    .line 65
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

    .line 66
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

    .line 67
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

    .line 69
    .local v4, "rd8":F
    const/4 v5, 0x0

    float-to-double v6, v0

    float-to-double v8, v1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v6, v6

    aput v6, p0, v5

    .line 70
    neg-float v5, v3

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    double-to-float v5, v6

    aput v5, p0, v10

    .line 71
    neg-float v5, v2

    float-to-double v6, v5

    float-to-double v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v5, v6

    aput v5, p0, v11

    goto/16 :goto_0
.end method

.method public static getAverage([FLjava/util/ArrayList;)Z
    .locals 10
    .param p0, "dst_value"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Ljava/util/ArrayList",
            "<[F>;)Z"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "src_value_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[F>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 157
    :cond_0
    const/4 v5, 0x0

    .line 176
    :goto_0
    return v5

    .line 159
    :cond_1
    array-length v5, p0

    new-array v3, v5, [D

    .line 164
    .local v3, "total":[D
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 165
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 166
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    .line 167
    .local v4, "value":[F
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    array-length v5, p0

    if-ge v1, v5, :cond_2

    .line 168
    aget-wide v6, v3, v1

    aget v5, v4, v1

    float-to-double v8, v5

    add-double/2addr v6, v8

    aput-wide v6, v3, v1

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 165
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 171
    .end local v1    # "j":I
    .end local v4    # "value":[F
    :cond_3
    if-lez v2, :cond_4

    .line 172
    const/4 v0, 0x0

    :goto_3
    array-length v5, p0

    if-ge v0, v5, :cond_4

    .line 173
    aget-wide v6, v3, v0

    int-to-double v8, v2

    div-double/2addr v6, v8

    double-to-float v5, v6

    aput v5, p0, v0

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 176
    :cond_4
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static getDeltaRotationVector([F[FJ)V
    .locals 12
    .param p0, "dst_vector"    # [F
    .param p1, "values"    # [F
    .param p2, "diff_time"    # J

    .prologue
    .line 78
    long-to-float v8, p2

    const v9, 0x3089705f    # 1.0E-9f

    mul-float v4, v8, v9

    .line 79
    .local v4, "dT":F
    const/4 v8, 0x0

    aget v0, p1, v8

    .line 80
    .local v0, "axisX":F
    const/4 v8, 0x1

    aget v1, p1, v8

    .line 81
    .local v1, "axisY":F
    const/4 v8, 0x2

    aget v2, p1, v8

    .line 83
    .local v2, "axisZ":F
    mul-float v8, v0, v0

    mul-float v9, v1, v1

    add-float/2addr v8, v9

    mul-float v9, v2, v2

    add-float/2addr v8, v9

    invoke-static {v8}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v5

    .line 85
    .local v5, "omegaMagnitude":F
    float-to-double v8, v5

    const-wide v10, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpl-double v8, v8, v10

    if-lez v8, :cond_0

    .line 86
    div-float/2addr v0, v5

    .line 87
    div-float/2addr v1, v5

    .line 88
    div-float/2addr v2, v5

    .line 90
    :cond_0
    mul-float v8, v5, v4

    const/high16 v9, 0x40000000    # 2.0f

    div-float v7, v8, v9

    .line 91
    .local v7, "thetaOverTwo":F
    invoke-static {v7}, Landroid/util/FloatMath;->sin(F)F

    move-result v6

    .line 92
    .local v6, "sinThetaOverTwo":F
    invoke-static {v7}, Landroid/util/FloatMath;->cos(F)F

    move-result v3

    .line 94
    .local v3, "cosThetaOverTwo":F
    const/4 v8, 0x0

    mul-float v9, v6, v0

    aput v9, p0, v8

    .line 95
    const/4 v8, 0x1

    mul-float v9, v6, v1

    aput v9, p0, v8

    .line 96
    const/4 v8, 0x2

    mul-float v9, v6, v2

    aput v9, p0, v8

    .line 97
    const/4 v8, 0x3

    aput v3, p0, v8

    .line 98
    return-void
.end method

.method public static getRotationMatrix([FFFF)V
    .locals 11
    .param p0, "out_mat"    # [F
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 17
    invoke-static {p1}, Landroid/util/FloatMath;->sin(F)F

    move-result v3

    .line 18
    .local v3, "sinx":F
    invoke-static {p1}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    .line 19
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

    .line 23
    .local v6, "x_rmat":[F
    invoke-static {p2}, Landroid/util/FloatMath;->sin(F)F

    move-result v4

    .line 24
    .local v4, "siny":F
    invoke-static {p2}, Landroid/util/FloatMath;->cos(F)F

    move-result v1

    .line 25
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

    .line 29
    .local v7, "y_rmat":[F
    invoke-static {p3}, Landroid/util/FloatMath;->sin(F)F

    move-result v5

    .line 30
    .local v5, "sinz":F
    invoke-static {p3}, Landroid/util/FloatMath;->cos(F)F

    move-result v2

    .line 31
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

    .line 35
    .local v8, "z_rmat":[F
    invoke-static {v7, v7, v6}, Lcom/lge/morpho/app/morphopanorama/FloatMathUtil;->mulMatrix3x3([F[F[F)V

    .line 36
    invoke-static {p0, v8, v7}, Lcom/lge/morpho/app/morphopanorama/FloatMathUtil;->mulMatrix3x3([F[F[F)V

    .line 37
    return-void
.end method

.method public static mulMatrix3x3([F[F[F)V
    .locals 9
    .param p0, "dst_mat"    # [F
    .param p1, "in_m1"    # [F
    .param p2, "in_m2"    # [F

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    .line 138
    const/16 v5, 0x9

    new-array v3, v5, [F

    .line 139
    .local v3, "matrix":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v7, :cond_2

    .line 140
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v7, :cond_1

    .line 141
    const/4 v4, 0x0

    .line 142
    .local v4, "sum":F
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_2
    if-ge v2, v7, :cond_0

    .line 143
    mul-int/lit8 v5, v0, 0x3

    add-int/2addr v5, v2

    aget v5, p1, v5

    mul-int/lit8 v6, v2, 0x3

    add-int/2addr v6, v1

    aget v6, p2, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 145
    :cond_0
    mul-int/lit8 v5, v0, 0x3

    add-int/2addr v5, v1

    aput v4, v3, v5

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 139
    .end local v2    # "k":I
    .end local v4    # "sum":F
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    .end local v1    # "j":I
    :cond_2
    array-length v5, v3

    invoke-static {v3, v8, p0, v8, v5}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 149
    return-void
.end method

.method public static radianToDegree(D)D
    .locals 2
    .param p0, "rad"    # D

    .prologue
    .line 152
    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static rotateMatrix([F[FI)V
    .locals 1
    .param p0, "in_mat"    # [F
    .param p1, "out_mat"    # [F
    .param p2, "rotate"    # I

    .prologue
    .line 118
    sparse-switch p2, :sswitch_data_0

    .line 134
    :goto_0
    return-void

    .line 120
    :sswitch_0
    sget-object v0, Lcom/lge/morpho/app/morphopanorama/FloatMathUtil;->CORRECT_MAT_000:[F

    invoke-static {p1, p0, v0}, Lcom/lge/morpho/app/morphopanorama/FloatMathUtil;->mulMatrix3x3([F[F[F)V

    goto :goto_0

    .line 123
    :sswitch_1
    sget-object v0, Lcom/lge/morpho/app/morphopanorama/FloatMathUtil;->CORRECT_MAT_090:[F

    invoke-static {p1, p0, v0}, Lcom/lge/morpho/app/morphopanorama/FloatMathUtil;->mulMatrix3x3([F[F[F)V

    goto :goto_0

    .line 126
    :sswitch_2
    sget-object v0, Lcom/lge/morpho/app/morphopanorama/FloatMathUtil;->CORRECT_MAT_180:[F

    invoke-static {p1, p0, v0}, Lcom/lge/morpho/app/morphopanorama/FloatMathUtil;->mulMatrix3x3([F[F[F)V

    goto :goto_0

    .line 129
    :sswitch_3
    sget-object v0, Lcom/lge/morpho/app/morphopanorama/FloatMathUtil;->CORRECT_MAT_270:[F

    invoke-static {p1, p0, v0}, Lcom/lge/morpho/app/morphopanorama/FloatMathUtil;->mulMatrix3x3([F[F[F)V

    goto :goto_0

    .line 118
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method
