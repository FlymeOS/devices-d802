.class public Lcom/lge/camera/setting/ShotModeMenuListAdapter$ModeMenuViewHolder;
.super Ljava/lang/Object;
.source "ShotModeMenuListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/setting/ShotModeMenuListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModeMenuViewHolder"
.end annotation


# instance fields
.field mImage:Landroid/widget/ImageView;

.field mLayout:Landroid/widget/RelativeLayout;

.field mNameBottom:Landroid/widget/TextView;

.field mRotate:Lcom/lge/camera/components/RotateLayout;

.field final synthetic this$0:Lcom/lge/camera/setting/ShotModeMenuListAdapter;


# direct methods
.method public constructor <init>(Lcom/lge/camera/setting/ShotModeMenuListAdapter;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/lge/camera/setting/ShotModeMenuListAdapter$ModeMenuViewHolder;->this$0:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
