.class Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$1;
.super Ljava/lang/Object;
.source "SettingExpandChildMenuAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;

.field final synthetic val$settingMenu:Lcom/lge/camera/setting/SettingMenu;


# direct methods
.method constructor <init>(Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;Lcom/lge/camera/setting/SettingMenu;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$1;->this$0:Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;

    iput-object p2, p0, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$1;->val$settingMenu:Lcom/lge/camera/setting/SettingMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$1;->val$settingMenu:Lcom/lge/camera/setting/SettingMenu;

    iget-object v0, v0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->removePostRunnable(Ljava/lang/Runnable;)V

    .line 213
    iget-object v0, p0, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$1;->this$0:Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->notifyDataSetChanged()V

    .line 214
    return-void
.end method
