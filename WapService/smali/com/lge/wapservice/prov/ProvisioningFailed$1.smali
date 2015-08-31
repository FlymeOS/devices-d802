.class Lcom/lge/wapservice/prov/ProvisioningFailed$1;
.super Ljava/lang/Object;
.source "ProvisioningFailed.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wapservice/prov/ProvisioningFailed;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wapservice/prov/ProvisioningFailed;


# direct methods
.method constructor <init>(Lcom/lge/wapservice/prov/ProvisioningFailed;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/lge/wapservice/prov/ProvisioningFailed$1;->this$0:Lcom/lge/wapservice/prov/ProvisioningFailed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 56
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 57
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningFailed$1;->this$0:Lcom/lge/wapservice/prov/ProvisioningFailed;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/wapservice/utils/ReceiveDialog;->startMoveToMsgDialog(Landroid/content/Context;Z)V

    .line 58
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningFailed$1;->this$0:Lcom/lge/wapservice/prov/ProvisioningFailed;

    invoke-virtual {v0}, Lcom/lge/wapservice/prov/ProvisioningFailed;->finish()V

    .line 59
    return-void
.end method
