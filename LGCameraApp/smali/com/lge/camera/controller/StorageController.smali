.class public abstract Lcom/lge/camera/controller/StorageController;
.super Lcom/lge/camera/controller/Controller;
.source "StorageController.java"


# static fields
.field private static mMntSvc:Landroid/os/storage/IMountService;

.field public static sDCF_DIRECTORY:Ljava/lang/String;

.field public static sGUEST_DIRECTORY:Ljava/lang/String;

.field public static sNORMAL_DIRECTORY:Ljava/lang/String;

.field public static sTIMEMACHINE_DIRECTORY:Ljava/lang/String;


# instance fields
.field public EXTERNAL_STORAGE_DIR:Ljava/lang/String;

.field public INTERNAL_STORAGE_DIR:Ljava/lang/String;

.field protected mCurrentStorage:I

.field private mCurrentStorageDCFDirectory:Ljava/lang/String;

.field private mCurrentStorageDirectory:Ljava/lang/String;

.field private mCurrentStorageState:Ljava/lang/String;

.field private mMediaScanning:Z

.field protected mStorageState:I

.field private mToast:Landroid/widget/Toast;

.field private messageId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/camera/controller/StorageController;->mMntSvc:Landroid/os/storage/IMountService;

    .line 44
    const-string v0, "/DCIM/100LGDSC/"

    sput-object v0, Lcom/lge/camera/controller/StorageController;->sDCF_DIRECTORY:Ljava/lang/String;

    .line 45
    const-string v0, "/DCIM/Camera/"

    sput-object v0, Lcom/lge/camera/controller/StorageController;->sNORMAL_DIRECTORY:Ljava/lang/String;

    .line 46
    const-string v0, "/DCIM/.thumbnails/"

    sput-object v0, Lcom/lge/camera/controller/StorageController;->sTIMEMACHINE_DIRECTORY:Ljava/lang/String;

    .line 47
    const-string v0, "/DCIM/Guest album/"

    sput-object v0, Lcom/lge/camera/controller/StorageController;->sGUEST_DIRECTORY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 4
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 42
    iput v2, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorage:I

    .line 50
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/StorageController;->GetStoragePath(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    .line 52
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/StorageController;->GetStoragePath(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->INTERNAL_STORAGE_DIR:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lge/camera/controller/StorageController;->sNORMAL_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDirectory:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->INTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lge/camera/controller/StorageController;->sDCF_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDCFDirectory:Ljava/lang/String;

    .line 58
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageState:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mToast:Landroid/widget/Toast;

    .line 239
    iput-boolean v2, p0, Lcom/lge/camera/controller/StorageController;->mMediaScanning:Z

    .line 574
    iput v3, p0, Lcom/lge/camera/controller/StorageController;->messageId:I

    .line 64
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isExternalMemoryOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/StorageController;->setCurrentStorage(I)V

    .line 68
    :cond_0
    return-void
.end method

.method private getExternalAddtionalStorageState()Ljava/lang/String;
    .locals 4

    .prologue
    .line 417
    const-string v1, "removed"

    .line 419
    .local v1, "state":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/lge/camera/controller/StorageController;->mMntSvc:Landroid/os/storage/IMountService;

    if-nez v2, :cond_0

    .line 420
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    sput-object v2, Lcom/lge/camera/controller/StorageController;->mMntSvc:Landroid/os/storage/IMountService;

    .line 422
    :cond_0
    sget-object v2, Lcom/lge/camera/controller/StorageController;->mMntSvc:Landroid/os/storage/IMountService;

    if-eqz v2, :cond_1

    .line 423
    sget-object v2, Lcom/lge/camera/controller/StorageController;->mMntSvc:Landroid/os/storage/IMountService;

    iget-object v3, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 430
    :cond_1
    :goto_0
    return-object v1

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, "rex":Ljava/lang/Exception;
    const-string v1, "removed"

    .line 427
    const-string v2, "CameraApp"

    const-string v3, "Exception : "

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getMessageType1(II)Ljava/lang/String;
    .locals 2
    .param p1, "currentStorage"    # I
    .param p2, "anotherStorage"    # I

    .prologue
    .line 622
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 623
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->getEmmcName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "internal memory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0a0065

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 629
    :goto_0
    return-object v0

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0a0066

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 629
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0a0067

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getMessageType2(II)Ljava/lang/String;
    .locals 2
    .param p1, "currentStorage"    # I
    .param p2, "anotherStorage"    # I

    .prologue
    .line 634
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 635
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->getEmmcName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "internal memory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0a0068

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 644
    :goto_0
    return-object v0

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0a0069

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 641
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->getEmmcName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "internal memory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 642
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0a006a

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 644
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0a006b

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSaveDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 354
    sget-object v0, Lcom/lge/camera/controller/StorageController;->sNORMAL_DIRECTORY:Ljava/lang/String;

    .line 355
    .local v0, "dir":Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getUseDCFRule()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    sget-object v0, Lcom/lge/camera/controller/StorageController;->sDCF_DIRECTORY:Ljava/lang/String;

    .line 358
    :cond_0
    invoke-static {}, Lcom/lge/camera/util/AppControlUtil;->isGuestMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 359
    sget-object v0, Lcom/lge/camera/controller/StorageController;->sGUEST_DIRECTORY:Ljava/lang/String;

    .line 361
    :cond_1
    return-object v0
.end method

.method private showStorageHintForAvailable()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 159
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->storageToasthide(Z)V

    .line 160
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isStorageToastShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorage:I

    packed-switch v0, :pswitch_data_0

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 163
    :pswitch_0
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0a0070

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3, v4}, Lcom/lge/camera/ControllerFunction;->storageToastShow(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 168
    :pswitch_1
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0a006f

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3, v4}, Lcom/lge/camera/ControllerFunction;->storageToastShow(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showStorageHintForFull()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 186
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->storageToasthide(Z)V

    .line 187
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->deleteProgressDialog()V

    .line 189
    invoke-static {}, Lcom/lge/camera/util/Common;->isQuickWindowCameraMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0057

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mToast:Landroid/widget/Toast;

    .line 196
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mToast:Landroid/widget/Toast;

    const/16 v1, 0x31

    const v2, 0x7f090019

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/StorageController;->getPixelFromDimens(I)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 199
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 205
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->enableCommand(Z)V

    .line 206
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->showDialogPopup(I)V

    goto :goto_0
.end method

.method private showStorageHintForNotFound(I)V
    .locals 5
    .param p1, "oldStorageState"    # I

    .prologue
    const/16 v4, 0x11

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 210
    iget v0, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isStorageToastShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->storageToasthide(Z)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d0181

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 220
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isStorageToastShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 221
    invoke-virtual {p0}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shared"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 223
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getDialogID()I

    move-result v0

    if-eq v0, v4, :cond_2

    .line 224
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCurrentDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCurrentDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->showDialogPopup(I)V

    .line 237
    :cond_2
    :goto_1
    return-void

    .line 217
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->enableCommand(Z)V

    goto :goto_0

    .line 230
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/StorageController;->isStorageReadOnly(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 231
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0a024d

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3, v3}, Lcom/lge/camera/ControllerFunction;->storageToastShow(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 234
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0a0049

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3, v3}, Lcom/lge/camera/ControllerFunction;->storageToastShow(Ljava/lang/String;ZZ)V

    goto :goto_1
.end method

.method private showStorageHintForScanning()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 179
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->storageToasthide(Z)V

    .line 180
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isStorageToastShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0a004b

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3, v3}, Lcom/lge/camera/ControllerFunction;->storageToastShow(Ljava/lang/String;ZZ)V

    .line 183
    :cond_0
    return-void
.end method


# virtual methods
.method public GetStoragePath(Z)Ljava/lang/String;
    .locals 13
    .param p1, "storagetype"    # Z

    .prologue
    const/4 v10, 0x0

    .line 534
    invoke-virtual {p0}, Lcom/lge/camera/controller/StorageController;->checkMediator()Z

    move-result v9

    if-nez v9, :cond_1

    move-object v5, v10

    .line 571
    :cond_0
    :goto_0
    return-object v5

    .line 537
    :cond_1
    const/4 v7, 0x0

    .line 539
    .local v7, "service":Landroid/os/IBinder;
    :try_start_0
    const-string v9, "mount"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    .line 540
    if-eqz v7, :cond_5

    .line 541
    invoke-static {v7}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v4

    .line 542
    .local v4, "mountService":Landroid/os/storage/IMountService;
    if-eqz v4, :cond_5

    .line 543
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 544
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v11, "getVolumeList"

    const/4 v9, 0x0

    check-cast v9, [Ljava/lang/Class;

    invoke-virtual {v1, v11, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 545
    .local v3, "md":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_5

    .line 546
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/os/storage/StorageVolume;

    move-object v0, v9

    check-cast v0, [Landroid/os/storage/StorageVolume;

    move-object v8, v0

    .line 547
    .local v8, "volumeList":[Landroid/os/storage/StorageVolume;
    if-eqz v8, :cond_2

    array-length v9, v8

    const/4 v11, 0x1

    if-ge v9, v11, :cond_3

    .line 549
    :cond_2
    const-string v5, "/mnt/sdcard"

    goto :goto_0

    .line 551
    :cond_3
    const/4 v9, 0x0

    aget-object v9, v8, v9

    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 552
    .local v5, "path":Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isAllMemorySupported()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 555
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v9, v8

    if-ge v2, v9, :cond_0

    .line 556
    const-string v9, "CameraApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Storage info : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v8, v2

    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " R :  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v8, v2

    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    aget-object v9, v8, v2

    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v9

    if-ne v9, p1, :cond_4

    .line 559
    aget-object v9, v8, v2

    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 560
    goto/16 :goto_0

    .line 555
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 567
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "i":I
    .end local v3    # "md":Ljava/lang/reflect/Method;
    .end local v4    # "mountService":Landroid/os/storage/IMountService;
    .end local v5    # "path":Ljava/lang/String;
    .end local v8    # "volumeList":[Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v6

    .line 568
    .local v6, "rex":Ljava/lang/Exception;
    const-string v9, "CameraApp"

    const-string v11, "Exception : "

    invoke-static {v9, v11, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 570
    .end local v6    # "rex":Ljava/lang/Exception;
    :cond_5
    const-string v9, "CameraApp"

    const-string v11, "Storage Path is Null"

    invoke-static {v9, v11}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v10

    .line 571
    goto/16 :goto_0
.end method

.method public checkFsWritable()Z
    .locals 5

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/lge/camera/controller/StorageController;->getSaveDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 294
    .local v1, "storageRoot":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    .local v0, "directory":Ljava/io/File;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkFsWritable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    return v2
.end method

.method public checkFsWritable(I)Z
    .locals 5
    .param p1, "storageType"    # I

    .prologue
    .line 300
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/StorageController;->getTargetStorageDirectory(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/lge/camera/controller/StorageController;->getSaveDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 302
    .local v1, "storageRoot":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    .local v0, "directory":Ljava/io/File;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkFsWritable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " storageType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    return v2
.end method

.method public checkStorage()V
    .locals 4

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.UpdateThumbnailButton"

    const-wide/16 v2, 0xc8

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 82
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/StorageController;->checkStorage(Z)V

    .line 83
    return-void
.end method

.method public abstract checkStorage(Z)V
.end method

.method public getAvailablePictureCount()J
    .locals 2

    .prologue
    .line 71
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getBucketId()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 470
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getUseDCFRule()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDCFDirectory:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDCFDirectory:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "bucket":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 474
    .end local v0    # "bucket":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDirectory:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDirectory:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "bucket":Ljava/lang/String;
    goto :goto_0
.end method

.method public getBucketId(I)Ljava/lang/String;
    .locals 6
    .param p1, "storageType"    # I

    .prologue
    const/4 v5, 0x0

    .line 483
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isExternalMemoryOnly()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 484
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/lge/camera/controller/StorageController;->getSaveDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 485
    .local v2, "storageDirectory":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/lge/camera/controller/StorageController;->getSaveDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 496
    .local v1, "storageDcfDirectory":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getUseDCFRule()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 497
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, "bucket":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 487
    .end local v0    # "bucket":Ljava/lang/String;
    .end local v1    # "storageDcfDirectory":Ljava/lang/String;
    .end local v2    # "storageDirectory":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 488
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/camera/controller/StorageController;->INTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/lge/camera/controller/StorageController;->getSaveDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 489
    .restart local v2    # "storageDirectory":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/camera/controller/StorageController;->INTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/lge/camera/controller/StorageController;->getSaveDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "storageDcfDirectory":Ljava/lang/String;
    goto :goto_0

    .line 491
    .end local v1    # "storageDcfDirectory":Ljava/lang/String;
    .end local v2    # "storageDirectory":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/lge/camera/controller/StorageController;->getSaveDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 492
    .restart local v2    # "storageDirectory":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/lge/camera/controller/StorageController;->getSaveDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "storageDcfDirectory":Ljava/lang/String;
    goto :goto_0

    .line 499
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "bucket":Ljava/lang/String;
    goto :goto_1
.end method

.method public getCurrentStorage()I
    .locals 1

    .prologue
    .line 408
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isExternalMemoryOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    const/4 v0, 0x0

    .line 411
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorage:I

    goto :goto_0
.end method

.method public getCurrentStorageDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 365
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isAllMemorySupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getUseDCFRule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDCFDirectory:Ljava/lang/String;

    .line 373
    :goto_0
    return-object v0

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDirectory:Ljava/lang/String;

    goto :goto_0

    .line 372
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/lge/camera/controller/StorageController;->getSaveDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDirectory:Ljava/lang/String;

    .line 373
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDirectory:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCurrentStorageState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 460
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isAllMemorySupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageState:Ljava/lang/String;

    .line 464
    :goto_0
    return-object v0

    .line 463
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageState:Ljava/lang/String;

    .line 464
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageState:Ljava/lang/String;

    goto :goto_0
.end method

.method public getExternalStorageDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    return-object v0
.end method

.method public getFreeSpace()J
    .locals 2

    .prologue
    .line 250
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/StorageController;->getFreeSpace(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFreeSpace(I)J
    .locals 10
    .param p1, "storageType"    # I

    .prologue
    .line 254
    const-wide/16 v2, 0x0

    .line 257
    .local v2, "freeSpace":J
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/StorageController;->getTargetStorageDirectory(I)Ljava/lang/String;

    move-result-object v5

    .line 258
    .local v5, "strStorageDirectory":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 261
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 263
    :cond_0
    const/4 v1, 0x0

    .line 265
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 266
    .local v4, "stat":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v6

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v8

    mul-long v2, v6, v8

    .line 267
    invoke-virtual {p0}, Lcom/lge/camera/controller/StorageController;->getCurrentStorage()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isInternalMemoryOnly()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_2

    .line 269
    :cond_1
    const-wide/32 v6, 0x1400000

    sub-long/2addr v2, v6

    .line 270
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_2

    .line 271
    const-wide/16 v2, 0x0

    :cond_2
    move-wide v6, v2

    .line 277
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "stat":Landroid/os/StatFs;
    .end local v5    # "strStorageDirectory":Ljava/lang/String;
    :goto_0
    return-wide v6

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " error :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-wide/16 v6, -0x2

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 581
    const-string v3, "CameraApp"

    const-string v4, "getMessage"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isAllMemorySupported()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 584
    invoke-virtual {p0}, Lcom/lge/camera/controller/StorageController;->getCurrentStorage()I

    move-result v2

    .line 585
    .local v2, "currentStorage":I
    const/4 v0, 0x1

    .line 586
    .local v0, "anotherStorage":I
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMessage currentStorage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    if-ne v2, v6, :cond_0

    .line 589
    const/4 v0, 0x0

    .line 595
    :goto_0
    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/StorageController;->getStorageState(I)Ljava/lang/String;

    move-result-object v1

    .line 596
    .local v1, "anotherStorageStat":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/StorageController;->isStorageReady(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 597
    iput v6, p0, Lcom/lge/camera/controller/StorageController;->messageId:I

    .line 598
    invoke-direct {p0, v2, v0}, Lcom/lge/camera/controller/StorageController;->getMessageType1(II)Ljava/lang/String;

    move-result-object v3

    .line 617
    .end local v0    # "anotherStorage":I
    .end local v1    # "anotherStorageStat":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 591
    .restart local v0    # "anotherStorage":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 603
    .restart local v1    # "anotherStorageStat":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/StorageController;->isEnoughWorkingStorage(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 604
    const/4 v3, 0x3

    iput v3, p0, Lcom/lge/camera/controller/StorageController;->messageId:I

    .line 605
    iget-object v3, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0a0063

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 610
    :cond_2
    const/4 v3, 0x2

    iput v3, p0, Lcom/lge/camera/controller/StorageController;->messageId:I

    .line 611
    invoke-direct {p0, v2, v0}, Lcom/lge/camera/controller/StorageController;->getMessageType2(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 615
    .end local v0    # "anotherStorage":I
    .end local v1    # "anotherStorageStat":Ljava/lang/String;
    .end local v2    # "currentStorage":I
    :cond_3
    iput v6, p0, Lcom/lge/camera/controller/StorageController;->messageId:I

    .line 616
    invoke-virtual {p0}, Lcom/lge/camera/controller/StorageController;->getCurrentStorage()I

    move-result v2

    .line 617
    .restart local v2    # "currentStorage":I
    const/4 v3, -0x1

    invoke-direct {p0, v2, v3}, Lcom/lge/camera/controller/StorageController;->getMessageType1(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public getMessageId()I
    .locals 1

    .prologue
    .line 577
    iget v0, p0, Lcom/lge/camera/controller/StorageController;->messageId:I

    return v0
.end method

.method public getStorageState()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    return v0
.end method

.method public getStorageState(I)Ljava/lang/String;
    .locals 1
    .param p1, "storageType"    # I

    .prologue
    .line 90
    packed-switch p1, :pswitch_data_0

    .line 99
    invoke-virtual {p0}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageState()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 92
    :pswitch_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 95
    :pswitch_1
    invoke-direct {p0}, Lcom/lge/camera/controller/StorageController;->getExternalAddtionalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTargetStorageDirectory(I)Ljava/lang/String;
    .locals 2
    .param p1, "storageType"    # I

    .prologue
    .line 390
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isAllMemorySupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    packed-switch p1, :pswitch_data_0

    .line 400
    invoke-virtual {p0}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v0

    .line 403
    :goto_0
    return-object v0

    .line 393
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->INTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/lge/camera/controller/StorageController;->getSaveDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 396
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/lge/camera/controller/StorageController;->getSaveDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 403
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTimeMachineStorageDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 378
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isAllMemorySupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    iget v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->INTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lge/camera/controller/StorageController;->sTIMEMACHINE_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    :goto_0
    return-object v0

    .line 382
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lge/camera/controller/StorageController;->sTIMEMACHINE_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 385
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lge/camera/controller/StorageController;->sTIMEMACHINE_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract initController()V
.end method

.method public abstract isEnoughWorkingStorage(I)Z
.end method

.method public isExternalStorageRemoved()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 312
    const-string v0, "removed"

    .line 314
    .local v0, "state":Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isAllMemorySupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 315
    invoke-direct {p0}, Lcom/lge/camera/controller/StorageController;->getExternalAddtionalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 321
    :goto_0
    const-string v3, "CameraApp"

    const-string v4, "SD card state:%s"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v3, "mounted"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 326
    :goto_1
    return v1

    .line 318
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 326
    goto :goto_1
.end method

.method public isMediaScanning()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/lge/camera/controller/StorageController;->mMediaScanning:Z

    return v0
.end method

.method public isStorageAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 331
    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/StorageController;->checkStorage(Z)V

    .line 332
    iget v1, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    if-nez v1, :cond_0

    .line 333
    const/4 v0, 0x1

    .line 335
    :cond_0
    return v0
.end method

.method public isStorageFull()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 339
    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/StorageController;->checkStorage(Z)V

    .line 340
    iget v1, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 341
    const/4 v0, 0x1

    .line 343
    :cond_0
    return v0
.end method

.method public isStorageFull(I)Z
    .locals 2
    .param p1, "storageType"    # I

    .prologue
    .line 347
    iget v0, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 348
    const/4 v0, 0x1

    .line 350
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStorageReadOnly(Ljava/lang/String;)Z
    .locals 1
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 506
    const-string v0, "mounted_ro"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mounted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/controller/StorageController;->checkFsWritable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStorageReady(Ljava/lang/String;)Z
    .locals 1
    .param p1, "storageState"    # Ljava/lang/String;

    .prologue
    .line 104
    const-string v0, "bad_removal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "removed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unmounted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "shared"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unmountable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mounted_ro"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "eject"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    const/4 v0, 0x0

    .line 113
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setCurrentStorage(I)V
    .locals 2
    .param p1, "storageType"    # I

    .prologue
    .line 434
    iput p1, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorage:I

    .line 436
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isAllMemorySupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->INTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/lge/camera/controller/StorageController;->getSaveDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDirectory:Ljava/lang/String;

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->INTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/lge/camera/controller/StorageController;->getSaveDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDCFDirectory:Ljava/lang/String;

    .line 442
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageState:Ljava/lang/String;

    .line 457
    :goto_0
    return-void

    .line 444
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/lge/camera/controller/StorageController;->getSaveDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDirectory:Ljava/lang/String;

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/lge/camera/controller/StorageController;->getSaveDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDCFDirectory:Ljava/lang/String;

    .line 448
    invoke-direct {p0}, Lcom/lge/camera/controller/StorageController;->getExternalAddtionalStorageState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageState:Ljava/lang/String;

    goto :goto_0

    .line 452
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/lge/camera/controller/StorageController;->getSaveDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDirectory:Ljava/lang/String;

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/lge/camera/controller/StorageController;->getSaveDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDCFDirectory:Ljava/lang/String;

    .line 455
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageState:Ljava/lang/String;

    goto :goto_0
.end method

.method public setMediaScanning(Z)V
    .locals 0
    .param p1, "scanning"    # Z

    .prologue
    .line 246
    iput-boolean p1, p0, Lcom/lge/camera/controller/StorageController;->mMediaScanning:Z

    .line 247
    return-void
.end method

.method public setMenuEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 308
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_storage"

    invoke-interface {v0, v1, p1}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenuEnable(Ljava/lang/String;Z)V

    .line 309
    return-void
.end method

.method public setStorageInitForFileNamingHelper()Ljava/lang/String;
    .locals 4

    .prologue
    .line 511
    const/4 v0, 0x0

    .line 512
    .local v0, "mStorage":I
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isAllMemorySupported()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/StorageController;->isExternalStorageRemoved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    const/4 v0, 0x1

    .line 523
    :goto_0
    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/StorageController;->setCurrentStorage(I)V

    .line 524
    invoke-virtual {p0}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 516
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->getEmmcName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_storage"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isInternalMemoryOnly()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 518
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 520
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showStorageHint(I)V
    .locals 5
    .param p1, "storageState"    # I

    .prologue
    const/4 v4, 0x1

    .line 118
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "**showStorageHint"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget v0, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    .line 121
    .local v0, "oldStorageState":I
    iput p1, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    .line 122
    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCurrentDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getDialogID()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 124
    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCurrentDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 127
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 150
    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v2, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0a0070

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->storageToastShow(Ljava/lang/String;ZZ)V

    .line 153
    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->setMainButtonEnable()V

    .line 156
    :goto_0
    return-void

    .line 129
    :pswitch_0
    const-string v1, "CameraApp"

    const-string v2, "***** storage not found"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0, v0}, Lcom/lge/camera/controller/StorageController;->showStorageHintForNotFound(I)V

    goto :goto_0

    .line 135
    :pswitch_1
    const-string v1, "CameraApp"

    const-string v2, "***** storage full"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-direct {p0}, Lcom/lge/camera/controller/StorageController;->showStorageHintForFull()V

    goto :goto_0

    .line 140
    :pswitch_2
    const-string v1, "CameraApp"

    const-string v2, "***** storage scanning"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-direct {p0}, Lcom/lge/camera/controller/StorageController;->showStorageHintForScanning()V

    goto :goto_0

    .line 145
    :pswitch_3
    const-string v1, "CameraApp"

    const-string v2, "***** storage available"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-direct {p0}, Lcom/lge/camera/controller/StorageController;->showStorageHintForAvailable()V

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
