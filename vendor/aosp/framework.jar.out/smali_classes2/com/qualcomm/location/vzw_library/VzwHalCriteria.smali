.class public Lcom/qualcomm/location/vzw_library/VzwHalCriteria;
.super Landroid/location/Criteria;
.source "VzwHalCriteria.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qualcomm/location/vzw_library/VzwHalCriteria;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHintNextFixArriveInSec:I

.field private mHintNextFixHorizontalAccuracy:I

.field private mHintNextFixMode:I

.field private mHybridMode:I

.field private mMaximumResponseTime:I

.field private mMode:I

.field private mPreferredHorizontalAccuracy:I

.field private mPreferredVerticalAccuracy:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 214
    new-instance v0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria$1;

    invoke-direct {v0}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria$1;-><init>()V

    sput-object v0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/location/Criteria;-><init>()V

    .line 53
    invoke-direct {p0}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->setToDefault()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/location/Criteria;)V
    .locals 1
    .param p1, "criteria"    # Landroid/location/Criteria;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/location/Criteria;-><init>(Landroid/location/Criteria;)V

    .line 68
    invoke-direct {p0}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->setToDefault()V

    .line 69
    invoke-virtual {p1}, Landroid/location/Criteria;->getAccuracy()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 80
    :goto_0
    return-void

    .line 72
    :pswitch_0
    const/16 v0, 0x32

    iput v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mPreferredHorizontalAccuracy:I

    goto :goto_0

    .line 75
    :pswitch_1
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mPreferredHorizontalAccuracy:I

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;)V
    .locals 1
    .param p1, "criteria"    # Lcom/qualcomm/location/vzw_library/VzwHalCriteria;

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/location/Criteria;-><init>()V

    .line 57
    iget v0, p1, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mMode:I

    iput v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mMode:I

    .line 58
    iget v0, p1, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mPreferredHorizontalAccuracy:I

    iput v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mPreferredHorizontalAccuracy:I

    .line 59
    iget v0, p1, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mPreferredVerticalAccuracy:I

    iput v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mPreferredVerticalAccuracy:I

    .line 60
    iget v0, p1, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mMaximumResponseTime:I

    iput v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mMaximumResponseTime:I

    .line 61
    iget v0, p1, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixArriveInSec:I

    iput v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixArriveInSec:I

    .line 62
    iget v0, p1, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixMode:I

    iput v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixMode:I

    .line 63
    iget v0, p1, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixHorizontalAccuracy:I

    iput v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixHorizontalAccuracy:I

    .line 64
    return-void
.end method

.method static synthetic access$002(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/vzw_library/VzwHalCriteria;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mMode:I

    return p1
.end method

.method static synthetic access$102(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/vzw_library/VzwHalCriteria;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mPreferredHorizontalAccuracy:I

    return p1
.end method

.method static synthetic access$202(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/vzw_library/VzwHalCriteria;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mPreferredVerticalAccuracy:I

    return p1
.end method

.method static synthetic access$302(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/vzw_library/VzwHalCriteria;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mMaximumResponseTime:I

    return p1
.end method

.method static synthetic access$402(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/vzw_library/VzwHalCriteria;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixArriveInSec:I

    return p1
.end method

.method static synthetic access$502(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/vzw_library/VzwHalCriteria;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixMode:I

    return p1
.end method

.method static synthetic access$602(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/vzw_library/VzwHalCriteria;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixHorizontalAccuracy:I

    return p1
.end method

.method static synthetic access$702(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/vzw_library/VzwHalCriteria;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHybridMode:I

    return p1
.end method

.method private setToDefault()V
    .locals 2

    .prologue
    const/16 v1, 0x32

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mMode:I

    .line 36
    iput v1, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mPreferredHorizontalAccuracy:I

    .line 37
    iput v1, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mPreferredVerticalAccuracy:I

    .line 40
    const/16 v0, 0x1e

    iput v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mMaximumResponseTime:I

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixArriveInSec:I

    .line 45
    iget v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mMode:I

    iput v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixMode:I

    .line 46
    iget v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mPreferredHorizontalAccuracy:I

    iput v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixHorizontalAccuracy:I

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHybridMode:I

    .line 50
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public getFixMode()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mMode:I

    return v0
.end method

.method public getHintNextFixArriveInSec()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixArriveInSec:I

    return v0
.end method

.method public getHintNextFixHorizontalAccuracy()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixHorizontalAccuracy:I

    return v0
.end method

.method public getHintNextFixMode()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixMode:I

    return v0
.end method

.method public getHybridMode()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHybridMode:I

    return v0
.end method

.method public getMaximumResponseTime()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mMaximumResponseTime:I

    return v0
.end method

.method public getPreferredHorizontalAccuracy()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mPreferredHorizontalAccuracy:I

    return v0
.end method

.method public getPreferredVerticalAccuracy()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mPreferredVerticalAccuracy:I

    return v0
.end method

.method public setFixMode(I)V
    .locals 2
    .param p1, "Mode"    # I

    .prologue
    .line 87
    packed-switch p1, :pswitch_data_0

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mode not recognized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :pswitch_0
    iput p1, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mMode:I

    .line 107
    return-void

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setHintNextFixArriveInSec(I)V
    .locals 2
    .param p1, "interval"    # I

    .prologue
    const/4 v0, -0x1

    .line 115
    if-ne p1, v0, :cond_0

    .line 118
    iput v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixArriveInSec:I

    .line 128
    :goto_0
    return-void

    .line 120
    :cond_0
    if-ltz p1, :cond_1

    const/16 v0, 0xff

    if-gt p1, v0, :cond_1

    .line 122
    iput p1, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixArriveInSec:I

    goto :goto_0

    .line 126
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Time (sec) between fixes must be in -1, or [0..255]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHintNextFixHorizontalAccuracy(I)V
    .locals 2
    .param p1, "ErrorMeter"    # I

    .prologue
    .line 168
    if-gtz p1, :cond_0

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Hint for horizontal accuracy must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    iput p1, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixHorizontalAccuracy:I

    .line 176
    return-void
.end method

.method public setHintNextFixMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 184
    packed-switch p1, :pswitch_data_0

    .line 195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mode not recognized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :pswitch_0
    iput p1, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixMode:I

    .line 197
    return-void

    .line 184
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setHybridMode(I)V
    .locals 0
    .param p1, "hybridMode"    # I

    .prologue
    .line 252
    iput p1, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHybridMode:I

    .line 253
    return-void
.end method

.method public setMaximumResponseTime(I)V
    .locals 2
    .param p1, "TimeSec"    # I

    .prologue
    .line 204
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 206
    iput p1, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mMaximumResponseTime:I

    .line 212
    return-void

    .line 210
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout (sec) must be in [0..255]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPreferredHorizontalAccuracy(I)V
    .locals 2
    .param p1, "ErrorMeter"    # I

    .prologue
    .line 136
    if-gtz p1, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Horizontal accuracy must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    iput p1, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mPreferredHorizontalAccuracy:I

    .line 144
    return-void
.end method

.method public setPreferredVerticalAccuracy(I)V
    .locals 2
    .param p1, "ErrorMeter"    # I

    .prologue
    .line 152
    if-gtz p1, :cond_0

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Vertical accuracy must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    iput p1, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mPreferredVerticalAccuracy:I

    .line 160
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 240
    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 241
    iget v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mPreferredHorizontalAccuracy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mPreferredVerticalAccuracy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    iget v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mMaximumResponseTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixArriveInSec:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    iget v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    iget v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixHorizontalAccuracy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    iget v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHybridMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    return-void
.end method
