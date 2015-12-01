.class public Lcom/lge/camera/PostviewRefocusActivity$ImageSize;
.super Ljava/lang/Object;
.source "PostviewRefocusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/PostviewRefocusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageSize"
.end annotation


# instance fields
.field private mHeight:I

.field private mWidth:I

.field final synthetic this$0:Lcom/lge/camera/PostviewRefocusActivity;


# direct methods
.method public constructor <init>(Lcom/lge/camera/PostviewRefocusActivity;II)V
    .locals 0
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 711
    iput-object p1, p0, Lcom/lge/camera/PostviewRefocusActivity$ImageSize;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 712
    iput p2, p0, Lcom/lge/camera/PostviewRefocusActivity$ImageSize;->mWidth:I

    .line 713
    iput p3, p0, Lcom/lge/camera/PostviewRefocusActivity$ImageSize;->mHeight:I

    .line 714
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 728
    iget v0, p0, Lcom/lge/camera/PostviewRefocusActivity$ImageSize;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 724
    iget v0, p0, Lcom/lge/camera/PostviewRefocusActivity$ImageSize;->mWidth:I

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 717
    iget v0, p0, Lcom/lge/camera/PostviewRefocusActivity$ImageSize;->mWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/lge/camera/PostviewRefocusActivity$ImageSize;->mHeight:I

    if-lez v0, :cond_0

    .line 718
    const/4 v0, 0x1

    .line 720
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
