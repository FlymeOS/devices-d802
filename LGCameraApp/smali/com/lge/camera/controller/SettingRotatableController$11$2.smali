.class Lcom/lge/camera/controller/SettingRotatableController$11$2;
.super Ljava/lang/Object;
.source "SettingRotatableController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/SettingRotatableController$11;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/SettingRotatableController$11;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/SettingRotatableController$11;)V
    .locals 0

    .prologue
    .line 1242
    iput-object p1, p0, Lcom/lge/camera/controller/SettingRotatableController$11$2;->this$1:Lcom/lge/camera/controller/SettingRotatableController$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController$11$2;->this$1:Lcom/lge/camera/controller/SettingRotatableController$11;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController$11;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingRotatableController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1245
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController$11$2;->this$1:Lcom/lge/camera/controller/SettingRotatableController$11;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController$11;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 1246
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController$11$2;->this$1:Lcom/lge/camera/controller/SettingRotatableController$11;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController$11;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController$11$2;->this$1:Lcom/lge/camera/controller/SettingRotatableController$11;

    iget-object v1, v1, Lcom/lge/camera/controller/SettingRotatableController$11;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v1, v1, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSelectedChildIndex()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1250
    :cond_0
    return-void
.end method
