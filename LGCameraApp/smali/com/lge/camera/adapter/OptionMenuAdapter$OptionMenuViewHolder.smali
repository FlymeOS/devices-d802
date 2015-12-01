.class public Lcom/lge/camera/adapter/OptionMenuAdapter$OptionMenuViewHolder;
.super Ljava/lang/Object;
.source "OptionMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/adapter/OptionMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OptionMenuViewHolder"
.end annotation


# instance fields
.field mIcon:Landroid/widget/ImageView;

.field mMenuTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/lge/camera/adapter/OptionMenuAdapter;


# direct methods
.method public constructor <init>(Lcom/lge/camera/adapter/OptionMenuAdapter;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/lge/camera/adapter/OptionMenuAdapter$OptionMenuViewHolder;->this$0:Lcom/lge/camera/adapter/OptionMenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
