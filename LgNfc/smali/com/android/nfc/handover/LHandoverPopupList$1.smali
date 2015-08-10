.class Lcom/android/nfc/handover/LHandoverPopupList$1;
.super Landroid/content/BroadcastReceiver;
.source "LHandoverPopupList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/LHandoverPopupList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/LHandoverPopupList;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/LHandoverPopupList;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/nfc/handover/LHandoverPopupList$1;->this$0:Lcom/android/nfc/handover/LHandoverPopupList;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 145
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "action":Ljava/lang/String;
    const-string v5, "LHandoverPopupList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "action : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v5, p0, Lcom/android/nfc/handover/LHandoverPopupList$1;->this$0:Lcom/android/nfc/handover/LHandoverPopupList;

    # getter for: Lcom/android/nfc/handover/LHandoverPopupList;->mHandoverPopupList:Lcom/android/nfc/handover/LHandoverPopupList;
    invoke-static {v5}, Lcom/android/nfc/handover/LHandoverPopupList;->access$000(Lcom/android/nfc/handover/LHandoverPopupList;)Lcom/android/nfc/handover/LHandoverPopupList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/nfc/handover/LHandoverPopupList;->unregisterIntentFilter()V

    .line 148
    const-string v5, "com.lge.nfc.bluetoothheadset_popup_positive"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 149
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v4

    .line 150
    .local v4, "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    const-string v5, "com.lge.nfc.extra.popup_checkbox"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 152
    .local v1, "ischeckbox":Z
    if-eqz v4, :cond_0

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAddonPreference(I)Z

    move-result v5

    if-ne v5, v9, :cond_0

    .line 154
    const/16 v5, 0x65

    invoke-virtual {v4, v5, v9}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcAddonPreference(IZ)Z

    .line 156
    :cond_0
    if-ne v1, v9, :cond_2

    .line 157
    const-string v5, "callback"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 158
    .local v2, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/nfc/handover/LHandoverPopupList$1;->this$0:Lcom/android/nfc/handover/LHandoverPopupList;

    # invokes: Lcom/android/nfc/handover/LHandoverPopupList;->makeConfirmPopupDialogIntent(Landroid/os/Parcelable;)V
    invoke-static {v5, v2}, Lcom/android/nfc/handover/LHandoverPopupList;->access$100(Lcom/android/nfc/handover/LHandoverPopupList;Landroid/os/Parcelable;)V

    .line 187
    .end local v1    # "ischeckbox":Z
    .end local v2    # "msg":Landroid/os/Message;
    .end local v4    # "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    :cond_1
    :goto_0
    return-void

    .line 160
    .restart local v1    # "ischeckbox":Z
    .restart local v4    # "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    :cond_2
    iget-object v5, p0, Lcom/android/nfc/handover/LHandoverPopupList$1;->this$0:Lcom/android/nfc/handover/LHandoverPopupList;

    # getter for: Lcom/android/nfc/handover/LHandoverPopupList;->mCallback:Lcom/android/nfc/handover/LHandoverPopupList$Callback;
    invoke-static {v5}, Lcom/android/nfc/handover/LHandoverPopupList;->access$200(Lcom/android/nfc/handover/LHandoverPopupList;)Lcom/android/nfc/handover/LHandoverPopupList$Callback;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 161
    const-string v5, "callback"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 162
    .local v3, "msgs":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/nfc/handover/LHandoverPopupList$1;->this$0:Lcom/android/nfc/handover/LHandoverPopupList;

    # getter for: Lcom/android/nfc/handover/LHandoverPopupList;->mCallback:Lcom/android/nfc/handover/LHandoverPopupList$Callback;
    invoke-static {v5}, Lcom/android/nfc/handover/LHandoverPopupList;->access$200(Lcom/android/nfc/handover/LHandoverPopupList;)Lcom/android/nfc/handover/LHandoverPopupList$Callback;

    move-result-object v5

    invoke-interface {v5, v8, v9, v3}, Lcom/android/nfc/handover/LHandoverPopupList$Callback;->onHandoverPopupCallback(IZLandroid/os/Parcelable;)V

    goto :goto_0

    .line 166
    .end local v1    # "ischeckbox":Z
    .end local v3    # "msgs":Landroid/os/Message;
    .end local v4    # "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    :cond_3
    const-string v5, "com.lge.nfc.bluetoothheadset_popup_negative"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 167
    iget-object v5, p0, Lcom/android/nfc/handover/LHandoverPopupList$1;->this$0:Lcom/android/nfc/handover/LHandoverPopupList;

    # getter for: Lcom/android/nfc/handover/LHandoverPopupList;->mCallback:Lcom/android/nfc/handover/LHandoverPopupList$Callback;
    invoke-static {v5}, Lcom/android/nfc/handover/LHandoverPopupList;->access$200(Lcom/android/nfc/handover/LHandoverPopupList;)Lcom/android/nfc/handover/LHandoverPopupList$Callback;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 168
    const-string v5, "callback"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 169
    .restart local v2    # "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/nfc/handover/LHandoverPopupList$1;->this$0:Lcom/android/nfc/handover/LHandoverPopupList;

    # getter for: Lcom/android/nfc/handover/LHandoverPopupList;->mCallback:Lcom/android/nfc/handover/LHandoverPopupList$Callback;
    invoke-static {v5}, Lcom/android/nfc/handover/LHandoverPopupList;->access$200(Lcom/android/nfc/handover/LHandoverPopupList;)Lcom/android/nfc/handover/LHandoverPopupList$Callback;

    move-result-object v5

    invoke-interface {v5, v8, v8, v2}, Lcom/android/nfc/handover/LHandoverPopupList$Callback;->onHandoverPopupCallback(IZLandroid/os/Parcelable;)V

    goto :goto_0

    .line 171
    .end local v2    # "msg":Landroid/os/Message;
    :cond_4
    const-string v5, "com.lge.nfc.bluetoothheadset_confirmpopup_positive"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "com.lge.nfc.bluetoothheadset_confirmpopup_negative"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 173
    :cond_5
    const-string v5, "com.lge.nfc.bluetoothheadset_confirmpopup_positive"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 174
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v4

    .line 175
    .restart local v4    # "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    if-eqz v4, :cond_6

    .line 176
    const/4 v5, 0x2

    invoke-virtual {v4, v5, v8}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcAddonPreference(IZ)Z

    move-result v5

    if-nez v5, :cond_6

    .line 177
    const-string v5, "LHandoverPopupList"

    const-string v6, "Invalid Sequence : default checkbox is NOT saved"

    invoke-static {v5, v6}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .end local v4    # "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    :cond_6
    iget-object v5, p0, Lcom/android/nfc/handover/LHandoverPopupList$1;->this$0:Lcom/android/nfc/handover/LHandoverPopupList;

    # getter for: Lcom/android/nfc/handover/LHandoverPopupList;->mCallback:Lcom/android/nfc/handover/LHandoverPopupList$Callback;
    invoke-static {v5}, Lcom/android/nfc/handover/LHandoverPopupList;->access$200(Lcom/android/nfc/handover/LHandoverPopupList;)Lcom/android/nfc/handover/LHandoverPopupList$Callback;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 183
    const-string v5, "callback"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 184
    .restart local v2    # "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/nfc/handover/LHandoverPopupList$1;->this$0:Lcom/android/nfc/handover/LHandoverPopupList;

    # getter for: Lcom/android/nfc/handover/LHandoverPopupList;->mCallback:Lcom/android/nfc/handover/LHandoverPopupList$Callback;
    invoke-static {v5}, Lcom/android/nfc/handover/LHandoverPopupList;->access$200(Lcom/android/nfc/handover/LHandoverPopupList;)Lcom/android/nfc/handover/LHandoverPopupList$Callback;

    move-result-object v5

    invoke-interface {v5, v8, v9, v2}, Lcom/android/nfc/handover/LHandoverPopupList$Callback;->onHandoverPopupCallback(IZLandroid/os/Parcelable;)V

    goto/16 :goto_0
.end method
