.class Lcom/lge/wifi/impl/WifiServerServiceExt$10;
.super Ljava/lang/Object;
.source "WifiServerServiceExt.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wifi/impl/WifiServerServiceExt;->showVZWCativePortalPopUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;


# direct methods
.method constructor <init>(Lcom/lge/wifi/impl/WifiServerServiceExt;)V
    .locals 0

    .prologue
    .line 6200
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$10;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 6204
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://google.com"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6205
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6207
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$10;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 6208
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 6209
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$10;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    const/4 v2, 0x0

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mVZWCaptivePortalPopUp:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$1702(Lcom/lge/wifi/impl/WifiServerServiceExt;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 6210
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$10;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    const/4 v2, 0x0

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mIsVZWCaptivePortalPopUpShowing:Z
    invoke-static {v1, v2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$1802(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z

    .line 6211
    return-void
.end method
