.class Lcom/android/internal/policy/impl/LGShortcutManager$16;
.super Ljava/lang/Object;
.source "LGShortcutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LGShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LGShortcutManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LGShortcutManager;)V
    .locals 0

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGShortcutManager$16;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1115
    sput-boolean v2, Lcom/android/internal/policy/impl/LGShortcutManager;->mMenuLongPressed:Z

    .line 1116
    sget v0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHWMenuKeyDB:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1117
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager$16;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    # getter for: Lcom/android/internal/policy/impl/LGShortcutManager;->mPWMEx:Lcom/android/internal/policy/impl/PhoneWindowManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LGShortcutManager;->access$200(Lcom/android/internal/policy/impl/LGShortcutManager;)Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPreloadRecentApps()V

    .line 1119
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager$16;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    # getter for: Lcom/android/internal/policy/impl/LGShortcutManager;->mPWMEx:Lcom/android/internal/policy/impl/PhoneWindowManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LGShortcutManager;->access$200(Lcom/android/internal/policy/impl/LGShortcutManager;)Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-result-object v0

    invoke-virtual {v0, v3, v2, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1120
    const/16 v0, 0x52

    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->injectKeyEvent(I)V

    .line 1127
    :cond_0
    :goto_0
    return-void

    .line 1122
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager$16;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    # getter for: Lcom/android/internal/policy/impl/LGShortcutManager;->mPWMEx:Lcom/android/internal/policy/impl/PhoneWindowManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LGShortcutManager;->access$200(Lcom/android/internal/policy/impl/LGShortcutManager;)Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1123
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager$16;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    # getter for: Lcom/android/internal/policy/impl/LGShortcutManager;->mPWMEx:Lcom/android/internal/policy/impl/PhoneWindowManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LGShortcutManager;->access$200(Lcom/android/internal/policy/impl/LGShortcutManager;)Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-result-object v0

    invoke-virtual {v0, v3, v2, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1124
    const/16 v0, 0xbb

    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->injectKeyEvent(I)V

    goto :goto_0
.end method
