.class public final Lcom/lge/camera/properties/MmsProperties;
.super Ljava/lang/Object;
.source "MmsProperties.java"


# static fields
.field private static final MMS_RESOLUTION_LIMITS:[[Ljava/lang/String;

.field private static final MMS_RESOLUTION_LIMITS_QCIF:[Ljava/lang/String;

.field private static final MMS_RESOLUTION_LIMITS_QVGA:[Ljava/lang/String;

.field private static final MMS_RESOLUTION_LIMITS_VGA:[Ljava/lang/String;

.field private static final MMS_RESOLUTION_NOT_SUPPORT:[Ljava/lang/String;

.field private static final MmsVideoMinimumSize:[J

.field private static final MmsVideoSizeLimit:[J

.field private static mMmsResolutions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/16 v7, 0x22

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 17
    new-array v0, v7, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lge/camera/properties/MmsProperties;->MmsVideoMinimumSize:[J

    .line 98
    new-array v0, v7, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "320x240"

    aput-object v2, v1, v4

    const-string v2, "176x144"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "320x240"

    aput-object v2, v1, v4

    const-string v2, "176x144"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "320x240"

    aput-object v2, v1, v4

    const-string v2, "176x144"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "320x240"

    aput-object v2, v1, v4

    const-string v2, "176x144"

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x4

    new-array v2, v4, [Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "176x144"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "320x240"

    aput-object v3, v2, v4

    const-string v3, "176x144"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "320x240"

    aput-object v3, v2, v4

    const-string v3, "176x144"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "320x240"

    aput-object v3, v2, v4

    const-string v3, "176x144"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "320x240"

    aput-object v3, v2, v4

    const-string v3, "176x144"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "176x144"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "320x240"

    aput-object v3, v2, v4

    const-string v3, "176x144"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "176x144"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "320x240"

    aput-object v3, v2, v4

    const-string v3, "176x144"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "320x240"

    aput-object v3, v2, v4

    const-string v3, "176x144"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "320x240"

    aput-object v3, v2, v4

    const-string v3, "176x144"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "320x240"

    aput-object v3, v2, v4

    const-string v3, "176x144"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "320x240"

    aput-object v3, v2, v4

    const-string v3, "176x144"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "320x240"

    aput-object v3, v2, v4

    const-string v3, "176x144"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "320x240"

    aput-object v3, v2, v4

    const-string v3, "176x144"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "176x144"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "320x240"

    aput-object v3, v2, v4

    const-string v3, "176x144"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "320x240"

    aput-object v3, v2, v4

    const-string v3, "176x144"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "320x240"

    aput-object v3, v2, v4

    const-string v3, "176x144"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "320x240"

    aput-object v3, v2, v4

    const-string v3, "176x144"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "320x240"

    aput-object v3, v2, v4

    const-string v3, "176x144"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "320x240"

    aput-object v3, v2, v4

    const-string v3, "176x144"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "320x240"

    aput-object v3, v2, v4

    const-string v3, "176x144"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "320x240"

    aput-object v3, v2, v4

    const-string v3, "176x144"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "320x240"

    aput-object v3, v2, v4

    const-string v3, "176x144"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "320x240"

    aput-object v3, v2, v4

    const-string v3, "176x144"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v4, [Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v4, [Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/camera/properties/MmsProperties;->MMS_RESOLUTION_LIMITS:[[Ljava/lang/String;

    .line 136
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/camera/properties/MmsProperties;->mMmsResolutions:[Ljava/lang/String;

    .line 137
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "176x144"

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/camera/properties/MmsProperties;->MMS_RESOLUTION_LIMITS_QCIF:[Ljava/lang/String;

    .line 138
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "320x240"

    aput-object v1, v0, v4

    const-string v1, "176x144"

    aput-object v1, v0, v5

    sput-object v0, Lcom/lge/camera/properties/MmsProperties;->MMS_RESOLUTION_LIMITS_QVGA:[Ljava/lang/String;

    .line 139
    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "640x480"

    aput-object v1, v0, v4

    const-string v1, "320x240"

    aput-object v1, v0, v5

    const-string v1, "176x144"

    aput-object v1, v0, v6

    sput-object v0, Lcom/lge/camera/properties/MmsProperties;->MMS_RESOLUTION_LIMITS_VGA:[Ljava/lang/String;

    .line 140
    new-array v0, v4, [Ljava/lang/String;

    sput-object v0, Lcom/lge/camera/properties/MmsProperties;->MMS_RESOLUTION_NOT_SUPPORT:[Ljava/lang/String;

    .line 241
    new-array v0, v7, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/lge/camera/properties/MmsProperties;->MmsVideoSizeLimit:[J

    return-void

    .line 17
    :array_0
    .array-data 8
        0x7800
        0xc800
        0xc800
        0xc800
        0xc800
        0xc800
        0xc800
        0xc800
        0xc800
        0xc800
        0xc800
        0x7800
        0x7800
        0x7800
        0xc800
        0xc800
        0xc800
        0xc800
        0xc800
        0xc800
        0xc800
        0x7800
        0xc800
        0xc800
        0xc800
        0xc800
        0xc800
        0xc800
        0x7800
        0x7800
        0x7800
        0xc800
        0xc800
        0xc800
    .end array-data

    .line 241
    :array_1
    .array-data 8
        0x4b000
        0xfa000
        0xed800
        0xf4240
        0x4b000
        0xfa000
        0x12c000
        0x0
        0x7d000
        0x4b000
        0xfa000
        0x4b000
        0xfa000
        0x4b000
        0x96000
        0xfa000
        0x4b000
        0xfa000
        0xfa000
        0xfa000
        0xfa000
        0x96000
        0x4b000
        0x4b000
        0x4b000
        0xfa000
        0x4b000
        0x4b000
        0x4b000
        0x4b000
        0x4b000
        0xfa000
        0x4b000
        0x4b000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAttachVideoMinimumSize(Ljava/lang/String;Landroid/content/ContentResolver;)J
    .locals 3
    .param p0, "resolution"    # Ljava/lang/String;
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 71
    const-wide/16 v0, 0x0

    .line 72
    .local v0, "returnSize":J
    const-string v2, "1920x1080@60"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    const-wide/32 v0, 0x47e000

    .line 94
    :goto_0
    return-wide v0

    .line 74
    :cond_0
    const-string v2, "1920x1088"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "1920x1080"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    :cond_1
    const-wide/32 v0, 0x47e000

    goto :goto_0

    .line 78
    :cond_2
    const-string v2, "1440x1088"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 79
    const-wide/32 v0, 0x44bda8

    goto :goto_0

    .line 81
    :cond_3
    const-string v2, "1280x720"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 82
    const-wide/32 v0, 0x320000

    goto :goto_0

    .line 84
    :cond_4
    const-string v2, "720x480"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 85
    const-wide/32 v0, 0x12c000

    goto :goto_0

    .line 87
    :cond_5
    const-string v2, "640x480"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 88
    const-wide/32 v0, 0xfa000

    goto :goto_0

    .line 91
    :cond_6
    invoke-static {p1}, Lcom/lge/camera/properties/MmsProperties;->getMmsVideoMinimumSize(Landroid/content/ContentResolver;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getMmsResolutions(Landroid/content/ContentResolver;)[Ljava/lang/String;
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 144
    sget-object v2, Lcom/lge/camera/properties/MmsProperties;->mMmsResolutions:[Ljava/lang/String;

    if-nez v2, :cond_3

    .line 145
    if-eqz p0, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v2

    if-eq v2, v5, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v2

    if-eq v2, v6, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    invoke-static {v4}, Lcom/lge/camera/properties/ModelProperties;->isWifiOnlyModel(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 150
    const/4 v1, 0x0

    .line 151
    .local v1, "mmsResolution":Ljava/lang/String;
    const-string v2, "android.msg.camera.max.video.resolution"

    invoke-static {p0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    const-string v2, "640x480"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "320x240"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "176x144"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 157
    :cond_0
    const-string v2, "640x480"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 158
    sget-object v2, Lcom/lge/camera/properties/MmsProperties;->MMS_RESOLUTION_LIMITS_VGA:[Ljava/lang/String;

    sput-object v2, Lcom/lge/camera/properties/MmsProperties;->mMmsResolutions:[Ljava/lang/String;

    .line 176
    .end local v1    # "mmsResolution":Ljava/lang/String;
    :cond_1
    :goto_0
    sget-object v2, Lcom/lge/camera/properties/MmsProperties;->mMmsResolutions:[Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v2

    if-eq v2, v6, :cond_2

    invoke-static {v4}, Lcom/lge/camera/properties/ModelProperties;->isWifiOnlyModel(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 181
    :cond_2
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Lcom/lge/camera/properties/ModelProperties;->isWifiOnlyModel(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 182
    sget-object v2, Lcom/lge/camera/properties/MmsProperties;->MMS_RESOLUTION_NOT_SUPPORT:[Ljava/lang/String;

    sput-object v2, Lcom/lge/camera/properties/MmsProperties;->mMmsResolutions:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :cond_3
    :goto_1
    sget-object v2, Lcom/lge/camera/properties/MmsProperties;->mMmsResolutions:[Ljava/lang/String;

    return-object v2

    .line 159
    .restart local v1    # "mmsResolution":Ljava/lang/String;
    :cond_4
    const-string v2, "320x240"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 160
    sget-object v2, Lcom/lge/camera/properties/MmsProperties;->MMS_RESOLUTION_LIMITS_QVGA:[Ljava/lang/String;

    sput-object v2, Lcom/lge/camera/properties/MmsProperties;->mMmsResolutions:[Ljava/lang/String;

    goto :goto_0

    .line 162
    :cond_5
    sget-object v2, Lcom/lge/camera/properties/MmsProperties;->MMS_RESOLUTION_LIMITS_QCIF:[Ljava/lang/String;

    sput-object v2, Lcom/lge/camera/properties/MmsProperties;->mMmsResolutions:[Ljava/lang/String;

    goto :goto_0

    .line 171
    :cond_6
    sget-object v2, Lcom/lge/camera/properties/MmsProperties;->MMS_RESOLUTION_LIMITS:[[Ljava/lang/String;

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v3

    aget-object v2, v2, v3

    sput-object v2, Lcom/lge/camera/properties/MmsProperties;->mMmsResolutions:[Ljava/lang/String;

    goto :goto_0

    .line 184
    .end local v1    # "mmsResolution":Ljava/lang/String;
    :cond_7
    :try_start_1
    sget-object v2, Lcom/lge/camera/properties/MmsProperties;->MMS_RESOLUTION_LIMITS:[[Ljava/lang/String;

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v3

    aget-object v2, v2, v3

    sput-object v2, Lcom/lge/camera/properties/MmsProperties;->mMmsResolutions:[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 188
    sget-object v2, Lcom/lge/camera/properties/MmsProperties;->MMS_RESOLUTION_LIMITS_QCIF:[Ljava/lang/String;

    sput-object v2, Lcom/lge/camera/properties/MmsProperties;->mMmsResolutions:[Ljava/lang/String;

    goto :goto_1
.end method

.method public static getMmsResolutionsLength(Landroid/content/ContentResolver;)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 198
    invoke-static {p0}, Lcom/lge/camera/properties/MmsProperties;->getMmsResolutions(Landroid/content/ContentResolver;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public static getMmsVideoMinimumSize(Landroid/content/ContentResolver;)J
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 57
    const-wide/16 v0, 0x0

    .line 58
    .local v0, "returnSize":J
    sget-object v2, Lcom/lge/camera/properties/MmsProperties;->MmsVideoMinimumSize:[J

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v3

    aget-wide v2, v2, v3

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getMinRecordingTime()I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    mul-long v0, v2, v4

    .line 63
    invoke-static {p0}, Lcom/lge/camera/properties/MmsProperties;->getMmsVideoSizeLimit(Landroid/content/ContentResolver;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 64
    invoke-static {p0}, Lcom/lge/camera/properties/MmsProperties;->getMmsVideoSizeLimit(Landroid/content/ContentResolver;)J

    move-result-wide v2

    const-wide/16 v4, 0x400

    sub-long v0, v2, v4

    .line 66
    :cond_0
    return-wide v0
.end method

.method public static getMmsVideoSizeLimit(Landroid/content/ContentResolver;)J
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 220
    const/4 v1, 0x0

    .line 222
    .local v1, "mmsLimit":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 223
    const-string v2, "android.msg.attachment.max.size"

    invoke-static {p0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 227
    const-string v1, "972800"

    .line 230
    :cond_1
    if-eqz v1, :cond_2

    .line 232
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    int-to-long v2, v2

    .line 237
    :goto_0
    return-wide v2

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 237
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    sget-object v2, Lcom/lge/camera/properties/MmsProperties;->MmsVideoSizeLimit:[J

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v3

    aget-wide v2, v2, v3

    goto :goto_0
.end method

.method public static isAvailableMmsResolution(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "sizeValue"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-static {p0}, Lcom/lge/camera/properties/MmsProperties;->getMmsResolutions(Landroid/content/ContentResolver;)[Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, "mmsResolutions":[Ljava/lang/String;
    array-length v3, v2

    if-nez v3, :cond_1

    .line 206
    const/4 v0, 0x0

    .line 215
    :cond_0
    return v0

    .line 209
    :cond_1
    const/4 v0, 0x0

    .line 210
    .local v0, "available":Z
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 211
    aget-object v3, v2, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 212
    const/4 v0, 0x1

    .line 210
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
