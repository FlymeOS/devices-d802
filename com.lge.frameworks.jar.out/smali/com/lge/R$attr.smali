.class public final Lcom/lge/R$attr;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field public static windowNavigationBarBackground:I

.field public static windowStatusBarBackground:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const v0, 0x10001

    sput v0, Lcom/lge/R$attr;->windowNavigationBarBackground:I

    .line 27
    const/high16 v0, 0x10000

    sput v0, Lcom/lge/R$attr;->windowStatusBarBackground:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
