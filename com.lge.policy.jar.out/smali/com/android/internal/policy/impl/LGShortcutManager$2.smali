.class Lcom/android/internal/policy/impl/LGShortcutManager$2;
.super Ljava/lang/Object;
.source "LGShortcutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LGShortcutManager;->showQButtonGuideDialog()V
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
    .line 310
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGShortcutManager$2;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 314
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager$2;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/LGShortcutManager;->mQButtonDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_1

    .line 315
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager$2;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    # getter for: Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LGShortcutManager;->access$000(Lcom/android/internal/policy/impl/LGShortcutManager;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/lge/internal/R$style;->Theme_LGE_White_Dialog_Alert:I

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 316
    .local v0, "ab":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/lge/internal/R$string;->sp_quick_button_guide_NORMAL:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 317
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager$2;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    # getter for: Lcom/android/internal/policy/impl/LGShortcutManager;->mFourthKeySharing:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/LGShortcutManager;->access$100(Lcom/android/internal/policy/impl/LGShortcutManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    sget v1, Lcom/lge/internal/R$string;->sp_front_quick_button_guide_popup_MLINE:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 322
    :goto_0
    sget v1, Lcom/lge/internal/R$string;->dlg_ok:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 323
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager$2;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/policy/impl/LGShortcutManager;->mQButtonDialog:Landroid/app/AlertDialog;

    .line 324
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager$2;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/LGShortcutManager;->mQButtonDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 325
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager$2;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    # getter for: Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LGShortcutManager;->access$000(Lcom/android/internal/policy/impl/LGShortcutManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "first_q_button"

    const-string v3, "q_button_pressed"

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 327
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager$2;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/LGShortcutManager;->mQButtonDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 334
    .end local v0    # "ab":Landroid/app/AlertDialog$Builder;
    :goto_1
    return-void

    .line 320
    .restart local v0    # "ab":Landroid/app/AlertDialog$Builder;
    :cond_0
    sget v1, Lcom/lge/internal/R$string;->sp_side_quick_button_guide_popup_MLINE:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 332
    .end local v0    # "ab":Landroid/app/AlertDialog$Builder;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 329
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager$2;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/LGShortcutManager;->mQButtonDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 330
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager$2;->this$0:Lcom/android/internal/policy/impl/LGShortcutManager;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/policy/impl/LGShortcutManager;->mQButtonDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
