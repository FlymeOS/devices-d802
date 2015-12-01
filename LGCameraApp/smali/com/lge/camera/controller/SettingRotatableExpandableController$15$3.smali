.class Lcom/lge/camera/controller/SettingRotatableExpandableController$15$3;
.super Ljava/lang/Object;
.source "SettingRotatableExpandableController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/SettingRotatableExpandableController$15;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/SettingRotatableExpandableController$15;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/SettingRotatableExpandableController$15;)V
    .locals 0

    .prologue
    .line 1193
    iput-object p1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15$3;->this$1:Lcom/lge/camera/controller/SettingRotatableExpandableController$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15$3;->this$1:Lcom/lge/camera/controller/SettingRotatableExpandableController$15;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 1197
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15$3;->this$1:Lcom/lge/camera/controller/SettingRotatableExpandableController$15;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15$3;->this$1:Lcom/lge/camera/controller/SettingRotatableExpandableController$15;

    iget-object v1, v1, Lcom/lge/camera/controller/SettingRotatableExpandableController$15;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    # getter for: Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildLayout:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$1300(Lcom/lge/camera/controller/SettingRotatableExpandableController;)Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    # invokes: Lcom/lge/camera/controller/SettingRotatableExpandableController;->closeChildView(Landroid/view/ViewGroup;Z)V
    invoke-static {v0, v1, v2}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$1400(Lcom/lge/camera/controller/SettingRotatableExpandableController;Landroid/view/ViewGroup;Z)V

    .line 1198
    return-void
.end method
