.class Lcom/android/nfc/LNfcDispatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "LNfcDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/LNfcDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/LNfcDispatcher;


# direct methods
.method constructor <init>(Lcom/android/nfc/LNfcDispatcher;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/nfc/LNfcDispatcher$1;->this$0:Lcom/android/nfc/LNfcDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v7, 0x10000000

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 423
    if-nez p2, :cond_1

    .line 424
    # getter for: Lcom/android/nfc/LNfcDispatcher;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/LNfcDispatcher;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "intent object is null"

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    iget-object v3, p0, Lcom/android/nfc/LNfcDispatcher$1;->this$0:Lcom/android/nfc/LNfcDispatcher;

    iget-object v3, v3, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/nfc/LNfcDispatcher$1;->this$0:Lcom/android/nfc/LNfcDispatcher;

    # getter for: Lcom/android/nfc/LNfcDispatcher;->mLReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v4}, Lcom/android/nfc/LNfcDispatcher;->access$100(Lcom/android/nfc/LNfcDispatcher;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 429
    const-string v3, "com.lge.nfc.intent.extra.send_intent"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 431
    .local v0, "innerIntent":Landroid/content/Intent;
    if-nez v0, :cond_2

    .line 432
    # getter for: Lcom/android/nfc/LNfcDispatcher;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/LNfcDispatcher;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Invalid Sequence : innerIntent is null"

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :cond_2
    const-string v3, "com.lge.nfc.action.vzw_popup_positive_result"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 436
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v2

    .line 438
    .local v2, "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    if-eqz v2, :cond_3

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAddonPreference(I)Z

    move-result v3

    if-ne v3, v6, :cond_3

    .line 440
    const/16 v3, 0x64

    invoke-virtual {v2, v3, v6}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcAddonPreference(IZ)Z

    .line 443
    :cond_3
    const-string v3, "com.lge.nfc.extra.popup_checkbox"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 444
    .local v1, "ischeckbox":Z
    if-eqz v1, :cond_4

    .line 445
    iget-object v3, p0, Lcom/android/nfc/LNfcDispatcher$1;->this$0:Lcom/android/nfc/LNfcDispatcher;

    const v4, 0x7f08003f

    const v5, 0x7f080030

    # invokes: Lcom/android/nfc/LNfcDispatcher;->makeConfirmPopupDialogIntent(Landroid/content/Intent;II)V
    invoke-static {v3, v0, v4, v5}, Lcom/android/nfc/LNfcDispatcher;->access$200(Lcom/android/nfc/LNfcDispatcher;Landroid/content/Intent;II)V

    goto :goto_0

    .line 447
    :cond_4
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 448
    iget-object v3, p0, Lcom/android/nfc/LNfcDispatcher$1;->this$0:Lcom/android/nfc/LNfcDispatcher;

    iget-object v3, v3, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 450
    .end local v1    # "ischeckbox":Z
    .end local v2    # "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    :cond_5
    const-string v3, "com.lge.nfc.action.gsma_popup_positive_result"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 451
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v2

    .line 452
    .restart local v2    # "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    const-string v3, "com.lge.nfc.extra.popup_checkbox"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 454
    .restart local v1    # "ischeckbox":Z
    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    .line 455
    invoke-virtual {v2, v6, v5}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcAddonPreference(IZ)Z

    move-result v3

    if-nez v3, :cond_6

    .line 456
    # getter for: Lcom/android/nfc/LNfcDispatcher;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/LNfcDispatcher;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Invalid Sequence : default checkbox is NOT saved"

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :cond_6
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 460
    iget-object v3, p0, Lcom/android/nfc/LNfcDispatcher$1;->this$0:Lcom/android/nfc/LNfcDispatcher;

    iget-object v3, v3, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 462
    .end local v1    # "ischeckbox":Z
    .end local v2    # "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    :cond_7
    const-string v3, "com.lge.nfc.action.confirmpopup_positive_result"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "com.lge.nfc.action.emptypopup_positive_result"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 465
    :cond_8
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v2

    .line 466
    .restart local v2    # "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    if-eqz v2, :cond_9

    .line 467
    invoke-virtual {v2, v6, v5}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcAddonPreference(IZ)Z

    move-result v3

    if-nez v3, :cond_9

    .line 468
    # getter for: Lcom/android/nfc/LNfcDispatcher;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/LNfcDispatcher;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Invalid Sequence : default checkbox is NOT saved"

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :cond_9
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 472
    iget-object v3, p0, Lcom/android/nfc/LNfcDispatcher$1;->this$0:Lcom/android/nfc/LNfcDispatcher;

    iget-object v3, v3, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0
.end method
