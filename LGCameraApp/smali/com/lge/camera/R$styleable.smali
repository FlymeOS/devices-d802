.class public final Lcom/lge/camera/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CameraPreference:[I

.field public static final CameraPreference_sharedPreferenceName:I = 0x0

.field public static final Gallery:[I

.field public static final Gallery_android_galleryItemBackground:I = 0x0

.field public static final ListPreference:[I

.field public static final ListPreference_defaultValue:I = 0x9

.field public static final ListPreference_entries:I = 0xa

.field public static final ListPreference_entryCommand:I = 0x8

.field public static final ListPreference_entryValues:I = 0xb

.field public static final ListPreference_extraInfos:I = 0xd

.field public static final ListPreference_extraInfos2:I = 0xf

.field public static final ListPreference_extraInfos3:I = 0x10

.field public static final ListPreference_extraInfos4:I = 0x11

.field public static final ListPreference_indicatorIcons:I = 0xc

.field public static final ListPreference_key:I = 0x0

.field public static final ListPreference_menuCommand:I = 0x4

.field public static final ListPreference_menuIcons:I = 0x2

.field public static final ListPreference_menuIconsExpand:I = 0x3

.field public static final ListPreference_persist:I = 0xe

.field public static final ListPreference_settingMenuCommand:I = 0x7

.field public static final ListPreference_settingMenuIcons:I = 0x5

.field public static final ListPreference_settingMenuIconsExpand:I = 0x6

.field public static final ListPreference_title:I = 0x1

.field public static final MultiDirectionSlidingDrawer:[I

.field public static final MultiDirectionSlidingDrawer_allowSingleTap:I = 0x5

.field public static final MultiDirectionSlidingDrawer_animateOnClick:I = 0x6

.field public static final MultiDirectionSlidingDrawer_bottomOffset:I = 0x3

.field public static final MultiDirectionSlidingDrawer_content:I = 0x2

.field public static final MultiDirectionSlidingDrawer_direction:I = 0x0

.field public static final MultiDirectionSlidingDrawer_handle:I = 0x1

.field public static final MultiDirectionSlidingDrawer_topOffset:I = 0x4

.field public static final Rotatable:[I

.field public static final Rotatable_background:I = 0x0

.field public static final Rotatable_ellipsis:I = 0xf

.field public static final Rotatable_pivotLeft:I = 0xd

.field public static final Rotatable_pivotTop:I = 0xe

.field public static final Rotatable_rotateIconOnly:I = 0xc

.field public static final Rotatable_rotateInsideView:I = 0xb

.field public static final Rotatable_text:I = 0x1

.field public static final Rotatable_textColor:I = 0x3

.field public static final Rotatable_textGravity:I = 0x8

.field public static final Rotatable_textPaddingBottom:I = 0x5

.field public static final Rotatable_textPaddingLeft:I = 0x6

.field public static final Rotatable_textPaddingRight:I = 0x7

.field public static final Rotatable_textPaddingTop:I = 0x4

.field public static final Rotatable_textShadowColor:I = 0x9

.field public static final Rotatable_textShadowRadius:I = 0xa

.field public static final Rotatable_textSize:I = 0x2

.field public static final stroke:[I

.field public static final stroke_stroke_color:I = 0x1

.field public static final stroke_stroke_width:I = 0x2

.field public static final stroke_use_stroke:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8722
    new-array v0, v3, [I

    const/high16 v1, 0x7f010000

    aput v1, v0, v2

    sput-object v0, Lcom/lge/camera/R$styleable;->CameraPreference:[I

    .line 8749
    new-array v0, v3, [I

    const v1, 0x101004c

    aput v1, v0, v2

    sput-object v0, Lcom/lge/camera/R$styleable;->Gallery:[I

    .line 8802
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lge/camera/R$styleable;->ListPreference:[I

    .line 9024
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/lge/camera/R$styleable;->MultiDirectionSlidingDrawer:[I

    .line 9167
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/lge/camera/R$styleable;->Rotatable:[I

    .line 9422
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/lge/camera/R$styleable;->stroke:[I

    return-void

    .line 8802
    :array_0
    .array-data 4
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
        0x7f010007
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
        0x7f01000c
        0x7f01000d
        0x7f01000e
        0x7f01000f
        0x7f010010
        0x7f010011
        0x7f010012
    .end array-data

    .line 9024
    :array_1
    .array-data 4
        0x7f010023
        0x7f010024
        0x7f010025
        0x7f010026
        0x7f010027
        0x7f010028
        0x7f010029
    .end array-data

    .line 9167
    :array_2
    .array-data 4
        0x7f010013
        0x7f010014
        0x7f010015
        0x7f010016
        0x7f010017
        0x7f010018
        0x7f010019
        0x7f01001a
        0x7f01001b
        0x7f01001c
        0x7f01001d
        0x7f01001e
        0x7f01001f
        0x7f010020
        0x7f010021
        0x7f010022
    .end array-data

    .line 9422
    :array_3
    .array-data 4
        0x7f01002a
        0x7f01002b
        0x7f01002c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
