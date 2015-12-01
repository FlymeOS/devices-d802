.class public Lcom/lge/camera/util/CheckStatusManager;
.super Ljava/lang/Object;
.source "CheckStatusManager.java"


# static fields
.field public static final CHECK_ENTER_BATTERY:I = 0x5

.field public static final CHECK_ENTER_CALL:I = 0x1

.field public static final CHECK_ENTER_CALL_CAMCORDER:I = 0x2

.field public static final CHECK_ENTER_DATA_STORAGE:I = 0xd

.field public static final CHECK_ENTER_DEV_POLOCY:I = 0x8

.field public static final CHECK_ENTER_EXT_MEDIA_SCANNING:I = 0x6

.field public static final CHECK_ENTER_FMC:I = 0x4

.field public static final CHECK_ENTER_HDMI:I = 0x9

.field public static final CHECK_ENTER_INT_MEDIA_SCANNING:I = 0x7

.field public static final CHECK_ENTER_MMS_REC_SIZE:I = 0xb

.field public static final CHECK_ENTER_OK:I = 0x0

.field public static final CHECK_ENTER_SAFETY_CARE:I = 0xe

.field public static final CHECK_ENTER_SDM:I = 0xa

.field public static final CHECK_ENTER_TEMPERATURE:I = 0xc

.field public static final CHECK_ENTER_VT_CALL:I = 0x3

.field public static final CHECK_OUT_FINISH:I = 0x2

.field public static final CHECK_OUT_IDLE:I = 0x0

.field public static final CHECK_OUT_SECURE:I = 0x1

.field public static final PROPERTY_TEMPERATURE:Ljava/lang/String; = "/sys/devices/platform/msm_ssbi.0/pm8921-core/pm8xxx-adc/xo_therm"

.field public static final TEMPERATURE_ENTERING_DUAL_RECORDING:D

.field public static final TEMPERATURE_ENTERING_STANDARD:D

.field public static final TEMPERATURE_FLASH_RECORDING_STANDARD:D

.field public static final TEMPERATURE_GUARANTEE_RECORDING_TIME:J

.field public static final TEMPERATURE_LCD_CONTROL_RATIO:F

.field public static final TEMPERATURE_LCD_CONTROL_SECOND:J

.field private static final TEMPERATURE_PROP_BLOCK:Ljava/lang/String; = "ro.lge.heat_block"

.field private static final TEMPERATURE_PROP_DUAL_RECORDING:Ljava/lang/String; = "ro.lge.heat_dual_recording"

.field private static final TEMPERATURE_PROP_FINISH:Ljava/lang/String; = "ro.lge.heat_finish"

.field private static final TEMPERATURE_PROP_FLASH_RECORDING_FINISH:Ljava/lang/String; = "ro.lge.heat_flash_recorder"

.field private static final TEMPERATURE_PROP_GUARANTEE_TIME:Ljava/lang/String; = "ro.lge.heat_guarantee_time"

.field private static final TEMPERATURE_PROP_LCD_CONTROL_PERCENT:Ljava/lang/String; = "ro.lge.heat_lcd_percent"

.field private static final TEMPERATURE_PROP_LCD_CONTROL_SECOND:Ljava/lang/String; = "ro.lge.heat_lcd_second"

.field public static final TEMPERATURE_STANDARD:D

.field private static cameraOutStringId:[I

.field private static isEnterDuringCall:Z

.field private static isTelephonyStateCheckSkip:Z

.field private static mCheckEnterKind:I

.field private static mCheckEnterOutSecure:I

.field private static mEnterCheckComplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 69
    sput v1, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    .line 71
    sput-boolean v1, Lcom/lge/camera/util/CheckStatusManager;->mEnterCheckComplete:Z

    .line 72
    sput-boolean v1, Lcom/lge/camera/util/CheckStatusManager;->isTelephonyStateCheckSkip:Z

    .line 77
    sput v1, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterOutSecure:I

    .line 79
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lge/camera/util/CheckStatusManager;->cameraOutStringId:[I

    .line 118
    sput-boolean v1, Lcom/lge/camera/util/CheckStatusManager;->isEnterDuringCall:Z

    .line 610
    const-string v0, "ro.lge.heat_finish"

    const-wide v2, 0x404a800000000000L    # 53.0

    invoke-static {v0, v2, v3}, Lcom/lge/camera/util/CheckStatusManager;->setTemperatureCondition(Ljava/lang/String;D)D

    move-result-wide v0

    sput-wide v0, Lcom/lge/camera/util/CheckStatusManager;->TEMPERATURE_STANDARD:D

    .line 612
    const-string v0, "ro.lge.heat_block"

    const-wide/high16 v2, 0x4048000000000000L    # 48.0

    invoke-static {v0, v2, v3}, Lcom/lge/camera/util/CheckStatusManager;->setTemperatureCondition(Ljava/lang/String;D)D

    move-result-wide v0

    sput-wide v0, Lcom/lge/camera/util/CheckStatusManager;->TEMPERATURE_ENTERING_STANDARD:D

    .line 614
    const-string v0, "ro.lge.heat_dual_recording"

    const-wide/high16 v2, 0x4045000000000000L    # 42.0

    invoke-static {v0, v2, v3}, Lcom/lge/camera/util/CheckStatusManager;->setTemperatureCondition(Ljava/lang/String;D)D

    move-result-wide v0

    sput-wide v0, Lcom/lge/camera/util/CheckStatusManager;->TEMPERATURE_ENTERING_DUAL_RECORDING:D

    .line 616
    const-string v0, "ro.lge.heat_guarantee_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/lge/camera/util/CheckStatusManager;->setTemperatureCondition(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/lge/camera/util/CheckStatusManager;->TEMPERATURE_GUARANTEE_RECORDING_TIME:J

    .line 618
    const-string v0, "ro.lge.heat_flash_recorder"

    const-wide v2, 0x4046800000000000L    # 45.0

    invoke-static {v0, v2, v3}, Lcom/lge/camera/util/CheckStatusManager;->setTemperatureCondition(Ljava/lang/String;D)D

    move-result-wide v0

    sput-wide v0, Lcom/lge/camera/util/CheckStatusManager;->TEMPERATURE_FLASH_RECORDING_STANDARD:D

    .line 667
    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->setSecondForBacklightInRecording()J

    move-result-wide v0

    sput-wide v0, Lcom/lge/camera/util/CheckStatusManager;->TEMPERATURE_LCD_CONTROL_SECOND:J

    .line 668
    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->setRatioForBacklightInRecording()F

    move-result v0

    sput v0, Lcom/lge/camera/util/CheckStatusManager;->TEMPERATURE_LCD_CONTROL_RATIO:F

    return-void

    .line 79
    nop

    :array_0
    .array-data 4
        -0x1
        0x7f0a01a8
        0x7f0a01a7
        0x7f0a01a9
        0x7f0a01a8
        0x7f0a0031
        0x7f0a0076
        0x7f0a0076
        0x7f0a0036
        0x7f0a0037
        0x7f0a0036
        0x7f0a0251
        0x7f0a026c
        0x7f0a0057
        0x7f0a0344
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetXo_thermal()D
    .locals 11

    .prologue
    .line 192
    const/4 v3, 0x0

    .line 193
    .local v3, "mReader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 194
    .local v2, "mLine":Ljava/lang/String;
    const-wide/16 v6, 0x0

    .line 196
    .local v6, "mTemp":D
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getThermFile()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    .end local v3    # "mReader":Ljava/io/BufferedReader;
    .local v4, "mReader":Ljava/io/BufferedReader;
    if-eqz v4, :cond_0

    .line 199
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 206
    :cond_0
    if-eqz v4, :cond_1

    .line 207
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 208
    if-eqz v2, :cond_1

    .line 209
    const-string v5, "[: ]"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "arr":[Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v6

    .end local v0    # "arr":[Ljava/lang/String;
    :cond_1
    move-object v3, v4

    .line 225
    .end local v4    # "mReader":Ljava/io/BufferedReader;
    .restart local v3    # "mReader":Ljava/io/BufferedReader;
    :cond_2
    :goto_0
    return-wide v6

    .line 218
    .end local v3    # "mReader":Ljava/io/BufferedReader;
    .restart local v4    # "mReader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 219
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 222
    .end local v4    # "mReader":Ljava/io/BufferedReader;
    .restart local v3    # "mReader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 220
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "mReader":Ljava/io/BufferedReader;
    .restart local v4    # "mReader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 221
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "CameraApp"

    const-string v8, "Exception occured."

    invoke-static {v5, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 223
    .end local v4    # "mReader":Ljava/io/BufferedReader;
    .restart local v3    # "mReader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 202
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 203
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v5, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 206
    if-eqz v3, :cond_2

    .line 207
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 208
    if-eqz v2, :cond_2

    .line 209
    const-string v5, "[: ]"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 214
    .restart local v0    # "arr":[Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-wide v6

    goto :goto_0

    .line 218
    .end local v0    # "arr":[Ljava/lang/String;
    :catch_3
    move-exception v1

    .line 219
    const-string v5, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :catch_4
    move-exception v1

    .line 221
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "CameraApp"

    const-string v8, "Exception occured."

    invoke-static {v5, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 206
    :goto_2
    if-eqz v3, :cond_3

    .line 207
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 208
    if-eqz v2, :cond_3

    .line 209
    const-string v8, "[: ]"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 214
    .restart local v0    # "arr":[Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    move-result-wide v6

    .line 222
    .end local v0    # "arr":[Ljava/lang/String;
    :cond_3
    :goto_3
    throw v5

    .line 218
    :catch_5
    move-exception v1

    .line 219
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 220
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 221
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "CameraApp"

    const-string v9, "Exception occured."

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 205
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "mReader":Ljava/io/BufferedReader;
    .restart local v4    # "mReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "mReader":Ljava/io/BufferedReader;
    .restart local v3    # "mReader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 202
    .end local v3    # "mReader":Ljava/io/BufferedReader;
    .restart local v4    # "mReader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4    # "mReader":Ljava/io/BufferedReader;
    .restart local v3    # "mReader":Ljava/io/BufferedReader;
    goto/16 :goto_1
.end method

.method private static checkCallStatus(Landroid/app/Activity;)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 252
    const-string v2, "CameraApp"

    const-string v3, "check enter by call status"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    sget-boolean v2, Lcom/lge/camera/util/CheckStatusManager;->isTelephonyStateCheckSkip:Z

    if-eqz v2, :cond_0

    .line 278
    :goto_0
    return v0

    .line 256
    :cond_0
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkEnterApplication activity : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/TelephonyUtil;->phoneInCall(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 259
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.lge.camera.Camcorder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.lge.camera.CamcorderLoading"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 262
    :cond_1
    const/4 v0, 0x2

    sput v0, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    move v0, v1

    .line 263
    goto :goto_0

    .line 265
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isEnterCameraDuringCall()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p0}, Lcom/lge/camera/util/CheckStatusManager;->isRCSeWorkingOn(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 266
    :cond_3
    invoke-static {v0}, Lcom/lge/camera/util/CheckStatusManager;->setIsEnterDuringCall(Z)V

    goto :goto_0

    .line 269
    :cond_4
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isUPlusRMSCall()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p0}, Lcom/lge/camera/util/CheckStatusManager;->isRmsConnected(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 270
    invoke-static {v0}, Lcom/lge/camera/util/CheckStatusManager;->setIsEnterDuringCall(Z)V

    goto :goto_0

    .line 273
    :cond_5
    sput v0, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    move v0, v1

    .line 274
    goto :goto_0

    .line 277
    :cond_6
    invoke-static {v1}, Lcom/lge/camera/util/CheckStatusManager;->setIsEnterDuringCall(Z)V

    goto :goto_0
.end method

.method public static checkCameraOut(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 566
    if-nez p0, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    const/4 v0, 0x0

    .line 571
    .local v0, "sMsg":Ljava/lang/String;
    sget v1, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    if-ltz v1, :cond_2

    sget v1, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    sget-object v2, Lcom/lge/camera/util/CheckStatusManager;->cameraOutStringId:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    sget-object v1, Lcom/lge/camera/util/CheckStatusManager;->cameraOutStringId:[I

    sget v2, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    aget v1, v1, v2

    if-ltz v1, :cond_2

    .line 573
    sget-object v1, Lcom/lge/camera/util/CheckStatusManager;->cameraOutStringId:[I

    sget v2, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 576
    :cond_2
    if-eqz v0, :cond_0

    .line 577
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lge/camera/util/Common;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 578
    if-eqz p1, :cond_3

    .line 579
    new-instance v1, Lcom/lge/camera/util/CheckStatusManager$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/util/CheckStatusManager$1;-><init>(Landroid/app/Activity;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 588
    :goto_1
    const/4 v1, 0x0

    sput v1, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    goto :goto_0

    .line 586
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method private static checkCurrentBatteryStatus(Landroid/app/Activity;)Z
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v7, 0x5

    const/4 v3, 0x0

    .line 130
    const-string v4, "CameraApp"

    const-string v5, "check enter by battery status"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 132
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 134
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 136
    const-string v4, "level"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 137
    .local v2, "level":I
    const-string v4, "level"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-gt v4, v7, :cond_0

    .line 138
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Battery level is low : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    sput v7, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    .line 146
    .end local v2    # "level":I
    :goto_0
    return v3

    .line 142
    .restart local v2    # "level":I
    :cond_0
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current battery level is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .end local v2    # "level":I
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static checkCurrentTemperature(Landroid/app/Activity;)Z
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v9, 0x0

    const/16 v10, 0xc

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 150
    const-string v7, "CameraApp"

    const-string v8, "check enter by Temperature"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-wide/16 v4, 0x0

    .line 153
    .local v4, "mTemp":D
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->temperatureCheckMethod()I

    move-result v7

    if-ne v7, v6, :cond_1

    .line 154
    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->GetXo_thermal()D

    move-result-wide v4

    .line 155
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "xo_termal Termperature : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_0
    :goto_0
    sget-wide v8, Lcom/lge/camera/util/CheckStatusManager;->TEMPERATURE_ENTERING_STANDARD:D

    cmpl-double v7, v4, v8

    if-ltz v7, :cond_5

    .line 181
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot exeute camera because it\'s too hot. *-_-* : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " degrees."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    sput v10, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    .line 186
    :goto_1
    return v3

    .line 156
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->temperatureCheckMethod()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 157
    new-instance v2, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 158
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {p0, v9, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 159
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 160
    const-string v7, "temperature"

    invoke-virtual {v1, v7, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    int-to-double v4, v7

    .line 161
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    div-double/2addr v4, v8

    goto :goto_0

    .line 163
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->temperatureCheckMethod()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    .line 164
    new-instance v2, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 165
    .restart local v2    # "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {p0, v9, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 166
    .restart local v1    # "intent":Landroid/content/Intent;
    if-eqz v1, :cond_4

    .line 167
    const-string v7, "CameraAvailable"

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 168
    .local v0, "camera_available":Z
    if-nez v0, :cond_3

    .line 169
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot exeute camera because it\'s too hot. Cool state : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    sput v10, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    goto :goto_1

    :cond_3
    move v3, v6

    .line 174
    goto :goto_1

    .end local v0    # "camera_available":Z
    :cond_4
    move v3, v6

    .line 177
    goto :goto_1

    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    :cond_5
    move v3, v6

    .line 186
    goto :goto_1
.end method

.method public static checkDataStorageEnough()Z
    .locals 12

    .prologue
    .line 230
    new-instance v6, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 231
    .local v6, "statFs":Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    .line 232
    .local v0, "availBlocks":J
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 233
    .local v2, "blockSize":J
    const-wide/16 v4, 0xa

    .line 235
    .local v4, "minSize":J
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DATA STORAGE = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    mul-long v10, v0, v2

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    mul-long v8, v0, v2

    cmp-long v7, v8, v4

    if-lez v7, :cond_0

    .line 238
    const/4 v7, 0x1

    .line 242
    :goto_0
    return v7

    .line 240
    :cond_0
    const-string v7, "CameraApp"

    const-string v8, "Data storage(/data/) is full!!!!"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const/16 v7, 0xd

    sput v7, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    .line 242
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private static checkDevicePolicy(Landroid/app/Activity;)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 379
    const-string v2, "CameraApp"

    const-string v3, "check enter by Device Policy status"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const/4 v0, 0x1

    .line 381
    .local v0, "allowCamera":Z
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 383
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_0

    .line 385
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    .line 386
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowCamera = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    if-eqz v0, :cond_0

    .line 388
    const/16 v2, 0x8

    sput v2, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    .line 391
    :cond_0
    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static checkEnterApplication(Landroid/app/Activity;Z)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "bResume"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 534
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkEnterApplication : mEnterCheckComplete = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/lge/camera/util/CheckStatusManager;->mEnterCheckComplete:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    sput-boolean v0, Lcom/lge/camera/util/Common;->IS_ENTER_CONDITION:Z

    .line 537
    sget-boolean v2, Lcom/lge/camera/util/CheckStatusManager;->mEnterCheckComplete:Z

    if-eqz v2, :cond_0

    .line 562
    :goto_0
    return v0

    .line 541
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/lge/camera/util/Common;->getScreenLock()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 542
    invoke-static {v0}, Lcom/lge/camera/util/CheckStatusManager;->setTelephonyStateCheckSkip(Z)V

    .line 545
    :cond_1
    invoke-static {p0}, Lcom/lge/camera/util/CheckStatusManager;->checkVTCallStatus(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/lge/camera/util/CheckStatusManager;->checkCallStatus(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/lge/camera/util/CheckStatusManager;->checkFMCStatus(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/lge/camera/util/CheckStatusManager;->checkCurrentBatteryStatus(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/lge/camera/util/CheckStatusManager;->checkDevicePolicy(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/lge/camera/util/CheckStatusManager;->checkHdmiStatus(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/lge/camera/util/CheckStatusManager;->getCameraStateInSDM(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/lge/camera/util/CheckStatusManager;->checkMinimumMMSRecordingSize(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/lge/camera/util/CheckStatusManager;->checkCurrentTemperature(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->checkDataStorageEnough()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/lge/camera/util/CheckStatusManager;->checkSafetyCareStatus(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 556
    invoke-static {v1}, Lcom/lge/camera/util/CheckStatusManager;->setTelephonyStateCheckSkip(Z)V

    .line 557
    sput-boolean v0, Lcom/lge/camera/util/CheckStatusManager;->mEnterCheckComplete:Z

    goto :goto_0

    .line 560
    :cond_2
    invoke-static {v1}, Lcom/lge/camera/util/CheckStatusManager;->setTelephonyStateCheckSkip(Z)V

    .line 561
    sput-boolean v1, Lcom/lge/camera/util/Common;->IS_ENTER_CONDITION:Z

    move v0, v1

    .line 562
    goto :goto_0
.end method

.method private static checkFMCStatus(Landroid/app/Activity;)Z
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x1

    .line 344
    const-string v4, "CameraApp"

    const-string v5, "check enter by FMC status"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    sget-boolean v4, Lcom/lge/camera/util/CheckStatusManager;->isTelephonyStateCheckSkip:Z

    if-eqz v4, :cond_1

    .line 348
    const-string v4, "CameraApp"

    const-string v5, "Telephony state check skip - FMC"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :cond_0
    :goto_0
    return v3

    .line 352
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isFMCmodel()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 353
    const/4 v2, 0x0

    .line 354
    .local v2, "iFmcCallInterfac":Lcom/lge/fmccall/IFmcCallInterface;
    const/4 v1, 0x0

    .line 356
    .local v1, "fmcState":I
    :try_start_0
    const-string v4, "FmcCall"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/fmccall/IFmcCallInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/fmccall/IFmcCallInterface;

    move-result-object v2

    .line 358
    if-nez v2, :cond_2

    .line 359
    const-string v4, "CameraApp"

    const-string v5, "Not use FMC Call service"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, "ex":Ljava/lang/Exception;
    const-string v4, "CameraApp"

    const-string v5, "RemoteException from getFmcCallInterface()"

    invoke-static {v4, v5, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 370
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    if-eqz v1, :cond_0

    .line 371
    const/4 v3, 0x4

    sput v3, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    .line 372
    const/4 v3, 0x0

    goto :goto_0

    .line 362
    :cond_2
    :try_start_1
    invoke-interface {v2}, Lcom/lge/fmccall/IFmcCallInterface;->getFmcCallState()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_1
.end method

.method private static checkHdmiStatus(Landroid/app/Activity;)Z
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v9, 0x400

    const/4 v8, 0x1

    .line 434
    const/4 v3, 0x1

    .line 435
    .local v3, "enterCamera":Z
    const/4 v7, 0x0

    .line 436
    .local v7, "mHDMIState":I
    new-array v1, v9, [C

    .line 437
    .local v1, "buffer":[C
    const-string v0, "/sys/class/switch/hdmi/state"

    .line 439
    .local v0, "HDMI_STATE_PATH":Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHDMI_MHL()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 440
    const-string v9, "CameraApp"

    const-string v10, "It can support HDMI/MHL!!"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :goto_0
    return v8

    .line 444
    :cond_0
    const/4 v4, 0x0

    .line 446
    .local v4, "file":Ljava/io/FileReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    .end local v4    # "file":Ljava/io/FileReader;
    .local v5, "file":Ljava/io/FileReader;
    const/4 v9, 0x0

    const/16 v10, 0x400

    :try_start_1
    invoke-virtual {v5, v1, v9, v10}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    .line 448
    .local v6, "len":I
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v1, v10, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    .line 454
    if-eqz v5, :cond_4

    .line 456
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .line 463
    .end local v5    # "file":Ljava/io/FileReader;
    .end local v6    # "len":I
    .restart local v4    # "file":Ljava/io/FileReader;
    :cond_1
    :goto_1
    if-ne v7, v8, :cond_2

    .line 464
    const/4 v3, 0x0

    .line 465
    const/16 v8, 0x9

    sput v8, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    .line 467
    :cond_2
    const-string v8, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkHdmiStatus: is disconnected?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v3

    .line 468
    goto :goto_0

    .line 457
    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/FileReader;
    .restart local v6    # "len":I
    :catch_0
    move-exception v2

    .line 458
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "CameraApp"

    const-string v10, "IOException for HDMI_STATE_PATH"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 459
    .end local v5    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    goto :goto_1

    .line 449
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "len":I
    :catch_1
    move-exception v2

    .line 450
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v9, "CameraApp"

    const-string v10, "This kernel does not have dock station support"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 454
    if-eqz v4, :cond_1

    .line 456
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 457
    :catch_2
    move-exception v2

    .line 458
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "CameraApp"

    const-string v10, "IOException for HDMI_STATE_PATH"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 451
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 452
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    const-string v9, "CameraApp"

    const-string v10, "Cannot check the HDMI status"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 454
    if-eqz v4, :cond_1

    .line 456
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 457
    :catch_4
    move-exception v2

    .line 458
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "CameraApp"

    const-string v10, "IOException for HDMI_STATE_PATH"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 454
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v4, :cond_3

    .line 456
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 459
    :cond_3
    :goto_5
    throw v8

    .line 457
    :catch_5
    move-exception v2

    .line 458
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "CameraApp"

    const-string v10, "IOException for HDMI_STATE_PATH"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 454
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    goto :goto_4

    .line 451
    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v4, v5

    .end local v5    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    goto :goto_3

    .line 449
    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v4, v5

    .end local v5    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    goto :goto_2

    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/FileReader;
    .restart local v6    # "len":I
    :cond_4
    move-object v4, v5

    .end local v5    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    goto :goto_1
.end method

.method private static checkMinimumMMSRecordingSize(Landroid/app/Activity;)Z
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const-wide/16 v8, 0x0

    .line 506
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 508
    const-string v4, "CameraApp"

    const-string v5, "check enter by minimum mms recording size"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 511
    .local v1, "getExBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 512
    const-string v4, "android.intent.extra.sizeLimit"

    invoke-virtual {v1, v4, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 513
    .local v2, "mRequestedSizeLimit":J
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requested size :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    cmp-long v4, v2, v8

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/properties/MmsProperties;->getMmsVideoMinimumSize(Landroid/content/ContentResolver;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 517
    const/16 v4, 0xb

    sput v4, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    .line 518
    const/4 v4, 0x0

    .line 522
    .end local v1    # "getExBundle":Landroid/os/Bundle;
    .end local v2    # "mRequestedSizeLimit":J
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private static checkSafetyCareStatus(Landroid/app/Activity;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 526
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/AppControlUtil;->getEnableSafetyCare(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 527
    .local v0, "enterCamera":Z
    :goto_0
    if-nez v0, :cond_0

    .line 528
    const/16 v1, 0xe

    sput v1, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    .line 530
    :cond_0
    return v0

    .line 526
    .end local v0    # "enterCamera":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkVTCallStatus(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 336
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/TelephonyUtil;->phoneInVTCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    const/4 v0, 0x3

    sput v0, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    .line 338
    const/4 v0, 0x0

    .line 340
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkVoiceShutterEnable(Ljava/lang/String;)Z
    .locals 1
    .param p0, "shotMode"    # Ljava/lang/String;

    .prologue
    .line 593
    const-string v0, "shotmode_continuous"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "shotmode_full_continuous"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "shotmode_panorama"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "shotmode_plane_panorama"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "shotmode_free_panorama"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "shotmode_dual_camera"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 599
    :cond_0
    const/4 v0, 0x0

    .line 601
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static getCameraStateInSDM(Landroid/app/Activity;)Z
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 396
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    move v0, v9

    .line 428
    :goto_0
    return v0

    .line 400
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "check enter In SDM"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const/4 v6, 0x1

    .line 402
    .local v6, "cameraEnableStatus":I
    const/4 v7, 0x0

    .line 405
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/camera/properties/CameraConstants;->SDM_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/camera/properties/CameraConstants;->CAMERA_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 408
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 409
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 410
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** cameraEnableStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    if-eqz v7, :cond_1

    .line 419
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 420
    const/4 v7, 0x0

    .line 424
    :cond_1
    :goto_1
    if-ne v6, v9, :cond_5

    move v0, v9

    .line 425
    goto :goto_0

    .line 412
    :cond_2
    :try_start_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** cannot access to SDM server DB, cursor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 418
    if-eqz v7, :cond_3

    .line 419
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 420
    const/4 v7, 0x0

    :cond_3
    move v0, v9

    goto :goto_0

    .line 415
    :catch_0
    move-exception v8

    .line 416
    .local v8, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v0, "CameraApp"

    const-string v1, "Could not load photo from database"

    invoke-static {v0, v1, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 418
    if-eqz v7, :cond_1

    .line 419
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 420
    const/4 v7, 0x0

    goto :goto_1

    .line 418
    .end local v8    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 419
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 420
    const/4 v7, 0x0

    :cond_4
    throw v0

    .line 427
    :cond_5
    const/16 v0, 0xa

    sput v0, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    move v0, v10

    .line 428
    goto/16 :goto_0
.end method

.method public static getCheckEnterKind()I
    .locals 1

    .prologue
    .line 107
    sget v0, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    return v0
.end method

.method public static getCheckEnterOutSecure()I
    .locals 1

    .prologue
    .line 111
    sget v0, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterOutSecure:I

    return v0
.end method

.method public static isEnterCheckComplete()Z
    .locals 1

    .prologue
    .line 99
    sget-boolean v0, Lcom/lge/camera/util/CheckStatusManager;->mEnterCheckComplete:Z

    return v0
.end method

.method public static isEnterDuringCall()Z
    .locals 1

    .prologue
    .line 121
    sget-boolean v0, Lcom/lge/camera/util/CheckStatusManager;->isEnterDuringCall:Z

    return v0
.end method

.method public static isHDMIConnected()Z
    .locals 12

    .prologue
    const/16 v9, 0x400

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 472
    const/4 v6, 0x0

    .line 473
    .local v6, "mHDMIState":I
    new-array v1, v9, [C

    .line 474
    .local v1, "buffer":[C
    const-string v0, "/sys/class/switch/hdmi/state"

    .line 476
    .local v0, "HDMI_STATE_PATH":Ljava/lang/String;
    const/4 v3, 0x0

    .line 478
    .local v3, "file":Ljava/io/FileReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    .end local v3    # "file":Ljava/io/FileReader;
    .local v4, "file":Ljava/io/FileReader;
    const/4 v9, 0x0

    const/16 v10, 0x400

    :try_start_1
    invoke-virtual {v4, v1, v9, v10}, Ljava/io/FileReader;->read([CII)I

    move-result v5

    .line 480
    .local v5, "len":I
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v1, v10, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    .line 486
    if-eqz v4, :cond_3

    .line 488
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 495
    .end local v4    # "file":Ljava/io/FileReader;
    .end local v5    # "len":I
    .restart local v3    # "file":Ljava/io/FileReader;
    :cond_0
    :goto_0
    const-string v9, "CameraApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mHDMIState = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    if-ne v6, v7, :cond_2

    .line 500
    :goto_1
    return v7

    .line 489
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    .restart local v5    # "len":I
    :catch_0
    move-exception v2

    .line 490
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "CameraApp"

    const-string v10, ""

    invoke-static {v9, v10, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v4

    .line 491
    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_0

    .line 481
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "len":I
    :catch_1
    move-exception v2

    .line 482
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v9, "CameraApp"

    const-string v10, "This kernel does not have dock station support"

    invoke-static {v9, v10, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 486
    if-eqz v3, :cond_0

    .line 488
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 489
    :catch_2
    move-exception v2

    .line 490
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "CameraApp"

    const-string v10, ""

    invoke-static {v9, v10, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 483
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 484
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    const-string v9, "CameraApp"

    const-string v10, ""

    invoke-static {v9, v10, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 486
    if-eqz v3, :cond_0

    .line 488
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 489
    :catch_4
    move-exception v2

    .line 490
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "CameraApp"

    const-string v10, ""

    invoke-static {v9, v10, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 486
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v3, :cond_1

    .line 488
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 491
    :cond_1
    :goto_5
    throw v7

    .line 489
    :catch_5
    move-exception v2

    .line 490
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "CameraApp"

    const-string v9, ""

    invoke-static {v8, v9, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    move v7, v8

    .line 500
    goto :goto_1

    .line 486
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_4

    .line 483
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_3

    .line 481
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_2

    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    .restart local v5    # "len":I
    :cond_3
    move-object v3, v4

    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_0
.end method

.method private static isRCSeWorkingOn(Landroid/app/Activity;)Z
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v9, 0x1

    .line 283
    const-string v1, "CameraApp"

    const-string v2, "check enter by RCS status()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const/4 v8, 0x0

    .line 285
    .local v8, "nISWorking":I
    const/4 v0, 0x0

    .line 286
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 288
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 289
    if-eqz v0, :cond_0

    .line 290
    const-string v1, "content://com.lge.ims.provisioning/workings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 294
    :cond_0
    if-eqz v6, :cond_1

    .line 295
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    const-string v1, "rcs_e_is_working"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    goto :goto_0

    .line 302
    :cond_1
    if-eqz v6, :cond_2

    .line 303
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 304
    const/4 v6, 0x0

    .line 307
    :cond_2
    :goto_1
    if-ne v8, v9, :cond_4

    move v1, v9

    :goto_2
    return v1

    .line 299
    :catch_0
    move-exception v7

    .line 300
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v1, "CameraApp"

    const-string v2, "cursor error "

    invoke-static {v1, v2, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    if-eqz v6, :cond_2

    .line 303
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 304
    const/4 v6, 0x0

    goto :goto_1

    .line 302
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 303
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 304
    const/4 v6, 0x0

    :cond_3
    throw v1

    .line 307
    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private static isRmsConnected(Landroid/app/Activity;)Z
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v9, 0x1

    .line 311
    const/4 v6, 0x0

    .line 312
    .local v6, "connected":I
    const/4 v7, 0x0

    .line 314
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 315
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 316
    const-string v1, "content://com.lguplus.rms/service"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 318
    if-eqz v7, :cond_0

    .line 319
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    const-string v1, "connected"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    goto :goto_0

    .line 327
    :cond_0
    if-eqz v7, :cond_1

    .line 328
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 329
    const/4 v7, 0x0

    .line 332
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_1
    :goto_1
    if-ne v6, v9, :cond_3

    move v1, v9

    :goto_2
    return v1

    .line 324
    :catch_0
    move-exception v8

    .line 325
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "CameraApp"

    const-string v2, "cursor error "

    invoke-static {v1, v2, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    if-eqz v7, :cond_1

    .line 328
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 329
    const/4 v7, 0x0

    goto :goto_1

    .line 327
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_2

    .line 328
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 329
    const/4 v7, 0x0

    :cond_2
    throw v1

    .line 332
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public static setCheckEnterOutSecure(I)V
    .locals 0
    .param p0, "status"    # I

    .prologue
    .line 115
    sput p0, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterOutSecure:I

    .line 116
    return-void
.end method

.method public static setEnterCheckComplete(Z)V
    .locals 0
    .param p0, "complete"    # Z

    .prologue
    .line 103
    sput-boolean p0, Lcom/lge/camera/util/CheckStatusManager;->mEnterCheckComplete:Z

    .line 104
    return-void
.end method

.method private static setIsEnterDuringCall(Z)V
    .locals 3
    .param p0, "duringCall"    # Z

    .prologue
    .line 125
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter camera during call : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sput-boolean p0, Lcom/lge/camera/util/CheckStatusManager;->isEnterDuringCall:Z

    .line 127
    return-void
.end method

.method public static final setRatioForBacklightInRecording()F
    .locals 6

    .prologue
    .line 700
    const-string v2, "CameraApp"

    const-string v3, "back setRatioForBacklightInRecording"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    const-string v2, "ro.lge.heat_lcd_percent"

    const-wide/16 v4, -0x1

    invoke-static {v2, v4, v5}, Lcom/lge/camera/util/CheckStatusManager;->setTemperatureCondition(Ljava/lang/String;J)J

    move-result-wide v0

    .line 702
    .local v0, "result":J
    const-wide/16 v2, 0x64

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const-wide/16 v2, 0x32

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 703
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 706
    :goto_0
    return v2

    .line 705
    :cond_1
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "back setRatioForBacklightInRecording end : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    long-to-float v2, v0

    const v3, 0x3c23d70a    # 0.01f

    mul-float/2addr v2, v3

    goto :goto_0
.end method

.method public static final setSecondForBacklightInRecording()J
    .locals 6

    .prologue
    .line 690
    const-string v2, "CameraApp"

    const-string v3, "back setSecondForBacklight"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const-string v2, "ro.lge.heat_lcd_second"

    const-wide/16 v4, -0x1

    invoke-static {v2, v4, v5}, Lcom/lge/camera/util/CheckStatusManager;->setTemperatureCondition(Ljava/lang/String;J)J

    move-result-wide v0

    .line 692
    .local v0, "result":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 693
    const-wide/16 v0, -0x1

    .line 695
    :cond_0
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "back setSecondForBacklight end : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    return-wide v0
.end method

.method public static setTelephonyStateCheckSkip(Z)V
    .locals 3
    .param p0, "callCheck"    # Z

    .prologue
    .line 247
    sput-boolean p0, Lcom/lge/camera/util/CheckStatusManager;->isTelephonyStateCheckSkip:Z

    .line 248
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TelephonyStateCheck = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/camera/util/CheckStatusManager;->isTelephonyStateCheckSkip:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public static final setTemperatureCondition(Ljava/lang/String;D)D
    .locals 7
    .param p0, "prop"    # Ljava/lang/String;
    .param p1, "defaultValue"    # D

    .prologue
    .line 622
    move-wide v2, p1

    .line 623
    .local v2, "result":D
    const/4 v0, 0x0

    .line 624
    .local v0, "isNeedForcedSetting":Z
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 625
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 626
    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 627
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Temperature condition is empty ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "). So use default value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const/4 v0, 0x1

    .line 640
    :goto_0
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNeedForcedSetting : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    if-eqz v0, :cond_0

    .line 642
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 643
    const-string v4, "ro.lge.heat_finish"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 644
    const-wide/high16 v2, 0x4046000000000000L    # 44.0

    .line 661
    :cond_0
    :goto_1
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " value ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    return-wide v2

    .line 631
    :cond_1
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    goto :goto_0

    .line 634
    :cond_2
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Temperature condition is null ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "). So use default value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const/4 v0, 0x1

    goto :goto_0

    .line 645
    :cond_3
    const-string v4, "ro.lge.heat_block"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 646
    const-wide v2, 0x4045400000000000L    # 42.5

    goto :goto_1
.end method

.method public static final setTemperatureCondition(Ljava/lang/String;J)J
    .locals 7
    .param p0, "prop"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .prologue
    .line 671
    move-wide v0, p1

    .line 672
    .local v0, "result":J
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 673
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 674
    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 675
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Temperature condition is empty ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "). So use default value ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :goto_0
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "value ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    return-wide v0

    .line 678
    :cond_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 681
    :cond_1
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Temperature condition is null ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "). So use default value ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final useBackLightControlInRecording()Z
    .locals 4

    .prologue
    .line 710
    const-string v0, "CameraApp"

    const-string v1, "useBackLightControlInRecording"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    sget-wide v0, Lcom/lge/camera/util/CheckStatusManager;->TEMPERATURE_LCD_CONTROL_SECOND:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
