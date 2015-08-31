.class Lcom/lge/wapservice/utils/ReceiveDialog$3;
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
    .line 112
    iput-object p1, p0, Lcom/lge/wapservice/utils/ReceiveDialog$3;->this$0:Lcom/lge/wapservice/utils/ReceiveDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 114
    const-string v2, "smsto:Setting Message"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 115
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 116
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 117
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "android.intent.action.SENDTO"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 119
    iget-object v2, p0, Lcom/lge/wapservice/utils/ReceiveDialog$3;->this$0:Lcom/lge/wapservice/utils/ReceiveDialog;

    invoke-virtual {v2, v0}, Lcom/lge/wapservice/utils/ReceiveDialog;->startActivity(Landroid/content/Intent;)V

    .line 121
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/lge/wapservice/utils/ReceiveDialog$3;->this$0:Lcom/lge/wapservice/utils/ReceiveDialog;

    invoke-virtual {v2}, Lcom/lge/wapservice/utils/ReceiveDialog;->finish()V

    .line 122
    return-void
.end method
