.class public Lcom/vzw/location/VzwCriteria;
.super Landroid/location/Criteria;
.source "VzwCriteria.java"


# static fields
.field public static final ACCURACY_OPTIMAL:I = 0x6

.field public static final AFLT:I = 0x4

.field public static final CID:I = 0x8

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vzw/location/VzwCriteria;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATA_OPTIMAL:I = 0x7

.field private static final DEBUG:Z = true

.field public static final ECID:I = 0x9

.field public static final HYBRID:I = 0xc

.field public static final MS_ASSISTED:I = 0x1

.field public static final MS_BASED:I = 0x2

.field public static final SPEED_OPTIMAL:I = 0x5

.field public static final STANDALONE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "VzwCriteria"

.field public static final UNKNOWN:I = 0x0

.field public static final WIFI_MSA:I = 0xa

.field public static final WIFI_MSB:I = 0xb


# instance fields
.field private mFixMode:I

.field private mFixRate:Lcom/vzw/location/VzwGpsFixRate;

.field private mHybridMode:I

.field private mPerformance:Lcom/vzw/location/VzwGpsPerformance;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 186
    new-instance v0, Lcom/vzw/location/VzwCriteria$1;

    invoke-direct {v0}, Lcom/vzw/location/VzwCriteria$1;-><init>()V

    sput-object v0, Lcom/vzw/location/VzwCriteria;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/location/Criteria;-><init>()V

    .line 83
    const-string v0, "VzwCriteria"

    const-string v1, "[VzwCriteria] Create new VzwCriteria object. Calling setToDefault()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-direct {p0}, Lcom/vzw/location/VzwCriteria;->setToDefault()V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/location/Criteria;)V
    .locals 2
    .param p1, "c"    # Landroid/location/Criteria;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Landroid/location/Criteria;-><init>(Landroid/location/Criteria;)V

    .line 89
    const-string v0, "VzwCriteria"

    const-string v1, "[VzwCriteria] Create new VzwCriteria object. Calling setToDefault()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-direct {p0}, Lcom/vzw/location/VzwCriteria;->setToDefault()V

    .line 91
    return-void
.end method

.method static synthetic access$002(Lcom/vzw/location/VzwCriteria;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/VzwCriteria;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/vzw/location/VzwCriteria;->mFixMode:I

    return p1
.end method

.method static synthetic access$102(Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/VzwGpsPerformance;)Lcom/vzw/location/VzwGpsPerformance;
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/VzwCriteria;
    .param p1, "x1"    # Lcom/vzw/location/VzwGpsPerformance;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/vzw/location/VzwCriteria;->mPerformance:Lcom/vzw/location/VzwGpsPerformance;

    return-object p1
.end method

.method static synthetic access$202(Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/VzwGpsFixRate;)Lcom/vzw/location/VzwGpsFixRate;
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/VzwCriteria;
    .param p1, "x1"    # Lcom/vzw/location/VzwGpsFixRate;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/vzw/location/VzwCriteria;->mFixRate:Lcom/vzw/location/VzwGpsFixRate;

    return-object p1
.end method

.method static synthetic access$302(Lcom/vzw/location/VzwCriteria;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/VzwCriteria;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/vzw/location/VzwCriteria;->mHybridMode:I

    return p1
.end method

.method private setToDefault()V
    .locals 2

    .prologue
    .line 94
    const-string v0, "VzwCriteria"

    const-string v1, "[setToDefault] Set VzwCriteria as default."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwCriteria;->setFixMode(I)V

    .line 96
    new-instance v0, Lcom/vzw/location/VzwGpsFixRate;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsFixRate;-><init>()V

    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwCriteria;->setFixRate(Lcom/vzw/location/VzwGpsFixRate;)V

    .line 97
    new-instance v0, Lcom/vzw/location/VzwGpsPerformance;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsPerformance;-><init>()V

    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwCriteria;->setPerformance(Lcom/vzw/location/VzwGpsPerformance;)V

    .line 98
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public getFixMode()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/vzw/location/VzwCriteria;->mFixMode:I

    return v0
.end method

.method public getFixRate()Lcom/vzw/location/VzwGpsFixRate;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/vzw/location/VzwCriteria;->mFixRate:Lcom/vzw/location/VzwGpsFixRate;

    return-object v0
.end method

.method public getHybridMode()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/vzw/location/VzwCriteria;->mHybridMode:I

    return v0
.end method

.method public getPerformance()Lcom/vzw/location/VzwGpsPerformance;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/vzw/location/VzwCriteria;->mPerformance:Lcom/vzw/location/VzwGpsPerformance;

    return-object v0
.end method

.method public setFixMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 126
    const-string v0, "VzwCriteria"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setFixMode] Fix Mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iput p1, p0, Lcom/vzw/location/VzwCriteria;->mFixMode:I

    .line 128
    return-void
.end method

.method public setFixRate(Lcom/vzw/location/VzwGpsFixRate;)V
    .locals 0
    .param p1, "fixRate"    # Lcom/vzw/location/VzwGpsFixRate;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/vzw/location/VzwCriteria;->mFixRate:Lcom/vzw/location/VzwGpsFixRate;

    .line 145
    return-void
.end method

.method public setHybridMode(I)V
    .locals 3
    .param p1, "hybridMode"    # I

    .prologue
    .line 160
    const-string v0, "VzwCriteria"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setHybridMode] Hybrid Mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iput p1, p0, Lcom/vzw/location/VzwCriteria;->mHybridMode:I

    .line 162
    return-void
.end method

.method public setPerformance(Lcom/vzw/location/VzwGpsPerformance;)V
    .locals 0
    .param p1, "gpsPerformance"    # Lcom/vzw/location/VzwGpsPerformance;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/vzw/location/VzwCriteria;->mPerformance:Lcom/vzw/location/VzwGpsPerformance;

    .line 107
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFixMode=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwCriteria;->mFixMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], mPerformance=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vzw/location/VzwCriteria;->mPerformance:Lcom/vzw/location/VzwGpsPerformance;

    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsPerformance;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], mFixRate=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vzw/location/VzwCriteria;->mFixRate:Lcom/vzw/location/VzwGpsFixRate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], mHybridMod=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwCriteria;->mHybridMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 178
    const-string v0, "VzwCriteria"

    const-string v1, "[writeToParcel] Entering."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-super {p0, p1, p2}, Landroid/location/Criteria;->writeToParcel(Landroid/os/Parcel;I)V

    .line 180
    iget v0, p0, Lcom/vzw/location/VzwCriteria;->mFixMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget-object v0, p0, Lcom/vzw/location/VzwCriteria;->mPerformance:Lcom/vzw/location/VzwGpsPerformance;

    invoke-virtual {v0, p1, p2}, Lcom/vzw/location/VzwGpsPerformance;->writeToParcel(Landroid/os/Parcel;I)V

    .line 182
    iget-object v0, p0, Lcom/vzw/location/VzwCriteria;->mFixRate:Lcom/vzw/location/VzwGpsFixRate;

    invoke-virtual {v0, p1, p2}, Lcom/vzw/location/VzwGpsFixRate;->writeToParcel(Landroid/os/Parcel;I)V

    .line 183
    iget v0, p0, Lcom/vzw/location/VzwCriteria;->mHybridMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    return-void
.end method
