.class public Lcom/android/server/power/EasyKnockPoint;
.super Ljava/lang/Object;
.source "EasyKnockPoint.java"


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/android/server/power/EasyKnockPoint;->x:F

    .line 17
    iput p2, p0, Lcom/android/server/power/EasyKnockPoint;->y:F

    .line 18
    return-void
.end method
