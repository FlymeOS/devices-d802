.class Lcom/android/internal/policy/impl/LGShortcutManager$13;
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
.field private mToast:Landroid/widget/Toast;

.field final synthetic this$0:Lcom/android/internal/policy/impl/LGShortcutManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LGShortcutManager;)V
    .locals 1

    .prologue
    .line 1010
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGShortcutManager$13;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1011
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager$13;->mToast:Landroid/widget/Toast;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1015
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager$13;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    # getter for: Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LGShortcutManager;->access$000(Lcom/android/internal/policy/impl/LGShortcutManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lge/internal/R$string;->guest_mode_toast_string:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1016
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager$13;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    .line 1017
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager$13;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    # getter for: Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LGShortcutManager;->access$000(Lcom/android/internal/policy/impl/LGShortcutManager;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager$13;->mToast:Landroid/widget/Toast;

    .line 1022
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager$13;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1023
    return-void

    .line 1019
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager$13;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
