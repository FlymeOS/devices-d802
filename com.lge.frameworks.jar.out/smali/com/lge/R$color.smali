.class public final Lcom/lge/R$color;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "color"
.end annotation


# static fields
.field public static bright_foreground_light:I

.field public static bright_foreground_light_disabled:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 236
    const v0, 0x80008

    sput v0, Lcom/lge/R$color;->bright_foreground_light:I

    .line 237
    const v0, 0x8000a

    sput v0, Lcom/lge/R$color;->bright_foreground_light_disabled:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
