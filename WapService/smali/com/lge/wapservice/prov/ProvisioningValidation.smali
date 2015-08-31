.class public Lcom/lge/wapservice/prov/ProvisioningValidation;
.super Landroid/app/Activity;
.source "ProvisioningValidation.java"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBadUserPinDialog:Landroid/app/AlertDialog$Builder;

.field private mCancel:Landroid/widget/Button;

.field private mDiscardDialog:Landroid/app/AlertDialog$Builder;

.field private mDocument:[B

.field private mMac:[B

.field private mMinPinLength:I

.field private mMsgUriString:Ljava/lang/String;

.field private mOk:Landroid/widget/Button;

.field private mSigner:Lcom/lge/wapservice/prov/security/OmaSigner;

.field private mUserSuppliedPin:Landroid/widget/EditText;

.field private mVisibleUserPin:Landroid/widget/CheckBox;

.field private nRemainNum:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 74
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->nRemainNum:I

    .line 75
    const/4 v0, 0x4

    iput v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mMinPinLength:I

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mAlertDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/wapservice/prov/ProvisioningValidation;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/wapservice/prov/ProvisioningValidation;

    .prologue
    .line 59
    iget v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->nRemainNum:I

    return v0
.end method

.method static synthetic access$100(Lcom/lge/wapservice/prov/ProvisioningValidation;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wapservice/prov/ProvisioningValidation;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/lge/wapservice/prov/ProvisioningValidation;->showVirturalKeyboard()V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/wapservice/prov/ProvisioningValidation;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wapservice/prov/ProvisioningValidation;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mMsgUriString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/wapservice/prov/ProvisioningValidation;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wapservice/prov/ProvisioningValidation;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mOk:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/wapservice/prov/ProvisioningValidation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/wapservice/prov/ProvisioningValidation;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/lge/wapservice/prov/ProvisioningValidation;->pinEntered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/lge/wapservice/prov/ProvisioningValidation;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wapservice/prov/ProvisioningValidation;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mVisibleUserPin:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/wapservice/prov/ProvisioningValidation;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wapservice/prov/ProvisioningValidation;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mUserSuppliedPin:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/wapservice/prov/ProvisioningValidation;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wapservice/prov/ProvisioningValidation;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/lge/wapservice/prov/ProvisioningValidation;->storeProvision(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/lge/wapservice/prov/ProvisioningValidation;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/wapservice/prov/ProvisioningValidation;

    .prologue
    .line 59
    iget v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mMinPinLength:I

    return v0
.end method

.method public static installNetpinMsg(Landroid/content/Context;[B)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "document"    # [B

    .prologue
    .line 575
    const/4 v1, 0x0

    .line 576
    .local v1, "parsingResult":Z
    const/4 v0, 0x0

    .line 578
    .local v0, "installResult":Z
    invoke-static {}, Lcom/lge/wapservice/utils/DualSIM_Helper;->getSimID()I

    move-result v2

    .line 580
    .local v2, "simID":I
    invoke-static {p1}, Lcom/lge/wapservice/prov/ProvisioningDocParse;->parseDoc([B)Z

    move-result v1

    .line 581
    if-eqz v1, :cond_0

    .line 584
    sget-object v3, Lcom/lge/wapservice/prov/ProvisioningDocParse;->mProvisioningDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    invoke-virtual {v3, p0}, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->initHni(Landroid/content/Context;)V

    .line 585
    sget-object v3, Lcom/lge/wapservice/prov/ProvisioningDocParse;->mProvisioningDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    invoke-static {p0, v3, p1, v2}, Lcom/lge/wapservice/prov/persister/Persister;->save(Landroid/content/Context;Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;[BI)Z

    move-result v0

    .line 590
    :cond_0
    return v0
.end method

.method public static isValidNetpin(Landroid/content/Context;I[B[B)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sec"    # I
    .param p2, "mac"    # [B
    .param p3, "document"    # [B

    .prologue
    .line 542
    const/4 v5, 0x0

    .line 544
    .local v5, "validSign":Z
    const-string v0, " "

    .line 550
    .local v0, "dummyEditorText":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/lge/wapservice/utils/DualSIM_Helper;->supportMultiSIM()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 552
    invoke-static {}, Lcom/lge/wapservice/utils/DualSIM_Helper;->getCurrentIMSIData()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, p3, v7}, Lcom/lge/wapservice/prov/security/OmaSigner;->signerFor(I[BLjava/lang/String;)Lcom/lge/wapservice/prov/security/OmaSigner;
    :try_end_0
    .catch Lcom/lge/wapservice/prov/security/UnknownSecurityMechanismException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 569
    .local v2, "omaSigner":Lcom/lge/wapservice/prov/security/OmaSigner;
    :goto_0
    invoke-virtual {v2, v0, p2}, Lcom/lge/wapservice/prov/security/OmaSigner;->isDocumentValid(Ljava/lang/String;[B)Z

    move-result v5

    move v6, v5

    .line 571
    .end local v2    # "omaSigner":Lcom/lge/wapservice/prov/security/OmaSigner;
    .end local v5    # "validSign":Z
    .local v6, "validSign":I
    :goto_1
    return v6

    .line 554
    .end local v6    # "validSign":I
    .restart local v5    # "validSign":Z
    :cond_0
    :try_start_1
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 555
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 557
    .local v3, "sysIMSI":Ljava/lang/String;
    if-nez v3, :cond_1

    move v6, v5

    .line 558
    .restart local v6    # "validSign":I
    goto :goto_1

    .line 560
    .end local v6    # "validSign":I
    :cond_1
    const-string v7, "WapService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IMSI = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-static {p1, p3, v3}, Lcom/lge/wapservice/prov/security/OmaSigner;->signerFor(I[BLjava/lang/String;)Lcom/lge/wapservice/prov/security/OmaSigner;
    :try_end_1
    .catch Lcom/lge/wapservice/prov/security/UnknownSecurityMechanismException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .restart local v2    # "omaSigner":Lcom/lge/wapservice/prov/security/OmaSigner;
    goto :goto_0

    .line 564
    .end local v2    # "omaSigner":Lcom/lge/wapservice/prov/security/OmaSigner;
    .end local v3    # "sysIMSI":Ljava/lang/String;
    .end local v4    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v1

    .line 565
    .local v1, "e":Lcom/lge/wapservice/prov/security/UnknownSecurityMechanismException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method private pinEntered()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 333
    iget-object v1, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mSigner:Lcom/lge/wapservice/prov/security/OmaSigner;

    iget-object v3, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mUserSuppliedPin:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mMac:[B

    invoke-virtual {v1, v3, v4}, Lcom/lge/wapservice/prov/security/OmaSigner;->isDocumentValid(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    invoke-static {p0}, Lcom/lge/wapservice/prov/ProvisioningNotification;->clearNotification(Landroid/content/Context;)V

    .line 335
    const/4 v1, 0x1

    .line 359
    :goto_0
    return v1

    .line 337
    :cond_0
    iget v1, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->nRemainNum:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->nRemainNum:I

    .line 339
    invoke-virtual {p0}, Lcom/lge/wapservice/prov/ProvisioningValidation;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 340
    .local v0, "myIntent":Landroid/content/Intent;
    const-string v1, "com.lge.wapservice.prov.PIN_REMAINCNT"

    iget v3, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->nRemainNum:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 343
    iget v1, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->nRemainNum:I

    if-gtz v1, :cond_1

    .line 345
    iget-object v1, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mDiscardDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mAlertDialog:Landroid/app/AlertDialog;

    .line 347
    invoke-virtual {p0}, Lcom/lge/wapservice/prov/ProvisioningValidation;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mMsgUriString:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/lge/wapservice/utils/DBManager;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 359
    goto :goto_0

    .line 350
    :cond_1
    iget v1, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->nRemainNum:I

    invoke-direct {p0, v1}, Lcom/lge/wapservice/prov/ProvisioningValidation;->storePinCodeRemainCnt(I)V

    .line 351
    iget v1, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->nRemainNum:I

    invoke-direct {p0, v1}, Lcom/lge/wapservice/prov/ProvisioningValidation;->updatePINCodeEnterText(I)V

    .line 354
    const v1, 0x7f090007

    invoke-virtual {p0, v1}, Lcom/lge/wapservice/prov/ProvisioningValidation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 356
    const v1, 0x7f090006

    invoke-virtual {p0, v1}, Lcom/lge/wapservice/prov/ProvisioningValidation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 357
    iget-object v1, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mBadUserPinDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1
.end method

.method public static provisionNetpinMsgAutoInstall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BZ)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sec"    # Ljava/lang/String;
    .param p2, "mac"    # Ljava/lang/String;
    .param p3, "document"    # [B
    .param p4, "autoInstall"    # Z

    .prologue
    .line 513
    const/4 v0, 0x0

    .line 517
    .local v0, "bResult":Z
    if-nez p1, :cond_0

    .line 518
    const-string v4, "WapService"

    const-string v5, "provisionValidation, sec is null, error"

    invoke-static {v4, v5}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 538
    .end local v0    # "bResult":Z
    .local v1, "bResult":I
    :goto_0
    return v1

    .line 521
    .end local v1    # "bResult":I
    .restart local v0    # "bResult":Z
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 524
    .local v3, "mSec":I
    if-nez p2, :cond_1

    .line 525
    const-string v4, "WapService"

    const-string v5, "provisionValidation, mac is null, error"

    invoke-static {v4, v5}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 526
    .restart local v1    # "bResult":I
    goto :goto_0

    .line 528
    .end local v1    # "bResult":I
    :cond_1
    invoke-static {p2}, Lcom/lge/wapservice/utils/LgeUtils;->hexConvert(Ljava/lang/String;)[B

    move-result-object v2

    .line 531
    .local v2, "mMac":[B
    invoke-static {p0, v3, v2, p3}, Lcom/lge/wapservice/prov/ProvisioningValidation;->isValidNetpin(Landroid/content/Context;I[B[B)Z

    move-result v0

    .line 532
    const-string v4, "WapService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "provisionNetpinMsgAutoInstall, result of validation : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    if-eqz v0, :cond_2

    .line 535
    invoke-static {p0, p3}, Lcom/lge/wapservice/prov/ProvisioningValidation;->installNetpinMsg(Landroid/content/Context;[B)Z

    move-result v0

    .line 537
    :cond_2
    const-string v4, "WapService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "provisionNetpinMsgAutoInstall, result of install : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 538
    .restart local v1    # "bResult":I
    goto :goto_0
.end method

.method public static provisionValidation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sec"    # Ljava/lang/String;
    .param p2, "mac"    # Ljava/lang/String;
    .param p3, "document"    # Ljava/lang/String;
    .param p4, "msguri"    # Ljava/lang/String;
    .param p5, "pinRemainCnt"    # I
    .param p6, "phoneId"    # I

    .prologue
    .line 410
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lge/wapservice/prov/ProvisioningValidation;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 411
    .local v0, "validationIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 413
    if-eqz p1, :cond_0

    .line 414
    const-string v1, "com.lge.wapservice.prov.SEC"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    :cond_0
    if-eqz p2, :cond_1

    .line 417
    const-string v1, "com.lge.wapservice.prov.MAC"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    :cond_1
    if-eqz p4, :cond_2

    .line 420
    const-string v1, "com.lge.wapservice.prov.msguri"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    :cond_2
    const-string v1, "com.lge.wapservice.prov.PIN_REMAINCNT"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 424
    const-string v1, "WapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "provisionValidation() PIN_REMAIN_CNT =\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    if-eqz p3, :cond_3

    .line 428
    const-string v1, "com.lge.wapservice.prov.provisioning-data"

    invoke-static {p3}, Lcom/lge/wapservice/utils/LgeUtils;->hexConvert(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 431
    :cond_3
    const-string v1, "com.lge.wapservice.prov.provSubID"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 434
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_4

    .line 435
    invoke-static {p0, p1, p3, p2, p4}, Lcom/lge/wapservice/prov/ProvisioningValidation;->startNetwPinInstallation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 445
    :goto_0
    return-void

    .line 437
    :cond_4
    if-eqz p0, :cond_5

    .line 438
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 440
    :cond_5
    const-string v1, "WapService"

    const-string v2, "Now that Received Context is NULL, the Activity Couldn\'t Be Launched."

    invoke-static {v1, v2}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static provisionValidation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sec"    # Ljava/lang/String;
    .param p2, "mac"    # Ljava/lang/String;
    .param p3, "document"    # [B

    .prologue
    .line 386
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lge/wapservice/prov/ProvisioningValidation;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 388
    .local v0, "validationIntent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 389
    const-string v1, "com.lge.wapservice.prov.SEC"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    :cond_0
    if-eqz p2, :cond_1

    .line 392
    const-string v1, "com.lge.wapservice.prov.MAC"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    :cond_1
    const-string v1, "com.lge.wapservice.prov.provisioning-data"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 399
    if-eqz p0, :cond_2

    .line 400
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 405
    :goto_0
    return-void

    .line 402
    :cond_2
    const-string v1, "WapService"

    const-string v2, "Now that Received Context is NULL, the Activity Couldn\'t Be Launched."

    invoke-static {v1, v2}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static showInstallResult(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "result"    # Z

    .prologue
    .line 488
    const-string v1, "ALICE_TEST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showInstallResult  isntallResult = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-static {}, Lcom/lge/wapservice/utils/LocaleManager;->getOperator()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    .line 491
    invoke-static {p0}, Lcom/lge/wapservice/utils/DBManager;->GetUnreadOTAMessage(Landroid/content/Context;)I

    move-result v0

    .line 493
    .local v0, "unreadMsgCnt":I
    const-string v1, "ALICE_TEST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showInstallResult unreadMsgCnt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    if-lez v0, :cond_1

    .line 495
    if-eqz p1, :cond_0

    .line 496
    invoke-static {p0, p1}, Lcom/lge/wapservice/utils/ReceiveDialog;->startMoveToMsgDialog(Landroid/content/Context;Z)V

    .line 507
    .end local v0    # "unreadMsgCnt":I
    :goto_0
    return-void

    .line 498
    .restart local v0    # "unreadMsgCnt":I
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/lge/wapservice/prov/ProvisioningFailed;->startProvisioningFailedDialog(Landroid/content/Context;I)V

    goto :goto_0

    .line 501
    :cond_1
    invoke-static {p0, p1}, Lcom/lge/wapservice/prov/ProvisioningValidation;->showToastMessage(Landroid/content/Context;Z)V

    goto :goto_0

    .line 505
    .end local v0    # "unreadMsgCnt":I
    :cond_2
    invoke-static {p0, p1}, Lcom/lge/wapservice/prov/ProvisioningValidation;->showToastMessage(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public static showToastMessage(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "saveResult"    # Z

    .prologue
    .line 663
    if-eqz p1, :cond_0

    .line 665
    const v1, 0x7f070080

    .line 669
    .local v1, "msg":I
    :goto_0
    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 670
    .local v0, "completeMessage":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 671
    return-void

    .line 667
    .end local v0    # "completeMessage":Landroid/widget/Toast;
    .end local v1    # "msg":I
    :cond_0
    const v1, 0x7f07007f

    .restart local v1    # "msg":I
    goto :goto_0
.end method

.method private showVirturalKeyboard()V
    .locals 4

    .prologue
    .line 631
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 632
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lcom/lge/wapservice/prov/ProvisioningValidation$9;

    invoke-direct {v1, p0}, Lcom/lge/wapservice/prov/ProvisioningValidation$9;-><init>(Lcom/lge/wapservice/prov/ProvisioningValidation;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 640
    return-void
.end method

.method public static startNetwPinInstallation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sec"    # Ljava/lang/String;
    .param p2, "document"    # Ljava/lang/String;
    .param p3, "mac"    # Ljava/lang/String;
    .param p4, "msguri"    # Ljava/lang/String;

    .prologue
    .line 449
    const/4 v0, 0x0

    .line 450
    .local v0, "msgDocument":[B
    const/4 v1, 0x0

    .line 451
    .local v1, "msgMac":[B
    const/4 v2, 0x0

    .line 452
    .local v2, "msgSec":I
    const/4 v4, 0x0

    .line 453
    .local v4, "unreadMsgCnt":I
    const/4 v3, 0x1

    .line 456
    .local v3, "procResult":Z
    if-eqz p2, :cond_0

    .line 457
    invoke-static {p2}, Lcom/lge/wapservice/utils/LgeUtils;->hexConvert(Ljava/lang/String;)[B

    move-result-object v0

    .line 462
    :goto_0
    if-eqz v3, :cond_1

    if-eqz p3, :cond_1

    .line 463
    invoke-static {p3}, Lcom/lge/wapservice/utils/LgeUtils;->hexConvert(Ljava/lang/String;)[B

    move-result-object v1

    .line 468
    :goto_1
    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    .line 469
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 473
    :goto_2
    const-string v5, "ALICE_TEST"

    const-string v6, "startNetwPinInstallation"

    invoke-static {v5, v6}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    if-eqz v3, :cond_3

    invoke-static {p0, v2, v1, v0}, Lcom/lge/wapservice/prov/ProvisioningValidation;->isValidNetpin(Landroid/content/Context;I[B[B)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 476
    invoke-static {p0, v0}, Lcom/lge/wapservice/prov/ProvisioningValidation;->installNetpinMsg(Landroid/content/Context;[B)Z

    move-result v3

    .line 480
    :goto_3
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lcom/lge/wapservice/utils/DBManager;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 482
    invoke-static {p0, v3}, Lcom/lge/wapservice/prov/ProvisioningValidation;->showInstallResult(Landroid/content/Context;Z)V

    .line 484
    return v3

    .line 459
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 465
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 471
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 478
    :cond_3
    const/4 v3, 0x0

    goto :goto_3
.end method

.method private storePinCodeRemainCnt(I)V
    .locals 4
    .param p1, "nRemainCnt"    # I

    .prologue
    .line 597
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 598
    .local v0, "dbParamMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "PIN_REMAIN_CNT"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    const-string v1, "DOINSTALL"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    const-string v1, "WapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storeRemainCnt =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-virtual {p0}, Lcom/lge/wapservice/prov/ProvisioningValidation;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mMsgUriString:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/lge/wapservice/utils/DBManager;->update(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 608
    return-void
.end method

.method private storeProvision(I)V
    .locals 5
    .param p1, "SimID"    # I

    .prologue
    .line 364
    const/4 v0, 0x0

    .line 365
    .local v0, "parsing_result":Z
    const/4 v1, 0x0

    .line 366
    .local v1, "save_result":Z
    iget-object v2, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mDocument:[B

    invoke-static {v2}, Lcom/lge/wapservice/prov/ProvisioningDocParse;->parseDoc([B)Z

    move-result v0

    .line 367
    if-eqz v0, :cond_0

    .line 369
    sget-object v2, Lcom/lge/wapservice/prov/ProvisioningDocParse;->mProvisioningDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    invoke-virtual {p0}, Lcom/lge/wapservice/prov/ProvisioningValidation;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->initHni(Landroid/content/Context;)V

    .line 373
    invoke-virtual {p0}, Lcom/lge/wapservice/prov/ProvisioningValidation;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/lge/wapservice/prov/ProvisioningDocParse;->mProvisioningDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iget-object v4, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mDocument:[B

    invoke-static {v2, v3, v4, p1}, Lcom/lge/wapservice/prov/persister/Persister;->save(Landroid/content/Context;Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;[BI)Z

    move-result v1

    .line 376
    :cond_0
    if-eqz v1, :cond_1

    .line 377
    iget-object v2, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mMsgUriString:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 380
    invoke-virtual {p0}, Lcom/lge/wapservice/prov/ProvisioningValidation;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mMsgUriString:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/lge/wapservice/utils/DBManager;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 383
    :cond_1
    return-void
.end method

.method private updatePINCodeEnterText(I)V
    .locals 5
    .param p1, "remainCnt"    # I

    .prologue
    .line 611
    const v0, 0x7f090004

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/prov/ProvisioningValidation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f07000d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/lge/wapservice/prov/ProvisioningValidation;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 613
    const v0, 0x7f09000a

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/prov/ProvisioningValidation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    const-string v0, "WapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> ProvisioningValidation:pinEntered() pinRemainCnt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 84
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x7f070001

    const v2, 0x1010355

    const/4 v4, 0x0

    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/prov/ProvisioningValidation;->setContentView(I)V

    .line 90
    const v0, 0x7f09000a

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/prov/ProvisioningValidation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->nRemainNum:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mBadUserPinDialog:Landroid/app/AlertDialog$Builder;

    .line 92
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mBadUserPinDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 93
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mBadUserPinDialog:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f070010

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 95
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mBadUserPinDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 97
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mBadUserPinDialog:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/lge/wapservice/prov/ProvisioningValidation$1;

    invoke-direct {v1, p0}, Lcom/lge/wapservice/prov/ProvisioningValidation$1;-><init>(Lcom/lge/wapservice/prov/ProvisioningValidation;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 110
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mBadUserPinDialog:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f07007b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 112
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mDiscardDialog:Landroid/app/AlertDialog$Builder;

    .line 113
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mDiscardDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 114
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mDiscardDialog:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f070014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 116
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mDiscardDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 118
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mDiscardDialog:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/lge/wapservice/prov/ProvisioningValidation$2;

    invoke-direct {v1, p0}, Lcom/lge/wapservice/prov/ProvisioningValidation$2;-><init>(Lcom/lge/wapservice/prov/ProvisioningValidation;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 133
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mDiscardDialog:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/lge/wapservice/prov/ProvisioningValidation$3;

    invoke-direct {v1, p0}, Lcom/lge/wapservice/prov/ProvisioningValidation$3;-><init>(Lcom/lge/wapservice/prov/ProvisioningValidation;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 156
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mDiscardDialog:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f07007c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 157
    const v0, 0x7f090007

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/prov/ProvisioningValidation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mUserSuppliedPin:Landroid/widget/EditText;

    .line 158
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mUserSuppliedPin:Landroid/widget/EditText;

    new-instance v1, Lcom/lge/wapservice/prov/ProvisioningValidation$4;

    invoke-direct {v1, p0}, Lcom/lge/wapservice/prov/ProvisioningValidation$4;-><init>(Lcom/lge/wapservice/prov/ProvisioningValidation;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 173
    const v0, 0x7f090006

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/prov/ProvisioningValidation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mVisibleUserPin:Landroid/widget/CheckBox;

    .line 174
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mVisibleUserPin:Landroid/widget/CheckBox;

    new-instance v1, Lcom/lge/wapservice/prov/ProvisioningValidation$5;

    invoke-direct {v1, p0}, Lcom/lge/wapservice/prov/ProvisioningValidation$5;-><init>(Lcom/lge/wapservice/prov/ProvisioningValidation;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 191
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mVisibleUserPin:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mUserSuppliedPin:Landroid/widget/EditText;

    const/16 v1, 0x92

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 200
    :goto_0
    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/prov/ProvisioningValidation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mCancel:Landroid/widget/Button;

    .line 201
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mCancel:Landroid/widget/Button;

    new-instance v1, Lcom/lge/wapservice/prov/ProvisioningValidation$6;

    invoke-direct {v1, p0}, Lcom/lge/wapservice/prov/ProvisioningValidation$6;-><init>(Lcom/lge/wapservice/prov/ProvisioningValidation;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    const v0, 0x7f090003

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/prov/ProvisioningValidation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mOk:Landroid/widget/Button;

    .line 216
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mOk:Landroid/widget/Button;

    new-instance v1, Lcom/lge/wapservice/prov/ProvisioningValidation$7;

    invoke-direct {v1, p0}, Lcom/lge/wapservice/prov/ProvisioningValidation$7;-><init>(Lcom/lge/wapservice/prov/ProvisioningValidation;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mUserSuppliedPin:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 244
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mOk:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setFocusable(Z)V

    .line 245
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mOk:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 247
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mUserSuppliedPin:Landroid/widget/EditText;

    new-instance v1, Lcom/lge/wapservice/prov/ProvisioningValidation$8;

    invoke-direct {v1, p0}, Lcom/lge/wapservice/prov/ProvisioningValidation$8;-><init>(Lcom/lge/wapservice/prov/ProvisioningValidation;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 267
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mUserSuppliedPin:Landroid/widget/EditText;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, "newRemainNum":I
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 274
    invoke-virtual {p0, p1}, Lcom/lge/wapservice/prov/ProvisioningValidation;->setIntent(Landroid/content/Intent;)V

    .line 275
    const-string v1, "com.lge.wapservice.prov.PIN_REMAINCNT"

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 277
    const-string v1, "WapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> ProvisioningValidation:onNewIntent()  pinRemainCnt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 649
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 650
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 652
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mAlertDialog:Landroid/app/AlertDialog;

    .line 653
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mUserSuppliedPin:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 655
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 282
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 284
    invoke-virtual {p0}, Lcom/lge/wapservice/prov/ProvisioningValidation;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 285
    .local v2, "myIntent":Landroid/content/Intent;
    const-string v7, "com.lge.wapservice.prov.SEC"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 286
    .local v4, "secString":Ljava/lang/String;
    const-string v7, "com.lge.wapservice.prov.provisioning-data"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v7

    iput-object v7, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mDocument:[B

    .line 287
    const-string v7, "com.lge.wapservice.prov.MAC"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "macString":Ljava/lang/String;
    const/4 v5, 0x0

    .line 290
    .local v5, "subID":I
    const-string v7, "com.lge.wapservice.prov.provSubID"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 292
    const-string v7, "com.lge.wapservice.prov.msguri"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mMsgUriString:Ljava/lang/String;

    .line 293
    if-nez v4, :cond_0

    .line 295
    invoke-static {p0, v8}, Lcom/lge/wapservice/prov/ProvisioningValidation;->showToastMessage(Landroid/content/Context;Z)V

    .line 296
    invoke-virtual {p0}, Lcom/lge/wapservice/prov/ProvisioningValidation;->finish()V

    .line 330
    :goto_0
    return-void

    .line 300
    :cond_0
    const-string v7, "com.lge.wapservice.prov.PIN_REMAINCNT"

    const/4 v8, 0x3

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->nRemainNum:I

    .line 302
    iget v7, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->nRemainNum:I

    invoke-direct {p0, v7}, Lcom/lge/wapservice/prov/ProvisioningValidation;->updatePINCodeEnterText(I)V

    .line 303
    const-string v7, "WapService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ">>> ProvisioningValidation:Onstart() secString = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  pinRemainCnt = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->nRemainNum:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 308
    .local v3, "sec":I
    if-eqz v1, :cond_1

    .line 309
    invoke-static {v1}, Lcom/lge/wapservice/utils/LgeUtils;->hexConvert(Ljava/lang/String;)[B

    move-result-object v7

    iput-object v7, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mMac:[B

    .line 314
    :goto_1
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Lcom/lge/wapservice/prov/ProvisioningValidation;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 317
    .local v6, "tm":Landroid/telephony/TelephonyManager;
    const-string v7, "WapService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IMSI = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :try_start_0
    invoke-static {}, Lcom/lge/wapservice/utils/DualSIM_Helper;->supportMultiSIM()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 323
    iget-object v7, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mDocument:[B

    invoke-static {}, Lcom/lge/wapservice/utils/DualSIM_Helper;->getCurrentIMSIData()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v7, v8}, Lcom/lge/wapservice/prov/security/OmaSigner;->signerFor(I[BLjava/lang/String;)Lcom/lge/wapservice/prov/security/OmaSigner;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mSigner:Lcom/lge/wapservice/prov/security/OmaSigner;
    :try_end_0
    .catch Lcom/lge/wapservice/prov/security/UnknownSecurityMechanismException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Lcom/lge/wapservice/prov/security/UnknownSecurityMechanismException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 311
    .end local v0    # "e":Lcom/lge/wapservice/prov/security/UnknownSecurityMechanismException;
    .end local v6    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mMac:[B

    goto :goto_1

    .line 325
    .restart local v6    # "tm":Landroid/telephony/TelephonyManager;
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mDocument:[B

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v7, v8}, Lcom/lge/wapservice/prov/security/OmaSigner;->signerFor(I[BLjava/lang/String;)Lcom/lge/wapservice/prov/security/OmaSigner;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/wapservice/prov/ProvisioningValidation;->mSigner:Lcom/lge/wapservice/prov/security/OmaSigner;
    :try_end_1
    .catch Lcom/lge/wapservice/prov/security/UnknownSecurityMechanismException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
