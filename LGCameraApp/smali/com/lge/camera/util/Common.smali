.class public Lcom/lge/camera/util/Common;
.super Ljava/lang/Object;
.source "Common.java"


# static fields
.field public static APP_CAMCORDER_INSTANCE_COUNT:I = 0x0

.field public static APP_CAMERA_INSTANCE_COUNT:I = 0x0

.field public static APP_CAMLOADING_INSTANCE_COUNT:I = 0x0

.field public static APP_POSTVIEW_INSTANCE_COUNT:I = 0x0

.field public static APP_SHOTMODE_POSTVIEW_INSTANCE_COUNT:I = 0x0

.field public static IS_ENTER_CONDITION:Z = false

.field public static final KEYCODE_TESTMODE_CAMCORDER_CAMCORDER_MODE_OFF:I = 0x86

.field public static final KEYCODE_TESTMODE_CAMCORDER_ERASE_MOVING_FILE:I = 0x85

.field public static final KEYCODE_TESTMODE_CAMCORDER_MODE_ON:I = 0x81

.field public static final KEYCODE_TESTMODE_CAMCORDER_PLAY_MOVING_FILE:I = 0x84

.field public static final KEYCODE_TESTMODE_CAMCORDER_RECORD_STOP_AND_SAVE:I = 0x83

.field public static final KEYCODE_TESTMODE_CAMCORDER_SHOT_RECORD_START:I = 0x82

.field public static final NO_BUTTON_POPUP_DISMISS_DELAY:I = 0x7d0

.field private static backupTransitionScale:F

.field private static backupWidowScale:F

.field public static duration:J

.field public static endTime:J

.field public static interim_duration:J

.field public static interim_endTime:J

.field public static interim_startTime:J

.field public static isChangeAnimationScale:Z

.field private static mSecureCamera:Z

.field public static mStartTime:J

.field private static mWindowManager:Landroid/view/IWindowManager;

.field private static sIsQuickWindowCameraMode:Z

.field private static sIsSmartCoverClosed:Z

.field public static startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 76
    sput v1, Lcom/lge/camera/util/Common;->APP_CAMLOADING_INSTANCE_COUNT:I

    .line 77
    sput v1, Lcom/lge/camera/util/Common;->APP_CAMERA_INSTANCE_COUNT:I

    .line 78
    sput v1, Lcom/lge/camera/util/Common;->APP_CAMCORDER_INSTANCE_COUNT:I

    .line 79
    sput v1, Lcom/lge/camera/util/Common;->APP_POSTVIEW_INSTANCE_COUNT:I

    .line 80
    sput v1, Lcom/lge/camera/util/Common;->APP_SHOTMODE_POSTVIEW_INSTANCE_COUNT:I

    .line 85
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/camera/util/Common;->IS_ENTER_CONDITION:Z

    .line 511
    sput-wide v2, Lcom/lge/camera/util/Common;->startTime:J

    .line 512
    sput-wide v2, Lcom/lge/camera/util/Common;->endTime:J

    .line 513
    sput-wide v2, Lcom/lge/camera/util/Common;->duration:J

    .line 530
    sput-wide v2, Lcom/lge/camera/util/Common;->interim_startTime:J

    .line 531
    sput-wide v2, Lcom/lge/camera/util/Common;->interim_endTime:J

    .line 532
    sput-wide v2, Lcom/lge/camera/util/Common;->interim_duration:J

    .line 565
    sput-boolean v1, Lcom/lge/camera/util/Common;->mSecureCamera:Z

    .line 597
    sput-boolean v1, Lcom/lge/camera/util/Common;->sIsQuickWindowCameraMode:Z

    .line 614
    sput-boolean v1, Lcom/lge/camera/util/Common;->sIsSmartCoverClosed:Z

    .line 624
    sput-boolean v1, Lcom/lge/camera/util/Common;->isChangeAnimationScale:Z

    .line 950
    sput-wide v2, Lcom/lge/camera/util/Common;->mStartTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsHeatingVideoSize(Ljava/lang/String;)Z
    .locals 5
    .param p0, "recordingSize"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 662
    if-nez p0, :cond_1

    .line 663
    const-string v2, "CameraApp"

    const-string v3, "===>RecordingSize is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_0
    :goto_0
    return v1

    .line 666
    :cond_1
    invoke-static {p0}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v0

    .line 668
    .local v0, "size":[I
    aget v3, v0, v1

    const/16 v4, 0x500

    if-lt v3, v4, :cond_0

    aget v3, v0, v2

    const/16 v4, 0x2d0

    if-lt v3, v4, :cond_0

    move v1, v2

    .line 669
    goto :goto_0
.end method

.method public static backlightControl(Landroid/app/Activity;)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 718
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useBackLightControl()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 720
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_brightness_mode"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 723
    .local v0, "curBrightnessMode":I
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_brightness"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 726
    .local v1, "curBrightnessValue":I
    int-to-float v6, v1

    const/high16 v7, 0x437f0000    # 255.0f

    div-float v2, v6, v7

    .line 727
    .local v2, "curValue":F
    const v5, 0x3f4ccccd    # 0.8f

    .line 728
    .local v5, "ratio":F
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 730
    .local v4, "params":Landroid/view/WindowManager$LayoutParams;
    if-nez v0, :cond_1

    .line 731
    mul-float v6, v2, v5

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 735
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 736
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Success to backlight control:curMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "curBright (30~255) = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "val = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ratio = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "set = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    mul-float v8, v2, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    .end local v0    # "curBrightnessMode":I
    .end local v1    # "curBrightnessValue":I
    .end local v2    # "curValue":F
    .end local v4    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "ratio":F
    :cond_0
    :goto_1
    return-void

    .line 733
    .restart local v0    # "curBrightnessMode":I
    .restart local v1    # "curBrightnessValue":I
    .restart local v2    # "curValue":F
    .restart local v4    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v5    # "ratio":F
    :cond_1
    const/high16 v6, -0x40800000    # -1.0f

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 740
    .end local v0    # "curBrightnessMode":I
    .end local v1    # "curBrightnessValue":I
    .end local v2    # "curValue":F
    .end local v4    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "ratio":F
    :catch_0
    move-exception v3

    .line 741
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "CameraApp"

    const-string v7, "Fail to backlight control:"

    invoke-static {v6, v7, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 743
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->useBackLightControlInRecording()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 745
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 746
    .restart local v4    # "params":Landroid/view/WindowManager$LayoutParams;
    const/high16 v6, -0x40800000    # -1.0f

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 747
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 748
    const-string v6, "CameraApp"

    const-string v7, "Success to backlight control: system setting  "

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 749
    .end local v4    # "params":Landroid/view/WindowManager$LayoutParams;
    :catch_1
    move-exception v3

    .line 750
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v6, "CameraApp"

    const-string v7, "Fail to backlight control:"

    invoke-static {v6, v7, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static backlightControlByVal(Landroid/app/Activity;F)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "scale"    # F

    .prologue
    .line 758
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_brightness_mode"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 761
    .local v0, "curBrightnessMode":I
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_brightness"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 764
    .local v1, "curBrightnessValue":I
    int-to-float v6, v1

    const/high16 v7, 0x437f0000    # 255.0f

    div-float v2, v6, v7

    .line 765
    .local v2, "curValue":F
    move v5, p1

    .line 766
    .local v5, "ratio":F
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 768
    .local v4, "params":Landroid/view/WindowManager$LayoutParams;
    if-nez v0, :cond_0

    .line 769
    mul-float v6, v2, v5

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 773
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 774
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Success to backlight control ByVal:curMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "curBright (30~255) = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "val = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ratio = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "set = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    mul-float v8, v2, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    .end local v0    # "curBrightnessMode":I
    .end local v1    # "curBrightnessValue":I
    .end local v2    # "curValue":F
    .end local v4    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "ratio":F
    :goto_1
    return-void

    .line 771
    .restart local v0    # "curBrightnessMode":I
    .restart local v1    # "curBrightnessValue":I
    .restart local v2    # "curValue":F
    .restart local v4    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v5    # "ratio":F
    :cond_0
    const/high16 v6, -0x40800000    # -1.0f

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 778
    .end local v0    # "curBrightnessMode":I
    .end local v1    # "curBrightnessValue":I
    .end local v2    # "curValue":F
    .end local v4    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "ratio":F
    :catch_0
    move-exception v3

    .line 779
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "CameraApp"

    const-string v7, "Fail to backlight control:"

    invoke-static {v6, v7, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static breakTextToMultiLine(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .param p0, "textPaint"    # Landroid/graphics/Paint;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "maxWidth"    # I

    .prologue
    const/16 v9, 0x20

    const/4 v8, 0x0

    .line 907
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 908
    :cond_0
    const-string p1, ""

    .line 947
    .end local p1    # "message":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p1

    .line 910
    .restart local p1    # "message":Ljava/lang/String;
    :cond_2
    if-eqz p2, :cond_1

    .line 913
    if-eqz p0, :cond_1

    .line 917
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 918
    .local v3, "messageBuffer":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 920
    .local v2, "breakStringBuffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 921
    .local v1, "breakString":Ljava/lang/String;
    const/4 v4, 0x0

    .line 923
    .local v4, "remainString":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 925
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_4

    .line 926
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 928
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 930
    const/4 v5, 0x1

    int-to-float v6, p2

    const/4 v7, 0x0

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v0

    .line 931
    .local v0, "breakCount":I
    invoke-virtual {v4, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 933
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 934
    invoke-virtual {v1, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 935
    if-gez v0, :cond_5

    .line 936
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 939
    :cond_5
    invoke-virtual {v4, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 940
    invoke-virtual {v3, v8, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 942
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 943
    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 947
    .end local v0    # "breakCount":I
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static chageDateFormatForNaming(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "takeTime"    # Ljava/lang/String;

    .prologue
    .line 964
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 965
    .local v0, "takeTime_f":Ljava/lang/String;
    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 967
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chageDateFormatForNaming : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    return-object v0
.end method

.method public static checkEnteringTime(Z)V
    .locals 6
    .param p0, "end"    # Z

    .prologue
    const-wide/16 v4, 0x0

    .line 516
    if-eqz p0, :cond_1

    .line 517
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/lge/camera/util/Common;->endTime:J

    .line 518
    sget-wide v0, Lcom/lge/camera/util/Common;->endTime:J

    sget-wide v2, Lcom/lge/camera/util/Common;->startTime:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/lge/camera/util/Common;->duration:J

    .line 519
    sget-wide v0, Lcom/lge/camera/util/Common;->startTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 520
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entering time is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/lge/camera/util/Common;->duration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_0
    sput-wide v4, Lcom/lge/camera/util/Common;->startTime:J

    .line 523
    sput-wide v4, Lcom/lge/camera/util/Common;->endTime:J

    .line 528
    :goto_0
    return-void

    .line 526
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/lge/camera/util/Common;->startTime:J

    goto :goto_0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 4
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 390
    if-nez p0, :cond_0

    .line 399
    :goto_0
    return-void

    .line 394
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    const/4 p0, 0x0

    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeSilently : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static configureWindowFlag(Landroid/view/Window;ZZ)V
    .locals 4
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "fullScreen"    # Z
    .param p2, "secureOrQuickCamera"    # Z

    .prologue
    const/high16 v3, 0x480000

    .line 581
    if-nez p0, :cond_0

    .line 595
    :goto_0
    return-void

    .line 584
    :cond_0
    if-eqz p1, :cond_1

    .line 585
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 587
    :cond_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "quickCamCase = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    if-eqz p2, :cond_2

    .line 589
    invoke-virtual {p0, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 592
    :cond_2
    invoke-virtual {p0, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p0, "strSrc"    # Ljava/lang/String;
    .param p1, "strDest"    # Ljava/lang/String;

    .prologue
    .line 202
    const/4 v8, 0x1

    .line 203
    .local v8, "ret":Z
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    .local v7, "oldFile":Ljava/io/File;
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 205
    .local v0, "data":[B
    const/4 v4, 0x0

    .line 206
    .local v4, "fos":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 208
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .local v6, "fp":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 211
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 214
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    .line 216
    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 223
    const/4 v8, 0x0

    move-object v2, v3

    .line 227
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_1
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 228
    const/4 v4, 0x0

    .line 239
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    invoke-static {v2}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    .line 240
    invoke-static {v4}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    .line 243
    .end local v6    # "fp":Ljava/io/File;
    :goto_3
    return v8

    .line 218
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fp":Ljava/io/File;
    :cond_0
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 219
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 220
    const/4 v2, 0x0

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .line 229
    :catch_1
    move-exception v1

    .line 230
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 231
    const/4 v8, 0x0

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 234
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "fp":Ljava/io/File;
    :catch_2
    move-exception v1

    .line 235
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 236
    const-string v9, "LGCamera"

    const-string v10, "Failed to copyFile"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 237
    const/4 v8, 0x0

    .line 239
    invoke-static {v2}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    .line 240
    invoke-static {v4}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_3

    .line 239
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_5
    invoke-static {v2}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    .line 240
    invoke-static {v4}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    throw v9

    .line 239
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fp":Ljava/io/File;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v9

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 234
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4
.end method

.method public static deleteDirectory(Ljava/io/File;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 471
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 472
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 473
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_1

    .line 474
    const-string v2, "CameraApp"

    const-string v3, "file is not a directory, null return"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    .end local v0    # "files":[Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 477
    .restart local v0    # "files":[Ljava/io/File;
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 478
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 479
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/lge/camera/util/Common;->deleteDirectory(Ljava/io/File;)V

    .line 477
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 481
    :cond_2
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 484
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static galleryCacheDuringCameraApp(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "onresume"    # Z

    .prologue
    .line 686
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->stopGalleryCacheduringCameraApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    if-eqz p1, :cond_1

    .line 688
    new-instance v0, Landroid/content/Intent;

    const-string v1, "lge.gallery.cache.stop"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 690
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "lge.gallery.cache.start"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static getCurrentDateTime(J)Ljava/lang/String;
    .locals 6
    .param p0, "dateTime"    # J

    .prologue
    .line 406
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 407
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, "stringDateTime":Ljava/lang/String;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dateTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    return-object v1
.end method

.method public static getDimension(Landroid/content/Context;I)F
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 494
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method public static getFileFullPathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v10, 0x0

    .line 253
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFileFullPathFromUri uri = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 256
    .local v2, "proj":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 258
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 261
    .local v9, "result":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 267
    if-nez v7, :cond_1

    .line 268
    const-string v0, "CameraApp"

    const-string v1, "error! cursor is null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    if-eqz v7, :cond_0

    .line 282
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 283
    const/4 v7, 0x0

    :cond_0
    move-object v0, v10

    .line 286
    :goto_0
    return-object v0

    .line 271
    :cond_1
    :try_start_1
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 273
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "path from Uri: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 281
    :cond_2
    if-eqz v7, :cond_3

    .line 282
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 283
    const/4 v7, 0x0

    .end local v6    # "column_index":I
    :cond_3
    :goto_1
    move-object v0, v9

    .line 286
    goto :goto_0

    .line 277
    :catch_0
    move-exception v8

    .line 278
    .local v8, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "managedQuery() Exception! "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 279
    const/4 v9, 0x0

    .line 281
    if-eqz v7, :cond_3

    .line 282
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 283
    const/4 v7, 0x0

    goto :goto_1

    .line 281
    .end local v8    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 282
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 283
    const/4 v7, 0x0

    :cond_4
    throw v0
.end method

.method public static getFileNamePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 13
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v12, 0x0

    .line 297
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFileNamePathFromUri uri = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 300
    .local v2, "proj":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 302
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 303
    .local v9, "file":Ljava/io/File;
    const/4 v11, 0x0

    .line 306
    .local v11, "result":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 312
    if-nez v7, :cond_1

    .line 313
    const-string v0, "CameraApp"

    const-string v1, "error! cursor is null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    if-eqz v7, :cond_0

    .line 328
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 329
    const/4 v7, 0x0

    :cond_0
    move-object v0, v12

    .line 332
    :goto_0
    return-object v0

    .line 316
    :cond_1
    :try_start_1
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 318
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 319
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "path from Uri: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    new-instance v10, Ljava/io/File;

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    .end local v9    # "file":Ljava/io/File;
    .local v10, "file":Ljava/io/File;
    :try_start_2
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v11

    move-object v9, v10

    .line 327
    .end local v10    # "file":Ljava/io/File;
    .restart local v9    # "file":Ljava/io/File;
    :cond_2
    if-eqz v7, :cond_3

    .line 328
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 329
    const/4 v7, 0x0

    .end local v6    # "column_index":I
    :cond_3
    :goto_1
    move-object v0, v11

    .line 332
    goto :goto_0

    .line 323
    :catch_0
    move-exception v8

    .line 324
    .local v8, "ex":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "managedQuery() Exception! "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 325
    const/4 v11, 0x0

    .line 327
    if-eqz v7, :cond_3

    .line 328
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 329
    const/4 v7, 0x0

    goto :goto_1

    .line 327
    .end local v8    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v7, :cond_4

    .line 328
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 329
    const/4 v7, 0x0

    :cond_4
    throw v0

    .line 327
    .end local v9    # "file":Ljava/io/File;
    .restart local v6    # "column_index":I
    .restart local v10    # "file":Ljava/io/File;
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10    # "file":Ljava/io/File;
    .restart local v9    # "file":Ljava/io/File;
    goto :goto_3

    .line 323
    .end local v9    # "file":Ljava/io/File;
    .restart local v10    # "file":Ljava/io/File;
    :catch_1
    move-exception v8

    move-object v9, v10

    .end local v10    # "file":Ljava/io/File;
    .restart local v9    # "file":Ljava/io/File;
    goto :goto_2
.end method

.method public static getNameWithoutExtension(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 380
    invoke-static {p0, p1}, Lcom/lge/camera/util/Common;->getFileNamePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "filename":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 382
    const/4 v1, 0x0

    .line 386
    :goto_0
    return-object v1

    .line 384
    :cond_0
    const/4 v2, 0x0

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, "nameOnly":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getPixelFromDimens(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 489
    invoke-static {p0, p1}, Lcom/lge/camera/util/Common;->getDimension(Landroid/content/Context;I)F

    move-result v0

    .line 490
    .local v0, "dimension":F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method public static getScreenLock()Z
    .locals 2

    .prologue
    .line 555
    const-string v0, "service.keyguard.status"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTranslateAnimation(FFFFIZLandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/TranslateAnimation;
    .locals 4
    .param p0, "fromXDelta"    # F
    .param p1, "toXDelta"    # F
    .param p2, "fromYDelta"    # F
    .param p3, "toYDelta"    # F
    .param p4, "duration"    # I
    .param p5, "fillAfter"    # Z
    .param p6, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "ta":Landroid/view/animation/TranslateAnimation;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TranslateAnimation fromX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " toX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "ta":Landroid/view/animation/TranslateAnimation;
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 186
    .restart local v0    # "ta":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, p5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 187
    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 188
    if-eqz p6, :cond_0

    .line 189
    invoke-virtual {v0, p6}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 191
    :cond_0
    return-object v0
.end method

.method public static getUSBconfig()Ljava/lang/String;
    .locals 4

    .prologue
    .line 826
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===>getUSBconfig : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sys.usb.config"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    const-string v0, "sys.usb.config"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUSBstate()Ljava/lang/String;
    .locals 8

    .prologue
    .line 832
    const/4 v3, 0x0

    .line 833
    .local v3, "reader":Ljava/io/FileReader;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 836
    .local v0, "buffer":Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/sys/class/android_usb/android0/state"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    .end local v3    # "reader":Ljava/io/FileReader;
    .local v4, "reader":Ljava/io/FileReader;
    if-eqz v4, :cond_4

    .line 841
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileReader;->read()I

    move-result v1

    .local v1, "data":I
    if-lez v1, :cond_3

    .line 842
    int-to-char v5, v1

    const/16 v6, 0xa

    if-eq v5, v6, :cond_0

    .line 843
    int-to-char v5, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 853
    .end local v1    # "data":I
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 854
    .end local v4    # "reader":Ljava/io/FileReader;
    .local v2, "e":Ljava/io/IOException;
    .restart local v3    # "reader":Ljava/io/FileReader;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 858
    if-eqz v3, :cond_1

    .line 859
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 866
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    const-string v5, "0"

    .end local v3    # "reader":Ljava/io/FileReader;
    :cond_2
    :goto_3
    return-object v5

    .line 847
    .restart local v1    # "data":I
    .restart local v4    # "reader":Ljava/io/FileReader;
    :cond_3
    :try_start_4
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "===> getUSBState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", len: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v5

    .line 858
    if-eqz v4, :cond_2

    .line 859
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 861
    :catch_1
    move-exception v2

    .line 862
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 858
    .end local v1    # "data":I
    .end local v2    # "e":Ljava/io/IOException;
    :cond_4
    if-eqz v4, :cond_5

    .line 859
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_5
    move-object v3, v4

    .line 863
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v3    # "reader":Ljava/io/FileReader;
    goto :goto_2

    .line 861
    .end local v3    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catch_2
    move-exception v2

    .line 862
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 864
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v3    # "reader":Ljava/io/FileReader;
    goto :goto_2

    .line 861
    :catch_3
    move-exception v2

    .line 862
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 857
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 858
    :goto_4
    if-eqz v3, :cond_6

    .line 859
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 863
    :cond_6
    :goto_5
    throw v5

    .line 861
    :catch_4
    move-exception v2

    .line 862
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 857
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v3    # "reader":Ljava/io/FileReader;
    goto :goto_4

    .line 853
    :catch_5
    move-exception v2

    goto :goto_1
.end method

.method public static getUriFromFilePath(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;
    .locals 10
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "fullFilePath"    # Ljava/lang/String;

    .prologue
    .line 342
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUriFromFilePath fullFilePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 344
    .local v3, "selection":Ljava/lang/String;
    const/4 v9, 0x0

    .line 345
    .local v9, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 346
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 349
    .local v8, "id":I
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 355
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 357
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v8

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 363
    :cond_0
    if-eqz v6, :cond_1

    .line 364
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 365
    const/4 v6, 0x0

    .line 369
    :cond_1
    :goto_0
    return-object v9

    .line 360
    :catch_0
    move-exception v7

    .line 361
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "CameraApp"

    const-string v1, "deleteTimeMachineImages fail!:"

    invoke-static {v0, v1, v7}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    if-eqz v6, :cond_1

    .line 364
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 365
    const/4 v6, 0x0

    goto :goto_0

    .line 363
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 364
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 365
    const/4 v6, 0x0

    :cond_2
    throw v0
.end method

.method public static interimCheckTime(Z)J
    .locals 6
    .param p0, "end"    # Z

    .prologue
    const-wide/16 v0, 0x0

    .line 535
    if-eqz p0, :cond_0

    .line 536
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/lge/camera/util/Common;->interim_endTime:J

    .line 537
    sget-wide v2, Lcom/lge/camera/util/Common;->interim_endTime:J

    sget-wide v4, Lcom/lge/camera/util/Common;->interim_startTime:J

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/lge/camera/util/Common;->interim_duration:J

    .line 538
    sput-wide v0, Lcom/lge/camera/util/Common;->interim_startTime:J

    .line 539
    sput-wide v0, Lcom/lge/camera/util/Common;->interim_endTime:J

    .line 541
    sget-wide v0, Lcom/lge/camera/util/Common;->interim_duration:J

    .line 545
    :goto_0
    return-wide v0

    .line 544
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/lge/camera/util/Common;->interim_startTime:J

    goto :goto_0
.end method

.method public static isFaceUnlock()Z
    .locals 1

    .prologue
    .line 576
    invoke-static {}, Lcom/lge/camera/util/Common;->isSecureCamera()Z

    move-result v0

    return v0
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 160
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static isLowLuminance(Landroid/hardware/Camera$Parameters;Z)Z
    .locals 4
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "isForCamera"    # Z

    .prologue
    .line 897
    if-nez p0, :cond_0

    .line 898
    const/4 v1, 0x0

    .line 903
    :goto_0
    return v1

    .line 900
    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isRenesasISP()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "luminance-condition"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 902
    .local v0, "luminanceCondition":Ljava/lang/String;
    :goto_1
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current luminanceCondition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", camera mode ? : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    const-string v1, "low"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 900
    .end local v0    # "luminanceCondition":Ljava/lang/String;
    :cond_2
    const-string v1, "luminance-condition-for-video"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static isQuickWindowCameraMode()Z
    .locals 1

    .prologue
    .line 604
    sget-boolean v0, Lcom/lge/camera/util/Common;->sIsQuickWindowCameraMode:Z

    return v0
.end method

.method public static isScreenLocked()Z
    .locals 1

    .prologue
    .line 550
    sget-boolean v0, Lcom/lge/camera/util/Common;->mSecureCamera:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/lge/camera/util/Common;->getScreenLock()Z

    move-result v0

    goto :goto_0
.end method

.method public static isSecureCamera()Z
    .locals 1

    .prologue
    .line 568
    sget-boolean v0, Lcom/lge/camera/util/Common;->mSecureCamera:Z

    return v0
.end method

.method public static isSmartCoverClosed()Z
    .locals 1

    .prologue
    .line 617
    sget-boolean v0, Lcom/lge/camera/util/Common;->sIsSmartCoverClosed:Z

    return v0
.end method

.method public static isSupported(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z
    .locals 8
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "flashMode"    # Ljava/lang/String;

    .prologue
    .line 881
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v3

    .line 882
    .local v3, "supportedModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 883
    .local v2, "supported":Z
    if-eqz v3, :cond_1

    .line 884
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 885
    .local v1, "mode":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 886
    const/4 v2, 0x1

    goto :goto_0

    .line 890
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mode":Ljava/lang/String;
    :cond_1
    if-nez v2, :cond_2

    .line 891
    const-string v4, "CameraApp"

    const-string v5, "Flash mode [%s] not supported."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    :cond_2
    return v2
.end method

.method public static printRunningTask(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 696
    if-eqz p0, :cond_2

    .line 697
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 699
    .local v1, "manager":Landroid/app/ActivityManager;
    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 700
    .local v2, "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_2

    .line 701
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 702
    .local v3, "taskSize":I
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "runningTask size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const/4 v4, 0x0

    .line 704
    .local v4, "topActivity":Landroid/content/ComponentName;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 705
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 706
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 708
    :cond_0
    if-eqz v4, :cond_1

    .line 709
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "runningTask "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 715
    .end local v0    # "i":I
    .end local v1    # "manager":Landroid/app/ActivityManager;
    .end local v2    # "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v3    # "taskSize":I
    .end local v4    # "topActivity":Landroid/content/ComponentName;
    :cond_2
    return-void
.end method

.method public static reduceBrightnessMode(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "start"    # Z

    .prologue
    .line 676
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->reduceBrightnessCamcorderMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    if-eqz p1, :cond_1

    .line 678
    new-instance v0, Landroid/content/Intent;

    const-string v1, "video_recording_preview_start"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 680
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "video_recording_preview_stop"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 6
    .param p0, "lp"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 499
    if-nez p0, :cond_1

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v3

    array-length v2, v3

    .line 503
    .local v2, "ruleSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 504
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 506
    .end local v1    # "i":I
    .end local v2    # "ruleSize":I
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NullPointerException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static scaleParameter(ILandroid/hardware/Camera$Parameters;)I
    .locals 6
    .param p0, "value"    # I
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 870
    const/4 v3, 0x0

    .line 871
    .local v3, "scaledValue":I
    if-eqz p1, :cond_0

    .line 872
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v4

    int-to-float v1, v4

    .line 873
    .local v1, "max":F
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v4

    int-to-float v2, v4

    .line 874
    .local v2, "min":F
    sub-float v4, v1, v2

    sget v5, Lcom/lge/camera/properties/CameraConstants;->MAX_BRIGHTNESS_STEP:I

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 875
    .local v0, "compensationFactor":F
    int-to-float v4, p0

    mul-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    float-to-int v5, v2

    add-int v3, v4, v5

    .line 877
    .end local v0    # "compensationFactor":F
    .end local v1    # "max":F
    .end local v2    # "min":F
    :cond_0
    return v3
.end method

.method public static setBacklightToMax(Landroid/app/Activity;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 797
    const/16 v0, 0xff

    .line 798
    .local v0, "curBrightnessValue":I
    const/high16 v4, 0x3f800000    # 1.0f

    .line 799
    .local v4, "ratio":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 800
    .local v1, "curValue":F
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 803
    .local v3, "params":Landroid/view/WindowManager$LayoutParams;
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 804
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    .end local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    return-void

    .line 805
    :catch_0
    move-exception v2

    .line 806
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "CameraApp"

    const-string v6, "Fail to backlight control:"

    invoke-static {v5, v6, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setBacklightToSystemSetting(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 785
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 787
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 788
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 789
    const-string v2, "CameraApp"

    const-string v3, "Success to backlight control: system setting  "

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 793
    .end local v1    # "params":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    return-void

    .line 790
    :catch_0
    move-exception v0

    .line 791
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CameraApp"

    const-string v3, "Fail to backlight control:"

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setContentDescriptionForAccessibility(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 974
    invoke-static {p1}, Lcom/lge/camera/util/Common;->traverseViewGroup(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v1

    .line 976
    .local v1, "group":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0a039b

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 979
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 980
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 981
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 989
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 979
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 983
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/Button;

    if-eqz v3, :cond_0

    .line 984
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 991
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 992
    return-void
.end method

.method public static setQuickWindowCameraMode(Z)V
    .locals 0
    .param p0, "set"    # Z

    .prologue
    .line 600
    sput-boolean p0, Lcom/lge/camera/util/Common;->sIsQuickWindowCameraMode:Z

    .line 601
    return-void
.end method

.method public static setSecureCamera(Z)V
    .locals 0
    .param p0, "set"    # Z

    .prologue
    .line 572
    sput-boolean p0, Lcom/lge/camera/util/Common;->mSecureCamera:Z

    .line 573
    return-void
.end method

.method public static setSmartCoverClosed(Z)V
    .locals 0
    .param p0, "set"    # Z

    .prologue
    .line 621
    sput-boolean p0, Lcom/lge/camera/util/Common;->sIsSmartCoverClosed:Z

    .line 622
    return-void
.end method

.method public static setWakeLock(Landroid/os/PowerManager$WakeLock;Z)V
    .locals 3
    .param p0, "wakeLock"    # Landroid/os/PowerManager$WakeLock;
    .param p1, "isAcquire"    # Z

    .prologue
    .line 811
    if-eqz p0, :cond_0

    .line 812
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WakeLock.isHeld() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isAcquire = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    if-eqz p1, :cond_1

    .line 814
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 815
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 823
    :cond_0
    :goto_0
    return-void

    .line 818
    :cond_1
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public static showCheckTimeLog(Ljava/lang/String;Z)V
    .locals 6
    .param p0, "comment"    # Ljava/lang/String;
    .param p1, "start"    # Z

    .prologue
    .line 953
    if-nez p1, :cond_0

    .line 954
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHECK TIME : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time is = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sget-wide v4, Lcom/lge/camera/util/Common;->mStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/lge/camera/util/Common;->mStartTime:J

    .line 959
    :goto_0
    return-void

    .line 957
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/lge/camera/util/Common;->mStartTime:J

    goto :goto_0
.end method

.method public static toast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 98
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CameraApp"

    const-string v2, "Failed to show toast!"

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static toastLong(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 111
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 112
    return-void
.end method

.method public static traverseViewGroup(Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 995
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 996
    .local v2, "returnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 997
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 998
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    .line 996
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1001
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-static {v4}, Lcom/lge/camera/util/Common;->traverseViewGroup(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1003
    .local v3, "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1004
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1003
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1007
    .end local v1    # "j":I
    .end local v3    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 1010
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 1011
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1012
    :cond_3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/Button;

    if-eqz v4, :cond_0

    .line 1013
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1017
    :cond_4
    return-object v2
.end method

.method public static turnOffAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 627
    const-string v1, "CameraApp"

    const-string v2, "turnOffAnimation"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    sput-boolean v3, Lcom/lge/camera/util/Common;->isChangeAnimationScale:Z

    .line 629
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    sput-object v1, Lcom/lge/camera/util/Common;->mWindowManager:Landroid/view/IWindowManager;

    .line 631
    :try_start_0
    sget-object v1, Lcom/lge/camera/util/Common;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v1

    sput v1, Lcom/lge/camera/util/Common;->backupWidowScale:F

    .line 632
    sget-object v1, Lcom/lge/camera/util/Common;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v1

    sput v1, Lcom/lge/camera/util/Common;->backupTransitionScale:F

    .line 634
    sget-object v1, Lcom/lge/camera/util/Common;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 635
    sget-object v1, Lcom/lge/camera/util/Common;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->setAnimationScale(IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    .line 641
    :goto_0
    return-void

    .line 636
    :catch_0
    move-exception v0

    .line 637
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 638
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 639
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0
.end method

.method public static turnOnAnimation()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 644
    sget-boolean v1, Lcom/lge/camera/util/Common;->isChangeAnimationScale:Z

    if-eqz v1, :cond_0

    .line 645
    sput-boolean v2, Lcom/lge/camera/util/Common;->isChangeAnimationScale:Z

    .line 649
    const-string v1, "CameraApp"

    const-string v2, "turnOnAnimation"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    sput-object v1, Lcom/lge/camera/util/Common;->mWindowManager:Landroid/view/IWindowManager;

    .line 652
    :try_start_0
    sget-object v1, Lcom/lge/camera/util/Common;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    sget v3, Lcom/lge/camera/util/Common;->backupWidowScale:F

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 653
    sget-object v1, Lcom/lge/camera/util/Common;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x1

    sget v3, Lcom/lge/camera/util/Common;->backupTransitionScale:F

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->setAnimationScale(IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 654
    :catch_0
    move-exception v0

    .line 655
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 656
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 657
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0
.end method

.method public static useSecureLockImage()Z
    .locals 3

    .prologue
    .line 560
    const-string v1, "service.keyguard.status"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 561
    .local v0, "lock":Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/util/Common;->isSecureCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
