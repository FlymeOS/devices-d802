.class public Lcom/android/server/am/LockToAppRequestDialog;
.super Ljava/lang/Object;
.source "LockToAppRequestDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

.field private mCheckbox:Landroid/widget/CheckBox;

.field private final mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private mRequestedTask:Lcom/android/server/am/TaskRecord;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManagerService"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/am/LockToAppRequestDialog;->mContext:Landroid/content/Context;

    .line 43
    iget-object v0, p0, Lcom/android/server/am/LockToAppRequestDialog;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/server/am/LockToAppRequestDialog;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    .line 45
    iput-object p2, p0, Lcom/android/server/am/LockToAppRequestDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 46
    return-void
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/am/LockToAppRequestDialog;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    .line 50
    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->getInstance(Lcom/android/internal/widget/ILockSettings;)Lcom/android/internal/widget/LockPatternUtilsCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/LockToAppRequestDialog;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/LockToAppRequestDialog;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method private getLockString(I)I
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 58
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/LockToAppRequestDialog;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    const-string v3, "lockscreen.password_type"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5, p1}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    long-to-int v0, v2

    .line 60
    .local v0, "quality":I
    sparse-switch v0, :sswitch_data_0

    .line 79
    .end local v0    # "quality":I
    :cond_0
    :goto_0
    return v1

    .line 63
    .restart local v0    # "quality":I
    :sswitch_0
    const v1, 0x10406c3

    goto :goto_0

    .line 67
    :sswitch_1
    const v1, 0x10406c5

    goto :goto_0

    .line 69
    :sswitch_2
    invoke-direct {p0}, Lcom/android/server/am/LockToAppRequestDialog;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    const-string v3, "lock_pattern_autolock"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, p1}, Lcom/android/internal/widget/ILockSettings;->getBoolean(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    const v1, 0x10406c4

    goto :goto_0

    .line 75
    :sswitch_3
    const v1, 0x10406c6

    goto :goto_0

    .line 77
    .end local v0    # "quality":I
    :catch_0
    move-exception v2

    goto :goto_0

    .line 60
    nop

    :sswitch_data_0
    .sparse-switch
        0x9000 -> :sswitch_3
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public clearPrompt()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/am/LockToAppRequestDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/server/am/LockToAppRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/LockToAppRequestDialog;->mDialog:Landroid/app/AlertDialog;

    .line 87
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 138
    const/4 v0, -0x1

    if-ne v0, p2, :cond_1

    .line 139
    const-string v0, "ActivityManager"

    const-string v1, "accept lock-to-app request"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/android/server/am/LockToAppRequestDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_to_app_exit_locked"

    iget-object v0, p0, Lcom/android/server/am/LockToAppRequestDialog;->mCheckbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/LockToAppRequestDialog;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 146
    iget-object v0, p0, Lcom/android/server/am/LockToAppRequestDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/LockToAppRequestDialog;->mRequestedTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->startLockTaskMode(Lcom/android/server/am/TaskRecord;)V

    .line 150
    :goto_1
    return-void

    .line 141
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 148
    :cond_1
    const-string v0, "ActivityManager"

    const-string v1, "ignore lock-to-app request"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public showLockTaskPrompt(Lcom/android/server/am/TaskRecord;)V
    .locals 9
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/server/am/LockToAppRequestDialog;->clearPrompt()V

    .line 91
    iput-object p1, p0, Lcom/android/server/am/LockToAppRequestDialog;->mRequestedTask:Lcom/android/server/am/TaskRecord;

    .line 92
    iget v6, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-direct {p0, v6}, Lcom/android/server/am/LockToAppRequestDialog;->getLockString(I)I

    move-result v4

    .line 94
    .local v4, "unlockStringId":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 95
    .local v2, "r":Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/android/server/am/LockToAppRequestDialog;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    const v6, 0x10406be

    :goto_0
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "description":Ljava/lang/String;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/server/am/LockToAppRequestDialog;->mContext:Landroid/content/Context;

    sget v8, Lcom/lge/internal/R$style;->Theme_LGE_White_Dialog_Alert:I

    invoke-direct {v6, v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v7, 0x10406bc

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x10406c0

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x10406bf

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 103
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    if-eqz v4, :cond_0

    .line 104
    const v6, 0x109006b

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    .line 106
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/am/LockToAppRequestDialog;->mDialog:Landroid/app/AlertDialog;

    .line 108
    iget-object v6, p0, Lcom/android/server/am/LockToAppRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 109
    iget-object v6, p0, Lcom/android/server/am/LockToAppRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 111
    iget-object v6, p0, Lcom/android/server/am/LockToAppRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 113
    if-eqz v4, :cond_3

    .line 114
    iget-object v6, p0, Lcom/android/server/am/LockToAppRequestDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "unlockString":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/am/LockToAppRequestDialog;->mDialog:Landroid/app/AlertDialog;

    const v7, 0x102031d

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/android/server/am/LockToAppRequestDialog;->mCheckbox:Landroid/widget/CheckBox;

    .line 116
    iget-object v6, p0, Lcom/android/server/am/LockToAppRequestDialog;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v6, p0, Lcom/android/server/am/LockToAppRequestDialog;->mCheckbox:Landroid/widget/CheckBox;

    new-instance v7, Lcom/android/server/am/LockToAppRequestDialog$1;

    invoke-direct {v7, p0}, Lcom/android/server/am/LockToAppRequestDialog$1;-><init>(Lcom/android/server/am/LockToAppRequestDialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/LockToAppRequestDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_to_app_exit_locked"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x1

    .line 128
    .local v5, "useLock":Z
    :goto_1
    iget-object v6, p0, Lcom/android/server/am/LockToAppRequestDialog;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v5}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v3    # "unlockString":Ljava/lang/String;
    .end local v5    # "useLock":Z
    :goto_2
    return-void

    .line 95
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "description":Ljava/lang/String;
    :cond_1
    const v6, 0x10406bd

    goto/16 :goto_0

    .line 126
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v1    # "description":Ljava/lang/String;
    .restart local v3    # "unlockString":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 132
    .end local v3    # "unlockString":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/am/LockToAppRequestDialog;->mCheckbox:Landroid/widget/CheckBox;

    goto :goto_2

    .line 129
    .restart local v3    # "unlockString":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_2
.end method
