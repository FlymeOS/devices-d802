.class Lcom/lge/wapservice/utils/ReceiveDialog$1;
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
    .line 73
    iput-object p1, p0, Lcom/lge/wapservice/utils/ReceiveDialog$1;->this$0:Lcom/lge/wapservice/utils/ReceiveDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 75
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/wapservice/utils/ReceiveDialog$1;->this$0:Lcom/lge/wapservice/utils/ReceiveDialog;

    # getter for: Lcom/lge/wapservice/utils/ReceiveDialog;->document:[B
    invoke-static {v2}, Lcom/lge/wapservice/utils/ReceiveDialog;->access$000(Lcom/lge/wapservice/utils/ReceiveDialog;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/lge/wapservice/utils/LgeUtils;->hexConvert([B)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "data":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.wapservice.prov"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "sec"

    iget-object v3, p0, Lcom/lge/wapservice/utils/ReceiveDialog$1;->this$0:Lcom/lge/wapservice/utils/ReceiveDialog;

    # getter for: Lcom/lge/wapservice/utils/ReceiveDialog;->sec:Ljava/lang/String;
    invoke-static {v3}, Lcom/lge/wapservice/utils/ReceiveDialog;->access$100(Lcom/lge/wapservice/utils/ReceiveDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v2, "mac"

    iget-object v3, p0, Lcom/lge/wapservice/utils/ReceiveDialog$1;->this$0:Lcom/lge/wapservice/utils/ReceiveDialog;

    # getter for: Lcom/lge/wapservice/utils/ReceiveDialog;->mac:Ljava/lang/String;
    invoke-static {v3}, Lcom/lge/wapservice/utils/ReceiveDialog;->access$200(Lcom/lge/wapservice/utils/ReceiveDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v2, "msguri"

    iget-object v3, p0, Lcom/lge/wapservice/utils/ReceiveDialog$1;->this$0:Lcom/lge/wapservice/utils/ReceiveDialog;

    # getter for: Lcom/lge/wapservice/utils/ReceiveDialog;->msguri:Ljava/lang/String;
    invoke-static {v3}, Lcom/lge/wapservice/utils/ReceiveDialog;->access$300(Lcom/lge/wapservice/utils/ReceiveDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v2, "provSubID"

    iget-object v3, p0, Lcom/lge/wapservice/utils/ReceiveDialog$1;->this$0:Lcom/lge/wapservice/utils/ReceiveDialog;

    # getter for: Lcom/lge/wapservice/utils/ReceiveDialog;->phoneId:I
    invoke-static {v3}, Lcom/lge/wapservice/utils/ReceiveDialog;->access$400(Lcom/lge/wapservice/utils/ReceiveDialog;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    const-string v2, "android.intent.action.cp.install"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    iget-object v2, p0, Lcom/lge/wapservice/utils/ReceiveDialog$1;->this$0:Lcom/lge/wapservice/utils/ReceiveDialog;

    const-string v3, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v2, v1, v3}, Lcom/lge/wapservice/utils/ReceiveDialog;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcom/lge/wapservice/utils/ReceiveDialog$1;->this$0:Lcom/lge/wapservice/utils/ReceiveDialog;

    invoke-virtual {v2}, Lcom/lge/wapservice/utils/ReceiveDialog;->finish()V

    .line 88
    return-void
.end method
