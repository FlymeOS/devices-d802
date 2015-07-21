.class Lcom/lge/wifi/impl/WifiServerServiceExt$9;
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
    .line 6213
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$9;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 6217
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 6218
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$9;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    const/4 v1, 0x0

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mVZWCaptivePortalPopUp:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$1702(Lcom/lge/wifi/impl/WifiServerServiceExt;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 6219
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$9;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    const/4 v1, 0x0

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mIsVZWCaptivePortalPopUpShowing:Z
    invoke-static {v0, v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$1802(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z

    .line 6220
    return-void
.end method
