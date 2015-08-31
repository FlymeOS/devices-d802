.class Lcom/lge/wapservice/utils/ReceiveDialog$2;
.super Ljava/lang/Object;
.source "ReceiveDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wapservice/utils/ReceiveDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wapservice/utils/ReceiveDialog;


# direct methods
.method constructor <init>(Lcom/lge/wapservice/utils/ReceiveDialog;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/lge/wapservice/utils/ReceiveDialog$2;->this$0:Lcom/lge/wapservice/utils/ReceiveDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 69
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 70
    iget-object v0, p0, Lcom/lge/wapservice/utils/ReceiveDialog$2;->this$0:Lcom/lge/wapservice/utils/ReceiveDialog;

    invoke-virtual {v0}, Lcom/lge/wapservice/utils/ReceiveDialog;->finish()V

    .line 71
    return-void
.end method
