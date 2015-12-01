.class Lcom/lge/camera/controller/SettingRotatableExpandableController$12;
.super Ljava/lang/Object;
.source "SettingRotatableExpandableController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/SettingRotatableExpandableController;->doOnCloseAnimationEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V
    .locals 0

    .prologue
    .line 948
    iput-object p1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$12;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 951
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$12;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 952
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$12;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$12;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    # getter for: Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempChildLayout:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$300(Lcom/lge/camera/controller/SettingRotatableExpandableController;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$12;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    # getter for: Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempColumn:I
    invoke-static {v2}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$1100(Lcom/lge/camera/controller/SettingRotatableExpandableController;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$12;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    # getter for: Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempRow:I
    invoke-static {v3}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$700(Lcom/lge/camera/controller/SettingRotatableExpandableController;)I

    move-result v3

    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$12;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    # getter for: Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempKey:Ljava/lang/String;
    invoke-static {v4}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$1200(Lcom/lge/camera/controller/SettingRotatableExpandableController;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/lge/camera/controller/SettingRotatableExpandableController;->openChildView(Landroid/view/ViewGroup;IILjava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$400(Lcom/lge/camera/controller/SettingRotatableExpandableController;Landroid/view/ViewGroup;IILjava/lang/String;)V

    .line 953
    return-void
.end method
