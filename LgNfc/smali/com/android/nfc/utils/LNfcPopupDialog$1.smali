.class Lcom/android/nfc/utils/LNfcPopupDialog$1;
.super Ljava/lang/Object;
.source "LNfcPopupDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/utils/LNfcPopupDialog;->createView(Ljava/lang/String;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/utils/LNfcPopupDialog;


# direct methods
.method constructor <init>(Lcom/android/nfc/utils/LNfcPopupDialog;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/nfc/utils/LNfcPopupDialog$1;->this$0:Lcom/android/nfc/utils/LNfcPopupDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupDialog$1;->this$0:Lcom/android/nfc/utils/LNfcPopupDialog;

    # getter for: Lcom/android/nfc/utils/LNfcPopupDialog;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/nfc/utils/LNfcPopupDialog;->access$000(Lcom/android/nfc/utils/LNfcPopupDialog;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    # getter for: Lcom/android/nfc/utils/LNfcPopupDialog;->DBG:Z
    invoke-static {}, Lcom/android/nfc/utils/LNfcPopupDialog;->access$100()Z

    move-result v0

    const-string v1, "LNfcPopupDialog"

    const-string v2, "Checkbox Click : checked"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupDialog$1;->this$0:Lcom/android/nfc/utils/LNfcPopupDialog;

    const/4 v1, 0x1

    # setter for: Lcom/android/nfc/utils/LNfcPopupDialog;->mIsCheck:Z
    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcPopupDialog;->access$202(Lcom/android/nfc/utils/LNfcPopupDialog;Z)Z

    .line 117
    :goto_0
    return-void

    .line 114
    :cond_0
    # getter for: Lcom/android/nfc/utils/LNfcPopupDialog;->DBG:Z
    invoke-static {}, Lcom/android/nfc/utils/LNfcPopupDialog;->access$100()Z

    move-result v0

    const-string v1, "LNfcPopupDialog"

    const-string v2, "Checkbox Click : unchecked"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupDialog$1;->this$0:Lcom/android/nfc/utils/LNfcPopupDialog;

    const/4 v1, 0x0

    # setter for: Lcom/android/nfc/utils/LNfcPopupDialog;->mIsCheck:Z
    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcPopupDialog;->access$202(Lcom/android/nfc/utils/LNfcPopupDialog;Z)Z

    goto :goto_0
.end method
