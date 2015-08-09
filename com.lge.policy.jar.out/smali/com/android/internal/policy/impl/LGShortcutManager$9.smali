.class Lcom/android/internal/policy/impl/LGShortcutManager$9;
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
    .line 953
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGShortcutManager$9;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 956
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager$9;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    # getter for: Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LGShortcutManager;->access$000(Lcom/android/internal/policy/impl/LGShortcutManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lge/internal/R$string;->qslide_cannot_return_to_app_incomingcall:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 957
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager$9;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    # getter for: Lcom/android/internal/policy/impl/LGShortcutManager;->nExptToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LGShortcutManager;->access$900(Lcom/android/internal/policy/impl/LGShortcutManager;)Landroid/widget/Toast;

    move-result-object v1

    if-nez v1, :cond_0

    .line 958
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager$9;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager$9;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    # getter for: Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LGShortcutManager;->access$000(Lcom/android/internal/policy/impl/LGShortcutManager;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    # setter for: Lcom/android/internal/policy/impl/LGShortcutManager;->nExptToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LGShortcutManager;->access$902(Lcom/android/internal/policy/impl/LGShortcutManager;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 962
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager$9;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    # getter for: Lcom/android/internal/policy/impl/LGShortcutManager;->nExptToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LGShortcutManager;->access$900(Lcom/android/internal/policy/impl/LGShortcutManager;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 963
    return-void

    .line 960
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager$9;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    # getter for: Lcom/android/internal/policy/impl/LGShortcutManager;->nExptToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LGShortcutManager;->access$900(Lcom/android/internal/policy/impl/LGShortcutManager;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
