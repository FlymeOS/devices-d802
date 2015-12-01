.class public Lcom/lge/camera/controller/DialogController;
.super Lcom/lge/camera/controller/Controller;
.source "DialogController.java"


# instance fields
.field private dialogId:I

.field private dialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mCurrentDialog:Landroid/app/Dialog;

.field private mGet:Lcom/lge/camera/ControllerFunction;

.field private mRotateDialogs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/lge/camera/dialog/RotateDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 2
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 47
    iput-object v1, p0, Lcom/lge/camera/controller/DialogController;->mCurrentDialog:Landroid/app/Dialog;

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    .line 49
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Landroid/util/SparseArray;

    .line 51
    iput-object v1, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    .line 290
    new-instance v0, Lcom/lge/camera/controller/DialogController$3;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/DialogController$3;-><init>(Lcom/lge/camera/controller/DialogController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/DialogController;->dialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 55
    iput-object p1, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/DialogController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/DialogController;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method


# virtual methods
.method public deleteProgressDialog()V
    .locals 2

    .prologue
    .line 457
    const-string v0, "CameraApp"

    const-string v1, "deleteProgressDialog"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0}, Lcom/lge/camera/controller/DialogController;->getDialogID()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    .line 459
    iget-object v0, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/DialogController$6;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/DialogController$6;-><init>(Lcom/lge/camera/controller/DialogController;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 466
    :cond_0
    return-void
.end method

.method public deleteSavingProgressDialog()V
    .locals 2

    .prologue
    .line 489
    const-string v0, "CameraApp"

    const-string v1, "deleteSavingProgressDialog"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0}, Lcom/lge/camera/controller/DialogController;->getDialogID()I

    move-result v0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_0

    .line 491
    iget-object v0, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/DialogController$8;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/DialogController$8;-><init>(Lcom/lge/camera/controller/DialogController;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 498
    :cond_0
    return-void
.end method

.method public dismissCurrentDialog()V
    .locals 6

    .prologue
    .line 326
    iget-object v1, p0, Lcom/lge/camera/controller/DialogController;->mCurrentDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 328
    :try_start_0
    iget v1, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    if-eqz v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->dismissDialog(I)V

    .line 330
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    .line 331
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/camera/controller/DialogController;->mCurrentDialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "CameraApp"

    const-string v2, "dialogId %d is not displaying!"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getCurrentDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lge/camera/controller/DialogController;->mCurrentDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getDialogID()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    return v0
.end method

.method public isRotateDialogVisible()Z
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Landroid/util/SparseArray;

    iget v1, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 382
    const/4 v0, 0x0

    .line 384
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f0a002f

    const v6, 0x1010355

    const/4 v5, 0x0

    .line 237
    const-string v3, "CameraApp"

    const-string v4, "onCreateDialog"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const/4 v2, 0x0

    .line 240
    .local v2, "dialog":Landroid/app/Dialog;
    iget v3, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 241
    const/4 v3, 0x0

    .line 287
    :goto_0
    return-object v3

    .line 244
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 283
    :goto_1
    if-eqz v2, :cond_1

    .line 284
    iget-object v3, p0, Lcom/lge/camera/controller/DialogController;->dialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1
    move-object v3, v2

    .line 287
    goto :goto_0

    .line 246
    :pswitch_0
    new-instance v1, Lcom/lge/camera/controller/DialogController$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/DialogController$1;-><init>(Lcom/lge/camera/controller/DialogController;)V

    .line 252
    .local v1, "buttonListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 253
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0a0240

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0a0241

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v7, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 260
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 261
    goto :goto_1

    .line 264
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "buttonListener":Landroid/content/DialogInterface$OnClickListener;
    :pswitch_1
    new-instance v1, Lcom/lge/camera/controller/DialogController$2;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/DialogController$2;-><init>(Lcom/lge/camera/controller/DialogController;)V

    .line 270
    .restart local v1    # "buttonListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 271
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0a022f

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0a0230

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v7, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 278
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 279
    goto :goto_1

    .line 244
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateHelpGuideDialog(IZ)V
    .locals 3
    .param p1, "dialogId"    # I
    .param p2, "useCheckBox"    # Z

    .prologue
    .line 214
    packed-switch p1, :pswitch_data_0

    .line 222
    new-instance v0, Lcom/lge/camera/dialog/HelpRotateDialog;

    iget-object v2, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-direct {v0, v2}, Lcom/lge/camera/dialog/HelpRotateDialog;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 223
    .local v0, "dialog":Lcom/lge/camera/dialog/HelpRotateDialog;
    invoke-virtual {v0, p2, p1}, Lcom/lge/camera/dialog/HelpRotateDialog;->create(ZI)V

    .line 224
    iget-object v2, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 227
    .end local v0    # "dialog":Lcom/lge/camera/dialog/HelpRotateDialog;
    :goto_0
    return-void

    .line 216
    :pswitch_0
    new-instance v1, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;

    iget-object v2, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-direct {v1, v2}, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 218
    .local v1, "voicePhotoDialog":Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;
    invoke-virtual {v1, p2, p1}, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->create(ZI)V

    .line 219
    iget-object v2, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x6a
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateRotateableDialog(I)V
    .locals 14
    .param p1, "id"    # I

    .prologue
    .line 147
    packed-switch p1, :pswitch_data_0

    .line 211
    :goto_0
    :pswitch_0
    return-void

    .line 149
    :pswitch_1
    new-instance v5, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;

    iget-object v12, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-direct {v5, v12}, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 150
    .local v5, "icDialog":Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;
    invoke-virtual {v5}, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;->create()V

    .line 151
    iget-object v12, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Landroid/util/SparseArray;

    iget v13, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    invoke-virtual {v12, v13, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 154
    .end local v5    # "icDialog":Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;
    :pswitch_2
    new-instance v4, Lcom/lge/camera/dialog/GeoTagRotatableDialog;

    iget-object v12, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-direct {v4, v12}, Lcom/lge/camera/dialog/GeoTagRotatableDialog;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 155
    .local v4, "gtDialog":Lcom/lge/camera/dialog/GeoTagRotatableDialog;
    invoke-virtual {v4}, Lcom/lge/camera/dialog/GeoTagRotatableDialog;->create()V

    .line 156
    iget-object v12, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Landroid/util/SparseArray;

    iget v13, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    invoke-virtual {v12, v13, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 159
    .end local v4    # "gtDialog":Lcom/lge/camera/dialog/GeoTagRotatableDialog;
    :pswitch_3
    new-instance v3, Lcom/lge/camera/dialog/EulaPopupRotatableDialog;

    iget-object v12, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-direct {v3, v12}, Lcom/lge/camera/dialog/EulaPopupRotatableDialog;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 160
    .local v3, "epDialog":Lcom/lge/camera/dialog/EulaPopupRotatableDialog;
    invoke-virtual {v3}, Lcom/lge/camera/dialog/EulaPopupRotatableDialog;->create()V

    .line 161
    iget-object v12, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Landroid/util/SparseArray;

    iget v13, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    invoke-virtual {v12, v13, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 164
    .end local v3    # "epDialog":Lcom/lge/camera/dialog/EulaPopupRotatableDialog;
    :pswitch_4
    new-instance v6, Lcom/lge/camera/dialog/MassStorageRotatableDialog;

    iget-object v12, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-direct {v6, v12}, Lcom/lge/camera/dialog/MassStorageRotatableDialog;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 165
    .local v6, "massDialog":Lcom/lge/camera/dialog/MassStorageRotatableDialog;
    invoke-virtual {v6}, Lcom/lge/camera/dialog/MassStorageRotatableDialog;->create()V

    .line 166
    iget-object v12, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Landroid/util/SparseArray;

    iget v13, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    invoke-virtual {v12, v13, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 169
    .end local v6    # "massDialog":Lcom/lge/camera/dialog/MassStorageRotatableDialog;
    :pswitch_5
    new-instance v11, Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;

    iget-object v12, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-direct {v11, v12}, Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 171
    .local v11, "videoLengthDialog":Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;
    invoke-virtual {v11}, Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;->create()V

    .line 172
    iget-object v12, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Landroid/util/SparseArray;

    iget v13, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    invoke-virtual {v12, v13, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 175
    .end local v11    # "videoLengthDialog":Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;
    :pswitch_6
    new-instance v9, Lcom/lge/camera/dialog/StoragePopupRotatableDialog;

    iget-object v12, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-direct {v9, v12}, Lcom/lge/camera/dialog/StoragePopupRotatableDialog;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 176
    .local v9, "storageDialog":Lcom/lge/camera/dialog/StoragePopupRotatableDialog;
    invoke-virtual {v9}, Lcom/lge/camera/dialog/StoragePopupRotatableDialog;->create()V

    .line 177
    iget-object v12, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Landroid/util/SparseArray;

    iget v13, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    invoke-virtual {v12, v13, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 180
    .end local v9    # "storageDialog":Lcom/lge/camera/dialog/StoragePopupRotatableDialog;
    :pswitch_7
    new-instance v7, Lcom/lge/camera/dialog/ProgressRotatableDialog;

    iget-object v12, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-direct {v7, v12}, Lcom/lge/camera/dialog/ProgressRotatableDialog;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 181
    .local v7, "prDialog":Lcom/lge/camera/dialog/ProgressRotatableDialog;
    const v12, 0x7f0a0343

    invoke-virtual {v7, v12}, Lcom/lge/camera/dialog/ProgressRotatableDialog;->create(I)V

    .line 182
    iget-object v12, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Landroid/util/SparseArray;

    iget v13, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    invoke-virtual {v12, v13, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 185
    .end local v7    # "prDialog":Lcom/lge/camera/dialog/ProgressRotatableDialog;
    :pswitch_8
    new-instance v8, Lcom/lge/camera/dialog/ProgressRotatableDialog;

    iget-object v12, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-direct {v8, v12}, Lcom/lge/camera/dialog/ProgressRotatableDialog;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 186
    .local v8, "savingPrDialog":Lcom/lge/camera/dialog/ProgressRotatableDialog;
    const v12, 0x7f0a0060

    invoke-virtual {v8, v12}, Lcom/lge/camera/dialog/ProgressRotatableDialog;->create(I)V

    .line 187
    iget-object v12, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Landroid/util/SparseArray;

    iget v13, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    invoke-virtual {v12, v13, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 190
    .end local v8    # "savingPrDialog":Lcom/lge/camera/dialog/ProgressRotatableDialog;
    :pswitch_9
    new-instance v2, Lcom/lge/camera/dialog/EnableGalleryRotatableDialog;

    iget-object v12, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-direct {v2, v12}, Lcom/lge/camera/dialog/EnableGalleryRotatableDialog;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 191
    .local v2, "disabledDialog":Lcom/lge/camera/dialog/EnableGalleryRotatableDialog;
    invoke-virtual {v2}, Lcom/lge/camera/dialog/EnableGalleryRotatableDialog;->create()V

    .line 192
    iget-object v12, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Landroid/util/SparseArray;

    iget v13, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    invoke-virtual {v12, v13, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 195
    .end local v2    # "disabledDialog":Lcom/lge/camera/dialog/EnableGalleryRotatableDialog;
    :pswitch_a
    new-instance v10, Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;

    iget-object v12, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-direct {v10, v12}, Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 197
    .local v10, "storageselDialog":Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;
    invoke-virtual {v10}, Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;->create()V

    .line 198
    iget-object v12, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Landroid/util/SparseArray;

    iget v13, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    invoke-virtual {v12, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 201
    .end local v10    # "storageselDialog":Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;
    :pswitch_b
    new-instance v1, Lcom/lge/camera/dialog/DeleteRotatableDialog;

    iget-object v12, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-direct {v1, v12}, Lcom/lge/camera/dialog/DeleteRotatableDialog;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 202
    .local v1, "deleteDialog":Lcom/lge/camera/dialog/DeleteRotatableDialog;
    invoke-virtual {v1}, Lcom/lge/camera/dialog/DeleteRotatableDialog;->create()V

    .line 203
    iget-object v12, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Landroid/util/SparseArray;

    iget v13, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    invoke-virtual {v12, v13, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 206
    .end local v1    # "deleteDialog":Lcom/lge/camera/dialog/DeleteRotatableDialog;
    :pswitch_c
    new-instance v0, Lcom/lge/camera/dialog/AuCloudDialog;

    iget-object v12, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-direct {v0, v12}, Lcom/lge/camera/dialog/AuCloudDialog;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 207
    .local v0, "auCloudDialog":Lcom/lge/camera/dialog/AuCloudDialog;
    invoke-virtual {v0}, Lcom/lge/camera/dialog/AuCloudDialog;->create()V

    .line 208
    iget-object v12, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Landroid/util/SparseArray;

    iget v13, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    invoke-virtual {v12, v13, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_3
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_8
        :pswitch_c
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 411
    iget-object v0, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 413
    iput-object v1, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Landroid/util/SparseArray;

    .line 415
    :cond_0
    iput-object v1, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    .line 416
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onDestroy()V

    .line 417
    return-void
.end method

.method public onDismiss()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 352
    invoke-virtual {p0}, Lcom/lge/camera/controller/DialogController;->checkMediator()Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    :goto_0
    return-void

    .line 356
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/DialogController;->isRotateDialogVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    iget v0, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    const/16 v1, 0x6a

    if-ne v0, v1, :cond_3

    .line 358
    iget-object v0, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->stopVoiceCommandSound()V

    .line 373
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Landroid/util/SparseArray;

    iget v1, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 376
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    .line 377
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/DialogController;->mCurrentDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 359
    :cond_3
    iget v0, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    const/16 v1, 0x69

    if-ne v0, v1, :cond_5

    .line 360
    iget-object v0, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 361
    iget-object v0, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    goto :goto_1

    .line 363
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    const-wide/16 v2, 0xbb8

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    goto :goto_1

    .line 366
    :cond_5
    iget v0, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    const/16 v1, 0x6b

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 367
    iget-object v0, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->clearSubMenu()V

    goto :goto_1

    .line 368
    :cond_6
    iget v0, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    .line 369
    iget-object v0, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->quickFunctionAllMenuSelected(Z)V

    goto :goto_1

    .line 370
    :cond_7
    iget v0, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isMediaScanning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0a0078

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/lge/camera/ControllerFunction;->toast(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public onDismissRotateDialog()V
    .locals 3

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/lge/camera/controller/DialogController;->checkMediator()Z

    move-result v1

    if-nez v1, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Landroid/util/SparseArray;

    iget v2, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/dialog/RotateDialog;

    .line 345
    .local v0, "dialog":Lcom/lge/camera/dialog/RotateDialog;
    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v0}, Lcom/lge/camera/dialog/RotateDialog;->onDismiss()V

    .line 347
    iget-object v1, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Landroid/util/SparseArray;

    iget v2, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 390
    iget v0, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 395
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/DialogController;->dismissCurrentDialog()V

    .line 398
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/DialogController;->onDismissRotateDialog()V

    .line 400
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onPause()V

    .line 401
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 316
    if-nez p2, :cond_0

    .line 322
    :goto_0
    return-void

    .line 319
    :cond_0
    iput p1, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    .line 320
    iput-object p2, p0, Lcom/lge/camera/controller/DialogController;->mCurrentDialog:Landroid/app/Dialog;

    .line 321
    const-string v0, "CameraApp"

    const-string v1, "onPrepare"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 405
    const-string v0, "CameraApp"

    const-string v1, "onResume-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onResume()V

    .line 407
    return-void
.end method

.method public setCurrentDialog(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lge/camera/controller/DialogController;->mCurrentDialog:Landroid/app/Dialog;

    .line 60
    return-void
.end method

.method public setDialogID(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    .line 68
    return-void
.end method

.method public showDialogPopup(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/controller/DialogController;->showDialogPopup(IZ)V

    .line 76
    return-void
.end method

.method public showDialogPopup(IZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "useCheckBox"    # Z

    .prologue
    .line 80
    iput p1, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    .line 81
    sparse-switch p1, :sswitch_data_0

    .line 139
    iget-object v0, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->showDialog(I)V

    .line 143
    :goto_0
    return-void

    .line 85
    :sswitch_0
    iget-object v0, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 101
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/DialogController;->onCreateRotateableDialog(I)V

    .line 103
    iget-object v0, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/DialogController;->startRotation(I)V

    goto :goto_0

    .line 132
    :sswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/controller/DialogController;->onCreateHelpGuideDialog(IZ)V

    .line 134
    iget-object v0, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/DialogController;->startRotation(I)V

    goto :goto_0

    .line 81
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0x6 -> :sswitch_1
        0x7 -> :sswitch_0
        0xa -> :sswitch_1
        0xe -> :sswitch_1
        0x10 -> :sswitch_1
        0x11 -> :sswitch_1
        0x16 -> :sswitch_1
        0x17 -> :sswitch_1
        0x18 -> :sswitch_1
        0x1a -> :sswitch_1
        0x1b -> :sswitch_1
        0x1c -> :sswitch_1
        0x65 -> :sswitch_2
        0x66 -> :sswitch_2
        0x67 -> :sswitch_2
        0x68 -> :sswitch_2
        0x69 -> :sswitch_2
        0x6a -> :sswitch_2
        0x6b -> :sswitch_2
        0x6c -> :sswitch_2
        0x6d -> :sswitch_2
        0x6e -> :sswitch_2
        0x6f -> :sswitch_2
        0x70 -> :sswitch_2
        0x71 -> :sswitch_2
        0x72 -> :sswitch_2
        0x73 -> :sswitch_2
        0x74 -> :sswitch_2
        0x75 -> :sswitch_2
        0x76 -> :sswitch_2
        0x77 -> :sswitch_2
        0x78 -> :sswitch_2
        0x79 -> :sswitch_2
        0x7a -> :sswitch_2
        0x7b -> :sswitch_2
        0x7c -> :sswitch_2
        0x7d -> :sswitch_2
    .end sparse-switch
.end method

.method public showHelpGuidePopup(Ljava/lang/String;IZ)Z
    .locals 4
    .param p1, "shotModeHelp"    # Ljava/lang/String;
    .param p2, "dialogId"    # I
    .param p3, "useCheckBox"    # Z

    .prologue
    const/4 v1, 0x0

    .line 421
    iget-object v2, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "Main_CameraAppConfig"

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 423
    .local v0, "pref":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 424
    iget-object v1, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/controller/DialogController$4;

    invoke-direct {v2, p0, p2, p3}, Lcom/lge/camera/controller/DialogController$4;-><init>(Lcom/lge/camera/controller/DialogController;IZ)V

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 430
    const/4 v1, 0x1

    .line 432
    :cond_0
    return v1
.end method

.method public showProgressDialog()V
    .locals 2

    .prologue
    .line 437
    const-string v0, "CameraApp"

    const-string v1, "showProgressDialog"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    const-string v0, "CameraApp"

    const-string v1, "showProgressDialog():: (isPausing() == true)"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/DialogController;->getCurrentDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/lge/camera/controller/DialogController;->isRotateDialogVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/controller/DialogController;->getDialogID()I

    move-result v0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    .line 446
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/DialogController$5;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/DialogController$5;-><init>(Lcom/lge/camera/controller/DialogController;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public showSavingProgressDialog()V
    .locals 2

    .prologue
    .line 469
    const-string v0, "CameraApp"

    const-string v1, "showSavingProgressDialog"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    const-string v0, "CameraApp"

    const-string v1, "showSavingProgressDialog():: (isPausing() == true)"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/DialogController;->getCurrentDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/lge/camera/controller/DialogController;->isRotateDialogVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/controller/DialogController;->getDialogID()I

    move-result v0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_2

    .line 476
    const-string v0, "CameraApp"

    const-string v1, "current Dialog is showSavingProgressDialog"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 478
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/DialogController$7;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/DialogController$7;-><init>(Lcom/lge/camera/controller/DialogController;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public startRotation(I)V
    .locals 3
    .param p1, "degree"    # I

    .prologue
    .line 230
    iget-object v1, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Landroid/util/SparseArray;

    iget v2, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/dialog/RotateDialog;

    .line 231
    .local v0, "dialog":Lcom/lge/camera/dialog/RotateDialog;
    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0, p1}, Lcom/lge/camera/dialog/RotateDialog;->startRotation(I)V

    .line 234
    :cond_0
    return-void
.end method
