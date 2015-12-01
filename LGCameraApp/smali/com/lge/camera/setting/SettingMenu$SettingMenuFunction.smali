.class public interface abstract Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;
.super Ljava/lang/Object;
.source "SettingMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/setting/SettingMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SettingMenuFunction"
.end annotation


# virtual methods
.method public abstract addMMSTexture(Lcom/lge/camera/setting/PreferenceGroup;)V
.end method

.method public abstract getContentResolver()Landroid/content/ContentResolver;
.end method

.method public abstract getString(I)Ljava/lang/String;
.end method

.method public abstract initSettingMenu()V
.end method

.method public abstract isAttachIntent()Z
.end method

.method public abstract isMMSIntent()Z
.end method

.method public abstract removePostRunnable(Ljava/lang/Runnable;)V
.end method

.method public abstract removeSettingItem()V
.end method

.method public abstract runOnUiThread(Ljava/lang/Runnable;)V
.end method

.method public abstract setAllChildMenuEnabled(Ljava/lang/String;Z)V
.end method
