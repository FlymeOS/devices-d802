.class public Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;
.super Ljava/lang/Object;
.source "AlmaCLRShot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/almalence/app/clearshot/AlmaCLRShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ObjBorderInfo"
.end annotation


# instance fields
.field mRect:Landroid/graphics/Rect;

.field mThumb:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/lge/almalence/app/clearshot/AlmaCLRShot;


# direct methods
.method public constructor <init>(Lcom/lge/almalence/app/clearshot/AlmaCLRShot;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 94
    iput-object p1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;->this$0:Lcom/lge/almalence/app/clearshot/AlmaCLRShot;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object v0, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;->mRect:Landroid/graphics/Rect;

    .line 98
    iput-object v0, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;->mThumb:Landroid/graphics/Bitmap;

    .line 96
    return-void
.end method


# virtual methods
.method public getRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;->mThumb:Landroid/graphics/Bitmap;

    return-object v0
.end method
