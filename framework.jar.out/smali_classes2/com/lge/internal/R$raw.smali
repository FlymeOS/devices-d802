.class public final Lcom/lge/internal/R$raw;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/internal/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "raw"
.end annotation


# static fields
.field public static circle_fade_fs:I

.field public static circle_fade_vs:I

.field public static mask_fade_fs:I

.field public static mask_fade_vs:I

.field public static simple_password_dictionary:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3429
    const/high16 v0, 0x90000

    sput v0, Lcom/lge/internal/R$raw;->circle_fade_fs:I

    .line 3430
    const v0, 0x90001

    sput v0, Lcom/lge/internal/R$raw;->circle_fade_vs:I

    .line 3431
    const v0, 0x90002

    sput v0, Lcom/lge/internal/R$raw;->mask_fade_fs:I

    .line 3432
    const v0, 0x90003

    sput v0, Lcom/lge/internal/R$raw;->mask_fade_vs:I

    .line 3433
    const v0, 0x90004

    sput v0, Lcom/lge/internal/R$raw;->simple_password_dictionary:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
