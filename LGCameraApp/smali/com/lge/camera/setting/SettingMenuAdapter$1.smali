.class Lcom/lge/camera/setting/SettingMenuAdapter$1;
.super Ljava/lang/Object;
.source "SettingMenuAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/setting/SettingMenuAdapter;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/setting/SettingMenuAdapter;

.field final synthetic val$settingMenu:Lcom/lge/camera/setting/SettingMenu;


# direct methods
.method constructor <init>(Lcom/lge/camera/setting/SettingMenuAdapter;Lcom/lge/camera/setting/SettingMenu;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/lge/camera/setting/SettingMenuAdapter$1;->this$0:Lcom/lge/camera/setting/SettingMenuAdapter;

    iput-object p2, p0, Lcom/lge/camera/setting/SettingMenuAdapter$1;->val$settingMenu:Lcom/lge/camera/setting/SettingMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenuAdapter$1;->val$settingMenu:Lcom/lge/camera/setting/SettingMenu;

    iget-object v0, v0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->removePostRunnable(Ljava/lang/Runnable;)V

    .line 302
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenuAdapter$1;->this$0:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenuAdapter;->notifyDataSetChanged()V

    .line 303
    return-void
.end method
