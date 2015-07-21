.class public final Lcom/lge/internal/R$plurals;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/internal/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "plurals"
.end annotation


# static fields
.field public static sp_wifi_open_secured_available_detailed_NORMAL:I

.field public static zen_mode_duration_hours:I

.field public static zen_mode_duration_minutes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3421
    const v0, 0x100002

    sput v0, Lcom/lge/internal/R$plurals;->sp_wifi_open_secured_available_detailed_NORMAL:I

    .line 3422
    const v0, 0x100001

    sput v0, Lcom/lge/internal/R$plurals;->zen_mode_duration_hours:I

    .line 3426
    const/high16 v0, 0x100000

    sput v0, Lcom/lge/internal/R$plurals;->zen_mode_duration_minutes:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
