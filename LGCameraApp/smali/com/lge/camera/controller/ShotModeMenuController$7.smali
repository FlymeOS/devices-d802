.class Lcom/lge/camera/controller/ShotModeMenuController$7;
.super Ljava/lang/Object;
.source "ShotModeMenuController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/ShotModeMenuController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/ShotModeMenuController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/ShotModeMenuController;)V
    .locals 0

    .prologue
    .line 1023
    iput-object p1, p0, Lcom/lge/camera/controller/ShotModeMenuController$7;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$7;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ShotModeMenuController;->setDefaultMode()V

    .line 1027
    return-void
.end method
