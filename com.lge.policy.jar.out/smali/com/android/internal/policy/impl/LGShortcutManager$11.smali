.class Lcom/android/internal/policy/impl/LGShortcutManager$11;
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
    .line 974
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGShortcutManager$11;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 977
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager$11;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/impl/LGShortcutManager;->mHotKeyPressed:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LGShortcutManager;->access$1002(Lcom/android/internal/policy/impl/LGShortcutManager;Z)Z

    .line 978
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager$11;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    const-string v1, "com.android.settings"

    const-string v2, "com.lge.settings.HOTKEY_SETTINGS"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/LGShortcutManager;->executeHotKeySettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    return-void
.end method
