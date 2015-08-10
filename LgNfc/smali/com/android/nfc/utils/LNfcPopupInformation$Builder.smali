.class public Lcom/android/nfc/utils/LNfcPopupInformation$Builder;
.super Ljava/lang/Object;
.source "LNfcPopupInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/utils/LNfcPopupInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCancelButtonIntent:Landroid/content/Intent;

.field private mCancelButtonIntentUser:Landroid/os/UserHandle;

.field private mIsCancelButtonIntentActivity:Z

.field private mIsNegativeButtonIntentActivity:Z

.field private mIsPositiveButtonIntentActivity:Z

.field private mIsSelectPopup:Z

.field private mIsTitleIcon:Z

.field private mMessage:Ljava/lang/String;

.field private mNegativeButtonIntent:Landroid/content/Intent;

.field private mNegativeButtonIntentUser:Landroid/os/UserHandle;

.field private mNegativeButtonToken:I

.field private mPositiveButtonIntent:Landroid/content/Intent;

.field private mPositiveButtonIntentUser:Landroid/os/UserHandle;

.field private mPositiveButtonToken:I

.field private mRequireDefalutCheckbox:Z

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    const-string v0, ""

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mTitle:Ljava/lang/String;

    .line 268
    const-string v0, ""

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mMessage:Ljava/lang/String;

    .line 269
    iput-object v2, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mPositiveButtonIntent:Landroid/content/Intent;

    .line 270
    iput-object v2, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mNegativeButtonIntent:Landroid/content/Intent;

    .line 271
    iput-object v2, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mCancelButtonIntent:Landroid/content/Intent;

    .line 272
    iput-boolean v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsPositiveButtonIntentActivity:Z

    .line 273
    iput-boolean v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsNegativeButtonIntentActivity:Z

    .line 274
    iput-boolean v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsCancelButtonIntentActivity:Z

    .line 275
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mPositiveButtonIntentUser:Landroid/os/UserHandle;

    .line 276
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mNegativeButtonIntentUser:Landroid/os/UserHandle;

    .line 277
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mCancelButtonIntentUser:Landroid/os/UserHandle;

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsSelectPopup:Z

    .line 279
    iput-boolean v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mRequireDefalutCheckbox:Z

    .line 280
    const v0, 0x104000a

    iput v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mPositiveButtonToken:I

    .line 281
    const/high16 v0, 0x1040000

    iput v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mNegativeButtonToken:I

    .line 282
    iput-boolean v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsTitleIcon:Z

    .line 285
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Landroid/os/UserHandle;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mCancelButtonIntentUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsSelectPopup:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mRequireDefalutCheckbox:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    .prologue
    .line 266
    iget v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mPositiveButtonToken:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    .prologue
    .line 266
    iget v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mNegativeButtonToken:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsTitleIcon:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mPositiveButtonIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mNegativeButtonIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mCancelButtonIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsPositiveButtonIntentActivity:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsNegativeButtonIntentActivity:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsCancelButtonIntentActivity:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Landroid/os/UserHandle;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mPositiveButtonIntentUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Landroid/os/UserHandle;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mNegativeButtonIntentUser:Landroid/os/UserHandle;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/android/nfc/utils/LNfcPopupInformation;
    .locals 2

    .prologue
    .line 362
    new-instance v0, Lcom/android/nfc/utils/LNfcPopupInformation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/utils/LNfcPopupInformation;-><init>(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;Lcom/android/nfc/utils/LNfcPopupInformation$1;)V

    return-object v0
.end method

.method public cancelButtonIntent(Landroid/content/Intent;Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;
    .locals 0
    .param p1, "cancelButtonIntent"    # Landroid/content/Intent;
    .param p2, "isActivity"    # Z

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mCancelButtonIntent:Landroid/content/Intent;

    .line 311
    iput-boolean p2, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsCancelButtonIntentActivity:Z

    .line 312
    return-object p0
.end method

.method public cancelButtonIntent(Landroid/content/Intent;ZLandroid/os/UserHandle;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;
    .locals 0
    .param p1, "cancelButtonIntent"    # Landroid/content/Intent;
    .param p2, "isActivity"    # Z
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mCancelButtonIntent:Landroid/content/Intent;

    .line 331
    iput-boolean p2, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsCancelButtonIntentActivity:Z

    .line 332
    iput-object p3, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mCancelButtonIntentUser:Landroid/os/UserHandle;

    .line 333
    return-object p0
.end method

.method public defaultCheckbox(Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;
    .locals 0
    .param p1, "requireDefaultcheckbox"    # Z

    .prologue
    .line 342
    iput-boolean p1, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mRequireDefalutCheckbox:Z

    .line 343
    return-object p0
.end method

.method public message(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mMessage:Ljava/lang/String;

    .line 294
    return-object p0
.end method

.method public negativeButtonIntent(Landroid/content/Intent;Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;
    .locals 0
    .param p1, "negativeButtonIntent"    # Landroid/content/Intent;
    .param p2, "isActivity"    # Z

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mNegativeButtonIntent:Landroid/content/Intent;

    .line 305
    iput-boolean p2, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsNegativeButtonIntentActivity:Z

    .line 306
    return-object p0
.end method

.method public negativeButtonIntent(Landroid/content/Intent;ZLandroid/os/UserHandle;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;
    .locals 0
    .param p1, "negativeButtonIntent"    # Landroid/content/Intent;
    .param p2, "isActivity"    # Z
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mNegativeButtonIntent:Landroid/content/Intent;

    .line 324
    iput-boolean p2, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsNegativeButtonIntentActivity:Z

    .line 325
    iput-object p3, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mNegativeButtonIntentUser:Landroid/os/UserHandle;

    .line 326
    return-object p0
.end method

.method public negativeButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;
    .locals 0
    .param p1, "tokenid"    # I

    .prologue
    .line 352
    iput p1, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mNegativeButtonToken:I

    .line 353
    return-object p0
.end method

.method public positiveButtonIntent(Landroid/content/Intent;Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;
    .locals 0
    .param p1, "positiveButtonIntent"    # Landroid/content/Intent;
    .param p2, "isActivity"    # Z

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mPositiveButtonIntent:Landroid/content/Intent;

    .line 299
    iput-boolean p2, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsPositiveButtonIntentActivity:Z

    .line 300
    return-object p0
.end method

.method public positiveButtonIntent(Landroid/content/Intent;ZLandroid/os/UserHandle;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;
    .locals 0
    .param p1, "positiveButtonIntent"    # Landroid/content/Intent;
    .param p2, "isActivity"    # Z
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mPositiveButtonIntent:Landroid/content/Intent;

    .line 317
    iput-boolean p2, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsPositiveButtonIntentActivity:Z

    .line 318
    iput-object p3, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mPositiveButtonIntentUser:Landroid/os/UserHandle;

    .line 319
    return-object p0
.end method

.method public positiveButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;
    .locals 0
    .param p1, "tokenid"    # I

    .prologue
    .line 347
    iput p1, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mPositiveButtonToken:I

    .line 348
    return-object p0
.end method

.method public selectPopup(Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;
    .locals 0
    .param p1, "isSelectPopup"    # Z

    .prologue
    .line 337
    iput-boolean p1, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsSelectPopup:Z

    .line 338
    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mTitle:Ljava/lang/String;

    .line 289
    return-object p0
.end method

.method public titleIcon(Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;
    .locals 0
    .param p1, "isTitleIcon"    # Z

    .prologue
    .line 357
    iput-boolean p1, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsTitleIcon:Z

    .line 358
    return-object p0
.end method
