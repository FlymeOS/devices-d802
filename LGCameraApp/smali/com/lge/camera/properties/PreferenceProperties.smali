.class public final Lcom/lge/camera/properties/PreferenceProperties;
.super Ljava/lang/Object;
.source "PreferenceProperties.java"


# static fields
.field private static final back3dCamcorderPreferences:[I

.field private static final back3dCameraPreferences:[I

.field private static final backCamcorderPreferences:[I

.field private static final backCameraPreferences:[I

.field private static final frontCamcorderPreferences:[I

.field private static final frontCameraPreferences:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x23

    .line 16
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lge/camera/properties/PreferenceProperties;->backCameraPreferences:[I

    .line 54
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/lge/camera/properties/PreferenceProperties;->frontCameraPreferences:[I

    .line 92
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/lge/camera/properties/PreferenceProperties;->backCamcorderPreferences:[I

    .line 130
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/lge/camera/properties/PreferenceProperties;->frontCamcorderPreferences:[I

    .line 169
    new-array v0, v3, [I

    const v1, 0x7f05001a

    aput v1, v0, v2

    sput-object v0, Lcom/lge/camera/properties/PreferenceProperties;->back3dCameraPreferences:[I

    .line 173
    new-array v0, v3, [I

    const v1, 0x7f050019

    aput v1, v0, v2

    sput-object v0, Lcom/lge/camera/properties/PreferenceProperties;->back3dCamcorderPreferences:[I

    return-void

    .line 16
    nop

    :array_0
    .array-data 4
        0x7f050034
        0x7f05001c
        0x7f050038
        0x7f05003a
        0x7f05006d
        0x7f05000e
        0x7f050012
        0x7f05002c
        0x7f050058
        0x7f050020
        0x7f05000a
        0x7f050069
        0x7f050016
        0x7f05008d
        0x7f050001
        0x7f050071
        0x7f050081
        0x7f050075
        0x7f05005c
        0x7f050054
        0x7f050079
        0x7f050085
        0x7f050089
        0x7f050006
        0x7f050024
        0x7f050028
        0x7f05007d
        0x7f050044
        0x7f05004c
        0x7f050050
        0x7f050048
        0x7f050065
        0x7f050030
        0x7f050040
        0x7f050061
    .end array-data

    .line 54
    :array_1
    .array-data 4
        0x7f050036
        0x7f05001e
        0x7f05003e
        0x7f05003c
        0x7f05006f
        0x7f050010
        0x7f050014
        0x7f05002e
        0x7f05005a
        0x7f050022
        0x7f05000c
        0x7f05006b
        0x7f050018
        0x7f05008f
        0x7f050003
        0x7f050073
        0x7f050083
        0x7f050077
        0x7f05005e
        0x7f050056
        0x7f05007b
        0x7f050087
        0x7f05008b
        0x7f050008
        0x7f050026
        0x7f05002a
        0x7f05007f
        0x7f050046
        0x7f05004e
        0x7f050052
        0x7f05004a
        0x7f050067
        0x7f050032
        0x7f050042
        0x7f050063
    .end array-data

    .line 92
    :array_2
    .array-data 4
        0x7f050033
        0x7f05001b
        0x7f050037
        0x7f050039
        0x7f05006c
        0x7f05000d
        0x7f050011
        0x7f05002b
        0x7f050057
        0x7f05001f
        0x7f050009
        0x7f050068
        0x7f050015
        0x7f05008c
        0x7f050000
        0x7f050070
        0x7f050080
        0x7f050074
        0x7f05005b
        0x7f050053
        0x7f050078
        0x7f050084
        0x7f050088
        0x7f050005
        0x7f050023
        0x7f050027
        0x7f05007c
        0x7f050043
        0x7f05004b
        0x7f05004f
        0x7f050047
        0x7f050064
        0x7f05002f
        0x7f05003f
        0x7f050060
    .end array-data

    .line 130
    :array_3
    .array-data 4
        0x7f050035
        0x7f05001d
        0x7f05003d
        0x7f05003b
        0x7f05006e
        0x7f05000f
        0x7f050013
        0x7f05002d
        0x7f050059
        0x7f050021
        0x7f05000b
        0x7f05006a
        0x7f050017
        0x7f05008e
        0x7f050002
        0x7f050072
        0x7f050082
        0x7f050076
        0x7f05005d
        0x7f050055
        0x7f05007a
        0x7f050086
        0x7f05008a
        0x7f050007
        0x7f050025
        0x7f050029
        0x7f05007e
        0x7f050045
        0x7f05004d
        0x7f050051
        0x7f050049
        0x7f050066
        0x7f050031
        0x7f050041
        0x7f050062
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBack3dCamcorderPreferenceResource()I
    .locals 2

    .prologue
    .line 199
    sget-object v0, Lcom/lge/camera/properties/PreferenceProperties;->back3dCamcorderPreferences:[I

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public static getBack3dCameraPreferenceResource()I
    .locals 2

    .prologue
    .line 195
    sget-object v0, Lcom/lge/camera/properties/PreferenceProperties;->back3dCameraPreferences:[I

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public static getBackCamcorderPreferenceResource()I
    .locals 2

    .prologue
    .line 187
    sget-object v0, Lcom/lge/camera/properties/PreferenceProperties;->backCamcorderPreferences:[I

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public static getBackCameraPreferenceResource()I
    .locals 2

    .prologue
    .line 179
    sget-object v0, Lcom/lge/camera/properties/PreferenceProperties;->backCameraPreferences:[I

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public static getFrontCamcorderPreferenceResource()I
    .locals 2

    .prologue
    .line 191
    sget-object v0, Lcom/lge/camera/properties/PreferenceProperties;->frontCamcorderPreferences:[I

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public static getFrontCameraPreferenceResource()I
    .locals 2

    .prologue
    .line 183
    sget-object v0, Lcom/lge/camera/properties/PreferenceProperties;->frontCameraPreferences:[I

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method
