.class public Lcom/lge/camera/postview/PostviewDialog;
.super Landroid/app/DialogFragment;
.source "PostviewDialog.java"


# static fields
.field public static final DIALOG_ID_CLEARSHOT_WARNING:I = 0x7

.field public static final DIALOG_ID_DELETE_CONFIRM:I = 0x4

.field public static final DIALOG_ID_DELETE_CONFIRM_MULT:I = 0x3

.field public static final DIALOG_ID_ENABLE_GALLERY:I = 0x5

.field public static final DIALOG_ID_NONE:I = 0x0

.field public static final DIALOG_ID_PROGRESS:I = 0x9

.field public static final DIALOG_ID_PROGRESS_SAVING:I = 0xa

.field public static final DIALOG_ID_REFOCUS_WARNING:I = 0x8

.field public static final DIALOG_ID_SETAS_LIST:I = 0x2

.field public static final DIALOG_ID_SHARE_LIST:I = 0x1

.field public static final DIALOG_ID_TIMEMACHINE_WARNING:I = 0x6

.field private static mApplicationMode:I

.field private static mDialog:Lcom/lge/camera/postview/PostviewDialog;


# instance fields
.field private mAdapter:Lcom/lge/camera/postview/PostviewMenuAdapter;

.field private mDialogId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/camera/postview/PostviewDialog;->mDialog:Lcom/lge/camera/postview/PostviewDialog;

    .line 93
    const/4 v0, 0x0

    sput v0, Lcom/lge/camera/postview/PostviewDialog;->mApplicationMode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/postview/PostviewDialog;->mDialogId:I

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/postview/PostviewDialog;->mAdapter:Lcom/lge/camera/postview/PostviewMenuAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/postview/PostviewDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/postview/PostviewDialog;

    .prologue
    .line 41
    iget v0, p0, Lcom/lge/camera/postview/PostviewDialog;->mDialogId:I

    return v0
.end method

.method private createClearShotWarningPopup()Landroid/app/AlertDialog;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 341
    invoke-virtual {p0}, Lcom/lge/camera/postview/PostviewDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03000b

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 343
    .local v1, "checkBoxView":Landroid/view/View;
    const/4 v2, 0x0

    .line 345
    .local v2, "dialog":Landroid/app/AlertDialog;
    if-eqz v1, :cond_0

    .line 346
    const v4, 0x7f0d0068

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 348
    .local v3, "userCheck":Landroid/widget/CheckBox;
    if-eqz v3, :cond_0

    .line 349
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/lge/camera/postview/PostviewDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 350
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setSaveEnabled(Z)V

    .line 351
    const v4, 0x7f0a0235

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(I)V

    .line 352
    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 353
    new-instance v4, Lcom/lge/camera/postview/PostviewDialog$11;

    invoke-direct {v4, p0}, Lcom/lge/camera/postview/PostviewDialog$11;-><init>(Lcom/lge/camera/postview/PostviewDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 362
    const v4, 0x7f0a02e8

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1010355

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0300

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a003b

    new-instance v6, Lcom/lge/camera/postview/PostviewDialog$13;

    invoke-direct {v6, p0, v3}, Lcom/lge/camera/postview/PostviewDialog$13;-><init>(Lcom/lge/camera/postview/PostviewDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a003c

    new-instance v6, Lcom/lge/camera/postview/PostviewDialog$12;

    invoke-direct {v6, p0, v3}, Lcom/lge/camera/postview/PostviewDialog$12;-><init>(Lcom/lge/camera/postview/PostviewDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 385
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 386
    invoke-direct {p0, v2}, Lcom/lge/camera/postview/PostviewDialog;->setWindowDimBehindDialog(Landroid/app/Dialog;)V

    .line 389
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "userCheck":Landroid/widget/CheckBox;
    :cond_0
    return-object v2
.end method

.method private createDeleteMultiPopup()Landroid/app/AlertDialog;
    .locals 6

    .prologue
    .line 205
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/lge/camera/postview/PostviewDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 206
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0a02e1

    invoke-virtual {p0, v3}, Lcom/lge/camera/postview/PostviewDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "notifyMsg":Ljava/lang/String;
    const v3, 0x7f0a0181

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a003b

    new-instance v5, Lcom/lge/camera/postview/PostviewDialog$4;

    invoke-direct {v5, p0}, Lcom/lge/camera/postview/PostviewDialog$4;-><init>(Lcom/lge/camera/postview/PostviewDialog;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a003c

    new-instance v5, Lcom/lge/camera/postview/PostviewDialog$3;

    invoke-direct {v5, p0}, Lcom/lge/camera/postview/PostviewDialog$3;-><init>(Lcom/lge/camera/postview/PostviewDialog;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 224
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 225
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-direct {p0, v1}, Lcom/lge/camera/postview/PostviewDialog;->setWindowDimBehindDialog(Landroid/app/Dialog;)V

    .line 226
    return-object v1
.end method

.method private createDeletePopup()Landroid/app/AlertDialog;
    .locals 6

    .prologue
    .line 175
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/lge/camera/postview/PostviewDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 176
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, ""

    .line 177
    .local v2, "notifyMsg":Ljava/lang/String;
    sget v3, Lcom/lge/camera/postview/PostviewDialog;->mApplicationMode:I

    if-nez v3, :cond_0

    .line 178
    const v3, 0x7f0a02e1

    invoke-virtual {p0, v3}, Lcom/lge/camera/postview/PostviewDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 183
    :goto_0
    const v3, 0x7f0a0181

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a003b

    new-instance v5, Lcom/lge/camera/postview/PostviewDialog$2;

    invoke-direct {v5, p0}, Lcom/lge/camera/postview/PostviewDialog$2;-><init>(Lcom/lge/camera/postview/PostviewDialog;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a003c

    new-instance v5, Lcom/lge/camera/postview/PostviewDialog$1;

    invoke-direct {v5, p0}, Lcom/lge/camera/postview/PostviewDialog$1;-><init>(Lcom/lge/camera/postview/PostviewDialog;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 199
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 200
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-direct {p0, v1}, Lcom/lge/camera/postview/PostviewDialog;->setWindowDimBehindDialog(Landroid/app/Dialog;)V

    .line 201
    return-object v1

    .line 180
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    const v3, 0x7f0a02e2

    invoke-virtual {p0, v3}, Lcom/lge/camera/postview/PostviewDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private createEnableGalleryPopup()Landroid/app/AlertDialog;
    .locals 10

    .prologue
    .line 257
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/lge/camera/postview/PostviewDialog;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 258
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, ""

    .line 260
    .local v1, "appName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/postview/PostviewDialog;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/lge/camera/postview/PostviewDialog;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "com.android.gallery3d"

    const/16 v9, 0x2000

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    const v6, 0x7f0a02e6

    invoke-virtual {p0, v6}, Lcom/lge/camera/postview/PostviewDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 271
    .local v5, "notifyMsg":Ljava/lang/String;
    const v6, 0x7f0a02e8

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x1010355

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0a002f

    new-instance v8, Lcom/lge/camera/postview/PostviewDialog$7;

    invoke-direct {v8, p0}, Lcom/lge/camera/postview/PostviewDialog$7;-><init>(Lcom/lge/camera/postview/PostviewDialog;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0a003a

    new-instance v8, Lcom/lge/camera/postview/PostviewDialog$6;

    invoke-direct {v8, p0}, Lcom/lge/camera/postview/PostviewDialog$6;-><init>(Lcom/lge/camera/postview/PostviewDialog;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 287
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 288
    .local v3, "dialog":Landroid/app/AlertDialog;
    invoke-direct {p0, v3}, Lcom/lge/camera/postview/PostviewDialog;->setWindowDimBehindDialog(Landroid/app/Dialog;)V

    .line 289
    return-object v3

    .line 264
    .end local v3    # "dialog":Landroid/app/AlertDialog;
    .end local v5    # "notifyMsg":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 265
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "CameraApp"

    const-string v7, "Application name is not found"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private createPostviewMenuListPopup()Landroid/app/AlertDialog;
    .locals 5

    .prologue
    .line 236
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/lge/camera/postview/PostviewDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 237
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget v3, p0, Lcom/lge/camera/postview/PostviewDialog;->mDialogId:I

    const/16 v4, 0x14

    if-ne v3, v4, :cond_1

    const v2, 0x7f0a016f

    .line 241
    .local v2, "titleId":I
    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 242
    iget-object v3, p0, Lcom/lge/camera/postview/PostviewDialog;->mAdapter:Lcom/lge/camera/postview/PostviewMenuAdapter;

    if-eqz v3, :cond_0

    .line 243
    iget-object v3, p0, Lcom/lge/camera/postview/PostviewDialog;->mAdapter:Lcom/lge/camera/postview/PostviewMenuAdapter;

    new-instance v4, Lcom/lge/camera/postview/PostviewDialog$5;

    invoke-direct {v4, p0}, Lcom/lge/camera/postview/PostviewDialog$5;-><init>(Lcom/lge/camera/postview/PostviewDialog;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 251
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 252
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-direct {p0, v1}, Lcom/lge/camera/postview/PostviewDialog;->setWindowDimBehindDialog(Landroid/app/Dialog;)V

    .line 253
    return-object v1

    .line 237
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    .end local v2    # "titleId":I
    :cond_1
    const v2, 0x7f0a0171

    goto :goto_0
.end method

.method private createProgressPopup()Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 449
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/lge/camera/postview/PostviewDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 450
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 451
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 452
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 453
    new-instance v1, Lcom/lge/camera/postview/PostviewDialog$17;

    invoke-direct {v1, p0}, Lcom/lge/camera/postview/PostviewDialog$17;-><init>(Lcom/lge/camera/postview/PostviewDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 468
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 469
    invoke-direct {p0, v0}, Lcom/lge/camera/postview/PostviewDialog;->setWindowDimBehindDialog(Landroid/app/Dialog;)V

    .line 470
    return-object v0
.end method

.method private createRefocusWarningPopup()Landroid/app/AlertDialog;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 394
    invoke-virtual {p0}, Lcom/lge/camera/postview/PostviewDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03000b

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 396
    .local v1, "checkBoxView":Landroid/view/View;
    const/4 v2, 0x0

    .line 398
    .local v2, "dialog":Landroid/app/AlertDialog;
    if-eqz v1, :cond_0

    .line 399
    const v4, 0x7f0d0068

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 401
    .local v3, "userCheck":Landroid/widget/CheckBox;
    if-eqz v3, :cond_0

    .line 402
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/lge/camera/postview/PostviewDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 403
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setSaveEnabled(Z)V

    .line 404
    const v4, 0x7f0a0235

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(I)V

    .line 405
    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 406
    new-instance v4, Lcom/lge/camera/postview/PostviewDialog$14;

    invoke-direct {v4, p0}, Lcom/lge/camera/postview/PostviewDialog$14;-><init>(Lcom/lge/camera/postview/PostviewDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 415
    const v4, 0x7f0a003e

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1010355

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a03b5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a003b

    new-instance v6, Lcom/lge/camera/postview/PostviewDialog$16;

    invoke-direct {v6, p0, v3}, Lcom/lge/camera/postview/PostviewDialog$16;-><init>(Lcom/lge/camera/postview/PostviewDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a003c

    new-instance v6, Lcom/lge/camera/postview/PostviewDialog$15;

    invoke-direct {v6, p0, v3}, Lcom/lge/camera/postview/PostviewDialog$15;-><init>(Lcom/lge/camera/postview/PostviewDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 439
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 440
    invoke-direct {p0, v2}, Lcom/lge/camera/postview/PostviewDialog;->setWindowDimBehindDialog(Landroid/app/Dialog;)V

    .line 443
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "userCheck":Landroid/widget/CheckBox;
    :cond_0
    return-object v2
.end method

.method private createTimeMachineWarningPopup()Landroid/app/AlertDialog;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 293
    invoke-virtual {p0}, Lcom/lge/camera/postview/PostviewDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03000b

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 295
    .local v1, "checkBoxView":Landroid/view/View;
    const/4 v2, 0x0

    .line 297
    .local v2, "dialog":Landroid/app/AlertDialog;
    if-eqz v1, :cond_0

    .line 298
    const v4, 0x7f0d0068

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 300
    .local v3, "userCheck":Landroid/widget/CheckBox;
    if-eqz v3, :cond_0

    .line 301
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/lge/camera/postview/PostviewDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 302
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setSaveEnabled(Z)V

    .line 303
    const v4, 0x7f0a0235

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(I)V

    .line 304
    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 305
    new-instance v4, Lcom/lge/camera/postview/PostviewDialog$8;

    invoke-direct {v4, p0}, Lcom/lge/camera/postview/PostviewDialog$8;-><init>(Lcom/lge/camera/postview/PostviewDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 314
    const v4, 0x7f0a02e8

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1010355

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0300

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a003b

    new-instance v6, Lcom/lge/camera/postview/PostviewDialog$10;

    invoke-direct {v6, p0, v3}, Lcom/lge/camera/postview/PostviewDialog$10;-><init>(Lcom/lge/camera/postview/PostviewDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a003c

    new-instance v6, Lcom/lge/camera/postview/PostviewDialog$9;

    invoke-direct {v6, p0, v3}, Lcom/lge/camera/postview/PostviewDialog$9;-><init>(Lcom/lge/camera/postview/PostviewDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 333
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 334
    invoke-direct {p0, v2}, Lcom/lge/camera/postview/PostviewDialog;->setWindowDimBehindDialog(Landroid/app/Dialog;)V

    .line 337
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "userCheck":Landroid/widget/CheckBox;
    :cond_0
    return-object v2
.end method

.method public static getPostviewDialog()Lcom/lge/camera/postview/PostviewDialog;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/lge/camera/postview/PostviewDialog;->mDialog:Lcom/lge/camera/postview/PostviewDialog;

    return-object v0
.end method

.method public static getPostviewDialog(II)Lcom/lge/camera/postview/PostviewDialog;
    .locals 9
    .param p0, "dialogId"    # I
    .param p1, "applicatoinMode"    # I

    .prologue
    .line 58
    const/4 v4, 0x0

    .line 59
    .local v4, "needCreate":Z
    sget-object v6, Lcom/lge/camera/postview/PostviewDialog;->mDialog:Lcom/lge/camera/postview/PostviewDialog;

    if-eqz v6, :cond_1

    sget-object v6, Lcom/lge/camera/postview/PostviewDialog;->mDialog:Lcom/lge/camera/postview/PostviewDialog;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostviewDialog;->isAdded()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 60
    sget-object v6, Lcom/lge/camera/postview/PostviewDialog;->mDialog:Lcom/lge/camera/postview/PostviewDialog;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostviewDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 61
    .local v3, "ft":Landroid/app/FragmentTransaction;
    sget-object v6, Lcom/lge/camera/postview/PostviewDialog;->mDialog:Lcom/lge/camera/postview/PostviewDialog;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostviewDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "dialog_postview"

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    .line 62
    .local v5, "prev":Landroid/app/Fragment;
    if-eqz v5, :cond_1

    .line 63
    invoke-virtual {v3, v5}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 64
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 65
    sget-object v6, Lcom/lge/camera/postview/PostviewDialog;->mDialog:Lcom/lge/camera/postview/PostviewDialog;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostviewDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/ShotPostviewActivity;

    .line 66
    .local v0, "act":Lcom/lge/camera/ShotPostviewActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lge/camera/ShotPostviewActivity;->isPausing()Z

    move-result v6

    if-nez v6, :cond_0

    .line 67
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 69
    :cond_0
    const/4 v4, 0x1

    .line 73
    .end local v0    # "act":Lcom/lge/camera/ShotPostviewActivity;
    .end local v3    # "ft":Landroid/app/FragmentTransaction;
    .end local v5    # "prev":Landroid/app/Fragment;
    :cond_1
    sget-object v6, Lcom/lge/camera/postview/PostviewDialog;->mDialog:Lcom/lge/camera/postview/PostviewDialog;

    if-nez v6, :cond_2

    .line 74
    const/4 v4, 0x1

    .line 77
    :cond_2
    if-eqz v4, :cond_3

    .line 78
    new-instance v6, Lcom/lge/camera/postview/PostviewDialog;

    invoke-direct {v6}, Lcom/lge/camera/postview/PostviewDialog;-><init>()V

    sput-object v6, Lcom/lge/camera/postview/PostviewDialog;->mDialog:Lcom/lge/camera/postview/PostviewDialog;

    .line 82
    :cond_3
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 83
    .local v1, "args":Landroid/os/Bundle;
    const-string v6, "dialogId"

    invoke-virtual {v1, v6, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84
    sget-object v6, Lcom/lge/camera/postview/PostviewDialog;->mDialog:Lcom/lge/camera/postview/PostviewDialog;

    invoke-virtual {v6, v1}, Lcom/lge/camera/postview/PostviewDialog;->setArguments(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v1    # "args":Landroid/os/Bundle;
    :goto_0
    sput p1, Lcom/lge/camera/postview/PostviewDialog;->mApplicationMode:I

    .line 90
    sget-object v6, Lcom/lge/camera/postview/PostviewDialog;->mDialog:Lcom/lge/camera/postview/PostviewDialog;

    return-object v6

    .line 85
    :catch_0
    move-exception v2

    .line 86
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setWindowDimBehindDialog(Landroid/app/Dialog;)V
    .locals 3
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 114
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 115
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 116
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 117
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 118
    return-void
.end method


# virtual methods
.method public getCurrentDialogId()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/lge/camera/postview/PostviewDialog;->mDialogId:I

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/lge/camera/postview/PostviewDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 500
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {p0}, Lcom/lge/camera/postview/PostviewDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 504
    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 505
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstatnceState"    # Landroid/os/Bundle;

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/lge/camera/postview/PostviewDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dialogId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/postview/PostviewDialog;->mDialogId:I

    .line 124
    iget v0, p0, Lcom/lge/camera/postview/PostviewDialog;->mDialogId:I

    packed-switch v0, :pswitch_data_0

    .line 153
    invoke-direct {p0}, Lcom/lge/camera/postview/PostviewDialog;->createEnableGalleryPopup()Landroid/app/AlertDialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 126
    :pswitch_0
    invoke-direct {p0}, Lcom/lge/camera/postview/PostviewDialog;->createDeleteMultiPopup()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 129
    :pswitch_1
    invoke-direct {p0}, Lcom/lge/camera/postview/PostviewDialog;->createDeletePopup()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 133
    :pswitch_2
    invoke-direct {p0}, Lcom/lge/camera/postview/PostviewDialog;->createPostviewMenuListPopup()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 136
    :pswitch_3
    invoke-direct {p0}, Lcom/lge/camera/postview/PostviewDialog;->createEnableGalleryPopup()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 139
    :pswitch_4
    invoke-direct {p0}, Lcom/lge/camera/postview/PostviewDialog;->createTimeMachineWarningPopup()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 142
    :pswitch_5
    invoke-direct {p0}, Lcom/lge/camera/postview/PostviewDialog;->createClearShotWarningPopup()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 146
    :pswitch_6
    invoke-direct {p0}, Lcom/lge/camera/postview/PostviewDialog;->createRefocusWarningPopup()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 150
    :pswitch_7
    invoke-direct {p0}, Lcom/lge/camera/postview/PostviewDialog;->createProgressPopup()Landroid/app/ProgressDialog;

    move-result-object v0

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/lge/camera/postview/PostviewDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "dialogId"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/lge/camera/postview/PostviewDialog;->mDialogId:I

    .line 160
    iget v3, p0, Lcom/lge/camera/postview/PostviewDialog;->mDialogId:I

    packed-switch v3, :pswitch_data_0

    .line 170
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    :goto_0
    return-object v2

    .line 163
    :pswitch_0
    const v3, 0x7f030024

    invoke-virtual {p1, v3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 164
    .local v2, "progressDialog":Landroid/view/View;
    const v3, 0x7f0d00c1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 165
    .local v1, "msgView":Landroid/widget/TextView;
    iget v3, p0, Lcom/lge/camera/postview/PostviewDialog;->mDialogId:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_0

    const v0, 0x7f0a0343

    .line 167
    .local v0, "msgId":I
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/postview/PostviewDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 165
    .end local v0    # "msgId":I
    :cond_0
    const v0, 0x7f0a0060

    goto :goto_1

    .line 160
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 475
    iget v2, p0, Lcom/lge/camera/postview/PostviewDialog;->mDialogId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 476
    const/4 v0, 0x0

    .line 477
    .local v0, "act":Lcom/lge/camera/ShotPostviewActivity;
    iget v2, p0, Lcom/lge/camera/postview/PostviewDialog;->mDialogId:I

    packed-switch v2, :pswitch_data_0

    .line 489
    .end local v0    # "act":Lcom/lge/camera/ShotPostviewActivity;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/postview/PostviewDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 490
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_1

    .line 491
    invoke-virtual {p0}, Lcom/lge/camera/postview/PostviewDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x100

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 494
    :cond_1
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 495
    return-void

    .line 479
    .end local v1    # "activity":Landroid/app/Activity;
    .restart local v0    # "act":Lcom/lge/camera/ShotPostviewActivity;
    :pswitch_0
    invoke-virtual {p0}, Lcom/lge/camera/postview/PostviewDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .end local v0    # "act":Lcom/lge/camera/ShotPostviewActivity;
    check-cast v0, Lcom/lge/camera/ShotPostviewActivity;

    .line 480
    .restart local v0    # "act":Lcom/lge/camera/ShotPostviewActivity;
    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {v0}, Lcom/lge/camera/ShotPostviewActivity;->doTimeMachineWarningDismiss()V

    goto :goto_0

    .line 477
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public setSharedListDialogAdater(Lcom/lge/camera/postview/PostviewMenuAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/lge/camera/postview/PostviewMenuAdapter;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/lge/camera/postview/PostviewDialog;->mAdapter:Lcom/lge/camera/postview/PostviewMenuAdapter;

    .line 233
    return-void
.end method

.method public unbind()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    sput-object v1, Lcom/lge/camera/postview/PostviewDialog;->mDialog:Lcom/lge/camera/postview/PostviewDialog;

    .line 106
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewDialog;->mAdapter:Lcom/lge/camera/postview/PostviewMenuAdapter;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewDialog;->mAdapter:Lcom/lge/camera/postview/PostviewMenuAdapter;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostviewMenuAdapter;->clear()V

    .line 108
    iput-object v1, p0, Lcom/lge/camera/postview/PostviewDialog;->mAdapter:Lcom/lge/camera/postview/PostviewMenuAdapter;

    .line 110
    :cond_0
    return-void
.end method
