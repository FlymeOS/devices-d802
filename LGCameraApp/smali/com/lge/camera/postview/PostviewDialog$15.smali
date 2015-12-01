.class Lcom/lge/camera/postview/PostviewDialog$15;
.super Ljava/lang/Object;
.source "PostviewDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/postview/PostviewDialog;->createRefocusWarningPopup()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/postview/PostviewDialog;

.field final synthetic val$userCheck:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/lge/camera/postview/PostviewDialog;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/lge/camera/postview/PostviewDialog$15;->this$0:Lcom/lge/camera/postview/PostviewDialog;

    iput-object p2, p0, Lcom/lge/camera/postview/PostviewDialog$15;->val$userCheck:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 431
    iget-object v1, p0, Lcom/lge/camera/postview/PostviewDialog$15;->this$0:Lcom/lge/camera/postview/PostviewDialog;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostviewDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/ShotPostviewActivity;

    .line 432
    .local v0, "act":Lcom/lge/camera/ShotPostviewActivity;
    if-eqz v0, :cond_0

    .line 433
    iget-object v1, p0, Lcom/lge/camera/postview/PostviewDialog$15;->val$userCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Lcom/lge/camera/ShotPostviewActivity;->doRefocusWarningNegativeClick(Landroid/widget/CheckBox;)V

    .line 435
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/postview/PostviewDialog$15;->this$0:Lcom/lge/camera/postview/PostviewDialog;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostviewDialog;->dismiss()V

    .line 436
    return-void
.end method
