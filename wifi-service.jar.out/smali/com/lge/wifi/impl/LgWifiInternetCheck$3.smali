.class Lcom/lge/wifi/impl/LgWifiInternetCheck$3;
.super Ljava/lang/Object;
.source "LgWifiInternetCheck.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wifi/impl/LgWifiInternetCheck;->showVZWNoWifiInternetConnectionPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/LgWifiInternetCheck;


# direct methods
.method constructor <init>(Lcom/lge/wifi/impl/LgWifiInternetCheck;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck$3;->this$0:Lcom/lge/wifi/impl/LgWifiInternetCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 440
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_ADVANCED_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 444
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck$3;->this$0:Lcom/lge/wifi/impl/LgWifiInternetCheck;

    # getter for: Lcom/lge/wifi/impl/LgWifiInternetCheck;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->access$1300(Lcom/lge/wifi/impl/LgWifiInternetCheck;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 445
    return-void
.end method
