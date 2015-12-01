.class Lcom/lge/camera/controller/SettingRotatableExpandableController$8;
.super Ljava/lang/Object;
.source "SettingRotatableExpandableController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/SettingRotatableExpandableController;
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
    .line 738
    iput-object p1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$8;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$8;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    # invokes: Lcom/lge/camera/controller/SettingRotatableExpandableController;->onOpenChildAnimationEnd()V
    invoke-static {v0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$500(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V

    .line 741
    return-void
.end method
