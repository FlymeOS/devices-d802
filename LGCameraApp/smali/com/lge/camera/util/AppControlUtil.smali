.class public Lcom/lge/camera/util/AppControlUtil;
.super Ljava/lang/Object;
.source "AppControlUtil.java"


# static fields
.field public static ENABLE_QUICK_CLIP_KEY:Z = false

.field private static final HOTKEY_QCLIP_PACKAGE:Ljava/lang/String; = "com.lge.QuickClip"

.field private static final HOTKEY_QMEMO_PACKAGE:Ljava/lang/String; = "com.lge.qmemoplus"

.field private static final HOTKEY_SHORT_PACKAGE:Ljava/lang/String; = "hotkey_short_package"

.field public static final QCLIP_HOTKEY_FLAG_KEYDOWN_SHUTTER:I = 0x10

.field public static final QCLIP_HOTKEY_FLAG_KEYUP_QMEMO:I = 0x200

.field public static final QCLIP_HOTKEY_FLAG_KEYUP_ROTATE:I = 0x400

.field public static final QCLIP_HOTKEY_FLAG_NONE:I = 0x0

.field public static final QCLIP_HOTKEY_FLAG_NOT_SUPPORT:I = 0x1

.field public static final QCLIP_HOTKEY_FLAG_UNKNOWN:I = -0x1

.field public static final QUICKCLIP_IGNORE_MODE:I = 0x1

.field public static final QUICKCLIP_NORMAL_MODE:I = 0x0

.field public static final QUICKCLIP_RUNTYPE_CLEANVIEW:I = 0x1

.field public static final QUICKCLIP_RUNTYPE_NONE:I = 0x0

.field public static final QUICKCLIP_RUNTYPE_RETURN_TO_QUICKMEMO:I = 0x4

.field public static final QUICKCLIP_RUNTYPE_START:I = 0x2

.field public static final QUICKCLIP_RUNTYPE_STOP:I = 0x3

.field private static final ROTATE_SWITCH:Ljava/lang/String; = "rotate_switch"

.field private static final ROTATION_DIRECTION_LEFT:I = 0x1

.field private static final ROTATION_DIRECTION_RIGHT:I = 0x2

.field public static final TOP_CLASS:I = 0x0

.field public static final TOP_PACKAGE:I = 0x1

.field private static mOldNavigationBarRotation:I

.field private static mQClipHotkeyFlag:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    sput-boolean v1, Lcom/lge/camera/util/AppControlUtil;->ENABLE_QUICK_CLIP_KEY:Z

    .line 218
    const/4 v0, -0x1

    sput v0, Lcom/lge/camera/util/AppControlUtil;->mQClipHotkeyFlag:I

    .line 457
    sput v1, Lcom/lge/camera/util/AppControlUtil;->mOldNavigationBarRotation:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BlockAlarmInRecording(Landroid/app/Activity;I)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appMode"    # I

    .prologue
    .line 307
    if-eqz p0, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 308
    const-string v1, "CameraApp"

    const-string v2, "BlockAlarmInRecording"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 310
    .local v0, "recording_start":Landroid/content/Intent;
    const-string v1, "packageName"

    const-string v2, "com.lge.camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string v1, "voice_video_record_playing"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 314
    .end local v0    # "recording_start":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static StopVoiceRec(Landroid/app/Activity;I)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appMode"    # I

    .prologue
    .line 330
    if-eqz p0, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 331
    const-string v1, "CameraApp"

    const-string v2, "StopVoiceRec"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 333
    .local v0, "StopVoiceRec":Landroid/content/Intent;
    const-string v1, "Stop_Voice_Rec"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 336
    .end local v0    # "StopVoiceRec":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static UnblockAlarmInRecording(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 320
    if-eqz p0, :cond_0

    .line 321
    const-string v1, "CameraApp"

    const-string v2, "UnblockAlarmInRecording"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 323
    .local v0, "recording_finish":Landroid/content/Intent;
    const-string v1, "packageName"

    const-string v2, "com.lge.camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    const-string v1, "voice_video_record_finish"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 327
    .end local v0    # "recording_finish":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static checkCurrentCoverStatus(Landroid/app/Activity;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v7, 0x0

    .line 381
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.lge.android.intent.action.ACCESSORY_COVER_EVENT"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 382
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v4, "com.lge.camera.action.CAMERA_FINISH"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 383
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 384
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 385
    if-eqz v2, :cond_0

    .line 386
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "action":Ljava/lang/String;
    const-string v4, "com.lge.android.intent.action.ACCESSORY_COVER_EVENT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 389
    const-string v4, "com.lge.intent.extra.ACCESSORY_COVER_STATE"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 391
    .local v1, "coverState":I
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "quick window case state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    if-nez v1, :cond_1

    .line 394
    const-string v4, "CameraApp"

    const-string v5, "cover EXTRA_ACCESSORY_COVER_OPENED!!"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-static {v7}, Lcom/lge/camera/util/Common;->setSmartCoverClosed(Z)V

    .line 403
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "coverState":I
    :cond_0
    :goto_0
    return-void

    .line 397
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "coverState":I
    :cond_1
    const-string v4, "CameraApp"

    const-string v5, "cover EXTRA_ACCESSORY_COVER_CLOSED!!"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/lge/camera/util/Common;->setSmartCoverClosed(Z)V

    goto :goto_0
.end method

.method public static checkGuestModeAndAppDisabled(Landroid/content/ContentResolver;ZI)Z
    .locals 15
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "checkGuestMode"    # Z
    .param p2, "appName"    # I

    .prologue
    .line 522
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/lge/camera/util/AppControlUtil;->isGuestMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 523
    const/4 v0, 0x0

    .line 571
    :goto_0
    return v0

    .line 525
    :cond_0
    const/4 v8, 0x0

    .line 526
    .local v8, "checkAppName":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 531
    const-string v8, ""

    .line 534
    :goto_1
    const-string v6, "com.lge.launcher2.settings"

    .line 535
    .local v6, "authority":Ljava/lang/String;
    const-string v14, "favorites"

    .line 536
    .local v14, "table_favorite":Ljava/lang/String;
    const-string v13, "notify"

    .line 537
    .local v13, "parameter_notify":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=true"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 539
    .local v1, "content_uri":Landroid/net/Uri;
    const-string v3, "container=-103"

    .line 540
    .local v3, "selection":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 548
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "intent"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 550
    .local v12, "intentIndex":I
    const/4 v10, 0x0

    .line 551
    .local v10, "intent":Landroid/content/Intent;
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 553
    :try_start_1
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    .line 555
    .local v11, "intentDescription":Ljava/lang/String;
    const/4 v0, 0x0

    :try_start_2
    invoke-static {v11, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    .line 556
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    const/4 v0, 0x0

    .line 569
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 528
    .end local v1    # "content_uri":Landroid/net/Uri;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v6    # "authority":Ljava/lang/String;
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "intentDescription":Ljava/lang/String;
    .end local v12    # "intentIndex":I
    .end local v13    # "parameter_notify":Ljava/lang/String;
    .end local v14    # "table_favorite":Ljava/lang/String;
    :pswitch_0
    const-string v8, "com.android.gallery3d"

    .line 529
    goto :goto_1

    .line 560
    .restart local v1    # "content_uri":Landroid/net/Uri;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v6    # "authority":Ljava/lang/String;
    .restart local v7    # "c":Landroid/database/Cursor;
    .restart local v10    # "intent":Landroid/content/Intent;
    .restart local v11    # "intentDescription":Ljava/lang/String;
    .restart local v12    # "intentIndex":I
    .restart local v13    # "parameter_notify":Ljava/lang/String;
    .restart local v14    # "table_favorite":Ljava/lang/String;
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/net/URISyntaxException;
    goto :goto_2

    .line 563
    .end local v9    # "e":Ljava/net/URISyntaxException;
    .end local v11    # "intentDescription":Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 564
    .local v9, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v0, "CameraApp"

    const-string v2, "Desktop items loading interrupted:"

    invoke-static {v0, v2, v9}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 566
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v0, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "intent "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 569
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v12    # "intentIndex":I
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v10    # "intent":Landroid/content/Intent;
    .restart local v12    # "intentIndex":I
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 571
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 526
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static disableNavigationButton(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 507
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 508
    .local v1, "root":Landroid/view/View;
    const/high16 v0, 0x60000

    .line 510
    .local v0, "naviBtnVisibility":I
    invoke-static {v1, v0}, Lcom/lge/view/ViewUtil;->setLGSystemUiVisibility(Landroid/view/View;I)V

    .line 511
    return-void
.end method

.method public static getEnableSafetyCare(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, "remoteCareEnabled":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.lge.safetycare.remotecare.enabled"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, "strValue":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 344
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEnableSafetyCare="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    return v0
.end method

.method public static getHotkeyPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 598
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotkey_short_package"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 600
    .local v0, "shortPackageName":Ljava/lang/String;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shortPackageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    return-object v0
.end method

.method private static getIsTopOverlay(Landroid/app/Activity;)Z
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 175
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 176
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v4, 0x0

    .line 178
    .local v4, "retval":Z
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 179
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "isThereTopOverlay"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 180
    .local v3, "m":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 185
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "m":Ljava/lang/reflect/Method;
    :goto_0
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getIsTopOverlay() retval = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return v4

    .line 181
    :catch_0
    move-exception v2

    .line 182
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getIsTopOverlayForQSlide2(Landroid/app/Activity;)Z
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 134
    const/4 v3, 0x0

    .line 135
    .local v3, "retval":Z
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 136
    .local v0, "am":Landroid/app/ActivityManager;
    const/16 v5, 0x64

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v4

    .line 138
    .local v4, "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 140
    .local v1, "current":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FloatingWindowService"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 142
    iget-object v5, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.lge.QuickClip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 143
    const/4 v3, 0x1

    .line 148
    .end local v1    # "current":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getIsTopOverlayForQSlide2 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return v3
.end method

.method private static getOverlayActivityName(Landroid/app/Activity;)Ljava/lang/String;
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 190
    const/4 v5, 0x0

    .line 191
    .local v5, "retval":Ljava/lang/String;
    const-string v6, "activity"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 193
    .local v1, "am":Landroid/app/ActivityManager;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 194
    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "getOverlayActivityName"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 195
    .local v4, "m":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :goto_0
    if-eqz v5, :cond_0

    .line 201
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getOverlayActivityName() retval = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_0
    return-object v5

    .line 196
    :catch_0
    move-exception v3

    .line 197
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getQClipHotkeyFlag(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 221
    sget v0, Lcom/lge/camera/util/AppControlUtil;->mQClipHotkeyFlag:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 222
    invoke-static {p0}, Lcom/lge/camera/util/AppControlUtil;->setQClipHotkeyFlag(Landroid/content/Context;)I

    .line 225
    :cond_0
    sget v0, Lcom/lge/camera/util/AppControlUtil;->mQClipHotkeyFlag:I

    return v0
.end method

.method public static getQuickClipRunType(Landroid/app/Activity;)I
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 91
    const/4 v0, 0x0

    .line 93
    .local v0, "nRet":I
    if-nez p0, :cond_0

    move v1, v0

    .line 130
    .end local v0    # "nRet":I
    .local v1, "nRet":I
    :goto_0
    return v1

    .line 96
    .end local v1    # "nRet":I
    .restart local v0    # "nRet":I
    :cond_0
    const/4 v4, 0x1

    invoke-static {p0, v4}, Lcom/lge/camera/util/AppControlUtil;->getTopActivity(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "topPackageName":Ljava/lang/String;
    const-string v4, "com.lge.camera"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 98
    sget-boolean v4, Lcom/lge/camera/util/AppControlUtil;->ENABLE_QUICK_CLIP_KEY:Z

    if-eqz v4, :cond_2

    .line 99
    invoke-static {p0}, Lcom/lge/camera/util/AppControlUtil;->getIsTopOverlayForQSlide2(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {p0}, Lcom/lge/camera/util/AppControlUtil;->getIsTopOverlay(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "com.lge.QuickClip.QuickClipActivity"

    invoke-static {p0}, Lcom/lge/camera/util/AppControlUtil;->getOverlayActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 102
    :cond_1
    const/4 v0, 0x4

    .line 128
    :cond_2
    :goto_1
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ENABLE_QUICK_CLIP_KEY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/lge/camera/util/AppControlUtil;->ENABLE_QUICK_CLIP_KEY:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " QUICKCLIP_RUNTYPE = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 130
    .end local v0    # "nRet":I
    .restart local v1    # "nRet":I
    goto :goto_0

    .line 104
    .end local v1    # "nRet":I
    .restart local v0    # "nRet":I
    :cond_3
    const/4 v4, 0x0

    invoke-static {p0, v4}, Lcom/lge/camera/util/AppControlUtil;->getTopActivity(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "topClassName":Ljava/lang/String;
    const-string v4, "com.lge.camera.CameraApp"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "com.lge.camera.Camcorder"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "com.lge.camera.CameraAppLauncher"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "com.lge.camera.SecureCameraApp"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "com.lge.camera.QuickWindowCameraApp"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 110
    :cond_4
    const/4 v0, 0x1

    .line 115
    :goto_2
    if-eqz v2, :cond_2

    .line 116
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "topClassName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 112
    :cond_5
    const/4 v0, 0x2

    goto :goto_2

    .line 123
    .end local v2    # "topClassName":Ljava/lang/String;
    :cond_6
    if-eqz v3, :cond_2

    .line 124
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "topPackageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private static getTopActivity(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 154
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 157
    .local v0, "am":Landroid/app/ActivityManager;
    if-nez p1, :cond_1

    .line 158
    const-string v1, ""

    .line 159
    .local v1, "className":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 160
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 162
    :cond_0
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@getTopAppName getClassName() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .end local v1    # "className":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 165
    :cond_1
    const-string v2, ""

    .line 166
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 167
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 169
    :cond_2
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@getTopAppName getPackageName() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 170
    goto :goto_0
.end method

.method public static isGuestMode()Z
    .locals 2

    .prologue
    .line 514
    const-string v0, "kids"

    const-string v1, "service.plushome.currenthome"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    const/4 v0, 0x1

    .line 517
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInLockTask(Landroid/app/Activity;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 606
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 607
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v1

    return v1
.end method

.method public static isSecureCameraIntent(Landroid/content/Intent;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 349
    const/4 v0, 0x0

    .line 350
    .local v0, "secureCamera":Z
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 351
    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    const/4 v0, 0x1

    .line 363
    :cond_0
    :goto_0
    return v0

    .line 353
    :cond_1
    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 354
    const/4 v0, 0x1

    goto :goto_0

    .line 355
    :cond_2
    const-string v1, "secureCamera"

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 356
    const/4 v0, 0x1

    goto :goto_0

    .line 357
    :cond_3
    const-string v1, "com.lge.camera.action.CAMERA_START_FROM_COVER"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 358
    const/4 v0, 0x1

    goto :goto_0

    .line 360
    :cond_4
    const-string v1, "secure_camera"

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static resetQClipHotkeyFlag()V
    .locals 1

    .prologue
    .line 251
    const/4 v0, -0x1

    sput v0, Lcom/lge/camera/util/AppControlUtil;->mQClipHotkeyFlag:I

    .line 252
    return-void
.end method

.method public static resetQuickClipScreenCaptureLimit(Landroid/app/Activity;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 255
    const-string v6, "CameraApp"

    const-string v7, "resetQuickClipScreenCaptureLimit"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSamsungModel()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isReferenceModel()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/camera/util/AppControlUtil;->getHotkeyPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 263
    .local v5, "shortPackageName":Ljava/lang/String;
    const-string v6, "com.lge.qmemoplus"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "com.lge.QuickClip"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/camera/util/AppControlUtil;->getQClipHotkeyFlag(Landroid/content/Context;)I

    move-result v6

    const/16 v7, 0x200

    if-eq v6, v7, :cond_0

    .line 271
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 273
    .local v4, "params":Landroid/view/WindowManager$LayoutParams;
    const-class v6, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 274
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "privateFlags"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 275
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 276
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 277
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 278
    .local v3, "flag":I
    const v6, -0x20000001

    and-int/2addr v3, v6

    .line 279
    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 281
    .end local v3    # "flag":I
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3

    .line 291
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "params":Landroid/view/WindowManager$LayoutParams;
    :goto_1
    const/4 v6, 0x0

    sput-boolean v6, Lcom/lge/camera/util/AppControlUtil;->ENABLE_QUICK_CLIP_KEY:Z

    .line 292
    const-string v6, "CameraApp"

    const-string v7, "resetQuickClipScreenCaptureLimit, ENABLE_QUICK_CLIP_KEY(false)"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :catch_0
    move-exception v1

    .line 283
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 284
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 285
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 286
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 287
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 288
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 289
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1
.end method

.method public static rotateNavigationBarIcon(Landroid/app/Activity;II)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "degree"    # I
    .param p2, "duration"    # I

    .prologue
    const/16 v6, 0xb4

    const/16 v5, 0x5a

    const/16 v4, 0x10e

    .line 464
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rotate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/lge/camera/util/AppControlUtil;->mOldNavigationBarRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    sget v1, Lcom/lge/camera/util/AppControlUtil;->mOldNavigationBarRotation:I

    if-ge v1, p1, :cond_1

    const/4 v0, 0x1

    .line 467
    .local v0, "direction":I
    :goto_0
    sget v1, Lcom/lge/camera/util/AppControlUtil;->mOldNavigationBarRotation:I

    if-ne v1, v4, :cond_2

    if-nez p1, :cond_2

    .line 468
    const/4 v0, 0x1

    .line 482
    :cond_0
    :goto_1
    invoke-static {p1}, Lcom/lge/camera/util/Util;->convertDegreeToSurfaceRotation(I)I

    move-result v1

    invoke-static {p0, v1, v0, p2}, Lcom/lge/camera/util/AppControlUtil;->setNavigationBarRotation(Landroid/app/Activity;III)V

    .line 487
    sput p1, Lcom/lge/camera/util/AppControlUtil;->mOldNavigationBarRotation:I

    .line 488
    return-void

    .line 465
    .end local v0    # "direction":I
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 469
    .restart local v0    # "direction":I
    :cond_2
    sget v1, Lcom/lge/camera/util/AppControlUtil;->mOldNavigationBarRotation:I

    if-nez v1, :cond_3

    if-ne p1, v4, :cond_3

    .line 470
    const/4 v0, 0x2

    goto :goto_1

    .line 471
    :cond_3
    sget v1, Lcom/lge/camera/util/AppControlUtil;->mOldNavigationBarRotation:I

    if-ne v1, v6, :cond_4

    if-nez p1, :cond_4

    .line 472
    const/4 v0, 0x1

    .line 473
    mul-int/lit8 p2, p2, 0x2

    goto :goto_1

    .line 474
    :cond_4
    sget v1, Lcom/lge/camera/util/AppControlUtil;->mOldNavigationBarRotation:I

    if-nez v1, :cond_5

    if-ne p1, v6, :cond_5

    .line 475
    mul-int/lit8 p2, p2, 0x2

    goto :goto_1

    .line 476
    :cond_5
    sget v1, Lcom/lge/camera/util/AppControlUtil;->mOldNavigationBarRotation:I

    if-ne v1, v5, :cond_6

    if-ne p1, v4, :cond_6

    .line 477
    mul-int/lit8 p2, p2, 0x2

    goto :goto_1

    .line 478
    :cond_6
    sget v1, Lcom/lge/camera/util/AppControlUtil;->mOldNavigationBarRotation:I

    if-ne v1, v4, :cond_0

    if-ne p1, v5, :cond_0

    .line 479
    const/4 v0, 0x1

    .line 480
    mul-int/lit8 p2, p2, 0x2

    goto :goto_1
.end method

.method public static setEnableRotateNaviataionBar(Landroid/app/Activity;Z)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "enable"    # Z

    .prologue
    .line 438
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSoftKeyNavigationBarModel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSamsungModel()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isReferenceModel()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p0, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 446
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 447
    if-eqz p1, :cond_2

    .line 448
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit8 v1, v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 451
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    and-int/lit8 v1, v1, -0x21

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public static setFmRadioOff(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 297
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.fmradio.command.fmradioservice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "request"

    const-string v2, "power_off"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 301
    return-void
.end method

.method public static setFullScreen(Landroid/app/Activity;)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v6, 0x0

    .line 575
    const-string v5, "accessibility"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 578
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "accessibility_touch_control_areas_service_enable"

    const/4 v8, -0x3

    invoke-static {v5, v7, v6, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 585
    .local v3, "mTouchControlServiceRunning":Ljava/lang/Boolean;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 586
    :cond_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 587
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 589
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 590
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 591
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 592
    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 593
    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 595
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "v":Landroid/view/View;
    :cond_1
    return-void

    .end local v3    # "mTouchControlServiceRunning":Ljava/lang/Boolean;
    :cond_2
    move v5, v6

    .line 578
    goto :goto_0
.end method

.method private static setNavigationBarRotation(Landroid/app/Activity;III)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "rotation"    # I
    .param p2, "direction"    # I
    .param p3, "duration"    # I

    .prologue
    .line 492
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSoftKeyNavigationBarModel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSamsungModel()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isReferenceModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rotate to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with direction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for duration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.android.intent.action.NAVIGATION_KEY_ROTATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 500
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.lge.intent.extra.ROTATION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 501
    const-string v1, "com.lge.intent.extra.ROTATION_DIRECTION"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 502
    const-string v1, "com.lge.intent.extra.ROTATION_DURATION"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 503
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static setQClipHotkeyFlag(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 229
    const/4 v0, -0x1

    .line 231
    .local v0, "nFlag":I
    invoke-static {p0}, Lcom/lge/camera/util/AppControlUtil;->getHotkeyPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "shortPackageName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 234
    const/4 v0, 0x1

    .line 245
    :goto_0
    sput v0, Lcom/lge/camera/util/AppControlUtil;->mQClipHotkeyFlag:I

    .line 246
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setQClipHotkeyFlag,  mQClipHotkeyFlag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/lge/camera/util/AppControlUtil;->mQClipHotkeyFlag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    sget v2, Lcom/lge/camera/util/AppControlUtil;->mQClipHotkeyFlag:I

    return v2

    .line 235
    :cond_0
    const-string v2, "rotate_switch"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 236
    const/16 v0, 0x400

    goto :goto_0

    .line 238
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSoftKeyNavigationBarModel()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 239
    const/16 v0, 0x200

    goto :goto_0

    .line 241
    :cond_2
    const/16 v0, 0x10

    goto :goto_0
.end method

.method public static setQuickClipScreenCaptureLimit(Landroid/app/Activity;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v7, 0x1

    .line 59
    const-string v5, "CameraApp"

    const-string v6, "setQuickClipScreenCaptureLimit"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSamsungModel()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isReferenceModel()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/camera/util/AppControlUtil;->getHotkeyPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "shortPackageName":Ljava/lang/String;
    const-string v5, "com.lge.qmemoplus"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.lge.QuickClip"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/camera/util/AppControlUtil;->getQClipHotkeyFlag(Landroid/content/Context;)I

    move-result v5

    const/16 v6, 0x200

    if-eq v5, v6, :cond_0

    .line 74
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 75
    .local v3, "params":Landroid/view/WindowManager$LayoutParams;
    const-class v5, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 76
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "privateFlags"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 77
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 78
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 79
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 80
    .local v2, "flag":I
    const/high16 v5, 0x20000000

    or-int/2addr v2, v5

    .line 81
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 83
    .end local v2    # "flag":I
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    :goto_1
    sput-boolean v7, Lcom/lge/camera/util/AppControlUtil;->ENABLE_QUICK_CLIP_KEY:Z

    .line 87
    const-string v5, "CameraApp"

    const-string v6, "setQuickClipScreenCaptureLimit, ENABLE_QUICK_CLIP_KEY(true)"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public static setQuickWindowCameraFromIntent(Landroid/content/Intent;)V
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 369
    const/4 v0, 0x0

    .line 370
    .local v0, "mFromQuickWindowCase":Z
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 371
    const-string v1, "com.lge.android.intent.action.STILL_IMAGE_CAMERA_COVER"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 373
    :cond_0
    invoke-static {}, Lcom/lge/camera/util/Common;->isSmartCoverClosed()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/lge/camera/util/AppControlUtil;->isSecureCameraIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 374
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/lge/camera/util/Common;->setQuickWindowCameraMode(Z)V

    .line 378
    :goto_0
    return-void

    .line 376
    :cond_2
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/lge/camera/util/Common;->setQuickWindowCameraMode(Z)V

    goto :goto_0
.end method

.method public static setTranslucentStatusBar(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 406
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSoftKeyNavigationBarModel()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSamsungModel()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isReferenceModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 413
    .local v1, "winParams":Landroid/view/WindowManager$LayoutParams;
    const/high16 v0, 0x4000000

    .line 414
    .local v0, "bits":I
    if-eqz v1, :cond_0

    .line 415
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x4000000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 416
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public static setTransparentNavigationBar(Landroid/app/Activity;Z)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "isTransparent"    # Z

    .prologue
    .line 421
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSoftKeyNavigationBarModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSamsungModel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isReferenceModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    if-eqz p1, :cond_0

    .line 428
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 432
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_0
.end method
