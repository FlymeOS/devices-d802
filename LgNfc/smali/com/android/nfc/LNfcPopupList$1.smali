.class Lcom/android/nfc/LNfcPopupList$1;
.super Landroid/content/BroadcastReceiver;
.source "LNfcPopupList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/LNfcPopupList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/LNfcPopupList;


# direct methods
.method constructor <init>(Lcom/android/nfc/LNfcPopupList;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/nfc/LNfcPopupList$1;->this$0:Lcom/android/nfc/LNfcPopupList;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 139
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.lge.nfc.action.NFC_EXCEED_POPUP_RESULT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    const-string v3, "com.lge.nfc.extra.SEND_HCE_SETTING"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 146
    .local v1, "isSettingIntent":Z
    iget-object v3, p0, Lcom/android/nfc/LNfcPopupList$1;->this$0:Lcom/android/nfc/LNfcPopupList;

    # getter for: Lcom/android/nfc/LNfcPopupList;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v3}, Lcom/android/nfc/LNfcPopupList;->access$000(Lcom/android/nfc/LNfcPopupList;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "hcepopup"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 147
    iget-object v3, p0, Lcom/android/nfc/LNfcPopupList$1;->this$0:Lcom/android/nfc/LNfcPopupList;

    # getter for: Lcom/android/nfc/LNfcPopupList;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v3}, Lcom/android/nfc/LNfcPopupList;->access$000(Lcom/android/nfc/LNfcPopupList;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 149
    if-eqz v1, :cond_0

    .line 150
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.lge.settings.NFC_ROUTE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v2, "settingRouteDestIntent":Landroid/content/Intent;
    const v3, 0x10008000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 152
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
