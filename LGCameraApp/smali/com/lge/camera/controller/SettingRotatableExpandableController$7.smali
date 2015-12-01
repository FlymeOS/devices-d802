.class Lcom/lge/camera/controller/SettingRotatableExpandableController$7;
.super Ljava/lang/Object;
.source "SettingRotatableExpandableController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/SettingRotatableExpandableController;->showChildSetting(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

.field final synthetic val$column:I

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$row:I


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/SettingRotatableExpandableController;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 600
    iput-object p1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$7;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iput p2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$7;->val$column:I

    iput p3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$7;->val$row:I

    iput-object p4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$7;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 603
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$7;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 605
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$7;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$7;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    # getter for: Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempChildLayout:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$300(Lcom/lge/camera/controller/SettingRotatableExpandableController;)Landroid/view/ViewGroup;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$7;->val$column:I

    iget v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$7;->val$row:I

    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$7;->val$key:Ljava/lang/String;

    # invokes: Lcom/lge/camera/controller/SettingRotatableExpandableController;->openChildView(Landroid/view/ViewGroup;IILjava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$400(Lcom/lge/camera/controller/SettingRotatableExpandableController;Landroid/view/ViewGroup;IILjava/lang/String;)V

    .line 606
    return-void
.end method
