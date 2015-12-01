.class public Lcom/lge/almalence/app/clearshot/Size;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field private height:I

.field private width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/lge/almalence/app/clearshot/Size;->width:I

    .line 8
    iput p2, p0, Lcom/lge/almalence/app/clearshot/Size;->height:I

    .line 9
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/lge/almalence/app/clearshot/Size;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/lge/almalence/app/clearshot/Size;->width:I

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcom/lge/almalence/app/clearshot/Size;->width:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/lge/almalence/app/clearshot/Size;->height:I

    if-lez v0, :cond_0

    .line 12
    const/4 v0, 0x1

    .line 14
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
