.class public Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;
.super Ljava/lang/Object;
.source "AlmaCLRShot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/almalence/app/clearshot/AlmaCLRShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ObjectInfo"
.end annotation


# instance fields
.field objectRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/lge/almalence/app/clearshot/AlmaCLRShot;

.field thumbnail:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/lge/almalence/app/clearshot/AlmaCLRShot;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 80
    iput-object p1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;->this$0:Lcom/lge/almalence/app/clearshot/AlmaCLRShot;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object v0, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;->objectRect:Landroid/graphics/Rect;

    .line 84
    iput-object v0, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;->thumbnail:Landroid/graphics/Bitmap;

    .line 82
    return-void
.end method


# virtual methods
.method public getRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;->objectRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;->thumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method
