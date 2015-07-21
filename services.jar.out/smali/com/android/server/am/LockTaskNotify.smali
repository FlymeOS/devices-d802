.class public Lcom/android/server/am/LockTaskNotify;
.super Ljava/lang/Object;
.source "LockTaskNotify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/LockTaskNotify$1;,
        Lcom/android/server/am/LockTaskNotify$H;,
        Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LockTaskNotify"


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/am/LockTaskNotify$H;

.field private mLastToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    .line 51
    iget-object v0, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/server/am/LockTaskNotify;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 53
    new-instance v0, Lcom/android/server/am/LockTaskNotify$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/LockTaskNotify$H;-><init>(Lcom/android/server/am/LockTaskNotify;Lcom/android/server/am/LockTaskNotify$1;)V

    iput-object v0, p0, Lcom/android/server/am/LockTaskNotify;->mHandler:Lcom/android/server/am/LockTaskNotify$H;

    .line 54
    return-void
.end method


# virtual methods
.method public getSwHwKeyCase()Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;
    .locals 9

    .prologue
    .line 89
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    .line 90
    .local v3, "mWindowManagerService":Landroid/view/IWindowManager;
    const/4 v1, 0x1

    .line 92
    .local v1, "hasNav":Z
    :try_start_0
    invoke-interface {v3}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 96
    :goto_0
    iget-object v6, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 97
    .local v4, "resolver":Landroid/content/ContentResolver;
    const-string v6, "set_hw_menu_key_options"

    const/4 v7, 0x0

    const/4 v8, -0x2

    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 99
    .local v2, "mHWMenuKeyDB":I
    if-eqz v1, :cond_0

    .line 100
    sget-object v5, Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;->SWKEY:Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;

    .line 108
    .local v5, "swHwKeyCase":Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;
    :goto_1
    return-object v5

    .line 93
    .end local v2    # "mHWMenuKeyDB":I
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "swHwKeyCase":Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "LockTaskNotify"

    const-string v7, "[chooseToastString()] Exception is occured in getting hasNav values"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "mHWMenuKeyDB":I
    .restart local v4    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    .line 103
    sget-object v5, Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;->HWRECENTKEY:Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;

    .restart local v5    # "swHwKeyCase":Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;
    goto :goto_1

    .line 105
    .end local v5    # "swHwKeyCase":Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;
    :cond_1
    sget-object v5, Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;->HWMENUKEY:Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;

    .restart local v5    # "swHwKeyCase":Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;
    goto :goto_1
.end method

.method public getToastString(Z)I
    .locals 2
    .param p1, "isAccessible"    # Z

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/server/am/LockTaskNotify;->getSwHwKeyCase()Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;

    move-result-object v0

    .line 69
    .local v0, "getSwHwKeyCase":Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 70
    sget-object v1, Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;->HWMENUKEY:Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;

    if-ne v0, v1, :cond_0

    .line 71
    const v1, 0x10406ba

    .line 82
    :goto_0
    return v1

    .line 73
    :cond_0
    const v1, 0x10406b9

    goto :goto_0

    .line 77
    :cond_1
    sget-object v1, Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;->HWRECENTKEY:Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;

    if-ne v0, v1, :cond_2

    .line 78
    const v1, 0x10406b7

    goto :goto_0

    .line 79
    :cond_2
    sget-object v1, Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;->HWMENUKEY:Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;

    if-ne v0, v1, :cond_3

    .line 80
    const v1, 0x10406b8

    goto :goto_0

    .line 82
    :cond_3
    const v1, 0x10406b5

    goto :goto_0
.end method

.method public handleShowToast(Z)V
    .locals 4
    .param p1, "isLocked"    # Z

    .prologue
    const/4 v3, 0x1

    .line 111
    iget-object v2, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_2

    const v1, 0x10406bb

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "text":Ljava/lang/String;
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/LockTaskNotify;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/android/server/am/LockTaskNotify;->getToastString(Z)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/LockTaskNotify;->mLastToast:Landroid/widget/Toast;

    if-eqz v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/android/server/am/LockTaskNotify;->mLastToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/LockTaskNotify;->mLastToast:Landroid/widget/Toast;

    .line 120
    iget-object v1, p0, Lcom/android/server/am/LockTaskNotify;->mLastToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 121
    return-void

    .line 111
    .end local v0    # "text":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/LockTaskNotify;->getToastString(Z)I

    move-result v1

    goto :goto_0
.end method

.method public show(Z)V
    .locals 4
    .param p1, "starting"    # Z

    .prologue
    .line 124
    const v0, 0x10406c2

    .line 125
    .local v0, "showString":I
    if-eqz p1, :cond_0

    .line 126
    const v0, 0x10406c1

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 129
    return-void
.end method

.method public showToast(Z)V
    .locals 4
    .param p1, "isLocked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 57
    iget-object v2, p0, Lcom/android/server/am/LockTaskNotify;->mHandler:Lcom/android/server/am/LockTaskNotify$H;

    const/4 v3, 0x3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/am/LockTaskNotify$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 58
    return-void

    :cond_0
    move v0, v1

    .line 57
    goto :goto_0
.end method
