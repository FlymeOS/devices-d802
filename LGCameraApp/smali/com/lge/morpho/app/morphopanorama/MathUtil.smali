.class public Lcom/lge/morpho/app/morphopanorama/MathUtil;
.super Ljava/lang/Object;
.source "MathUtil.java"


# static fields
.field private static final CORRECT_MAT_000:[D

.field private static final CORRECT_MAT_090:[D

.field private static final CORRECT_MAT_180:[D

.field private static final CORRECT_MAT_270:[D

.field private static final EPSILON:D = 1.0E-8

.field private static final NS2S:D = 9.999999717180685E-10


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 99
    new-array v0, v1, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lge/morpho/app/morphopanorama/MathUtil;->CORRECT_MAT_000:[D

    .line 103
    new-array v0, v1, [D

    fill-array-data v0, :array_1

    sput-object v0, Lcom/lge/morpho/app/morphopanorama/MathUtil;->CORRECT_MAT_090:[D

    .line 107
    new-array v0, v1, [D

    fill-array-data v0, :array_2

    sput-object v0, Lcom/lge/morpho/app/morphopanorama/MathUtil;->CORRECT_MAT_180:[D

    .line 111
    new-array v0, v1, [D

    fill-array-data v0, :array_3

    sput-object v0, Lcom/lge/morpho/app/morphopanorama/MathUtil;->CORRECT_MAT_270:[D

    return-void

    .line 99
    nop

    :array_0
    .array-data 8
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data

    .line 103
    :array_1
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data

    .line 107
    :array_2
    .array-data 8
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data

    .line 111
    :array_3
    .array-data 8
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convMatrix16to9([D[D)V
    .locals 7
    .param p0, "dst"    # [D
    .param p1, "src"    # [D

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    array-length v0, p0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 51
    :goto_0
    return-void

    .line 42
    :cond_0
    aget-wide v0, p1, v2

    aput-wide v0, p0, v2

    .line 43
    aget-wide v0, p1, v3

    aput-wide v0, p0, v3

    .line 44
    aget-wide v0, p1, v4

    aput-wide v0, p0, v4

    .line 45
    const/4 v0, 0x3

    aget-wide v2, p1, v5

    aput-wide v2, p0, v0

    .line 46
    aget-wide v0, p1, v6

    aput-wide v0, p0, v5

    .line 47
    const/4 v0, 0x6

    aget-wide v0, p1, v0

    aput-wide v0, p0, v6

    .line 48
    const/4 v0, 0x6

    const/16 v1, 0x8

    aget-wide v2, p1, v1

    aput-wide v2, p0, v0

    .line 49
    const/4 v0, 0x7

    const/16 v1, 0x9

    aget-wide v2, p1, v1

    aput-wide v2, p0, v0

    .line 50
    const/16 v0, 0x8

    const/16 v1, 0xa

    aget-wide v2, p1, v1

    aput-wide v2, p0, v0

    goto :goto_0
.end method

.method public static getAngleDiff([D[D[D)V
    .locals 18
    .param p0, "angle"    # [D
    .param p1, "mat"    # [D
    .param p2, "prev_mat"    # [D

    .prologue
    .line 59
    move-object/from16 v0, p0

    array-length v12, v0

    const/4 v13, 0x3

    if-ne v12, v13, :cond_0

    move-object/from16 v0, p1

    array-length v12, v0

    const/16 v13, 0x9

    if-ne v12, v13, :cond_0

    move-object/from16 v0, p2

    array-length v12, v0

    const/16 v13, 0x9

    if-eq v12, v13, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    const/4 v12, 0x0

    aget-wide v12, p2, v12

    const/4 v14, 0x1

    aget-wide v14, p1, v14

    mul-double/2addr v12, v14

    const/4 v14, 0x3

    aget-wide v14, p2, v14

    const/16 v16, 0x4

    aget-wide v16, p1, v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    const/4 v14, 0x6

    aget-wide v14, p2, v14

    const/16 v16, 0x7

    aget-wide v16, p1, v16

    mul-double v14, v14, v16

    add-double v2, v12, v14

    .line 63
    .local v2, "rd1":D
    const/4 v12, 0x1

    aget-wide v12, p2, v12

    const/4 v14, 0x1

    aget-wide v14, p1, v14

    mul-double/2addr v12, v14

    const/4 v14, 0x4

    aget-wide v14, p2, v14

    const/16 v16, 0x4

    aget-wide v16, p1, v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    const/4 v14, 0x7

    aget-wide v14, p2, v14

    const/16 v16, 0x7

    aget-wide v16, p1, v16

    mul-double v14, v14, v16

    add-double v4, v12, v14

    .line 64
    .local v4, "rd4":D
    const/4 v12, 0x2

    aget-wide v12, p2, v12

    const/4 v14, 0x0

    aget-wide v14, p1, v14

    mul-double/2addr v12, v14

    const/4 v14, 0x5

    aget-wide v14, p2, v14

    const/16 v16, 0x3

    aget-wide v16, p1, v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    const/16 v14, 0x8

    aget-wide v14, p2, v14

    const/16 v16, 0x6

    aget-wide v16, p1, v16

    mul-double v14, v14, v16

    add-double v6, v12, v14

    .line 65
    .local v6, "rd6":D
    const/4 v12, 0x2

    aget-wide v12, p2, v12

    const/4 v14, 0x1

    aget-wide v14, p1, v14

    mul-double/2addr v12, v14

    const/4 v14, 0x5

    aget-wide v14, p2, v14

    const/16 v16, 0x4

    aget-wide v16, p1, v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    const/16 v14, 0x8

    aget-wide v14, p2, v14

    const/16 v16, 0x7

    aget-wide v16, p1, v16

    mul-double v14, v14, v16

    add-double v8, v12, v14

    .line 66
    .local v8, "rd7":D
    const/4 v12, 0x2

    aget-wide v12, p2, v12

    const/4 v14, 0x2

    aget-wide v14, p1, v14

    mul-double/2addr v12, v14

    const/4 v14, 0x5

    aget-wide v14, p2, v14

    const/16 v16, 0x5

    aget-wide v16, p1, v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    const/16 v14, 0x8

    aget-wide v14, p2, v14

    const/16 v16, 0x8

    aget-wide v16, p1, v16

    mul-double v14, v14, v16

    add-double v10, v12, v14

    .line 68
    .local v10, "rd8":D
    const/4 v12, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v14

    aput-wide v14, p0, v12

    .line 69
    const/4 v12, 0x1

    neg-double v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->asin(D)D

    move-result-wide v14

    aput-wide v14, p0, v12

    .line 70
    const/4 v12, 0x2

    neg-double v14, v6

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v14

    aput-wide v14, p0, v12

    goto/16 :goto_0
.end method

.method public static getAverage([DLjava/util/ArrayList;)Z
    .locals 10
    .param p0, "dst_value"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D",
            "Ljava/util/ArrayList",
            "<[D>;)Z"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "src_value_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[D>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 156
    :cond_0
    const/4 v5, 0x0

    .line 175
    :goto_0
    return v5

    .line 158
    :cond_1
    array-length v5, p0

    new-array v3, v5, [D

    .line 163
    .local v3, "total":[D
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 164
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 165
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    .line 166
    .local v4, "value":[D
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    array-length v5, p0

    if-ge v1, v5, :cond_2

    .line 167
    aget-wide v6, v3, v1

    aget-wide v8, v4, v1

    add-double/2addr v6, v8

    aput-wide v6, v3, v1

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 164
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 170
    .end local v1    # "j":I
    .end local v4    # "value":[D
    :cond_3
    if-lez v2, :cond_4

    .line 171
    const/4 v0, 0x0

    :goto_3
    array-length v5, p0

    if-ge v0, v5, :cond_4

    .line 172
    aget-wide v6, v3, v0

    int-to-double v8, v2

    div-double/2addr v6, v8

    aput-wide v6, p0, v0

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 175
    :cond_4
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static getDeltaRotationVector([D[DD)V
    .locals 20
    .param p0, "dst_vector"    # [D
    .param p1, "values"    # [D
    .param p2, "diff_time"    # D

    .prologue
    .line 77
    const-wide v16, 0x3e112e0be0000000L    # 9.999999717180685E-10

    mul-double v8, p2, v16

    .line 78
    .local v8, "dT":D
    const/16 v16, 0x0

    aget-wide v0, p1, v16

    .line 79
    .local v0, "axisX":D
    const/16 v16, 0x1

    aget-wide v2, p1, v16

    .line 80
    .local v2, "axisY":D
    const/16 v16, 0x2

    aget-wide v4, p1, v16

    .line 82
    .local v4, "axisZ":D
    mul-double v16, v0, v0

    mul-double v18, v2, v2

    add-double v16, v16, v18

    mul-double v18, v4, v4

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 84
    .local v10, "omegaMagnitude":D
    const-wide v16, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpl-double v16, v10, v16

    if-lez v16, :cond_0

    .line 85
    div-double/2addr v0, v10

    .line 86
    div-double/2addr v2, v10

    .line 87
    div-double/2addr v4, v10

    .line 89
    :cond_0
    mul-double v16, v10, v8

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v14, v16, v18

    .line 90
    .local v14, "thetaOverTwo":D
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 91
    .local v12, "sinThetaOverTwo":D
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 93
    .local v6, "cosThetaOverTwo":D
    const/16 v16, 0x0

    mul-double v18, v12, v0

    aput-wide v18, p0, v16

    .line 94
    const/16 v16, 0x1

    mul-double v18, v12, v2

    aput-wide v18, p0, v16

    .line 95
    const/16 v16, 0x2

    mul-double v18, v12, v4

    aput-wide v18, p0, v16

    .line 96
    const/16 v16, 0x3

    aput-wide v6, p0, v16

    .line 97
    return-void
.end method

.method public static getRotationMatrix([DDDD)V
    .locals 21
    .param p0, "out_mat"    # [D
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .prologue
    .line 16
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    .line 17
    .local v8, "sinx":D
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 18
    .local v2, "cosx":D
    const/16 v17, 0x9

    move/from16 v0, v17

    new-array v14, v0, [D

    const/16 v17, 0x0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    aput-wide v18, v14, v17

    const/16 v17, 0x1

    const-wide/16 v18, 0x0

    aput-wide v18, v14, v17

    const/16 v17, 0x2

    const-wide/16 v18, 0x0

    aput-wide v18, v14, v17

    const/16 v17, 0x3

    const-wide/16 v18, 0x0

    aput-wide v18, v14, v17

    const/16 v17, 0x4

    aput-wide v2, v14, v17

    const/16 v17, 0x5

    neg-double v0, v8

    move-wide/from16 v18, v0

    aput-wide v18, v14, v17

    const/16 v17, 0x6

    const-wide/16 v18, 0x0

    aput-wide v18, v14, v17

    const/16 v17, 0x7

    aput-wide v8, v14, v17

    const/16 v17, 0x8

    aput-wide v2, v14, v17

    .line 22
    .local v14, "x_rmat":[D
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    .line 23
    .local v10, "siny":D
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 24
    .local v4, "cosy":D
    const/16 v17, 0x9

    move/from16 v0, v17

    new-array v15, v0, [D

    const/16 v17, 0x0

    aput-wide v4, v15, v17

    const/16 v17, 0x1

    const-wide/16 v18, 0x0

    aput-wide v18, v15, v17

    const/16 v17, 0x2

    aput-wide v10, v15, v17

    const/16 v17, 0x3

    const-wide/16 v18, 0x0

    aput-wide v18, v15, v17

    const/16 v17, 0x4

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    aput-wide v18, v15, v17

    const/16 v17, 0x5

    const-wide/16 v18, 0x0

    aput-wide v18, v15, v17

    const/16 v17, 0x6

    neg-double v0, v10

    move-wide/from16 v18, v0

    aput-wide v18, v15, v17

    const/16 v17, 0x7

    const-wide/16 v18, 0x0

    aput-wide v18, v15, v17

    const/16 v17, 0x8

    aput-wide v4, v15, v17

    .line 28
    .local v15, "y_rmat":[D
    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 29
    .local v12, "sinz":D
    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 30
    .local v6, "cosz":D
    const/16 v17, 0x9

    move/from16 v0, v17

    new-array v0, v0, [D

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-wide v6, v16, v17

    const/16 v17, 0x1

    neg-double v0, v12

    move-wide/from16 v18, v0

    aput-wide v18, v16, v17

    const/16 v17, 0x2

    const-wide/16 v18, 0x0

    aput-wide v18, v16, v17

    const/16 v17, 0x3

    aput-wide v12, v16, v17

    const/16 v17, 0x4

    aput-wide v6, v16, v17

    const/16 v17, 0x5

    const-wide/16 v18, 0x0

    aput-wide v18, v16, v17

    const/16 v17, 0x6

    const-wide/16 v18, 0x0

    aput-wide v18, v16, v17

    const/16 v17, 0x7

    const-wide/16 v18, 0x0

    aput-wide v18, v16, v17

    const/16 v17, 0x8

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    aput-wide v18, v16, v17

    .line 34
    .local v16, "z_rmat":[D
    invoke-static {v15, v15, v14}, Lcom/lge/morpho/app/morphopanorama/MathUtil;->mulMatrix3x3([D[D[D)V

    .line 35
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1, v15}, Lcom/lge/morpho/app/morphopanorama/MathUtil;->mulMatrix3x3([D[D[D)V

    .line 36
    return-void
.end method

.method public static mulMatrix3x3([D[D[D)V
    .locals 12
    .param p0, "dst_mat"    # [D
    .param p1, "in_m1"    # [D
    .param p2, "in_m2"    # [D

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    .line 137
    const/16 v6, 0x9

    new-array v3, v6, [D

    .line 138
    .local v3, "matrix":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v10, :cond_2

    .line 139
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v10, :cond_1

    .line 140
    const-wide/16 v4, 0x0

    .line 141
    .local v4, "sum":D
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_2
    if-ge v2, v10, :cond_0

    .line 142
    mul-int/lit8 v6, v0, 0x3

    add-int/2addr v6, v2

    aget-wide v6, p1, v6

    mul-int/lit8 v8, v2, 0x3

    add-int/2addr v8, v1

    aget-wide v8, p2, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    .line 141
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 144
    :cond_0
    mul-int/lit8 v6, v0, 0x3

    add-int/2addr v6, v1

    aput-wide v4, v3, v6

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 138
    .end local v2    # "k":I
    .end local v4    # "sum":D
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    .end local v1    # "j":I
    :cond_2
    array-length v6, v3

    invoke-static {v3, v11, p0, v11, v6}, Ljava/lang/System;->arraycopy([DI[DII)V

    .line 148
    return-void
.end method

.method public static radianToDegree(D)D
    .locals 2
    .param p0, "rad"    # D

    .prologue
    .line 151
    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static rotateMatrix([D[DI)V
    .locals 1
    .param p0, "in_mat"    # [D
    .param p1, "out_mat"    # [D
    .param p2, "rotate"    # I

    .prologue
    .line 117
    sparse-switch p2, :sswitch_data_0

    .line 133
    :goto_0
    return-void

    .line 119
    :sswitch_0
    sget-object v0, Lcom/lge/morpho/app/morphopanorama/MathUtil;->CORRECT_MAT_000:[D

    invoke-static {p1, p0, v0}, Lcom/lge/morpho/app/morphopanorama/MathUtil;->mulMatrix3x3([D[D[D)V

    goto :goto_0

    .line 122
    :sswitch_1
    sget-object v0, Lcom/lge/morpho/app/morphopanorama/MathUtil;->CORRECT_MAT_090:[D

    invoke-static {p1, p0, v0}, Lcom/lge/morpho/app/morphopanorama/MathUtil;->mulMatrix3x3([D[D[D)V

    goto :goto_0

    .line 125
    :sswitch_2
    sget-object v0, Lcom/lge/morpho/app/morphopanorama/MathUtil;->CORRECT_MAT_180:[D

    invoke-static {p1, p0, v0}, Lcom/lge/morpho/app/morphopanorama/MathUtil;->mulMatrix3x3([D[D[D)V

    goto :goto_0

    .line 128
    :sswitch_3
    sget-object v0, Lcom/lge/morpho/app/morphopanorama/MathUtil;->CORRECT_MAT_270:[D

    invoke-static {p1, p0, v0}, Lcom/lge/morpho/app/morphopanorama/MathUtil;->mulMatrix3x3([D[D[D)V

    goto :goto_0

    .line 117
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method
