.class public Lcom/lge/systemservice/core/LGLedRecord;
.super Ljava/lang/Object;
.source "LGLedRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ALL_LED_PLAY:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/systemservice/core/LGLedRecord;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_SHOW_LIGHTS_FORCE:I = 0x2

.field public static final FLAG_SHOW_LIGHTS_ONLY_LED_OFF:I = 0x0

.field public static final FLAG_SHOW_LIGHTS_ONLY_LED_ON:I = 0x1

.field public static final ID_ALARM:I = 0x8

.field public static final ID_BT_CONNECTED:I = 0x69

.field public static final ID_BT_DISCONNECTED:I = 0x6a

.field public static final ID_CALENDAR_REMIND:I = 0x5

.field public static final ID_CALLING:I = 0x23

.field public static final ID_CALL_01:I = 0x9

.field public static final ID_CALL_02:I = 0xa

.field public static final ID_CALL_03:I = 0xb

.field public static final ID_CHARGING:I = 0x3

.field public static final ID_CHARGING_FULL:I = 0x4

.field public static final ID_FAILED_CHECKPASSWORD:I = 0x68

.field public static final ID_FAVORITE_MISSED_NOTI:I = 0xe

.field public static final ID_FELICA_ON:I = 0x65

.field public static final ID_GPS_ENABLED:I = 0x66

.field public static final ID_INCALL_BLUE:I = 0x16

.field public static final ID_INCALL_LIME:I = 0x1c

.field public static final ID_INCALL_ORANGE:I = 0x17

.field public static final ID_INCALL_PINK:I = 0x15

.field public static final ID_INCALL_PURPLE:I = 0x1a

.field public static final ID_INCALL_RED:I = 0x1b

.field public static final ID_INCALL_TURQUOISE:I = 0x19

.field public static final ID_INCALL_YELLOW:I = 0x18

.field public static final ID_INCOMING_CALL:I = 0x26

.field public static final ID_KNOCK_ON:I = 0x67

.field public static final ID_LCD_ON:I = 0x2

.field public static final ID_MISSED_NOTI:I = 0x7

.field public static final ID_MISSED_NOTI_BLUE:I = 0x12

.field public static final ID_MISSED_NOTI_BLUE_ONCE:I = 0x29

.field public static final ID_MISSED_NOTI_LIME:I = 0x20

.field public static final ID_MISSED_NOTI_LIME_ONCE:I = 0x2f

.field public static final ID_MISSED_NOTI_ONCE:I = 0x27

.field public static final ID_MISSED_NOTI_ORANGE:I = 0x13

.field public static final ID_MISSED_NOTI_ORANGE_ONCE:I = 0x2a

.field public static final ID_MISSED_NOTI_PINK:I = 0x11

.field public static final ID_MISSED_NOTI_PINK_ONCE:I = 0x28

.field public static final ID_MISSED_NOTI_PURPLE:I = 0x1e

.field public static final ID_MISSED_NOTI_PURPLE_ONCE:I = 0x2d

.field public static final ID_MISSED_NOTI_RED:I = 0x1f

.field public static final ID_MISSED_NOTI_RED_ONCE:I = 0x2e

.field public static final ID_MISSED_NOTI_TURQUOISE:I = 0x1d

.field public static final ID_MISSED_NOTI_TURQUOISE_ONCE:I = 0x2c

.field public static final ID_MISSED_NOTI_YELLOW:I = 0x14

.field public static final ID_MISSED_NOTI_YELLOW_ONCE:I = 0x2b

.field public static final ID_POWER_OFF:I = 0x6

.field public static final ID_POWER_ON:I = 0x1

.field public static final ID_REAR_MISSED_NOTI:I = 0x24

.field public static final ID_SOUND_RECORDING:I = 0x22

.field public static final ID_STOP:I = 0x0

.field public static final ID_TANGILE_CONNECT:I = 0x21

.field public static final ID_URGENT_CALL_MISSED_NOTI:I = 0x25

.field public static final ID_URGENT_INCOMING_CALL:I = 0x30

.field public static final ID_VOLUME_DOWN:I = 0xd

.field public static final ID_VOLUME_UP:I = 0xc

.field public static final ONLY_BACK_LED_PLAY:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ONLY_FRONT_LED_PLAY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIORITY_DEFAULT:I = 0x0

.field public static final PRIORITY_HIGH:I = 0x1

.field public static final PRIORITY_LOW:I = -0x1

.field public static final PRIORITY_MAX:I = 0x2

.field public static final PRIORITY_MIN:I = -0x2

.field public static final SET_ALL_LED:I = 0x3

.field public static final SET_BACK_LED:I = 0x2

.field public static final SET_FRONT_LED:I = 0x1

.field public static final sMatchPathMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public color:I

.field public flags:I

.field public infinite:Z

.field public mExceptional:Z

.field public mNativeNotification:Z

.field public offMS:I

.field public onMS:I

.field public patternFilePath:Ljava/lang/String;

.field public patternId:I

.field public pkgName:Ljava/lang/String;

.field public priority:I

.field public recordId:I

.field public whichLedPlay:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 504
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    .line 506
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Power_On.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Lcd_On.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Charging.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Charging_Full.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Calendar_Reminder.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Power_Off.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Missed_Noti.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Alarm.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Incoming_Call01.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Incoming_Call02.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Incoming_Call03.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Volume_Up.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Volume_Down.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Favorite_Missed_Noti.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Missed_Noti_Pink.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Missed_Noti_Blue.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Missed_Noti_Orange.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Missed_Noti_Yellow.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Incoming_Call_Pink.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Incoming_Call_Blue.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Incoming_Call_Orange.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Incoming_Call_Yellow.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Incoming_Call_Turquoise.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Incoming_Call_Purple.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Incoming_Call_Red.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Incoming_Call_Lime.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Missed_Noti_Turquoise.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Missed_Noti_Purple.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Missed_Noti_Red.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Missed_Noti_Lime.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Tangible_Connect.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SoundRecording.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Calling.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Rear_Missed_Noti.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Urgent_Call_Missed_Noti.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Incoming_Call.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Missed_Noti_Once.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Missed_Noti_Once_Pink.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Missed_Noti_Once_Blue.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Missed_Noti_Once_Orange.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Missed_Noti_Once_Yellow.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Missed_Noti_Once_Turquoise.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Missed_Noti_Once_Purple.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Missed_Noti_Once_Red.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Missed_Noti_Once_Lime.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "UrgentIncomingCall.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Felica_On.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Gps_Enabled.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Knock_On.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    sget-object v0, Lcom/lge/systemservice/core/LGLedRecord;->sMatchPathMap:Ljava/util/Map;

    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Failed_CheckPassword.txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    new-instance v0, Lcom/lge/systemservice/core/LGLedRecord$1;

    invoke-direct {v0}, Lcom/lge/systemservice/core/LGLedRecord$1;-><init>()V

    sput-object v0, Lcom/lge/systemservice/core/LGLedRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 609
    iput v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->flags:I

    .line 616
    iput v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->patternId:I

    .line 623
    iput-object v2, p0, Lcom/lge/systemservice/core/LGLedRecord;->patternFilePath:Ljava/lang/String;

    .line 660
    iput v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->priority:I

    .line 667
    iput v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->recordId:I

    .line 675
    iput-object v2, p0, Lcom/lge/systemservice/core/LGLedRecord;->pkgName:Ljava/lang/String;

    .line 683
    iput-boolean v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->mExceptional:Z

    .line 691
    iput-boolean v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->mNativeNotification:Z

    .line 697
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->infinite:Z

    .line 705
    iput v3, p0, Lcom/lge/systemservice/core/LGLedRecord;->whichLedPlay:I

    .line 709
    iput v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->flags:I

    .line 710
    iput v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->patternId:I

    .line 711
    iput v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->color:I

    .line 712
    iput v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->onMS:I

    .line 713
    iput v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->offMS:I

    .line 714
    iput v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->priority:I

    .line 715
    iput v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->recordId:I

    .line 716
    iput-object v2, p0, Lcom/lge/systemservice/core/LGLedRecord;->pkgName:Ljava/lang/String;

    .line 717
    iput-boolean v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->mExceptional:Z

    .line 718
    iput-boolean v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->mNativeNotification:Z

    .line 719
    iput v3, p0, Lcom/lge/systemservice/core/LGLedRecord;->whichLedPlay:I

    .line 720
    iput-object v2, p0, Lcom/lge/systemservice/core/LGLedRecord;->patternFilePath:Ljava/lang/String;

    .line 721
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 609
    iput v2, p0, Lcom/lge/systemservice/core/LGLedRecord;->flags:I

    .line 616
    iput v2, p0, Lcom/lge/systemservice/core/LGLedRecord;->patternId:I

    .line 623
    iput-object v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->patternFilePath:Ljava/lang/String;

    .line 660
    iput v2, p0, Lcom/lge/systemservice/core/LGLedRecord;->priority:I

    .line 667
    iput v2, p0, Lcom/lge/systemservice/core/LGLedRecord;->recordId:I

    .line 675
    iput-object v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->pkgName:Ljava/lang/String;

    .line 683
    iput-boolean v2, p0, Lcom/lge/systemservice/core/LGLedRecord;->mExceptional:Z

    .line 691
    iput-boolean v2, p0, Lcom/lge/systemservice/core/LGLedRecord;->mNativeNotification:Z

    .line 697
    iput-boolean v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->infinite:Z

    .line 705
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->whichLedPlay:I

    .line 724
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->flags:I

    .line 725
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->patternId:I

    .line 726
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->color:I

    .line 727
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->onMS:I

    .line 728
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->offMS:I

    .line 729
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->priority:I

    .line 730
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->recordId:I

    .line 731
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->pkgName:Ljava/lang/String;

    .line 732
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->mExceptional:Z

    .line 733
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->mNativeNotification:Z

    .line 734
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->whichLedPlay:I

    .line 735
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->patternFilePath:Ljava/lang/String;

    .line 736
    return-void

    :cond_0
    move v0, v2

    .line 732
    goto :goto_0

    :cond_1
    move v1, v2

    .line 733
    goto :goto_1
.end method


# virtual methods
.method public clone()Lcom/lge/systemservice/core/LGLedRecord;
    .locals 2

    .prologue
    .line 740
    new-instance v0, Lcom/lge/systemservice/core/LGLedRecord;

    invoke-direct {v0}, Lcom/lge/systemservice/core/LGLedRecord;-><init>()V

    .line 741
    .local v0, "that":Lcom/lge/systemservice/core/LGLedRecord;
    iget v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->flags:I

    iput v1, v0, Lcom/lge/systemservice/core/LGLedRecord;->flags:I

    .line 742
    iget v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->patternId:I

    iput v1, v0, Lcom/lge/systemservice/core/LGLedRecord;->patternId:I

    .line 743
    iget v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->color:I

    iput v1, v0, Lcom/lge/systemservice/core/LGLedRecord;->color:I

    .line 744
    iget v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->onMS:I

    iput v1, v0, Lcom/lge/systemservice/core/LGLedRecord;->onMS:I

    .line 745
    iget v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->offMS:I

    iput v1, v0, Lcom/lge/systemservice/core/LGLedRecord;->offMS:I

    .line 746
    iget v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->priority:I

    iput v1, v0, Lcom/lge/systemservice/core/LGLedRecord;->priority:I

    .line 747
    iget v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->recordId:I

    iput v1, v0, Lcom/lge/systemservice/core/LGLedRecord;->recordId:I

    .line 748
    iget-object v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->pkgName:Ljava/lang/String;

    iput-object v1, v0, Lcom/lge/systemservice/core/LGLedRecord;->pkgName:Ljava/lang/String;

    .line 749
    iget-boolean v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->mExceptional:Z

    iput-boolean v1, v0, Lcom/lge/systemservice/core/LGLedRecord;->mExceptional:Z

    .line 750
    iget-boolean v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->mNativeNotification:Z

    iput-boolean v1, v0, Lcom/lge/systemservice/core/LGLedRecord;->mNativeNotification:Z

    .line 751
    iget v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->whichLedPlay:I

    iput v1, v0, Lcom/lge/systemservice/core/LGLedRecord;->whichLedPlay:I

    .line 752
    iget-object v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->patternFilePath:Ljava/lang/String;

    iput-object v1, v0, Lcom/lge/systemservice/core/LGLedRecord;->patternFilePath:Ljava/lang/String;

    .line 754
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/lge/systemservice/core/LGLedRecord;->clone()Lcom/lge/systemservice/core/LGLedRecord;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 777
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 759
    instance-of v2, p1, Lcom/lge/systemservice/core/LGLedRecord;

    if-nez v2, :cond_1

    .line 761
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 760
    check-cast v0, Lcom/lge/systemservice/core/LGLedRecord;

    .line 761
    .local v0, "r":Lcom/lge/systemservice/core/LGLedRecord;
    iget v2, p0, Lcom/lge/systemservice/core/LGLedRecord;->flags:I

    iget v3, v0, Lcom/lge/systemservice/core/LGLedRecord;->flags:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/lge/systemservice/core/LGLedRecord;->patternId:I

    iget v3, v0, Lcom/lge/systemservice/core/LGLedRecord;->patternId:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/lge/systemservice/core/LGLedRecord;->color:I

    iget v3, v0, Lcom/lge/systemservice/core/LGLedRecord;->color:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/lge/systemservice/core/LGLedRecord;->onMS:I

    iget v3, v0, Lcom/lge/systemservice/core/LGLedRecord;->onMS:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/lge/systemservice/core/LGLedRecord;->offMS:I

    iget v3, v0, Lcom/lge/systemservice/core/LGLedRecord;->offMS:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/lge/systemservice/core/LGLedRecord;->priority:I

    iget v3, v0, Lcom/lge/systemservice/core/LGLedRecord;->priority:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/lge/systemservice/core/LGLedRecord;->recordId:I

    iget v3, v0, Lcom/lge/systemservice/core/LGLedRecord;->recordId:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/lge/systemservice/core/LGLedRecord;->pkgName:Ljava/lang/String;

    if-nez v2, :cond_2

    :goto_1
    iget-boolean v2, p0, Lcom/lge/systemservice/core/LGLedRecord;->mExceptional:Z

    iget-boolean v3, v0, Lcom/lge/systemservice/core/LGLedRecord;->mExceptional:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/lge/systemservice/core/LGLedRecord;->mNativeNotification:Z

    iget-boolean v3, v0, Lcom/lge/systemservice/core/LGLedRecord;->mNativeNotification:Z

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/lge/systemservice/core/LGLedRecord;->whichLedPlay:I

    iget v3, v0, Lcom/lge/systemservice/core/LGLedRecord;->whichLedPlay:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/lge/systemservice/core/LGLedRecord;->patternFilePath:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/lge/systemservice/core/LGLedRecord;->pkgName:Ljava/lang/String;

    iget-object v3, v0, Lcom/lge/systemservice/core/LGLedRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/lge/systemservice/core/LGLedRecord;->patternFilePath:Ljava/lang/String;

    iget-object v3, v0, Lcom/lge/systemservice/core/LGLedRecord;->patternFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LGLedRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " patternId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->patternId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->color:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " recordId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->recordId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " infinite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->infinite:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mExceptional="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->mExceptional:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNativeNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->mNativeNotification:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " whichLedPlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->whichLedPlay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " patternFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/systemservice/core/LGLedRecord;->patternFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 782
    iget v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 783
    iget v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->patternId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 784
    iget v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 785
    iget v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->onMS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 786
    iget v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->offMS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 787
    iget v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 788
    iget v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->recordId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 789
    iget-object v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 790
    iget-boolean v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->mExceptional:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 791
    iget-boolean v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->mNativeNotification:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 792
    iget v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->whichLedPlay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 793
    iget-object v0, p0, Lcom/lge/systemservice/core/LGLedRecord;->patternFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 794
    return-void

    :cond_0
    move v0, v2

    .line 790
    goto :goto_0

    :cond_1
    move v1, v2

    .line 791
    goto :goto_1
.end method
