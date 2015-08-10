.class public Lcom/android/nfc/handover/ConfirmConnectActivity;
.super Landroid/app/Activity;
.source "ConfirmConnectActivity.java"


# instance fields
.field mDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static final init$_aroundBody0(Lcom/android/nfc/handover/ConfirmConnectActivity;Landroid/content/Context;I)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 35
    invoke-direct {v0, p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method private static final init$_aroundBody1$advice(Lcom/android/nfc/handover/ConfirmConnectActivity;Landroid/content/Context;ILcom/android/nfc/handover/LConfirmConnectActivity;Landroid/content/Context;ILcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog$Builder;
    .locals 10

    .prologue
    .line 24
    move-object v3, p0

    .local v3, "ajc$this":Lcom/android/nfc/handover/ConfirmConnectActivity;
    move-object v4, p1

    .local v4, "context":Landroid/content/Context;
    move v5, p2

    .local v5, "theme":I
    move-object v6, p3

    .local v6, "ajc$aspectInstance":Lcom/android/nfc/handover/LConfirmConnectActivity;
    move-object v4, p4

    move v5, p5

    move-object/from16 v9, p6

    .local v9, "ajc$aroundClosure":Lcom/lge/aspectj/runtime/internal/AroundClosure;
    invoke-static {}, Lcom/android/nfc/handover/LConfirmConnectActivity;->ajc$inlineAccessFieldGet$com_android_nfc_handover_LConfirmConnectActivity$com_android_nfc_handover_LConfirmConnectActivity$DBG()Z

    move-result v0

    const-string v1, "LConfirmConnectActivity.aj"

    const-string v2, "around() : call(AlertDialog.Builder.new(..))"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static final setMessage_aroundBody2(Lcom/android/nfc/handover/ConfirmConnectActivity;Landroid/app/AlertDialog$Builder;Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static final setMessage_aroundBody3$advice(Lcom/android/nfc/handover/ConfirmConnectActivity;Landroid/app/AlertDialog$Builder;Ljava/lang/CharSequence;Lcom/android/nfc/handover/LConfirmConnectActivity;Lcom/android/nfc/handover/ConfirmConnectActivity;Ljava/lang/CharSequence;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog$Builder;
    .locals 11

    .prologue
    .line 30
    move-object v4, p0

    .local v4, "ajc$this":Lcom/android/nfc/handover/ConfirmConnectActivity;
    move-object v5, p1

    .local v5, "target":Landroid/app/AlertDialog$Builder;
    move-object v6, p2

    .local v6, "message":Ljava/lang/CharSequence;
    move-object v7, p3

    .local v7, "ajc$aspectInstance":Lcom/android/nfc/handover/LConfirmConnectActivity;
    move-object v8, p4

    .local v8, "activity":Lcom/android/nfc/handover/ConfirmConnectActivity;
    move-object/from16 v6, p5

    move-object/from16 v10, p6

    .local v10, "ajc$aroundClosure":Lcom/lge/aspectj/runtime/internal/AroundClosure;
    invoke-static {}, Lcom/android/nfc/handover/LConfirmConnectActivity;->ajc$inlineAccessFieldGet$com_android_nfc_handover_LConfirmConnectActivity$com_android_nfc_handover_LConfirmConnectActivity$DBG()Z

    move-result v1

    const-string v2, "LConfirmConnectActivity.aj"

    const-string v3, "around() : call(* AlertDialog.Builder.setMessage(CharSequence))"

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v8}, Lcom/android/nfc/handover/ConfirmConnectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 32
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f080035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v5, v1}, Lcom/android/nfc/handover/ConfirmConnectActivity;->setMessage_aroundBody2(Lcom/android/nfc/handover/ConfirmConnectActivity;Landroid/app/AlertDialog$Builder;Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v11, 0x0

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/4 v2, 0x5

    invoke-static {}, Lcom/android/nfc/handover/LConfirmConnectActivity;->aspectOf()Lcom/android/nfc/handover/LConfirmConnectActivity;

    move-result-object v3

    move-object v0, p0

    move-object v1, p0

    move-object v4, p0

    move v5, v2

    invoke-static/range {v0 .. v6}, Lcom/android/nfc/handover/ConfirmConnectActivity;->init$_aroundBody1$advice(Lcom/android/nfc/handover/ConfirmConnectActivity;Landroid/content/Context;ILcom/android/nfc/handover/LConfirmConnectActivity;Landroid/content/Context;ILcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 37
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/nfc/handover/ConfirmConnectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 38
    .local v9, "launchIntent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 39
    iget-object v0, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/nfc/handover/ConfirmConnectActivity;->finish()V

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/handover/ConfirmConnectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 41
    .local v10, "res":Landroid/content/res/Resources;
    iget-object v0, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v8

    .line 42
    .local v8, "deviceName":Ljava/lang/String;
    :goto_0
    const v0, 0x7f080014

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v8, v3, v11

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "confirmString":Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/handover/LConfirmConnectActivity;->aspectOf()Lcom/android/nfc/handover/LConfirmConnectActivity;

    move-result-object v3

    move-object v0, p0

    move-object v4, p0

    move-object v5, v2

    invoke-static/range {v0 .. v6}, Lcom/android/nfc/handover/ConfirmConnectActivity;->setMessage_aroundBody3$advice(Lcom/android/nfc/handover/ConfirmConnectActivity;Landroid/app/AlertDialog$Builder;Ljava/lang/CharSequence;Lcom/android/nfc/handover/LConfirmConnectActivity;Lcom/android/nfc/handover/ConfirmConnectActivity;Ljava/lang/CharSequence;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f080015

    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/nfc/handover/ConfirmConnectActivity$2;

    invoke-direct {v4, p0}, Lcom/android/nfc/handover/ConfirmConnectActivity$2;-><init>(Lcom/android/nfc/handover/ConfirmConnectActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f080016

    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/nfc/handover/ConfirmConnectActivity$1;

    invoke-direct {v4, p0}, Lcom/android/nfc/handover/ConfirmConnectActivity$1;-><init>(Lcom/android/nfc/handover/ConfirmConnectActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 64
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 65
    .local v7, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 66
    return-void

    .line 41
    .end local v2    # "confirmString":Ljava/lang/String;
    .end local v7    # "alert":Landroid/app/AlertDialog;
    .end local v8    # "deviceName":Ljava/lang/String;
    :cond_1
    const-string v8, ""

    goto :goto_0
.end method
