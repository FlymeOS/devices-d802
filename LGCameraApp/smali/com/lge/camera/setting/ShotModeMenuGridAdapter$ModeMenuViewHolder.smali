.class public Lcom/lge/camera/setting/ShotModeMenuGridAdapter$ModeMenuViewHolder;
.super Ljava/lang/Object;
.source "ShotModeMenuGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/setting/ShotModeMenuGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModeMenuViewHolder"
.end annotation


# instance fields
.field mImage:Landroid/widget/ImageView;

.field mName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;


# direct methods
.method public constructor <init>(Lcom/lge/camera/setting/ShotModeMenuGridAdapter;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/lge/camera/setting/ShotModeMenuGridAdapter$ModeMenuViewHolder;->this$0:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
