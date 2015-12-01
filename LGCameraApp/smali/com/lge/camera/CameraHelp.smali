.class public Lcom/lge/camera/CameraHelp;
.super Landroid/app/Activity;
.source "CameraHelp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/CameraHelp$HelpHandler;,
        Lcom/lge/camera/CameraHelp$CameraScreenOffReceiver;,
        Lcom/lge/camera/CameraHelp$HelpMenuMediaBroadCastReceiver;
    }
.end annotation


# static fields
.field private static final MSG_SHOW_ITEM:I


# instance fields
.field private delayTimeToMoveSelectedItem:I

.field private isScrolled:Z

.field private mCameraId:I

.field private mHandler:Landroid/os/Handler;

.field private mHelpAdapter:Lcom/lge/camera/adapter/HelpItemAdapter;

.field private mHelpListView:Landroid/widget/ListView;

.field private mHelpMode:I

.field private mKeyString:Ljava/lang/String;

.field private mMediaReceiver:Lcom/lge/camera/CameraHelp$HelpMenuMediaBroadCastReceiver;

.field private mScreenOffReceiver:Lcom/lge/camera/CameraHelp$CameraScreenOffReceiver;

.field private mSecureCamera:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/CameraHelp;->mHandler:Landroid/os/Handler;

    .line 57
    iput-boolean v1, p0, Lcom/lge/camera/CameraHelp;->mSecureCamera:Z

    .line 62
    iput-boolean v1, p0, Lcom/lge/camera/CameraHelp;->isScrolled:Z

    .line 63
    const/16 v0, 0x12c

    iput v0, p0, Lcom/lge/camera/CameraHelp;->delayTimeToMoveSelectedItem:I

    .line 288
    return-void
.end method

.method static synthetic access$002(Lcom/lge/camera/CameraHelp;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/CameraHelp;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/lge/camera/CameraHelp;->isScrolled:Z

    return p1
.end method

.method private registerCameraScreenOffReceiver(Lcom/lge/camera/CameraHelp$CameraScreenOffReceiver;)V
    .locals 2
    .param p1, "receiver"    # Lcom/lge/camera/CameraHelp$CameraScreenOffReceiver;

    .prologue
    .line 242
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/CameraHelp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 243
    return-void
.end method

.method private registerMediaReceiver(Lcom/lge/camera/CameraHelp$HelpMenuMediaBroadCastReceiver;)V
    .locals 2
    .param p1, "receiver"    # Lcom/lge/camera/CameraHelp$HelpMenuMediaBroadCastReceiver;

    .prologue
    .line 224
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    const-string v1, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/CameraHelp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 239
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v8, 0x0

    .line 311
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Help onConfigurationChanged ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/lge/camera/CameraHelp;->isScrolled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-boolean v5, p0, Lcom/lge/camera/CameraHelp;->isScrolled:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/lge/camera/CameraHelp;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_0

    .line 313
    iget-object v5, p0, Lcom/lge/camera/CameraHelp;->mHandler:Landroid/os/Handler;

    iget v6, p0, Lcom/lge/camera/CameraHelp;->delayTimeToMoveSelectedItem:I

    int-to-long v6, v6

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/CameraHelp;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    .line 317
    .local v0, "actionBarHeight":I
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 318
    .local v3, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/lge/camera/CameraHelp;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x10102eb

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v3, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 319
    iget v5, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Lcom/lge/camera/CameraHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 324
    :cond_1
    const v5, 0x7f0d00b5

    invoke-virtual {p0, v5}, Lcom/lge/camera/CameraHelp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 325
    .local v2, "rl":Landroid/widget/RelativeLayout;
    invoke-virtual {v2, v8, v0, v8, v8}, Landroid/widget/RelativeLayout;->setPaddingRelative(IIII)V

    .line 327
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 328
    .local v1, "outMetrics":Landroid/util/DisplayMetrics;
    const-string v5, "window"

    invoke-virtual {p0, v5}, Lcom/lge/camera/CameraHelp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 329
    .local v4, "wm":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 330
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6}, Lcom/lge/camera/properties/CameraConstants;->setLcdSize(II)V

    .line 331
    iget-object v5, p0, Lcom/lge/camera/CameraHelp;->mHelpAdapter:Lcom/lge/camera/adapter/HelpItemAdapter;

    if-eqz v5, :cond_2

    .line 332
    iget-object v5, p0, Lcom/lge/camera/CameraHelp;->mHelpAdapter:Lcom/lge/camera/adapter/HelpItemAdapter;

    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v5, v6}, Lcom/lge/camera/adapter/HelpItemAdapter;->setOrientation(I)V

    .line 333
    iget-object v5, p0, Lcom/lge/camera/CameraHelp;->mHelpAdapter:Lcom/lge/camera/adapter/HelpItemAdapter;

    invoke-virtual {v5}, Lcom/lge/camera/adapter/HelpItemAdapter;->refreshDialog()V

    .line 335
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 336
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/lge/camera/CameraHelp;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 69
    invoke-static {p0}, Lcom/lge/camera/util/AppControlUtil;->disableNavigationButton(Landroid/app/Activity;)V

    .line 70
    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    .line 71
    .local v9, "outMetrics":Landroid/util/DisplayMetrics;
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraHelp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/WindowManager;

    .line 72
    .local v13, "wm":Landroid/view/WindowManager;
    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 73
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Lcom/lge/camera/properties/CameraConstants;->setLcdSize(II)V

    .line 75
    invoke-virtual {p0}, Lcom/lge/camera/CameraHelp;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    .line 76
    .local v6, "ab":Landroid/app/ActionBar;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 78
    new-instance v0, Lcom/lge/camera/CameraHelp$HelpMenuMediaBroadCastReceiver;

    invoke-direct {v0, p0, p0}, Lcom/lge/camera/CameraHelp$HelpMenuMediaBroadCastReceiver;-><init>(Lcom/lge/camera/CameraHelp;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/lge/camera/CameraHelp;->mMediaReceiver:Lcom/lge/camera/CameraHelp$HelpMenuMediaBroadCastReceiver;

    .line 79
    iget-object v0, p0, Lcom/lge/camera/CameraHelp;->mMediaReceiver:Lcom/lge/camera/CameraHelp$HelpMenuMediaBroadCastReceiver;

    invoke-direct {p0, v0}, Lcom/lge/camera/CameraHelp;->registerMediaReceiver(Lcom/lge/camera/CameraHelp$HelpMenuMediaBroadCastReceiver;)V

    .line 81
    invoke-virtual {p0}, Lcom/lge/camera/CameraHelp;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 83
    .local v8, "intent":Landroid/content/Intent;
    const-string v0, "helpMode"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/CameraHelp;->mHelpMode:I

    .line 84
    const-string v0, "HelpIndex"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/CameraHelp;->mKeyString:Ljava/lang/String;

    .line 85
    const-string v0, "CameraId"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/CameraHelp;->mCameraId:I

    .line 86
    const-string v0, "secureCamera"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/camera/CameraHelp;->mSecureCamera:Z

    .line 88
    iget-boolean v0, p0, Lcom/lge/camera/CameraHelp;->mSecureCamera:Z

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Lcom/lge/camera/CameraHelp$CameraScreenOffReceiver;

    invoke-direct {v0, p0, p0}, Lcom/lge/camera/CameraHelp$CameraScreenOffReceiver;-><init>(Lcom/lge/camera/CameraHelp;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/lge/camera/CameraHelp;->mScreenOffReceiver:Lcom/lge/camera/CameraHelp$CameraScreenOffReceiver;

    .line 90
    iget-object v0, p0, Lcom/lge/camera/CameraHelp;->mScreenOffReceiver:Lcom/lge/camera/CameraHelp$CameraScreenOffReceiver;

    invoke-direct {p0, v0}, Lcom/lge/camera/CameraHelp;->registerCameraScreenOffReceiver(Lcom/lge/camera/CameraHelp$CameraScreenOffReceiver;)V

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/CameraHelp;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/lge/camera/CameraHelp;->mSecureCamera:Z

    invoke-static {v0, v1, v2}, Lcom/lge/camera/util/Common;->configureWindowFlag(Landroid/view/Window;ZZ)V

    .line 94
    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraHelp;->setContentView(I)V

    .line 96
    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v10

    .line 97
    .local v10, "rotation":I
    const/4 v5, 0x2

    .line 98
    .local v5, "orientation":I
    packed-switch v10, :pswitch_data_0

    .line 109
    :goto_0
    new-instance v0, Lcom/lge/camera/adapter/HelpItemAdapter;

    invoke-virtual {p0}, Lcom/lge/camera/CameraHelp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lcom/lge/camera/CameraHelp;->mHelpMode:I

    iget v4, p0, Lcom/lge/camera/CameraHelp;->mCameraId:I

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/adapter/HelpItemAdapter;-><init>(Landroid/content/Context;Landroid/app/Activity;III)V

    iput-object v0, p0, Lcom/lge/camera/CameraHelp;->mHelpAdapter:Lcom/lge/camera/adapter/HelpItemAdapter;

    .line 111
    const v0, 0x7f0d00b6

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lge/camera/CameraHelp;->mHelpListView:Landroid/widget/ListView;

    .line 112
    iget-object v0, p0, Lcom/lge/camera/CameraHelp;->mHelpListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lge/camera/CameraHelp;->mHelpAdapter:Lcom/lge/camera/adapter/HelpItemAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    new-instance v0, Lcom/lge/camera/CameraHelp$HelpHandler;

    iget-object v1, p0, Lcom/lge/camera/CameraHelp;->mHelpListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/lge/camera/CameraHelp;->mHelpAdapter:Lcom/lge/camera/adapter/HelpItemAdapter;

    iget-object v3, p0, Lcom/lge/camera/CameraHelp;->mKeyString:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/camera/CameraHelp$HelpHandler;-><init>(Landroid/widget/ListView;Lcom/lge/camera/adapter/HelpItemAdapter;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/camera/CameraHelp;->mHandler:Landroid/os/Handler;

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/CameraHelp;->isScrolled:Z

    .line 117
    iget-object v0, p0, Lcom/lge/camera/CameraHelp;->mHelpListView:Landroid/widget/ListView;

    new-instance v1, Lcom/lge/camera/CameraHelp$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/CameraHelp$1;-><init>(Lcom/lge/camera/CameraHelp;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 129
    const/4 v12, 0x0

    .line 130
    .local v12, "version_name":Ljava/lang/String;
    const/4 v11, 0x0

    .line 132
    .local v11, "title_version":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/CameraHelp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/CameraHelp;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v12, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 133
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VersionName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_1
    iget v0, p0, Lcom/lge/camera/CameraHelp;->mHelpMode:I

    if-nez v0, :cond_1

    .line 139
    const v0, 0x7f0a01ac

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraHelp;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 143
    :goto_2
    invoke-virtual {v6, v11}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {p0, v11}, Lcom/lge/camera/CameraHelp;->setTitle(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/lge/camera/CameraHelp;->mHelpListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lge/camera/CameraHelp;->mHelpAdapter:Lcom/lge/camera/adapter/HelpItemAdapter;

    iget-object v2, p0, Lcom/lge/camera/CameraHelp;->mKeyString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lge/camera/adapter/HelpItemAdapter;->getItemPosition(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 146
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v8}, Lcom/lge/camera/CameraHelp;->setResult(ILandroid/content/Intent;)V

    .line 147
    return-void

    .line 101
    .end local v11    # "title_version":Ljava/lang/String;
    .end local v12    # "version_name":Ljava/lang/String;
    :pswitch_0
    const/4 v5, 0x1

    .line 102
    goto/16 :goto_0

    .line 105
    :pswitch_1
    const/4 v5, 0x2

    goto/16 :goto_0

    .line 134
    .restart local v11    # "title_version":Ljava/lang/String;
    .restart local v12    # "version_name":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 135
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v0, "CameraApp"

    const-string v1, "VersionName is not found, "

    invoke-static {v0, v1, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 141
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const v0, 0x7f0a01fe

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraHelp;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    .line 98
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 205
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 206
    iget-object v0, p0, Lcom/lge/camera/CameraHelp;->mMediaReceiver:Lcom/lge/camera/CameraHelp$HelpMenuMediaBroadCastReceiver;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/lge/camera/CameraHelp;->mMediaReceiver:Lcom/lge/camera/CameraHelp$HelpMenuMediaBroadCastReceiver;

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraHelp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 208
    iput-object v1, p0, Lcom/lge/camera/CameraHelp;->mMediaReceiver:Lcom/lge/camera/CameraHelp$HelpMenuMediaBroadCastReceiver;

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/CameraHelp;->mScreenOffReceiver:Lcom/lge/camera/CameraHelp$CameraScreenOffReceiver;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/lge/camera/CameraHelp;->mScreenOffReceiver:Lcom/lge/camera/CameraHelp$CameraScreenOffReceiver;

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraHelp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 212
    iput-object v1, p0, Lcom/lge/camera/CameraHelp;->mScreenOffReceiver:Lcom/lge/camera/CameraHelp$CameraScreenOffReceiver;

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/CameraHelp;->mHelpAdapter:Lcom/lge/camera/adapter/HelpItemAdapter;

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/lge/camera/CameraHelp;->mHelpAdapter:Lcom/lge/camera/adapter/HelpItemAdapter;

    invoke-virtual {v0}, Lcom/lge/camera/adapter/HelpItemAdapter;->unbind()V

    .line 216
    iput-object v1, p0, Lcom/lge/camera/CameraHelp;->mHelpAdapter:Lcom/lge/camera/adapter/HelpItemAdapter;

    .line 218
    :cond_2
    iput-object v1, p0, Lcom/lge/camera/CameraHelp;->mHandler:Landroid/os/Handler;

    .line 219
    iput-object v1, p0, Lcom/lge/camera/CameraHelp;->mHelpListView:Landroid/widget/ListView;

    .line 220
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 340
    sparse-switch p1, :sswitch_data_0

    .line 349
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 343
    :sswitch_0
    const-string v0, "CameraApp"

    const-string v1, "KEYCODE_MENU or KEYCODE_BACK keyup"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 151
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 157
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 154
    :pswitch_0
    invoke-virtual {p0}, Lcom/lge/camera/CameraHelp;->finish()V

    .line 155
    const/4 v0, 0x1

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 195
    iput-boolean v2, p0, Lcom/lge/camera/CameraHelp;->mSecureCamera:Z

    .line 196
    invoke-virtual {p0}, Lcom/lge/camera/CameraHelp;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lge/camera/CameraHelp;->mSecureCamera:Z

    invoke-static {v0, v2, v1}, Lcom/lge/camera/util/Common;->configureWindowFlag(Landroid/view/Window;ZZ)V

    .line 197
    iget-object v0, p0, Lcom/lge/camera/CameraHelp;->mHelpAdapter:Lcom/lge/camera/adapter/HelpItemAdapter;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/lge/camera/CameraHelp;->mHelpAdapter:Lcom/lge/camera/adapter/HelpItemAdapter;

    invoke-virtual {v0}, Lcom/lge/camera/adapter/HelpItemAdapter;->onPause()V

    .line 200
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 201
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 163
    const-string v0, "CameraApp"

    const-string v1, "onRestart()-start "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lge/camera/util/CheckStatusManager;->setEnterCheckComplete(Z)V

    .line 165
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 166
    const-string v0, "CameraApp"

    const-string v1, "onRestart()-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 171
    const-string v1, "CameraApp"

    const-string v2, "onResume()-start "

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/lge/camera/util/CheckStatusManager;->checkEnterApplication(Landroid/app/Activity;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 175
    const-string v1, "CameraApp"

    const-string v2, "onResume()-end,  checkEnterApplication"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/lge/camera/util/CheckStatusManager;->checkCameraOut(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 185
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/CameraHelp;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 180
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "secureCamera"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lge/camera/CameraHelp;->mSecureCamera:Z

    .line 181
    invoke-virtual {p0}, Lcom/lge/camera/CameraHelp;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/camera/CameraHelp;->mSecureCamera:Z

    invoke-static {v1, v3, v2}, Lcom/lge/camera/util/Common;->configureWindowFlag(Landroid/view/Window;ZZ)V

    .line 183
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 184
    const-string v1, "CameraApp"

    const-string v2, "onResume()-end "

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 190
    invoke-virtual {p0}, Lcom/lge/camera/CameraHelp;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 191
    return-void
.end method
