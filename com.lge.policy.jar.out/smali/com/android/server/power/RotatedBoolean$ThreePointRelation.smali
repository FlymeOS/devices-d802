.class public Lcom/android/server/power/RotatedBoolean$ThreePointRelation;
.super Ljava/lang/Object;
.source "RotatedBoolean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/RotatedBoolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreePointRelation"
.end annotation


# instance fields
.field private final COS_45:F

.field private final DIST_MAX_FACTOR:F

.field private final DIST_MIN_FACTOR:F

.field private final HORIZONTAL:F

.field private final MAX_0:F

.field private final MAX_45:F

.field private final MAX_90:F

.field private final MIN_45:F

.field private final MIN_90:F

.field private final ROOT_2:F

.field final cosAngle:F

.field private final d0:F

.field private final d1:F

.field private final d2:F

.field private final p0x:F

.field private final p0y:F

.field private final p1x:F

.field private final p1y:F

.field private final p2x:F

.field private final p2y:F


# direct methods
.method public constructor <init>(Lcom/android/server/power/EasyKnockPoint;Lcom/android/server/power/EasyKnockPoint;Lcom/android/server/power/EasyKnockPoint;)V
    .locals 3
    .param p1, "a0"    # Lcom/android/server/power/EasyKnockPoint;
    .param p2, "a1"    # Lcom/android/server/power/EasyKnockPoint;
    .param p3, "a2"    # Lcom/android/server/power/EasyKnockPoint;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const v0, -0x40e66666    # -0.6f

    iput v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->DIST_MIN_FACTOR:F

    .line 30
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->DIST_MAX_FACTOR:F

    .line 32
    const v0, -0x417b7c14

    iput v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->MAX_45:F

    .line 33
    const v0, -0x408f704e

    iput v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->MIN_45:F

    .line 34
    const v0, 0x3effffff    # 0.49999997f

    iput v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->MAX_90:F

    .line 35
    const v0, -0x40cafb0d

    iput v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->MIN_90:F

    .line 36
    const v0, -0x40a24c29

    iput v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->MAX_0:F

    .line 38
    const v0, 0x3f7746ea

    iput v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->HORIZONTAL:F

    .line 40
    const v0, 0x3f3504f7

    iput v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->COS_45:F

    .line 41
    const v0, 0x3fb504d5

    iput v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->ROOT_2:F

    .line 56
    iget v0, p2, Lcom/android/server/power/EasyKnockPoint;->x:F

    iget v1, p1, Lcom/android/server/power/EasyKnockPoint;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->p0x:F

    .line 57
    iget v0, p2, Lcom/android/server/power/EasyKnockPoint;->y:F

    iget v1, p1, Lcom/android/server/power/EasyKnockPoint;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->p0y:F

    .line 58
    iget v0, p3, Lcom/android/server/power/EasyKnockPoint;->x:F

    iget v1, p2, Lcom/android/server/power/EasyKnockPoint;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->p1x:F

    .line 59
    iget v0, p3, Lcom/android/server/power/EasyKnockPoint;->y:F

    iget v1, p2, Lcom/android/server/power/EasyKnockPoint;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->p1y:F

    .line 60
    iget v0, p3, Lcom/android/server/power/EasyKnockPoint;->x:F

    iget v1, p1, Lcom/android/server/power/EasyKnockPoint;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->p2x:F

    .line 61
    iget v0, p3, Lcom/android/server/power/EasyKnockPoint;->y:F

    iget v1, p1, Lcom/android/server/power/EasyKnockPoint;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->p2y:F

    .line 63
    iget v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->p0x:F

    iget v1, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->p0x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->p0y:F

    iget v2, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->p0y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->d0:F

    .line 64
    iget v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->p1x:F

    iget v1, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->p1x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->p1y:F

    iget v2, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->p1y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->d1:F

    .line 65
    iget v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->p2x:F

    iget v1, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->p2x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->p2y:F

    iget v2, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->p2y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->d2:F

    .line 67
    iget v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->p0x:F

    iget v1, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->p1x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->p0y:F

    iget v2, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->p1y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->d0:F

    iget v2, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->d1:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->cosAngle:F

    .line 68
    return-void
.end method


# virtual methods
.method public is123or132()Z
    .locals 6

    .prologue
    const v2, 0x3f7746ea

    const-wide v4, 0x3feee8dd392b9ab8L    # 0.9659258

    .line 108
    iget v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->p0x:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->d0:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->p2y:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->d2:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->p0y:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    iget v2, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->d0:F

    float-to-double v2, v2

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    iget v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->p2x:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    iget v2, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->d2:F

    float-to-double v2, v2

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public is124or134()Z
    .locals 6

    .prologue
    const v2, 0x3f7746ea

    const-wide v4, 0x3feee8dd392b9ab8L    # 0.9659258

    .line 102
    iget v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->p0x:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->d0:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->p1y:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->d1:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->p0y:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    iget v2, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->d0:F

    float-to-double v2, v2

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    iget v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->p1x:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    iget v2, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->d1:F

    float-to-double v2, v2

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    :cond_1
    const v0, -0x40cafb0d

    iget v1, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->cosAngle:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    const v0, 0x3effffff    # 0.49999997f

    iget v1, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->cosAngle:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public is142or143()Z
    .locals 3

    .prologue
    const v2, 0x3f7746ea

    .line 113
    iget v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->p1y:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->d1:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->p2x:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->d2:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->p1x:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->d1:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->p2y:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->d2:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCentDiagDiag()Z
    .locals 2

    .prologue
    .line 80
    iget v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->d0:F

    const v1, 0x3ecccccc    # 0.39999998f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->d1:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->d0:F

    const/high16 v1, 0x40200000    # 2.5f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->d1:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const v0, -0x40a24c29

    iget v1, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->cosAngle:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDiagSide()Z
    .locals 2

    .prologue
    .line 91
    iget v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->d0:F

    const v1, 0x3ddb5ae8

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->d1:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->d0:F

    const v1, 0x400d413e

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->d1:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const v0, -0x408f704e

    iget v1, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->cosAngle:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const v0, -0x417b7c14

    iget v1, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->cosAngle:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLeftTurn()Z
    .locals 3

    .prologue
    .line 71
    iget v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->p0y:F

    neg-float v0, v0

    iget v1, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->p1x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->p0x:F

    iget v2, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->p1y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSideDiag()Z
    .locals 2

    .prologue
    .line 85
    iget v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->d0:F

    const v1, 0x3f507010

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->d1:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->d0:F

    const v1, 0x403a826a

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->d1:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const v0, -0x408f704e

    iget v1, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->cosAngle:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const v0, -0x417b7c14

    iget v1, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->cosAngle:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSideSide()Z
    .locals 2

    .prologue
    .line 75
    iget v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->d0:F

    const v1, 0x3ecccccc    # 0.39999998f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->d1:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->d0:F

    const/high16 v1, 0x40200000    # 2.5f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->d1:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const v0, -0x40cafb0d

    iget v1, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->cosAngle:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const v0, 0x3effffff    # 0.49999997f

    iget v1, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->cosAngle:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStric()Z
    .locals 6

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->d0:F

    const v1, 0x3ecccccc    # 0.39999998f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->d1:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->d0:F

    const/high16 v1, 0x40200000    # 2.5f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->d1:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->d2:F

    float-to-double v0, v0

    iget v2, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->d0:F

    iget v3, p0, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->d1:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
