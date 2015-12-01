.class public Lcom/lge/camera/util/DialogCreater;
.super Ljava/lang/Object;
.source "DialogCreater.java"


# static fields
.field public static final DIALOG_ID_AU_CLOUD:I = 0x1c

.field public static final DIALOG_ID_CAMERA_DRIVER_NEED_RESET:I = 0x13

.field public static final DIALOG_ID_CANNOT_CONNECT_CAMERA:I = 0x12

.field public static final DIALOG_ID_DELETE_CONFIRM:I = 0x3

.field public static final DIALOG_ID_DELETE_CONFIRM_MULTI:I = 0x8

.field public static final DIALOG_ID_DELETE_CONFIRM_VIDEO:I = 0x9

.field public static final DIALOG_ID_DELETE_DONE:I = 0x4

.field public static final DIALOG_ID_ENABLE_GALLERY:I = 0x18

.field public static final DIALOG_ID_EULA_POPUP:I = 0x17

.field public static final DIALOG_ID_EXTERNAL_ADD_STORAGE_FULL:I = 0xb

.field public static final DIALOG_ID_EXTERNAL_NOTIFICATION:I = 0xd

.field public static final DIALOG_ID_EXTERNAL_STORAGE_FULL:I = 0x1

.field public static final DIALOG_ID_GEO_TAG:I = 0xa

.field public static final DIALOG_ID_HELP_AUDIOZOOM:I = 0x72

.field public static final DIALOG_ID_HELP_BEAUTY_SHOT:I = 0x69

.field public static final DIALOG_ID_HELP_BURST_SHOT:I = 0x6d

.field public static final DIALOG_ID_HELP_CLEAR_SHOT:I = 0x73

.field public static final DIALOG_ID_HELP_CONTINUOUS_SHOT:I = 0x68

.field public static final DIALOG_ID_HELP_DUAL_CAMERA:I = 0x74

.field public static final DIALOG_ID_HELP_DUAL_RECORDING:I = 0x70

.field public static final DIALOG_ID_HELP_END_INDEX:I = 0x7e

.field public static final DIALOG_ID_HELP_FACE_TRACKING_LED:I = 0x79

.field public static final DIALOG_ID_HELP_FREE_PANORAMA:I = 0x6c

.field public static final DIALOG_ID_HELP_GESTURESHOT:I = 0x7d

.field public static final DIALOG_ID_HELP_HDR:I = 0x65

.field public static final DIALOG_ID_HELP_HDR_MOVIE:I = 0x76

.field public static final DIALOG_ID_HELP_INTELLIGENT_AUTO_MODE:I = 0x6e

.field public static final DIALOG_ID_HELP_LIGHT_FRAME:I = 0x7b

.field public static final DIALOG_ID_HELP_LIVE_EFFECT:I = 0x6b

.field public static final DIALOG_ID_HELP_NIGHT:I = 0x78

.field public static final DIALOG_ID_HELP_PANORAMA:I = 0x66

.field public static final DIALOG_ID_HELP_PLANE_PANORAMA:I = 0x7a

.field public static final DIALOG_ID_HELP_REFOCUS:I = 0x7c

.field public static final DIALOG_ID_HELP_SMART_ZOOM_RECORDING:I = 0x75

.field public static final DIALOG_ID_HELP_SPORTS:I = 0x77

.field public static final DIALOG_ID_HELP_START_INDEX:I = 0x64

.field public static final DIALOG_ID_HELP_TIMEMACHINE:I = 0x67

.field public static final DIALOG_ID_HELP_UPLUS_BOX:I = 0x71

.field public static final DIALOG_ID_HELP_VOICE_PHOTO:I = 0x6a

.field public static final DIALOG_ID_HELP_WDR_MOVIE:I = 0x6f

.field public static final DIALOG_ID_INITIALIZE_CONFIG:I = 0x6

.field public static final DIALOG_ID_INTERNAL_NOTIFICATION:I = 0xc

.field public static final DIALOG_ID_NO_DELETE_SELECT:I = 0xf

.field public static final DIALOG_ID_NO_EXTERNAL:I = 0x0

.field public static final DIALOG_ID_NO_EXTERNAL_STORAGE:I = 0x7

.field public static final DIALOG_ID_PROGRESS:I = 0x16

.field public static final DIALOG_ID_RENAME:I = 0x5

.field public static final DIALOG_ID_SAVING_PROGRESS:I = 0x1b

.field public static final DIALOG_ID_SELECT_MEMORY:I = 0x1a

.field public static final DIALOG_ID_SELECT_VIDEO_LENGTH:I = 0x10

.field public static final DIALOG_ID_SETAS_LIST:I = 0x15

.field public static final DIALOG_ID_SHARE_LIST:I = 0x14

.field public static final DIALOG_ID_STORAGE_CONNECTED_PC:I = 0x11

.field public static final DIALOG_ID_STORAGE_FULL:I = 0xe

.field public static final DIALOG_ID_STORAGE_FULL_SAVE:I = 0x2

.field private static final DIALOG_ID_TEST:I = 0x63

.field public static final DIALOG_ID_TIMEMACHINE_WARNING:I = 0x19

.field private static mHelpDialogId:[[Ljava/lang/String;

.field private static mHelpPopupID:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 91
    const/16 v0, 0x19

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "hdr"

    aput-object v2, v1, v4

    const/16 v2, 0x65

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "panorama"

    aput-object v2, v1, v4

    const/16 v2, 0x66

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "free_panorama"

    aput-object v2, v1, v4

    const/16 v2, 0x6c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "timemachine"

    aput-object v3, v2, v4

    const/16 v3, 0x67

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "continuous"

    aput-object v3, v2, v4

    const/16 v3, 0x68

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "beauty_shot"

    aput-object v3, v2, v4

    const/16 v3, 0x69

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "voice_photo"

    aput-object v3, v2, v4

    const/16 v3, 0x6a

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "live_effect"

    aput-object v3, v2, v4

    const/16 v3, 0x6b

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "uplus_box"

    aput-object v3, v2, v4

    const/16 v3, 0x71

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "burst"

    aput-object v3, v2, v4

    const/16 v3, 0x6d

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "smart_camera_mode"

    aput-object v3, v2, v4

    const/16 v3, 0x6e

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wdr"

    aput-object v3, v2, v4

    const/16 v3, 0x6f

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dual_recording"

    aput-object v3, v2, v4

    const/16 v3, 0x70

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "audiozoom"

    aput-object v3, v2, v4

    const/16 v3, 0x72

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "clear_shot"

    aput-object v3, v2, v4

    const/16 v3, 0x73

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dual_camera"

    aput-object v3, v2, v4

    const/16 v3, 0x74

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "smart_zoom"

    aput-object v3, v2, v4

    const/16 v3, 0x75

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "hdr_movie"

    aput-object v3, v2, v4

    const/16 v3, 0x76

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sports"

    aput-object v3, v2, v4

    const/16 v3, 0x77

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "night"

    aput-object v3, v2, v4

    const/16 v3, 0x78

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "face_tracking"

    aput-object v3, v2, v4

    const/16 v3, 0x79

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "plane_panorama"

    aput-object v3, v2, v4

    const/16 v3, 0x7a

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "light_frame"

    aput-object v3, v2, v4

    const/16 v3, 0x7b

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "refocus"

    aput-object v3, v2, v4

    const/16 v3, 0x7c

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "gestureshot"

    aput-object v3, v2, v4

    const/16 v3, 0x7d

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpDialogId:[[Ljava/lang/String;

    .line 140
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;I)Landroid/app/Dialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 523
    move-object v0, p0

    move v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->create(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Object;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "listener1"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const/4 v3, 0x0

    .line 528
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->create(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Object;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "listener1"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "listener2"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const/4 v4, 0x0

    .line 534
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->create(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Object;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "listener1"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "listener2"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "listener3"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 541
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->create(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Object;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Object;)Landroid/app/Dialog;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "listener1"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "listener2"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "listener3"    # Landroid/content/DialogInterface$OnClickListener;
    .param p5, "arg1"    # Ljava/lang/Object;

    .prologue
    const v7, 0x7f0a003c

    const v6, 0x7f0a003b

    const v3, 0x1010355

    const v5, 0x7f0a003a

    const v4, 0x7f0a002f

    .line 549
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 551
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sparse-switch p1, :sswitch_data_0

    .line 666
    const/4 v2, 0x0

    .line 669
    .end local p5    # "arg1":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 554
    .restart local p5    # "arg1":Ljava/lang/Object;
    :sswitch_0
    const v2, 0x7f0a0080

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0083

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 669
    .end local p5    # "arg1":Ljava/lang/Object;
    :cond_0
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 562
    .restart local p5    # "arg1":Ljava/lang/Object;
    :sswitch_1
    const v2, 0x7f0a0080

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0072

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 570
    :sswitch_2
    const v2, 0x7f0a0081

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 574
    :sswitch_3
    if-eqz p0, :cond_0

    .line 575
    const v2, 0x7f0a0181

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a02e1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 583
    :sswitch_4
    const v2, 0x7f0a0181

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a02cf

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 590
    :sswitch_5
    if-eqz p0, :cond_0

    .line 591
    const v2, 0x7f0a0181

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a02e2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 599
    :sswitch_6
    const v2, 0x7f0a0185

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 603
    :sswitch_7
    const v2, 0x7f0a0180

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    check-cast p5, Landroid/view/View;

    .end local p5    # "arg1":Ljava/lang/Object;
    invoke-virtual {v2, p5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 610
    .restart local p5    # "arg1":Ljava/lang/Object;
    :sswitch_8
    const v2, 0x7f0a0033

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    check-cast p5, Landroid/view/View;

    .end local p5    # "arg1":Ljava/lang/Object;
    invoke-virtual {v2, p5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0039

    invoke-virtual {v2, v3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 617
    .restart local p5    # "arg1":Ljava/lang/Object;
    :sswitch_9
    const v2, 0x7f0a0048

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 621
    :sswitch_a
    const v2, 0x7f0a02e3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a02e4

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0233

    invoke-virtual {v2, v3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 628
    :sswitch_b
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 629
    .local v1, "et":Landroid/widget/EditText;
    const-string v2, "Pick a color"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 637
    .end local v1    # "et":Landroid/widget/EditText;
    :sswitch_c
    const v2, 0x7f0a007f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    check-cast p5, Landroid/view/View;

    .end local p5    # "arg1":Ljava/lang/Object;
    invoke-virtual {v2, p5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 645
    .restart local p5    # "arg1":Ljava/lang/Object;
    :sswitch_d
    const v2, 0x7f0a007f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 652
    :sswitch_e
    const v2, 0x7f0a02e8

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a02e6

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 659
    :sswitch_f
    const v2, 0x7f0a011b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a007d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 551
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_6
        0x5 -> :sswitch_7
        0x6 -> :sswitch_8
        0x7 -> :sswitch_9
        0x8 -> :sswitch_4
        0x9 -> :sswitch_5
        0xa -> :sswitch_a
        0xb -> :sswitch_0
        0xc -> :sswitch_c
        0xd -> :sswitch_c
        0xe -> :sswitch_0
        0xf -> :sswitch_d
        0x18 -> :sswitch_e
        0x1a -> :sswitch_f
        0x63 -> :sswitch_b
    .end sparse-switch
.end method

.method public static getHelpDialogId(Ljava/lang/String;)I
    .locals 6
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 123
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpDialogId:[[Ljava/lang/String;

    .local v0, "arr$":[[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 124
    .local v1, "dialog":[Ljava/lang/String;
    aget-object v5, v1, v4

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 125
    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 128
    .end local v1    # "dialog":[Ljava/lang/String;
    :cond_0
    return v4

    .line 123
    .restart local v1    # "dialog":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getHelpDialogKeyValue(I)Ljava/lang/String;
    .locals 5
    .param p0, "dialogId"    # I

    .prologue
    .line 132
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpDialogId:[[Ljava/lang/String;

    .local v0, "arr$":[[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 133
    .local v1, "dialog":[Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 134
    const/4 v4, 0x0

    aget-object v4, v1, v4

    .line 137
    .end local v1    # "dialog":[Ljava/lang/String;
    :goto_1
    return-object v4

    .line 132
    .restart local v1    # "dialog":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    .end local v1    # "dialog":[Ljava/lang/String;
    :cond_1
    const-string v4, "not found"

    goto :goto_1
.end method

.method public static getHelpItemResources(II)[I
    .locals 6
    .param p0, "popupId"    # I
    .param p1, "cameraId"    # I

    .prologue
    const/4 v5, 0x1

    .line 196
    const/4 v2, 0x0

    .line 197
    .local v2, "titleId":I
    const/4 v1, 0x0

    .line 198
    .local v1, "messageTextId":I
    const/4 v0, 0x0

    .line 200
    .local v0, "messageImageId":I
    packed-switch p0, :pswitch_data_0

    .line 361
    const/4 v2, 0x0

    .line 362
    const/4 v1, 0x0

    .line 363
    const/4 v0, 0x0

    .line 366
    :goto_0
    const/4 v3, 0x3

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    aput v1, v3, v5

    const/4 v4, 0x2

    aput v0, v3, v4

    return-object v3

    .line 202
    :pswitch_0
    const v2, 0x7f0a0371

    .line 203
    const v1, 0x7f0a0388

    .line 204
    const v0, 0x7f0203b3

    .line 205
    goto :goto_0

    .line 208
    :pswitch_1
    const v2, 0x7f0a0372

    .line 209
    const v1, 0x7f0a0389

    .line 210
    const v0, 0x7f0203ba

    .line 211
    goto :goto_0

    .line 214
    :pswitch_2
    const v2, 0x7f0a0373

    .line 215
    const v1, 0x7f0a038d

    .line 216
    const v0, 0x7f0203b1

    .line 217
    goto :goto_0

    .line 220
    :pswitch_3
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useTimeCatchShotTitle()Z

    move-result v3

    if-nez v3, :cond_0

    .line 221
    const v2, 0x7f0a0378

    .line 222
    const v1, 0x7f0a0391

    .line 227
    :goto_1
    const v0, 0x7f0203c0

    .line 228
    goto :goto_0

    .line 224
    :cond_0
    const v2, 0x7f0a0379

    .line 225
    const v1, 0x7f0a0392

    goto :goto_1

    .line 231
    :pswitch_4
    const v2, 0x7f0a037f

    .line 232
    const v1, 0x7f0a02d3

    .line 233
    const v0, 0x7f0203ae

    .line 234
    goto :goto_0

    .line 237
    :pswitch_5
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v3

    const/16 v4, 0x13

    if-ne v3, v4, :cond_1

    .line 238
    const v2, 0x7f0a0376

    .line 239
    const v1, 0x7f0a0321

    .line 244
    :goto_2
    if-ne p1, v5, :cond_2

    .line 245
    const v0, 0x7f0203ab

    goto :goto_0

    .line 241
    :cond_1
    const v2, 0x7f0a0375

    .line 242
    const v1, 0x7f0a0390

    goto :goto_2

    .line 247
    :cond_2
    const v0, 0x7f0203b8

    .line 249
    goto :goto_0

    .line 252
    :pswitch_6
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useCheeseShutterTitle()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 253
    const v2, 0x7f0a0383

    .line 254
    const v1, 0x7f0a0148

    .line 259
    :goto_3
    const v0, 0x7f0203c2

    .line 260
    goto :goto_0

    .line 256
    :cond_3
    const v2, 0x7f0a0382

    .line 257
    const v1, 0x7f0a0147

    goto :goto_3

    .line 263
    :pswitch_7
    const v2, 0x7f0a037e

    .line 264
    const v1, 0x7f0a0395

    .line 265
    const v0, 0x7f0203b7

    .line 266
    goto/16 :goto_0

    .line 269
    :pswitch_8
    const v2, 0x7f0a0384

    .line 270
    const v1, 0x7f0a0132

    .line 271
    const v0, 0x7f0203c1

    .line 272
    goto/16 :goto_0

    .line 275
    :pswitch_9
    const v2, 0x7f0a0374

    .line 276
    const v1, 0x7f0a038f

    .line 277
    const v0, 0x7f0203ac

    .line 278
    goto/16 :goto_0

    .line 281
    :pswitch_a
    const v2, 0x7f0a037a

    .line 282
    const v1, 0x7f0a0393

    .line 283
    const v0, 0x7f0203b5

    .line 284
    goto/16 :goto_0

    .line 287
    :pswitch_b
    const v2, 0x7f0a0381

    .line 288
    const v1, 0x7f0a0397

    .line 289
    const v0, 0x7f0203c3

    .line 290
    goto/16 :goto_0

    .line 293
    :pswitch_c
    const v2, 0x7f0a037d

    .line 294
    const v1, 0x7f0a0394

    .line 295
    const v0, 0x7f0203af

    .line 296
    goto/16 :goto_0

    .line 298
    :pswitch_d
    const v2, 0x7f0a0385

    .line 299
    const v1, 0x7f0a030d

    .line 300
    const v0, 0x7f0203aa

    .line 301
    goto/16 :goto_0

    .line 303
    :pswitch_e
    const v2, 0x7f0a0370

    .line 304
    const v1, 0x7f0a0387

    .line 305
    const v0, 0x7f0203ad

    .line 306
    goto/16 :goto_0

    .line 308
    :pswitch_f
    const v2, 0x7f0a0377

    .line 309
    const v1, 0x7f0a0394

    .line 310
    const v0, 0x7f0203af

    .line 311
    goto/16 :goto_0

    .line 313
    :pswitch_10
    const v2, 0x7f0a0386

    .line 314
    const v1, 0x7f0a0313

    .line 315
    const v0, 0x7f0203bd

    .line 316
    goto/16 :goto_0

    .line 318
    :pswitch_11
    const v2, 0x7f0a0380

    .line 319
    const v1, 0x7f0a0396

    .line 320
    const v0, 0x7f0203b4

    .line 321
    goto/16 :goto_0

    .line 323
    :pswitch_12
    const v2, 0x7f0a037b

    .line 324
    const v1, 0x7f0a029b

    .line 325
    const v0, 0x7f0203be

    .line 326
    goto/16 :goto_0

    .line 328
    :pswitch_13
    const v2, 0x7f0a037c

    .line 329
    const v1, 0x7f0a036b

    .line 330
    const v0, 0x7f0203b9

    .line 331
    goto/16 :goto_0

    .line 333
    :pswitch_14
    const v2, 0x7f0a0399

    .line 334
    const v1, 0x7f0a039a

    .line 335
    const v0, 0x7f0203b0

    .line 337
    goto/16 :goto_0

    .line 339
    :pswitch_15
    const v2, 0x7f0a0372

    .line 340
    const v1, 0x7f0a038a

    .line 341
    const v0, 0x7f0203bb

    .line 342
    goto/16 :goto_0

    .line 344
    :pswitch_16
    const v2, 0x7f0a0128

    .line 345
    const v1, 0x7f0a038e

    .line 346
    const v0, 0x7f0203b6

    .line 347
    goto/16 :goto_0

    .line 350
    :pswitch_17
    const v2, 0x7f0a03b0

    .line 351
    const v1, 0x7f0a03b2

    .line 352
    const v0, 0x7f0203bc

    .line 353
    goto/16 :goto_0

    .line 356
    :pswitch_18
    const v2, 0x7f0a03bb

    .line 357
    const v1, 0x7f0a03bc

    .line 358
    const v0, 0x7f0203b2

    .line 359
    goto/16 :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_8
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method public static getHelpPopupID(I)I
    .locals 1
    .param p0, "menuItem"    # I

    .prologue
    .line 192
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    goto :goto_0
.end method

.method public static getHorizontalHelpDialogWidth(Landroid/content/Context;Z)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "useVoice"    # Z

    .prologue
    const/high16 v0, 0x43e60000    # 460.0f

    .line 516
    if-eqz p0, :cond_1

    .line 517
    if-eqz p1, :cond_0

    :cond_0
    invoke-static {p0, v0}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 519
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeHelpDialog()V
    .locals 6

    .prologue
    const/16 v5, 0x6a

    const/16 v4, 0x69

    const/16 v3, 0x67

    .line 143
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    .line 145
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0352

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 146
    sget-object v1, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v2, 0x7f0a00fe

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isPlanePanoramaSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x7a

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 149
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isTimeMachinShotSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useTimeCatchShotTitle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0a02f1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 158
    :cond_0
    :goto_1
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0a00fa

    const/16 v2, 0x68

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 159
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_3

    .line 160
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0320

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 164
    :goto_2
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0281

    const/16 v2, 0x6b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 165
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0131

    const/16 v2, 0x71

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 166
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0104

    const/16 v2, 0x6d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 167
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0a02fe

    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 168
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0106

    const/16 v2, 0x6f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 169
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0a025f

    const/16 v2, 0x73

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 170
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0107

    const/16 v2, 0x76

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 171
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0a00d4

    const/16 v2, 0x77

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 172
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0a00d5

    const/16 v2, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 174
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0102

    const/16 v2, 0x6c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 175
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useCheeseShutterTitle()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 176
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0a013a

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 180
    :goto_3
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0282

    const/16 v2, 0x70

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 181
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0286

    const/16 v2, 0x72

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 182
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0267

    const/16 v2, 0x74

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 183
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0284

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 184
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0125

    const/16 v2, 0x79

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 185
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0128

    const/16 v2, 0x7b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 187
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0a03af

    const/16 v2, 0x7c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 188
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0a03b9

    const/16 v2, 0x7d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 189
    return-void

    .line 146
    :cond_1
    const/16 v0, 0x66

    goto/16 :goto_0

    .line 154
    :cond_2
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0263

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_1

    .line 162
    :cond_3
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0262

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_2

    .line 178
    :cond_4
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0135

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_3
.end method

.method public static setCommandLayout(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "isLand"    # Z

    .prologue
    const/16 v9, 0x8

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x2

    .line 373
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    if-eqz p2, :cond_2

    const v0, 0x7f0902ac

    invoke-static {p0, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    .line 383
    .local v2, "viewWidth":I
    :goto_1
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportVoiceShutterAME()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 384
    if-eqz p2, :cond_3

    const/high16 v0, 0x430c0000    # 140.0f

    :goto_2
    invoke-static {p0, v0}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 386
    const v3, 0x7f0d0234

    move-object v5, v6

    check-cast v5, [[I

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    .line 389
    const v3, 0x7f0d0238

    new-array v5, v8, [[I

    new-array v0, v7, [I

    fill-array-data v0, :array_0

    aput-object v0, v5, v4

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    .line 393
    const v3, 0x7f0d0240

    new-array v5, v7, [[I

    new-array v0, v7, [I

    fill-array-data v0, :array_1

    aput-object v0, v5, v4

    new-array v0, v7, [I

    fill-array-data v0, :array_2

    aput-object v0, v5, v8

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    .line 398
    const v3, 0x7f0d0244

    new-array v5, v7, [[I

    new-array v0, v7, [I

    fill-array-data v0, :array_3

    aput-object v0, v5, v4

    new-array v0, v7, [I

    fill-array-data v0, :array_4

    aput-object v0, v5, v8

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    .line 403
    const v3, 0x7f0d023c

    move-object v5, v6

    check-cast v5, [[I

    move-object v0, p0

    move-object v1, p1

    move v4, v9

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    .line 405
    const v3, 0x7f0d0248

    move-object v5, v6

    check-cast v5, [[I

    move-object v0, p0

    move-object v1, p1

    move v4, v9

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    goto :goto_0

    .line 377
    .end local v2    # "viewWidth":I
    :cond_2
    const v0, 0x7f0902ad

    invoke-static {p0, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    goto :goto_1

    .line 384
    .restart local v2    # "viewWidth":I
    :cond_3
    const/high16 v0, 0x431c0000    # 156.0f

    goto :goto_2

    .line 408
    :cond_4
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportVoiceShutterJapanese()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 409
    if-eqz p2, :cond_5

    const/high16 v0, 0x42dc0000    # 110.0f

    :goto_3
    invoke-static {p0, v0}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 411
    const v3, 0x7f0d0234

    move-object v5, v6

    check-cast v5, [[I

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    .line 414
    const v3, 0x7f0d0238

    new-array v5, v8, [[I

    new-array v0, v7, [I

    fill-array-data v0, :array_5

    aput-object v0, v5, v4

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    .line 418
    const v3, 0x7f0d0244

    new-array v5, v7, [[I

    new-array v0, v7, [I

    fill-array-data v0, :array_6

    aput-object v0, v5, v4

    new-array v0, v7, [I

    fill-array-data v0, :array_7

    aput-object v0, v5, v8

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    .line 423
    const v3, 0x7f0d0248

    new-array v5, v7, [[I

    new-array v0, v7, [I

    fill-array-data v0, :array_8

    aput-object v0, v5, v4

    new-array v0, v7, [I

    fill-array-data v0, :array_9

    aput-object v0, v5, v8

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    .line 428
    const v3, 0x7f0d023c

    move-object v5, v6

    check-cast v5, [[I

    move-object v0, p0

    move-object v1, p1

    move v4, v9

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    .line 430
    const v3, 0x7f0d0240

    move-object v5, v6

    check-cast v5, [[I

    move-object v0, p0

    move-object v1, p1

    move v4, v9

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    goto/16 :goto_0

    .line 409
    :cond_5
    const/high16 v0, 0x431c0000    # 156.0f

    goto :goto_3

    .line 434
    :cond_6
    const v3, 0x7f0d0234

    move-object v5, v6

    check-cast v5, [[I

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    .line 437
    if-eqz p2, :cond_7

    .line 438
    const v3, 0x7f0d0238

    new-array v5, v8, [[I

    new-array v0, v7, [I

    fill-array-data v0, :array_a

    aput-object v0, v5, v4

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    .line 446
    const v3, 0x7f0d023c

    new-array v5, v7, [[I

    new-array v0, v7, [I

    fill-array-data v0, :array_b

    aput-object v0, v5, v4

    new-array v0, v7, [I

    fill-array-data v0, :array_c

    aput-object v0, v5, v8

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    .line 451
    const v3, 0x7f0d0240

    new-array v5, v7, [[I

    new-array v0, v7, [I

    fill-array-data v0, :array_d

    aput-object v0, v5, v4

    new-array v0, v7, [I

    fill-array-data v0, :array_e

    aput-object v0, v5, v8

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    .line 456
    const v3, 0x7f0d0244

    new-array v5, v7, [[I

    new-array v0, v7, [I

    fill-array-data v0, :array_f

    aput-object v0, v5, v4

    new-array v0, v7, [I

    fill-array-data v0, :array_10

    aput-object v0, v5, v8

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    .line 484
    :goto_4
    const v3, 0x7f0d0248

    const/4 v4, 0x4

    move-object v5, v6

    check-cast v5, [[I

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    goto/16 :goto_0

    .line 461
    :cond_7
    const v3, 0x7f0d0238

    new-array v5, v8, [[I

    new-array v0, v7, [I

    fill-array-data v0, :array_11

    aput-object v0, v5, v4

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    .line 469
    const v3, 0x7f0d023c

    new-array v5, v7, [[I

    new-array v0, v7, [I

    fill-array-data v0, :array_12

    aput-object v0, v5, v4

    new-array v0, v7, [I

    fill-array-data v0, :array_13

    aput-object v0, v5, v8

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    .line 474
    const v3, 0x7f0d0240

    new-array v5, v7, [[I

    new-array v0, v7, [I

    fill-array-data v0, :array_14

    aput-object v0, v5, v4

    new-array v0, v7, [I

    fill-array-data v0, :array_15

    aput-object v0, v5, v8

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    .line 479
    const v3, 0x7f0d0244

    new-array v5, v7, [[I

    new-array v0, v7, [I

    fill-array-data v0, :array_16

    aput-object v0, v5, v4

    new-array v0, v7, [I

    fill-array-data v0, :array_17

    aput-object v0, v5, v8

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    goto :goto_4

    .line 389
    nop

    :array_0
    .array-data 4
        0x11
        0x7f0d0234
    .end array-data

    .line 393
    :array_1
    .array-data 4
        0x11
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x7f0d0234
    .end array-data

    .line 398
    :array_3
    .array-data 4
        0x11
        0x7f0d0240
    .end array-data

    :array_4
    .array-data 4
        0x3
        0x7f0d0238
    .end array-data

    .line 414
    :array_5
    .array-data 4
        0x11
        0x7f0d0234
    .end array-data

    .line 418
    :array_6
    .array-data 4
        0x11
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x3
        0x7f0d0234
    .end array-data

    .line 423
    :array_8
    .array-data 4
        0x11
        0x7f0d0244
    .end array-data

    :array_9
    .array-data 4
        0x3
        0x7f0d0238
    .end array-data

    .line 438
    :array_a
    .array-data 4
        0x11
        0x7f0d0234
    .end array-data

    .line 446
    :array_b
    .array-data 4
        0x11
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x3
        0x7f0d0234
    .end array-data

    .line 451
    :array_d
    .array-data 4
        0x11
        0x7f0d023c
    .end array-data

    :array_e
    .array-data 4
        0x3
        0x7f0d0238
    .end array-data

    .line 456
    :array_f
    .array-data 4
        0x11
        0x0
    .end array-data

    :array_10
    .array-data 4
        0x3
        0x7f0d023c
    .end array-data

    .line 461
    :array_11
    .array-data 4
        0x11
        0x7f0d0234
    .end array-data

    .line 469
    :array_12
    .array-data 4
        0x3
        0x0
    .end array-data

    :array_13
    .array-data 4
        0x11
        0x7f0d0238
    .end array-data

    .line 474
    :array_14
    .array-data 4
        0x11
        0x0
    .end array-data

    :array_15
    .array-data 4
        0x3
        0x7f0d0234
    .end array-data

    .line 479
    :array_16
    .array-data 4
        0x11
        0x7f0d0240
    .end array-data

    :array_17
    .array-data 4
        0x3
        0x7f0d0238
    .end array-data
.end method

.method public static setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "viewWidth"    # I
    .param p3, "commandLayoutId"    # I
    .param p4, "visible"    # I
    .param p5, "addRule"    # [[I

    .prologue
    .line 492
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-gtz p3, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 498
    .local v1, "commandView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 499
    invoke-virtual {v1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 500
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 502
    .local v0, "commandParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v0, :cond_0

    .line 503
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 504
    invoke-static {v0}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 505
    if-nez p4, :cond_2

    if-eqz p5, :cond_2

    .line 506
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, p5

    if-ge v2, v3, :cond_2

    .line 507
    aget-object v3, p5, v2

    const/4 v4, 0x0

    aget v3, v3, v4

    aget-object v4, p5, v2

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 506
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 510
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
