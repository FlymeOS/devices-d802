.class public abstract Lcom/lge/camera/ShotPostviewActivity;
.super Landroid/app/Activity;
.source "ShotPostviewActivity.java"

# interfaces
.implements Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;
.implements Lcom/lge/camera/postview/ReceiverFunction;


# static fields
.field public static final SET_AS_MENU:I = 0x1

.field public static final SHARE_MENU:I


# instance fields
.field private bConnectedDevice:Z

.field private batteryReceiver:Lcom/lge/camera/postview/PostViewBatteryReceiver;

.field protected isFromCreateProcess:Z

.field protected mBack3dCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

.field protected mBack3dCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

.field protected mBackCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

.field protected mBackCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

.field private mCamera:Landroid/hardware/Camera;

.field private mCameraOpenRunnable:Ljava/lang/Runnable;

.field private mCameraOpenThread:Ljava/lang/Thread;

.field protected mCapturedBitmap:Landroid/graphics/Bitmap;

.field protected mCurrentSelectedIndex:I

.field private mDialog:Landroid/app/Dialog;

.field mDismissClickListener:Landroid/content/DialogInterface$OnDismissListener;

.field protected mExitInteraction:Ljava/lang/Runnable;

.field protected mFrontCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

.field protected mFrontCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

.field private mHandler:Lcom/lge/camera/util/MainHandler;

.field protected mImageHandler:Lcom/lge/camera/util/ImageHandler;

.field protected mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

.field protected mPause:Z

.field private mPostRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

.field private mSDCardsetting:Z

.field private mScreenOffReceiver:Lcom/lge/camera/postview/PostViewScreenOffReceiver;

.field private mThreadStartRunnable:Ljava/lang/Runnable;

.field protected mToast:Lcom/lge/camera/postview/PostViewToast;

.field private mediaReceiver:Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;

.field protected postviewMenuSetAs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/postview/PostviewMenu;",
            ">;"
        }
    .end annotation
.end field

.field protected postviewMenuShare:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/postview/PostviewMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 94
    new-instance v0, Lcom/lge/camera/postview/PostViewParameters;

    invoke-direct {v0}, Lcom/lge/camera/postview/PostViewParameters;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    .line 95
    iput-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mediaReceiver:Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;

    .line 96
    iput-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->batteryReceiver:Lcom/lge/camera/postview/PostViewBatteryReceiver;

    .line 97
    iput-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mScreenOffReceiver:Lcom/lge/camera/postview/PostViewScreenOffReceiver;

    .line 98
    new-instance v0, Lcom/lge/camera/postview/PostViewToast;

    invoke-direct {v0}, Lcom/lge/camera/postview/PostViewToast;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mToast:Lcom/lge/camera/postview/PostViewToast;

    .line 100
    iput-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mDialog:Landroid/app/Dialog;

    .line 101
    new-instance v0, Lcom/lge/camera/util/MainHandler;

    invoke-direct {v0}, Lcom/lge/camera/util/MainHandler;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mHandler:Lcom/lge/camera/util/MainHandler;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostRunnables:Ljava/util/ArrayList;

    .line 103
    iput-boolean v2, p0, Lcom/lge/camera/ShotPostviewActivity;->mPause:Z

    .line 104
    iput-boolean v2, p0, Lcom/lge/camera/ShotPostviewActivity;->mSDCardsetting:Z

    .line 107
    iput-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mFrontCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 108
    iput-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mBackCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 109
    iput-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mFrontCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 110
    iput-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mBackCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 111
    iput-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mBack3dCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 112
    iput-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mBack3dCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 114
    iput-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 115
    new-instance v0, Lcom/lge/camera/util/ImageRotationOn;

    invoke-direct {v0}, Lcom/lge/camera/util/ImageRotationOn;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mImageHandler:Lcom/lge/camera/util/ImageHandler;

    .line 116
    new-instance v0, Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-direct {v0, p0}, Lcom/lge/camera/postview/PostviewOrientationInfo;-><init>(Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;)V

    iput-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    .line 117
    iput v2, p0, Lcom/lge/camera/ShotPostviewActivity;->mCurrentSelectedIndex:I

    .line 118
    iput-boolean v2, p0, Lcom/lge/camera/ShotPostviewActivity;->isFromCreateProcess:Z

    .line 120
    new-instance v0, Lcom/lge/camera/ShotPostviewActivity$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/ShotPostviewActivity$1;-><init>(Lcom/lge/camera/ShotPostviewActivity;)V

    iput-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mExitInteraction:Ljava/lang/Runnable;

    .line 574
    iput-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mCamera:Landroid/hardware/Camera;

    .line 575
    iput-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mCameraOpenThread:Ljava/lang/Thread;

    .line 576
    iput-boolean v2, p0, Lcom/lge/camera/ShotPostviewActivity;->bConnectedDevice:Z

    .line 578
    new-instance v0, Lcom/lge/camera/ShotPostviewActivity$2;

    invoke-direct {v0, p0}, Lcom/lge/camera/ShotPostviewActivity$2;-><init>(Lcom/lge/camera/ShotPostviewActivity;)V

    iput-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mCameraOpenRunnable:Ljava/lang/Runnable;

    .line 595
    new-instance v0, Lcom/lge/camera/ShotPostviewActivity$3;

    invoke-direct {v0, p0}, Lcom/lge/camera/ShotPostviewActivity$3;-><init>(Lcom/lge/camera/ShotPostviewActivity;)V

    iput-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mThreadStartRunnable:Ljava/lang/Runnable;

    .line 949
    new-instance v0, Lcom/lge/camera/ShotPostviewActivity$6;

    invoke-direct {v0, p0}, Lcom/lge/camera/ShotPostviewActivity$6;-><init>(Lcom/lge/camera/ShotPostviewActivity;)V

    iput-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mDismissClickListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 984
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->postviewMenuShare:Ljava/util/ArrayList;

    .line 985
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->postviewMenuSetAs:Ljava/util/ArrayList;

    .line 128
    sget v0, Lcom/lge/camera/util/Common;->APP_SHOTMODE_POSTVIEW_INSTANCE_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lge/camera/util/Common;->APP_SHOTMODE_POSTVIEW_INSTANCE_COUNT:I

    .line 129
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "construct POSTVIEW app_instance_cnt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/camera/util/Common;->APP_SHOTMODE_POSTVIEW_INSTANCE_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/ShotPostviewActivity;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/ShotPostviewActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lge/camera/ShotPostviewActivity;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/ShotPostviewActivity;
    .param p1, "x1"    # Landroid/hardware/Camera;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/lge/camera/ShotPostviewActivity;->mCamera:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lge/camera/ShotPostviewActivity;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/ShotPostviewActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mCameraOpenThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lge/camera/ShotPostviewActivity;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/ShotPostviewActivity;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/lge/camera/ShotPostviewActivity;->mCameraOpenThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$200(Lcom/lge/camera/ShotPostviewActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/ShotPostviewActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mCameraOpenRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/lge/camera/ShotPostviewActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/ShotPostviewActivity;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/lge/camera/ShotPostviewActivity;->mDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method private checkAndDisconnectCameraDevice()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 632
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isPostviewDeviceOpenModel()Z

    move-result v1

    if-nez v1, :cond_1

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 635
    :cond_1
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndDisconnectCameraDevice : mCamera = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mThreadStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/lge/camera/ShotPostviewActivity;->removePostRunnable(Ljava/lang/Object;)V

    .line 639
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mCameraOpenThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mCameraOpenThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 641
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mCameraOpenThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 642
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mCameraOpenThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    :goto_1
    iput-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mCameraOpenThread:Ljava/lang/Thread;

    .line 649
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 650
    iget-boolean v1, p0, Lcom/lge/camera/ShotPostviewActivity;->bConnectedDevice:Z

    if-eqz v1, :cond_3

    .line 651
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/util/CameraHolder;->keep()V

    .line 653
    :cond_3
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/util/CameraHolder;->release()Z

    .line 654
    iput-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mCamera:Landroid/hardware/Camera;

    goto :goto_0

    .line 643
    :catch_0
    move-exception v0

    .line 644
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method private connectCameraDevice()V
    .locals 4

    .prologue
    .line 606
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isPostviewDeviceOpenModel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/lge/camera/util/Common;->isScreenLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectCameraDevice : mCamera = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-nez v1, :cond_2

    .line 613
    const-string v1, "CameraApp"

    const-string v2, "Postview : postview parameters get fail."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 616
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewParameters;->getCameraId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 617
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 619
    .local v0, "pref":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-static {v0}, Lcom/lge/camera/setting/Setting;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/postview/PostViewParameters;->setCameraId(I)V

    .line 622
    .end local v0    # "pref":Landroid/content/SharedPreferences;
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 623
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mCameraOpenThread:Ljava/lang/Thread;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mCameraOpenThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 624
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mThreadStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/lge/camera/ShotPostviewActivity;->removePostRunnable(Ljava/lang/Object;)V

    .line 625
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mThreadStartRunnable:Ljava/lang/Runnable;

    invoke-static {}, Lcom/lge/camera/util/Common;->isFaceUnlock()Z

    move-result v2

    if-eqz v2, :cond_5

    const-wide/16 v2, 0x12c

    :goto_1
    invoke-virtual {p0, v1, v2, v3}, Lcom/lge/camera/ShotPostviewActivity;->postOnUiThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_5
    const-wide/16 v2, 0x0

    goto :goto_1
.end method

.method private registerBatteryReceiver(Lcom/lge/camera/postview/PostViewBatteryReceiver;)V
    .locals 2
    .param p1, "receiver"    # Lcom/lge/camera/postview/PostViewBatteryReceiver;

    .prologue
    .line 552
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 553
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/ShotPostviewActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 555
    return-void
.end method

.method private registerMediaReceiver(Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;)V
    .locals 2
    .param p1, "receiver"    # Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;

    .prologue
    .line 533
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 534
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 535
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 536
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 537
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 538
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 539
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 540
    const-string v1, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 541
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 542
    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 543
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 544
    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 546
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/ShotPostviewActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 549
    return-void
.end method

.method private registerScreenOffReceiver(Lcom/lge/camera/postview/PostViewScreenOffReceiver;)V
    .locals 2
    .param p1, "receiver"    # Lcom/lge/camera/postview/PostViewScreenOffReceiver;

    .prologue
    .line 558
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/ShotPostviewActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 559
    return-void
.end method


# virtual methods
.method public adapterPositiveClick(II)V
    .locals 2
    .param p1, "dialogId"    # I
    .param p2, "i"    # I

    .prologue
    const/4 v1, 0x1

    .line 1304
    if-ne p1, v1, :cond_0

    .line 1305
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->postviewMenuShare:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/postview/PostviewMenu;

    invoke-virtual {p0, v1, v0}, Lcom/lge/camera/ShotPostviewActivity;->startPostviewMenuItems(ILcom/lge/camera/postview/PostviewMenu;)V

    .line 1309
    :goto_0
    return-void

    .line 1307
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->postviewMenuSetAs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/postview/PostviewMenu;

    invoke-virtual {p0, v1, v0}, Lcom/lge/camera/ShotPostviewActivity;->startPostviewMenuItems(ILcom/lge/camera/postview/PostviewMenu;)V

    goto :goto_0
.end method

.method protected adjustFilenameForView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "thumbInfo"    # Ljava/lang/String;

    .prologue
    .line 882
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 883
    .local v0, "tFilename":Ljava/lang/String;
    new-instance v1, Lcom/lge/camera/ShotPostviewActivity$5;

    invoke-direct {v1, p0, p1, v0}, Lcom/lge/camera/ShotPostviewActivity$5;-><init>(Lcom/lge/camera/ShotPostviewActivity;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 889
    return-void
.end method

.method protected checkFlipCapturedImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "applicationMode"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 856
    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-nez v4, :cond_0

    .line 857
    const-string v3, "CameraApp"

    const-string v4, "Postview : postview parameters get fail."

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    const/4 v2, 0x0

    .line 877
    :goto_0
    return-object v2

    .line 860
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostViewParameters;->getCameraId()I

    move-result v4

    if-ne v4, v3, :cond_1

    move v1, v3

    .line 861
    .local v1, "flip":Z
    :cond_1
    const/4 v2, 0x0

    .line 863
    .local v2, "flipBitmap":Landroid/graphics/Bitmap;
    if-nez p2, :cond_2

    :try_start_0
    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostViewParameters;->getCameraId()I

    move-result v4

    if-ne v4, v3, :cond_2

    const-string v3, "off"

    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostViewParameters;->getFlip()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 866
    const/4 v1, 0x0

    .line 868
    :cond_2
    if-eqz v1, :cond_3

    .line 869
    const-string v3, "CameraApp"

    const-string v4, "bmp is flipped.."

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mImageHandler:Lcom/lge/camera/util/ImageHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, v1}, Lcom/lge/camera/util/ImageHandler;->getImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 872
    :cond_3
    move-object v2, p1

    goto :goto_0

    .line 874
    :catch_0
    move-exception v0

    .line 875
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "CameraApp"

    const-string v4, "Exception : "

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected checkPauseAndAutoReview()Z
    .locals 1

    .prologue
    .line 957
    iget-boolean v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPause:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 958
    :cond_0
    const/4 v0, 0x0

    .line 963
    :goto_0
    return v0

    .line 960
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isPostviewDeviceOpenModel()Z

    move-result v0

    if-nez v0, :cond_3

    .line 961
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->removeExitInteraction()V

    .line 963
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected clearShareAndSetAsMenuList(ZZ)V
    .locals 1
    .param p1, "share"    # Z
    .param p2, "setas"    # Z

    .prologue
    .line 1249
    if-eqz p1, :cond_0

    .line 1250
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->postviewMenuSetAs:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->postviewMenuSetAs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1251
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->postviewMenuSetAs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1254
    :cond_0
    if-eqz p2, :cond_1

    .line 1255
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->postviewMenuShare:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->postviewMenuShare:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1256
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->postviewMenuShare:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1259
    :cond_1
    return-void
.end method

.method protected configureWindow()V
    .locals 1

    .prologue
    .line 528
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/lge/camera/ShotPostviewActivity;->requestWindowFeature(I)Z

    .line 529
    return-void
.end method

.method protected deleteFinished()V
    .locals 3

    .prologue
    .line 976
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 977
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "delete_done"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 978
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/lge/camera/ShotPostviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 979
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->finish()V

    .line 980
    return-void
.end method

.method protected deleteImage(Ljava/lang/String;Landroid/net/Uri;)I
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 901
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 904
    .local v1, "fullPath":Ljava/lang/String;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try to delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    invoke-static {v1}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 906
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 907
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 908
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/lge/camera/util/ImageManager;->deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 909
    const-string v2, "CameraApp"

    const-string v3, "deleted."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    iget-object v2, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v2}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 912
    const-string v2, "CameraApp"

    const-string v3, "deleted uri"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v2}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 923
    .end local v0    # "file":Ljava/io/File;
    :goto_1
    return v2

    .line 914
    .restart local v0    # "file":Ljava/io/File;
    :cond_0
    const-string v2, "CameraApp"

    const-string v3, "failure to delete uri!"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 918
    :cond_1
    const-string v2, "CameraApp"

    const-string v3, "delete failed"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    const-string v2, "CameraApp"

    const-string v3, "failure delete image file (return -1)"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    const/4 v2, -0x1

    goto :goto_1
.end method

.method protected deleteVideo(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 8
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 927
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v5}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v5}, Lcom/lge/camera/postview/PostViewParameters;->getVideoExtension()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 930
    .local v2, "fullPath":Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 931
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 932
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 933
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 934
    .local v0, "c":Landroid/content/ContentResolver;
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "videoFileUri : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostViewParameters;->getSavedUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostViewParameters;->getSavedUri()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_0

    .line 936
    const-string v4, "CameraApp"

    const-string v5, "videoFileUri is null!"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    .end local v0    # "c":Landroid/content/ContentResolver;
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return v3

    .line 939
    .restart local v0    # "c":Landroid/content/ContentResolver;
    .restart local v1    # "file":Ljava/io/File;
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getSavedUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 946
    .end local v0    # "c":Landroid/content/ContentResolver;
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 942
    .restart local v1    # "file":Ljava/io/File;
    :cond_2
    const-string v4, "CameraApp"

    const-string v5, "videoFile delete fail"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected dismissProgressDialog()V
    .locals 4

    .prologue
    .line 1292
    :try_start_0
    invoke-static {}, Lcom/lge/camera/postview/PostviewDialog;->getPostviewDialog()Lcom/lge/camera/postview/PostviewDialog;

    move-result-object v1

    .line 1293
    .local v1, "mDialog":Lcom/lge/camera/postview/PostviewDialog;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostviewDialog;->getCurrentDialogId()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostviewDialog;->getCurrentDialogId()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 1296
    :cond_0
    invoke-virtual {v1}, Lcom/lge/camera/postview/PostviewDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1301
    .end local v1    # "mDialog":Lcom/lge/camera/postview/PostviewDialog;
    :cond_1
    :goto_0
    return-void

    .line 1298
    :catch_0
    move-exception v0

    .line 1299
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "CameraApp"

    const-string v3, "dismissProgressDialog-IllegalStateException : "

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 427
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 435
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 432
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 427
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected doBackKeyInPostview()V
    .locals 2

    .prologue
    .line 493
    const-string v0, "CameraApp"

    const-string v1, "KEYCODE_BACK"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-boolean v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPause:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 495
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "KEYCODE_BACK - return..."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    :goto_0
    return-void

    .line 498
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->finish()V

    goto :goto_0
.end method

.method public doBurstShotWarningPositiveClick(Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "checkBox"    # Landroid/widget/CheckBox;

    .prologue
    .line 1372
    return-void
.end method

.method public doClearShotWarningDismiss()V
    .locals 0

    .prologue
    .line 1357
    return-void
.end method

.method public doClearShotWarningNegativeClick(Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "checkBox"    # Landroid/widget/CheckBox;

    .prologue
    .line 1354
    return-void
.end method

.method public doClearShotWarningPositiveClick(Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "checkBox"    # Landroid/widget/CheckBox;

    .prologue
    .line 1351
    return-void
.end method

.method public doDeleteMultiPositiveClick()V
    .locals 0

    .prologue
    .line 1336
    return-void
.end method

.method public doDeletePositiveClick()V
    .locals 0

    .prologue
    .line 1333
    return-void
.end method

.method public doEnableGalleryPositiveClick()V
    .locals 0

    .prologue
    .line 1339
    return-void
.end method

.method protected abstract doPreProcessOnCreate()V
.end method

.method protected abstract doProcessOnCreate()V
.end method

.method protected abstract doProcessOnDestroy()V
.end method

.method protected abstract doProcessOnPause()V
.end method

.method protected abstract doProcessOnResume()V
.end method

.method public doRefocusWarningDismiss()V
    .locals 0

    .prologue
    .line 1367
    return-void
.end method

.method public doRefocusWarningNegativeClick(Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "checkBox"    # Landroid/widget/CheckBox;

    .prologue
    .line 1364
    return-void
.end method

.method public doRefocusWarningPositiveClick(Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "checkBox"    # Landroid/widget/CheckBox;

    .prologue
    .line 1361
    return-void
.end method

.method public doTimeMachineWarningDismiss()V
    .locals 0

    .prologue
    .line 1348
    return-void
.end method

.method public doTimeMachineWarningNegativeClick(Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "checkBox"    # Landroid/widget/CheckBox;

    .prologue
    .line 1345
    return-void
.end method

.method public doTimeMachineWarningPositiveClick(Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "checkBox"    # Landroid/widget/CheckBox;

    .prologue
    .line 1342
    return-void
.end method

.method protected doVolumeKey(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 479
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v0, :cond_0

    const-string v0, "shutter"

    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewParameters;->getVolumeKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 482
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->removeExitInteraction()V

    .line 487
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->finish()V

    goto :goto_0
.end method

.method public doWarningNegativeClick()V
    .locals 0

    .prologue
    .line 1375
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 135
    sget v0, Lcom/lge/camera/util/Common;->APP_SHOTMODE_POSTVIEW_INSTANCE_COUNT:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/lge/camera/util/Common;->APP_SHOTMODE_POSTVIEW_INSTANCE_COUNT:I

    .line 136
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy POSTVIEW app_instance_cnt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/camera/util/Common;->APP_SHOTMODE_POSTVIEW_INSTANCE_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 139
    return-void
.end method

.method public finish()V
    .locals 10

    .prologue
    const/16 v9, 0x64

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 384
    const-string v3, "CameraApp"

    const-string v6, "Postview finish()"

    invoke-static {v3, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 386
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "postview_return"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 388
    invoke-static {}, Lcom/lge/camera/util/Common;->isFaceUnlock()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 389
    invoke-direct {p0}, Lcom/lge/camera/ShotPostviewActivity;->checkAndDisconnectCameraDevice()V

    .line 392
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v3, :cond_4

    .line 394
    :try_start_0
    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 397
    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 400
    .local v2, "uriListSize":I
    const-string v6, "recent_uri"

    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 402
    const-string v3, "file_name"

    iget-object v6, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostViewParameters;->getSaveFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    const-string v3, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Postview intent:file_name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v7}, Lcom/lge/camera/postview/PostViewParameters;->getSaveFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    .end local v2    # "uriListSize":I
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportManualAntibanding()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentZoom()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 411
    const-string v3, "currentZoom"

    iget-object v6, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentZoom()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    const-string v3, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "===> mcurzoom : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v7}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentZoom()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_2
    iget-boolean v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mSDCardsetting:Z

    if-eqz v3, :cond_3

    .line 415
    const-string v3, "insert_sdcard"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 417
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->isIsAttachIntent()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/lge/camera/ShotPostviewActivity;->bConnectedDevice:Z

    .line 418
    invoke-virtual {p0, v9, v1}, Lcom/lge/camera/ShotPostviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 419
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 422
    :cond_4
    :goto_1
    return-void

    :cond_5
    move v3, v5

    .line 417
    goto :goto_0

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "CameraApp"

    const-string v6, "Exception!"

    invoke-static {v3, v6, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 409
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportManualAntibanding()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentZoom()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 411
    const-string v3, "currentZoom"

    iget-object v6, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentZoom()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    const-string v3, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "===> mcurzoom : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v7}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentZoom()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_6
    iget-boolean v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mSDCardsetting:Z

    if-eqz v3, :cond_7

    .line 415
    const-string v3, "insert_sdcard"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 417
    :cond_7
    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->isIsAttachIntent()Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_2
    iput-boolean v4, p0, Lcom/lge/camera/ShotPostviewActivity;->bConnectedDevice:Z

    .line 418
    invoke-virtual {p0, v9, v1}, Lcom/lge/camera/ShotPostviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 419
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_8
    move v4, v5

    .line 417
    goto :goto_2

    .line 409
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportManualAntibanding()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentZoom()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 411
    const-string v6, "currentZoom"

    iget-object v7, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v7}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentZoom()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "===> mcurzoom : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v8}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentZoom()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_9
    iget-boolean v6, p0, Lcom/lge/camera/ShotPostviewActivity;->mSDCardsetting:Z

    if-eqz v6, :cond_a

    .line 415
    const-string v6, "insert_sdcard"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 417
    :cond_a
    iget-object v6, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostViewParameters;->isIsAttachIntent()Z

    move-result v6

    if-eqz v6, :cond_b

    :goto_3
    iput-boolean v4, p0, Lcom/lge/camera/ShotPostviewActivity;->bConnectedDevice:Z

    .line 418
    invoke-virtual {p0, v9, v1}, Lcom/lge/camera/ShotPostviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 419
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    throw v3

    :cond_b
    move v4, v5

    .line 417
    goto :goto_3
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 659
    return-object p0
.end method

.method protected getLastThumbnail(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "applicationMode"    # I

    .prologue
    .line 818
    const/4 v9, 0x0

    .line 820
    .local v9, "thumbnail":Landroid/graphics/Bitmap;
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isOMAP4Chipset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 821
    invoke-static {p0, p1}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 822
    .local v8, "filePath":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 823
    const/4 v0, 0x1

    invoke-static {v8, v0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .end local v8    # "filePath":Ljava/lang/String;
    :cond_0
    :goto_0
    move-object v0, v9

    .line 852
    :goto_1
    return-object v0

    .line 827
    :cond_1
    const-wide/16 v2, -0x1

    .line 828
    .local v2, "id":J
    if-eqz p1, :cond_2

    .line 829
    invoke-static {p0, p1}, Lcom/lge/camera/util/Util;->getIdFromUri(Landroid/app/Activity;Landroid/net/Uri;)J

    move-result-wide v2

    .line 830
    const-string v0, "CameraApp"

    const-string v1, "GET THUMB start id is %d, and uri is %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    :cond_2
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_3

    .line 834
    const-string v0, "CameraApp"

    const-string v1, "GET THUMB end: uri not valid"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    const/4 v0, 0x0

    goto :goto_1

    .line 838
    :cond_3
    if-nez p2, :cond_4

    .line 839
    invoke-static {p0, p1}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/ExifUtil;->getExifOrientationDegree(Ljava/lang/String;)I

    move-result v7

    .line 841
    .local v7, "degree":I
    invoke-static {}, Lcom/lge/camera/util/BitmapManager;->instance()Lcom/lge/camera/util/BitmapManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/lge/camera/util/BitmapManager;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 843
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mImageHandler:Lcom/lge/camera/util/ImageHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v7, v1}, Lcom/lge/camera/util/ImageHandler;->getImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 844
    const-string v0, "CameraApp"

    const-string v1, "GET PICTURE THUMB end"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 846
    .end local v7    # "degree":I
    :cond_4
    invoke-static {}, Lcom/lge/camera/util/BitmapManager;->instance()Lcom/lge/camera/util/BitmapManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/lge/camera/util/BitmapManager;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 848
    const-string v0, "CameraApp"

    const-string v1, "GET VIDEO THUMB end"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getPostViewParameters()Lcom/lge/camera/postview/PostViewParameters;
    .locals 1

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    return-object v0
.end method

.method protected getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 753
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-nez v0, :cond_0

    .line 754
    const-string v0, "CameraApp"

    const-string v1, "Postview : postview parameters get fail."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const/4 v0, 0x0

    .line 777
    :goto_0
    return-object v0

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostViewParameters;->getApplicationMode()I

    .line 759
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostViewParameters;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_3

    .line 760
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostViewParameters;->getCameraId()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 761
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mFrontCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    goto :goto_0

    .line 763
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostViewParameters;->getCameraDimension()I

    move-result v0

    if-nez v0, :cond_2

    .line 764
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mBackCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    goto :goto_0

    .line 766
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mBack3dCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    goto :goto_0

    .line 771
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostViewParameters;->getCameraId()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 772
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mFrontCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    goto :goto_0

    .line 774
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostViewParameters;->getCameraDimension()I

    move-result v0

    if-nez v0, :cond_5

    .line 775
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mBackCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    goto :goto_0

    .line 777
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mBack3dCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    goto :goto_0
.end method

.method public getSDCardSetting()Z
    .locals 1

    .prologue
    .line 567
    iget-boolean v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mSDCardsetting:Z

    return v0
.end method

.method protected getSettingValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 784
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    .line 785
    .local v1, "preferenceGroup":Lcom/lge/camera/setting/PreferenceGroup;
    if-nez v1, :cond_0

    .line 786
    const-string v2, "not found"

    .line 792
    :goto_0
    return-object v2

    .line 788
    :cond_0
    invoke-virtual {v1, p1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 789
    .local v0, "pref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_1

    .line 790
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 792
    :cond_1
    const-string v2, "not found"

    goto :goto_0
.end method

.method protected getThumbnailSize(Z)[I
    .locals 5
    .param p1, "landscape"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 797
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 799
    .local v0, "thumbSize":[I
    if-eqz p1, :cond_0

    .line 800
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0901b4

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    aput v1, v0, v3

    .line 802
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0901b5

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    aput v1, v0, v4

    .line 814
    :goto_0
    return-object v0

    .line 805
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0901b6

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    aput v1, v0, v3

    .line 807
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0901b7

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    aput v1, v0, v4

    goto :goto_0
.end method

.method protected inflateStub(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 892
    invoke-virtual {p0, p1}, Lcom/lge/camera/ShotPostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 893
    .local v0, "stub":Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    .line 894
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 896
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPausing()Z
    .locals 1

    .prologue
    .line 571
    iget-boolean v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPause:Z

    return v0
.end method

.method protected loadCapturedImage(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "degrees"    # I

    .prologue
    .line 1382
    const/4 v0, 0x0

    return-object v0
.end method

.method protected loadSingleCapturedImages()Z
    .locals 1

    .prologue
    .line 1378
    const/4 v0, 0x0

    return v0
.end method

.method protected makePostviewMenuItems(I)V
    .locals 19
    .param p1, "menuType"    # I

    .prologue
    .line 988
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 989
    .local v6, "intent":Landroid/content/Intent;
    const/4 v13, 0x0

    .line 991
    .local v13, "postviewMenuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/camera/postview/PostviewMenu;>;"
    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/ShotPostviewActivity;->clearShareAndSetAsMenuList(ZZ)V

    .line 992
    const/16 v17, 0x1

    move/from16 v0, v17

    move/from16 v1, p1

    if-ne v0, v1, :cond_2

    .line 993
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/ShotPostviewActivity;->postviewMenuSetAs:Ljava/util/ArrayList;

    .line 998
    :cond_0
    :goto_0
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 999
    .local v15, "smartShare":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/ShotPostviewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 1000
    .local v11, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 1001
    .local v3, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v9, 0x0

    .line 1003
    .local v9, "numActivities":I
    const-string v17, "android.intent.action.LGSMARTSHARE"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1004
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v15, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v14

    .line 1006
    .local v14, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/lge/camera/ShotPostviewActivity;->readMenuActivity(ILandroid/content/Intent;)Ljava/util/List;

    move-result-object v3

    .line 1007
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v17

    if-gtz v17, :cond_3

    .line 1061
    :cond_1
    :goto_1
    return-void

    .line 994
    .end local v3    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9    # "numActivities":I
    .end local v11    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v14    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v15    # "smartShare":Landroid/content/Intent;
    :cond_2
    if-nez p1, :cond_0

    .line 995
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/ShotPostviewActivity;->postviewMenuShare:Ljava/util/ArrayList;

    goto :goto_0

    .line 1011
    .restart local v3    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v9    # "numActivities":I
    .restart local v11    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v14    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v15    # "smartShare":Landroid/content/Intent;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    .line 1012
    const/4 v8, 0x0

    .line 1013
    .local v8, "labelImage":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1014
    .local v7, "labelApp":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1015
    .local v12, "packageName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1016
    .local v5, "info":Landroid/content/pm/ResolveInfo;
    const/4 v10, 0x0

    .line 1018
    .local v10, "optionIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v13, :cond_1

    .line 1020
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-eq v4, v9, :cond_5

    .line 1021
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 1022
    .restart local v5    # "info":Landroid/content/pm/ResolveInfo;
    if-eqz v5, :cond_4

    .line 1024
    invoke-virtual {v5, v11}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1025
    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1027
    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1028
    invoke-virtual {v5, v11}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1030
    new-instance v17, Lcom/lge/camera/postview/PostviewMenu;

    move-object/from16 v0, v17

    invoke-direct {v0, v8, v7, v12, v10}, Lcom/lge/camera/postview/PostviewMenu;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1020
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1036
    :cond_5
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportPushContorl()Z

    move-result v17

    if-nez v17, :cond_6

    if-nez p1, :cond_6

    if-eqz v14, :cond_6

    .line 1038
    invoke-virtual {v14, v11}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1039
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1040
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1041
    invoke-virtual {v14, v11}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1043
    new-instance v17, Lcom/lge/camera/postview/PostviewMenu;

    move-object/from16 v0, v17

    invoke-direct {v0, v8, v7, v12, v10}, Lcom/lge/camera/postview/PostviewMenu;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1047
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v11}, Lcom/lge/camera/ShotPostviewActivity;->sortPostviewMenuList(Ljava/util/ArrayList;Landroid/content/pm/PackageManager;)V

    .line 1050
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v9, :cond_7

    .line 1051
    const-string v18, "U+Box"

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lge/camera/postview/PostviewMenu;

    invoke-virtual/range {v17 .. v17}, Lcom/lge/camera/postview/PostviewMenu;->getLabelImage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1052
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/lge/camera/postview/PostviewMenu;

    .line 1053
    .local v16, "uplusBoxMenu":Lcom/lge/camera/postview/PostviewMenu;
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1054
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1059
    .end local v16    # "uplusBoxMenu":Lcom/lge/camera/postview/PostviewMenu;
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lge/camera/ShotPostviewActivity;->removeLabelAppByCompareLableImage(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 1050
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1240
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 734
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged : newConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostviewOrientationInfo;->setOrientationByWindowOrientation()V

    .line 738
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 739
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    .line 142
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 143
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Postview onCreate()-start "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Model name:%s"

    new-array v7, v10, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->readModelName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->configureWindow()V

    .line 147
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 148
    .local v1, "outMetrics":Landroid/util/DisplayMetrics;
    const-string v4, "window"

    invoke-virtual {p0, v4}, Lcom/lge/camera/ShotPostviewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 149
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 150
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Lcom/lge/camera/properties/CameraConstants;->setLcdSize(II)V

    .line 151
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->setProjectCode()I

    .line 152
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->setCarrierCode()I

    .line 154
    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/lge/camera/postview/PostViewParameters;->setPostViewParameters(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 156
    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostViewParameters;->isSecureCamera()Z

    move-result v2

    .line 157
    .local v2, "secureCamera":Z
    if-eqz v2, :cond_0

    .line 158
    new-instance v4, Lcom/lge/camera/postview/PostViewScreenOffReceiver;

    invoke-direct {v4, p0}, Lcom/lge/camera/postview/PostViewScreenOffReceiver;-><init>(Lcom/lge/camera/postview/ReceiverFunction;)V

    iput-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mScreenOffReceiver:Lcom/lge/camera/postview/PostViewScreenOffReceiver;

    .line 159
    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mScreenOffReceiver:Lcom/lge/camera/postview/PostViewScreenOffReceiver;

    invoke-direct {p0, v4}, Lcom/lge/camera/ShotPostviewActivity;->registerScreenOffReceiver(Lcom/lge/camera/postview/PostViewScreenOffReceiver;)V

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-static {v4, v10, v2}, Lcom/lge/camera/util/Common;->configureWindowFlag(Landroid/view/Window;ZZ)V

    .line 163
    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostviewOrientationInfo;->setOrientationByWindowOrientation()V

    .line 164
    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    iget-object v5, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v5}, Lcom/lge/camera/postview/PostViewParameters;->getPreviewOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/lge/camera/postview/PostviewOrientationInfo;->setOrientationByPreview(I)V

    .line 165
    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostviewOrientationInfo;->setOrientationListener()V

    .line 166
    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v4, v10}, Lcom/lge/camera/postview/PostviewOrientationInfo;->enableOrientationListener(Z)V

    .line 168
    new-instance v4, Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;

    invoke-direct {v4, p0}, Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;-><init>(Lcom/lge/camera/postview/ReceiverFunction;)V

    iput-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mediaReceiver:Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;

    .line 169
    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mediaReceiver:Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;

    invoke-direct {p0, v4}, Lcom/lge/camera/ShotPostviewActivity;->registerMediaReceiver(Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;)V

    .line 171
    new-instance v4, Lcom/lge/camera/postview/PostViewBatteryReceiver;

    invoke-direct {v4, p0}, Lcom/lge/camera/postview/PostViewBatteryReceiver;-><init>(Lcom/lge/camera/postview/ReceiverFunction;)V

    iput-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->batteryReceiver:Lcom/lge/camera/postview/PostViewBatteryReceiver;

    .line 172
    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->batteryReceiver:Lcom/lge/camera/postview/PostViewBatteryReceiver;

    invoke-direct {p0, v4}, Lcom/lge/camera/ShotPostviewActivity;->registerBatteryReceiver(Lcom/lge/camera/postview/PostViewBatteryReceiver;)V

    .line 174
    new-instance v0, Lcom/lge/camera/setting/PreferenceInflater;

    invoke-direct {v0, p0}, Lcom/lge/camera/setting/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 175
    .local v0, "inflater":Lcom/lge/camera/setting/PreferenceInflater;
    invoke-static {}, Lcom/lge/camera/properties/PreferenceProperties;->getFrontCameraPreferenceResource()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/lge/camera/setting/PreferenceInflater;->inflate(I)Lcom/lge/camera/setting/CameraPreference;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/setting/PreferenceGroup;

    iput-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mFrontCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 177
    invoke-static {}, Lcom/lge/camera/properties/PreferenceProperties;->getBackCameraPreferenceResource()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/lge/camera/setting/PreferenceInflater;->inflate(I)Lcom/lge/camera/setting/CameraPreference;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/setting/PreferenceGroup;

    iput-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mBackCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 179
    invoke-static {}, Lcom/lge/camera/properties/PreferenceProperties;->getFrontCamcorderPreferenceResource()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/lge/camera/setting/PreferenceInflater;->inflate(I)Lcom/lge/camera/setting/CameraPreference;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/setting/PreferenceGroup;

    iput-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mFrontCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 181
    invoke-static {}, Lcom/lge/camera/properties/PreferenceProperties;->getBackCamcorderPreferenceResource()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/lge/camera/setting/PreferenceInflater;->inflate(I)Lcom/lge/camera/setting/CameraPreference;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/setting/PreferenceGroup;

    iput-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mBackCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 184
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 185
    invoke-static {}, Lcom/lge/camera/properties/PreferenceProperties;->getBack3dCameraPreferenceResource()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/lge/camera/setting/PreferenceInflater;->inflate(I)Lcom/lge/camera/setting/CameraPreference;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/setting/PreferenceGroup;

    iput-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mBack3dCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 187
    invoke-static {}, Lcom/lge/camera/properties/PreferenceProperties;->getBack3dCamcorderPreferenceResource()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/lge/camera/setting/PreferenceInflater;->inflate(I)Lcom/lge/camera/setting/CameraPreference;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/setting/PreferenceGroup;

    iput-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mBack3dCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 191
    :cond_1
    const v4, 0x7f030027

    invoke-virtual {p0, v4}, Lcom/lge/camera/ShotPostviewActivity;->setContentView(I)V

    .line 193
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->doPreProcessOnCreate()V

    .line 194
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->setActionBar()V

    .line 195
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->setupLayout()V

    .line 196
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->postviewShow()V

    .line 197
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->setFileName()V

    .line 198
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->doProcessOnCreate()V

    .line 199
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/util/AppControlUtil;->disableNavigationButton(Landroid/app/Activity;)V

    .line 200
    const-string v4, "CameraApp"

    const-string v5, "Postview onCreate()-end "

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method protected onCreateDialog(II)V
    .locals 5
    .param p1, "dialogId"    # I
    .param p2, "applicationMode"    # I

    .prologue
    const v4, 0x7f03000c

    .line 1262
    invoke-static {p1, p2}, Lcom/lge/camera/postview/PostviewDialog;->getPostviewDialog(II)Lcom/lge/camera/postview/PostviewDialog;

    move-result-object v1

    .line 1263
    .local v1, "mDialog":Lcom/lge/camera/postview/PostviewDialog;
    const/4 v0, 0x0

    .line 1264
    .local v0, "adapter":Lcom/lge/camera/postview/PostviewMenuAdapter;
    packed-switch p1, :pswitch_data_0

    .line 1279
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog_postview"

    invoke-virtual {v1, v2, v3}, Lcom/lge/camera/postview/PostviewDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1280
    return-void

    .line 1266
    :pswitch_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lge/camera/ShotPostviewActivity;->makePostviewMenuItems(I)V

    .line 1267
    new-instance v0, Lcom/lge/camera/postview/PostviewMenuAdapter;

    .end local v0    # "adapter":Lcom/lge/camera/postview/PostviewMenuAdapter;
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->postviewMenuShare:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v4, v3}, Lcom/lge/camera/postview/PostviewMenuAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1269
    .restart local v0    # "adapter":Lcom/lge/camera/postview/PostviewMenuAdapter;
    invoke-virtual {v1, v0}, Lcom/lge/camera/postview/PostviewDialog;->setSharedListDialogAdater(Lcom/lge/camera/postview/PostviewMenuAdapter;)V

    goto :goto_0

    .line 1272
    :pswitch_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/lge/camera/ShotPostviewActivity;->makePostviewMenuItems(I)V

    .line 1273
    new-instance v0, Lcom/lge/camera/postview/PostviewMenuAdapter;

    .end local v0    # "adapter":Lcom/lge/camera/postview/PostviewMenuAdapter;
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->postviewMenuSetAs:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v4, v3}, Lcom/lge/camera/postview/PostviewMenuAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1275
    .restart local v0    # "adapter":Lcom/lge/camera/postview/PostviewMenuAdapter;
    invoke-virtual {v1, v0}, Lcom/lge/camera/postview/PostviewDialog;->setSharedListDialogAdater(Lcom/lge/camera/postview/PostviewMenuAdapter;)V

    goto :goto_0

    .line 1264
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 304
    const-string v0, "CameraApp"

    const-string v1, "Postview onDestroy()"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v0, v4}, Lcom/lge/camera/postview/PostviewOrientationInfo;->enableOrientationListener(Z)V

    .line 307
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostviewOrientationInfo;->releaseOrientationListener()V

    .line 308
    iput-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->doProcessOnDestroy()V

    .line 311
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->removePostAllRunnables()V

    .line 312
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostViewParameters;->clearParameters()V

    .line 314
    iput-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mediaReceiver:Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;

    if-eqz v0, :cond_2

    .line 317
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mediaReceiver:Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;

    invoke-virtual {p0, v0}, Lcom/lge/camera/ShotPostviewActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 318
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mediaReceiver:Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;->unbind()V

    .line 319
    iput-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mediaReceiver:Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;

    .line 321
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->batteryReceiver:Lcom/lge/camera/postview/PostViewBatteryReceiver;

    if-eqz v0, :cond_3

    .line 322
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->batteryReceiver:Lcom/lge/camera/postview/PostViewBatteryReceiver;

    invoke-virtual {p0, v0}, Lcom/lge/camera/ShotPostviewActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 323
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->batteryReceiver:Lcom/lge/camera/postview/PostViewBatteryReceiver;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostViewBatteryReceiver;->unbind()V

    .line 324
    iput-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->batteryReceiver:Lcom/lge/camera/postview/PostViewBatteryReceiver;

    .line 326
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mScreenOffReceiver:Lcom/lge/camera/postview/PostViewScreenOffReceiver;

    if-eqz v0, :cond_4

    .line 327
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mScreenOffReceiver:Lcom/lge/camera/postview/PostViewScreenOffReceiver;

    invoke-virtual {p0, v0}, Lcom/lge/camera/ShotPostviewActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 328
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mScreenOffReceiver:Lcom/lge/camera/postview/PostViewScreenOffReceiver;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostViewScreenOffReceiver;->unbind()V

    .line 329
    iput-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mScreenOffReceiver:Lcom/lge/camera/postview/PostViewScreenOffReceiver;

    .line 332
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mToast:Lcom/lge/camera/postview/PostViewToast;

    if-eqz v0, :cond_5

    .line 333
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mToast:Lcom/lge/camera/postview/PostViewToast;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostViewToast;->unbind()V

    .line 334
    iput-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mToast:Lcom/lge/camera/postview/PostViewToast;

    .line 337
    :cond_5
    iput-boolean v4, p0, Lcom/lge/camera/ShotPostviewActivity;->bConnectedDevice:Z

    .line 338
    iput-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mHandler:Lcom/lge/camera/util/MainHandler;

    .line 339
    iput-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostRunnables:Ljava/util/ArrayList;

    .line 340
    iput-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mExitInteraction:Ljava/lang/Runnable;

    .line 341
    iput-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mCamera:Landroid/hardware/Camera;

    .line 343
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mFrontCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    if-eqz v0, :cond_6

    .line 344
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mFrontCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v0}, Lcom/lge/camera/setting/PreferenceGroup;->close()V

    .line 345
    iput-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mFrontCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 347
    :cond_6
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mBackCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    if-eqz v0, :cond_7

    .line 348
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mBackCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v0}, Lcom/lge/camera/setting/PreferenceGroup;->close()V

    .line 349
    iput-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mBackCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 351
    :cond_7
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mFrontCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    if-eqz v0, :cond_8

    .line 352
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mFrontCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v0}, Lcom/lge/camera/setting/PreferenceGroup;->close()V

    .line 353
    iput-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mFrontCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 355
    :cond_8
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mBackCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    if-eqz v0, :cond_9

    .line 356
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mBackCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v0}, Lcom/lge/camera/setting/PreferenceGroup;->close()V

    .line 357
    iput-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mBackCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 359
    :cond_9
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mBack3dCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    if-eqz v0, :cond_a

    .line 360
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mBack3dCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v0}, Lcom/lge/camera/setting/PreferenceGroup;->close()V

    .line 361
    iput-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mBack3dCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 363
    :cond_a
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mBack3dCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    if-eqz v0, :cond_b

    .line 364
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mBack3dCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v0}, Lcom/lge/camera/setting/PreferenceGroup;->close()V

    .line 365
    iput-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mBack3dCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 368
    :cond_b
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_c

    .line 369
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 371
    :cond_c
    iput-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 372
    iput-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mImageHandler:Lcom/lge/camera/util/ImageHandler;

    .line 373
    iput-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mDialog:Landroid/app/Dialog;

    .line 375
    invoke-static {}, Lcom/lge/camera/postview/PostviewDialog;->getPostviewDialog()Lcom/lge/camera/postview/PostviewDialog;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 376
    invoke-static {}, Lcom/lge/camera/postview/PostviewDialog;->getPostviewDialog()Lcom/lge/camera/postview/PostviewDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostviewDialog;->unbind()V

    .line 378
    :cond_d
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/Util;->recursiveRecycle(Landroid/view/View;)V

    .line 379
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 380
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 440
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyDown - keyCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", event : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 443
    const/16 v2, 0x18

    if-eq p1, v2, :cond_0

    const/16 v2, 0x19

    if-eq p1, v2, :cond_0

    .line 475
    :goto_0
    :sswitch_0
    return v0

    .line 449
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 454
    :sswitch_1
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->doBackKeyInPostview()V

    move v0, v1

    .line 455
    goto :goto_0

    .line 451
    :sswitch_2
    const-string v0, "CameraApp"

    const-string v2, "KEYCODE_MENU"

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 452
    goto :goto_0

    .line 458
    :sswitch_3
    invoke-virtual {p0, p2}, Lcom/lge/camera/ShotPostviewActivity;->doVolumeKey(Landroid/view/KeyEvent;)V

    move v0, v1

    .line 459
    goto :goto_0

    :sswitch_4
    move v0, v1

    .line 468
    goto :goto_0

    .line 449
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_4
        0x14 -> :sswitch_4
        0x15 -> :sswitch_4
        0x16 -> :sswitch_4
        0x17 -> :sswitch_4
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x1b -> :sswitch_4
        0x4f -> :sswitch_0
        0x50 -> :sswitch_4
        0x52 -> :sswitch_2
        0x54 -> :sswitch_4
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 504
    sparse-switch p1, :sswitch_data_0

    .line 518
    :goto_0
    :sswitch_0
    return v0

    .line 507
    :sswitch_1
    const-string v1, "CameraApp"

    const-string v2, "KEYCODE_MENU or KEYCODE_BACK keyup"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 511
    :sswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 504
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x4f -> :sswitch_0
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 269
    const-string v0, "CameraApp"

    const-string v1, "Postview onPause() - start"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iput-boolean v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mPause:Z

    .line 272
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/lge/camera/util/Common;->configureWindowFlag(Landroid/view/Window;ZZ)V

    .line 274
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->doProcessOnPause()V

    .line 276
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v0, v3}, Lcom/lge/camera/postview/PostviewOrientationInfo;->enableOrientationListener(Z)V

    .line 278
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostviewOrientationInfo;->releaseOrientationListener()V

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->removeExitInteraction()V

    .line 282
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->removePostAllRunnables()V

    .line 284
    invoke-direct {p0}, Lcom/lge/camera/ShotPostviewActivity;->checkAndDisconnectCameraDevice()V

    .line 286
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 287
    const-string v0, "CameraApp"

    const-string v1, "Postview onPause() - end"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 205
    const-string v0, "CameraApp"

    const-string v1, "Postview onRestart()-start "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lge/camera/util/CheckStatusManager;->setEnterCheckComplete(Z)V

    .line 207
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 208
    const-string v0, "CameraApp"

    const-string v1, "Postview onRestart()-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 213
    const-string v2, "CameraApp"

    const-string v3, "Postview onResume() - start"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-static {p0, v5}, Lcom/lge/camera/util/CheckStatusManager;->checkEnterApplication(Landroid/app/Activity;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 218
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 219
    const-string v2, "CameraApp"

    const-string v3, "onResume()-end, checkEnterApplication"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/lge/camera/util/CheckStatusManager;->checkCameraOut(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 260
    :goto_0
    return-void

    .line 223
    :cond_0
    sget-boolean v2, Lcom/lge/camera/properties/CameraConstants;->MEDIA_RECEIVER_FINISHED:Z

    if-eqz v2, :cond_1

    .line 224
    const-string v2, "CameraApp"

    const-string v3, "Destroy Postview when media ejected"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    sput-boolean v4, Lcom/lge/camera/properties/CameraConstants;->MEDIA_RECEIVER_FINISHED:Z

    .line 226
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 227
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->finish()V

    goto :goto_0

    .line 231
    :cond_1
    iget-boolean v2, p0, Lcom/lge/camera/ShotPostviewActivity;->isFromCreateProcess:Z

    if-nez v2, :cond_2

    .line 232
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->isSecureCamera()Z

    move-result v3

    invoke-static {v2, v5, v3}, Lcom/lge/camera/util/Common;->configureWindowFlag(Landroid/view/Window;ZZ)V

    .line 235
    :cond_2
    invoke-static {p0}, Lcom/lge/camera/util/Common;->backlightControl(Landroid/app/Activity;)V

    .line 236
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/AppControlUtil;->setFmRadioOff(Landroid/content/Context;)V

    .line 237
    iput-boolean v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mPause:Z

    .line 239
    iget-object v2, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    if-eqz v2, :cond_3

    .line 241
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 244
    .local v0, "displayOrientationSetting":I
    iget-object v2, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v2, v0}, Lcom/lge/camera/postview/PostviewOrientationInfo;->setDisplayOrientationSettingValue(I)V

    .line 245
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DisplayOrientationSetting is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .end local v0    # "displayOrientationSetting":I
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v2}, Lcom/lge/camera/postview/PostviewOrientationInfo;->getOrientationListenerEnable()Z

    move-result v2

    if-nez v2, :cond_3

    .line 251
    iget-object v2, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v2}, Lcom/lge/camera/postview/PostviewOrientationInfo;->setOrientationListener()V

    .line 252
    iget-object v2, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v2, v5}, Lcom/lge/camera/postview/PostviewOrientationInfo;->enableOrientationListener(Z)V

    .line 256
    :cond_3
    invoke-direct {p0}, Lcom/lge/camera/ShotPostviewActivity;->connectCameraDevice()V

    .line 258
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 259
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->doProcessOnResume()V

    goto :goto_0

    .line 246
    :catch_0
    move-exception v1

    .line 247
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "CameraApp"

    const-string v3, "SettingNotFoundException:"

    invoke-static {v2, v3, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 264
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 265
    return-void
.end method

.method public postOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 694
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mHandler:Lcom/lge/camera/util/MainHandler;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mHandler:Lcom/lge/camera/util/MainHandler;

    invoke-virtual {v0, p1}, Lcom/lge/camera/util/MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 698
    :cond_0
    return-void
.end method

.method public postOnUiThread(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J

    .prologue
    .line 701
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mHandler:Lcom/lge/camera/util/MainHandler;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mHandler:Lcom/lge/camera/util/MainHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/util/MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 705
    :cond_0
    return-void
.end method

.method protected abstract postviewShow()V
.end method

.method protected readMenuActivity(ILandroid/content/Intent;)Ljava/util/List;
    .locals 4
    .param p1, "menuType"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1136
    const/4 v0, 0x0

    .line 1137
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1139
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v2}, Lcom/lge/camera/postview/PostViewParameters;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_0

    .line 1140
    const-string v2, "image/jpeg"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1145
    :goto_0
    if-nez p1, :cond_1

    .line 1146
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1147
    invoke-virtual {v1, p2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1152
    :goto_1
    return-object v0

    .line 1142
    :cond_0
    const-string v2, "video/*"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1149
    :cond_1
    const-string v2, "android.intent.action.ATTACH_DATA"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1150
    invoke-virtual {v1, p2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method protected abstract reloadedPostview()V
.end method

.method public removeExitInteraction()V
    .locals 2

    .prologue
    .line 683
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v0, :cond_1

    const-string v0, "on_delay_2sec"

    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewParameters;->getAutoReview()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "on_delay_5sec"

    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewParameters;->getAutoReview()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mHandler:Lcom/lge/camera/util/MainHandler;

    if-eqz v0, :cond_1

    .line 687
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mExitInteraction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lge/camera/ShotPostviewActivity;->removePostRunnable(Ljava/lang/Object;)V

    .line 688
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mHandler:Lcom/lge/camera/util/MainHandler;

    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mExitInteraction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 691
    :cond_1
    return-void
.end method

.method protected removeLabelAppByCompareLableImage(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/postview/PostviewMenu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "postviewMenuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/camera/postview/PostviewMenu;>;"
    const/4 v4, 0x0

    .line 1065
    const/4 v0, 0x0

    .line 1066
    .local v0, "compareString1":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1068
    .local v1, "compareString2":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/postview/PostviewMenu;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostviewMenu;->getLabelImage()Ljava/lang/String;

    move-result-object v0

    .line 1069
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1070
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/postview/PostviewMenu;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostviewMenu;->getLabelImage()Ljava/lang/String;

    move-result-object v1

    .line 1072
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1074
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/postview/PostviewMenu;

    invoke-virtual {v3, v4}, Lcom/lge/camera/postview/PostviewMenu;->setLabelApp(Ljava/lang/String;)V

    .line 1076
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1077
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/postview/PostviewMenu;

    invoke-virtual {v3, v4}, Lcom/lge/camera/postview/PostviewMenu;->setLabelApp(Ljava/lang/String;)V

    .line 1080
    :cond_0
    move-object v0, v1

    .line 1069
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1082
    :cond_1
    return-void
.end method

.method public removePostAllRunnables()V
    .locals 4

    .prologue
    .line 720
    iget-object v2, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostRunnables:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/ShotPostviewActivity;->mHandler:Lcom/lge/camera/util/MainHandler;

    if-nez v2, :cond_1

    .line 721
    :cond_0
    const-string v2, "CameraApp"

    const-string v3, "mPostRunnables is null"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    :goto_0
    return-void

    .line 725
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 726
    .local v1, "postRunnableSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 727
    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mHandler:Lcom/lge/camera/util/MainHandler;

    iget-object v2, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v3, v2}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 726
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 729
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public removePostRunnable(Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 708
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostRunnables:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 709
    const-string v1, "CameraApp"

    const-string v2, "mPostRunnables is null"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 712
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 713
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 714
    iget-object v2, p0, Lcom/lge/camera/ShotPostviewActivity;->mHandler:Lcom/lge/camera/util/MainHandler;

    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v2, v1}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 715
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected saveFinished()V
    .locals 3

    .prologue
    .line 967
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 968
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "save_done"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 969
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/lge/camera/ShotPostviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 970
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 971
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->finish()V

    .line 973
    :cond_0
    return-void
.end method

.method protected setActionBar()V
    .locals 2

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 523
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 524
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 525
    return-void
.end method

.method protected setFileName()V
    .locals 0

    .prologue
    .line 1389
    return-void
.end method

.method protected setFileNameLayout()V
    .locals 0

    .prologue
    .line 1386
    return-void
.end method

.method protected setLayoutParams(Landroid/widget/RelativeLayout$LayoutParams;IIIII)V
    .locals 0
    .param p1, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "leftMargin"    # I
    .param p5, "topMargin"    # I
    .param p6, "bottomMargin"    # I

    .prologue
    .line 743
    if-eqz p1, :cond_0

    .line 744
    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 745
    iput p3, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 746
    iput p4, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 747
    iput p5, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 748
    iput p6, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 750
    :cond_0
    return-void
.end method

.method public setSDCardSetting(Z)V
    .locals 0
    .param p1, "isInsertSD"    # Z

    .prologue
    .line 563
    iput-boolean p1, p0, Lcom/lge/camera/ShotPostviewActivity;->mSDCardsetting:Z

    .line 564
    return-void
.end method

.method protected setSecureImageList(Landroid/net/Uri;Z)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "add"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1313
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostViewParameters;->useSecureLockImage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lcom/lge/camera/util/AppControlUtil;->checkGuestModeAndAppDisabled(Landroid/content/ContentResolver;ZI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1316
    :cond_0
    if-eqz p2, :cond_2

    .line 1317
    invoke-static {}, Lcom/lge/camera/util/SecureImageUtil;->get()Lcom/lge/camera/util/SecureImageUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/util/SecureImageUtil;->addSecureLockImageUri(Landroid/net/Uri;)V

    .line 1324
    :cond_1
    :goto_0
    return-void

    .line 1319
    :cond_2
    invoke-static {}, Lcom/lge/camera/util/SecureImageUtil;->get()Lcom/lge/camera/util/SecureImageUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewParameters;->getApplicationMode()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/lge/camera/util/SecureImageUtil;->removeSecureLockUri(Landroid/net/Uri;I)V

    goto :goto_0
.end method

.method protected abstract setupLayout()V
.end method

.method protected showProgressDialog(II)V
    .locals 3
    .param p1, "dialogId"    # I
    .param p2, "applicationMode"    # I

    .prologue
    .line 1283
    const/16 v1, 0x9

    if-eq p1, v1, :cond_0

    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    .line 1285
    :cond_0
    invoke-static {p1, p2}, Lcom/lge/camera/postview/PostviewDialog;->getPostviewDialog(II)Lcom/lge/camera/postview/PostviewDialog;

    move-result-object v0

    .line 1286
    .local v0, "mDialog":Lcom/lge/camera/postview/PostviewDialog;
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog_postview"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/postview/PostviewDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1288
    .end local v0    # "mDialog":Lcom/lge/camera/postview/PostviewDialog;
    :cond_1
    return-void
.end method

.method protected sortPostviewMenuList(Ljava/util/ArrayList;Landroid/content/pm/PackageManager;)V
    .locals 8
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/postview/PostviewMenu;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1087
    .local p1, "postviewMenuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/camera/postview/PostviewMenu;>;"
    const-string v6, "ro.build.target_country"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1088
    .local v5, "strCountry":Ljava/lang/String;
    const-string v6, "CLR"

    const-string v7, "ro.build.target_operator"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "COM"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "BR"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "CO"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1092
    :cond_0
    const/4 v3, 0x0

    .line 1093
    .local v3, "pluggerInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x0

    .line 1096
    .local v1, "mmsInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    const-string v6, "com.lge.plugger"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 1097
    const-string v6, "com.android.mms"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1102
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3, p2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1104
    .local v4, "pluggerName":Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1, p2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1107
    .local v2, "mmsName":Ljava/lang/String;
    :goto_2
    new-instance v6, Lcom/lge/camera/ShotPostviewActivity$7;

    invoke-direct {v6, p0, v4, v2}, Lcom/lge/camera/ShotPostviewActivity$7;-><init>(Lcom/lge/camera/ShotPostviewActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1133
    .end local v1    # "mmsInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "mmsName":Ljava/lang/String;
    .end local v3    # "pluggerInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "pluggerName":Ljava/lang/String;
    :goto_3
    return-void

    .line 1098
    .restart local v1    # "mmsInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "pluggerInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 1099
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "CameraApp"

    const-string v7, "NameNotFoundException:"

    invoke-static {v6, v7, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1102
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const-string v4, ""

    goto :goto_1

    .line 1104
    .restart local v4    # "pluggerName":Ljava/lang/String;
    :cond_2
    const-string v2, ""

    goto :goto_2

    .line 1123
    .end local v1    # "mmsInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "pluggerInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "pluggerName":Ljava/lang/String;
    :cond_3
    new-instance v6, Lcom/lge/camera/ShotPostviewActivity$8;

    invoke-direct {v6, p0}, Lcom/lge/camera/ShotPostviewActivity$8;-><init>(Lcom/lge/camera/ShotPostviewActivity;)V

    invoke-static {p1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_3
.end method

.method protected startPostviewMenuItems(ILcom/lge/camera/postview/PostviewMenu;)V
    .locals 14
    .param p1, "menuType"    # I
    .param p2, "selectedMenu"    # Lcom/lge/camera/postview/PostviewMenu;

    .prologue
    .line 1156
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1157
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1158
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 1159
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x0

    .line 1161
    .local v5, "numActivities":I
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/lge/camera/postview/PostviewMenu;->getLabelImage()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_2

    .line 1162
    :cond_0
    const v11, 0x7f0a019e

    invoke-virtual {p0, v11}, Lcom/lge/camera/ShotPostviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/lge/camera/ShotPostviewActivity;->toast(Ljava/lang/String;)V

    .line 1208
    :cond_1
    :goto_0
    return-void

    .line 1166
    :cond_2
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 1167
    .local v9, "smartShare":Landroid/content/Intent;
    const/4 v8, 0x0

    .line 1168
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    if-nez p1, :cond_3

    .line 1169
    const-string v11, "android.intent.action.LGSMARTSHARE"

    invoke-virtual {v9, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1170
    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 1172
    if-eqz v8, :cond_3

    invoke-virtual {v8, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/lge/camera/postview/PostviewMenu;->getLabelImage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1174
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1175
    .local v10, "uri":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v11, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v11}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1176
    const-string v11, "android.intent.extra.STREAM"

    invoke-virtual {v9, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1177
    const-string v11, "smartshare.type"

    const-string v12, "Camera"

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1178
    const-string v11, "smartshare.package.name"

    const-string v12, "com.lge.camera.CameraApp"

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1180
    invoke-virtual {p0, p1, v9, v8}, Lcom/lge/camera/ShotPostviewActivity;->startResolvedActivity(ILandroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    goto :goto_0

    .line 1185
    .end local v10    # "uri":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_3
    invoke-virtual {p0, p1, v3}, Lcom/lge/camera/ShotPostviewActivity;->readMenuActivity(ILandroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 1186
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 1190
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 1192
    const/4 v4, 0x0

    .line 1193
    .local v4, "menuLabel":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1195
    .local v7, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_1

    .line 1196
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1197
    .local v2, "infoImage":Landroid/content/pm/ResolveInfo;
    iget-object v11, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1198
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1200
    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/lge/camera/postview/PostviewMenu;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/lge/camera/postview/PostviewMenu;->getLabelImage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1203
    const-string v11, "CameraApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Calling Package/App = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    invoke-virtual {p0, p1, v3, v2}, Lcom/lge/camera/ShotPostviewActivity;->startResolvedActivity(ILandroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    goto/16 :goto_0

    .line 1195
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected startResolvedActivity(ILandroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    .locals 6
    .param p1, "menuType"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 1211
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1212
    .local v2, "resolvedIntent":Landroid/content/Intent;
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1213
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1215
    const/4 v1, 0x0

    .line 1216
    .local v1, "capturedImageUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 1217
    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mCurrentSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "capturedImageUri":Landroid/net/Uri;
    check-cast v1, Landroid/net/Uri;

    .line 1222
    .restart local v1    # "capturedImageUri":Landroid/net/Uri;
    :goto_0
    if-nez p1, :cond_1

    .line 1223
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1229
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mHandler:Lcom/lge/camera/util/MainHandler;

    new-instance v4, Lcom/lge/camera/ShotPostviewActivity$9;

    invoke-direct {v4, p0, p1, v2}, Lcom/lge/camera/ShotPostviewActivity$9;-><init>(Lcom/lge/camera/ShotPostviewActivity;ILandroid/content/Intent;)V

    invoke-virtual {v3, v4}, Lcom/lge/camera/util/MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 1236
    return-void

    .line 1219
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "capturedImageUri":Landroid/net/Uri;
    check-cast v1, Landroid/net/Uri;

    .restart local v1    # "capturedImageUri":Landroid/net/Uri;
    goto :goto_0

    .line 1225
    :cond_1
    const-string v3, "image/jpeg"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1226
    const-string v3, "mimeType"

    const-string v4, "image/jpeg"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public toast(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 663
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mToast:Lcom/lge/camera/postview/PostViewToast;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mToast:Lcom/lge/camera/postview/PostViewToast;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/postview/PostViewToast;->cancel(Z)V

    .line 665
    new-instance v0, Lcom/lge/camera/ShotPostviewActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/lge/camera/ShotPostviewActivity$4;-><init>(Lcom/lge/camera/ShotPostviewActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/ShotPostviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 680
    :cond_0
    return-void
.end method
