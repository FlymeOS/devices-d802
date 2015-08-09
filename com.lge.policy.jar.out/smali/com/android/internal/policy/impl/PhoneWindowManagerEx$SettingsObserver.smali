.class Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "PhoneWindowManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1384
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    .line 1385
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1386
    return-void
.end method

.method private registerDualWindowKeyContentObserver(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 1405
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_SPLITWINDOW:Z

    if-eqz v0, :cond_0

    .line 1406
    const-string v0, "dual_window"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1408
    :cond_0
    return-void
.end method

.method private registerEasyAccessContentObserver(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 1454
    const-string v0, "accessibility_easy_access_enabled_category"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1457
    return-void
.end method

.method private registerGoHomeFromSetupWizardContentObserver(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeSetupWizard:Lcom/android/internal/policy/impl/HomeSetupWizard;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$100(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Lcom/android/internal/policy/impl/HomeSetupWizard;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeSetupWizard:Lcom/android/internal/policy/impl/HomeSetupWizard;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$100(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Lcom/android/internal/policy/impl/HomeSetupWizard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/HomeSetupWizard;->isUsingGoHomeFromeSetupWizard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1470
    const-string v0, "go_home"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1473
    :cond_0
    return-void
.end method

.method private registerHWMenuKeyContentObserver(Landroid/content/ContentResolver;Z)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "hasNavigationBar"    # Z

    .prologue
    .line 1411
    if-nez p2, :cond_0

    .line 1412
    const-string v0, "set_hw_menu_key_options"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1414
    :cond_0
    return-void
.end method

.method private registerLGShortcutManagerContentObserver(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1445
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$000(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Lcom/android/internal/policy/impl/LGShortcutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->access$000(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Lcom/android/internal/policy/impl/LGShortcutManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHotKeyCustomizing:Z

    if-eqz v0, :cond_0

    .line 1446
    const-string v0, "hotkey_short_package"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1448
    const-string v0, "hotkey_short_class"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1451
    :cond_0
    return-void
.end method

.method private registerShakingGestureContentObserver(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1426
    sget-boolean v0, Lcom/android/internal/policy/impl/LGShortcutManager;->mShakingGesture:Z

    if-eqz v0, :cond_0

    .line 1427
    const-string v0, "isai_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1428
    const-string v0, "isai_mode_select"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1429
    const-string v0, "isai_shortcut_package"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1430
    const-string v0, "isai_shortcut_class"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1432
    :cond_0
    return-void
.end method

.method private registerSmartCoverContentObserver(Landroid/content/ContentResolver;)V
    .locals 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v1, 0x0

    .line 1435
    sget-boolean v0, Lcom/android/internal/policy/impl/SmartCoverUtil;->mSupportSmartCover:Z

    if-eqz v0, :cond_0

    .line 1436
    const-string v0, "cover_type"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1437
    const-string v0, "quick_cover_enable"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1438
    const-string v0, "quick_view_enable"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1440
    :cond_0
    return-void
.end method

.method private registerTouchControlAreaContentObserver(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1461
    const-string v0, "accessibility_touch_control_areas_enable"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1463
    const-string v0, "accessibility_touch_control_areas_service_enable"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1465
    return-void
.end method

.method private registerVolumeLongKeyContentObserver(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 1418
    sget-boolean v0, Lcom/android/internal/policy/impl/LGShortcutManager;->mVolumeKeyLongPressEnabled:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/internal/policy/impl/LGShortcutManager;->mQuickClipVolumeKeyCombo:Z

    if-eqz v0, :cond_1

    .line 1419
    :cond_0
    const-string v0, "shortcut_key_status"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1422
    :cond_1
    return-void
.end method


# virtual methods
.method observe()V
    .locals 2

    .prologue
    .line 1390
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1392
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;->registerLGShortcutManagerContentObserver(Landroid/content/ContentResolver;)V

    .line 1393
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;->registerGoHomeFromSetupWizardContentObserver(Landroid/content/ContentResolver;)V

    .line 1394
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;->registerEasyAccessContentObserver(Landroid/content/ContentResolver;)V

    .line 1395
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;->registerTouchControlAreaContentObserver(Landroid/content/ContentResolver;)V

    .line 1396
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;->registerSmartCoverContentObserver(Landroid/content/ContentResolver;)V

    .line 1397
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;->registerShakingGestureContentObserver(Landroid/content/ContentResolver;)V

    .line 1398
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;->registerVolumeLongKeyContentObserver(Landroid/content/ContentResolver;)V

    .line 1399
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHasNavigationBar:Z

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;->registerHWMenuKeyContentObserver(Landroid/content/ContentResolver;Z)V

    .line 1400
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;->registerDualWindowKeyContentObserver(Landroid/content/ContentResolver;)V

    .line 1402
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->updateSettings()V

    .line 1403
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 1476
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->updateSettings()V

    .line 1477
    return-void
.end method
