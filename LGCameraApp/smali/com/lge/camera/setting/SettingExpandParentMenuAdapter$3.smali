.class Lcom/lge/camera/setting/SettingExpandParentMenuAdapter$3;
.super Ljava/lang/Object;
.source "SettingExpandParentMenuAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

.field final synthetic val$settingMenu:Lcom/lge/camera/setting/SettingMenu;


# direct methods
.method constructor <init>(Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;Lcom/lge/camera/setting/SettingMenu;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter$3;->this$0:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    iput-object p2, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter$3;->val$settingMenu:Lcom/lge/camera/setting/SettingMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter$3;->val$settingMenu:Lcom/lge/camera/setting/SettingMenu;

    iget-object v0, v0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->removePostRunnable(Ljava/lang/Runnable;)V

    .line 367
    iget-object v0, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter$3;->this$0:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->notifyDataSetChanged()V

    .line 368
    return-void
.end method
