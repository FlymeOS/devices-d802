.class public Lcom/lge/systemservice/core/LeccpInfo$Card;
.super Ljava/lang/Object;
.source "LeccpInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/LeccpInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Card"
.end annotation


# static fields
.field public static final CONNECTION_STATE_AVAILABLE:I = 0x1

.field public static final CONNECTION_STATE_CONNECTED:I = 0x3

.field public static final CONNECTION_STATE_CONNECTING:I = 0x2

.field public static final CONNECTION_STATE_PAIRED:I = 0x4

.field public static final CONNECTION_STATE_UNAVAILABLE:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/systemservice/core/LeccpInfo$Card;",
            ">;"
        }
    .end annotation
.end field

.field public static final DETAIL_STATE_MIRRORING:I = 0x2

.field public static final DETAIL_STATE_PLAYING:I = 0x1

.field public static final DETAIL_STATE_TRANSFERRING:I = 0x3

.field public static final DETAIL_STATE_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_BT:I = 0x1

.field public static final NETWORK_TYPE_P2P:I = 0x3

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_WIFI:I = 0x2


# instance fields
.field public actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/systemservice/core/LeccpInfo$Action;",
            ">;"
        }
    .end annotation
.end field

.field public addedDate:J

.field public batteryPercent:I

.field public connectionState:I

.field public detailState:I

.field public deviceType:I

.field public groupId:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public networkType:I

.field public serviceId:Ljava/lang/String;

.field public serviceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 343
    new-instance v0, Lcom/lge/systemservice/core/LeccpInfo$Card$1;

    invoke-direct {v0}, Lcom/lge/systemservice/core/LeccpInfo$Card$1;-><init>()V

    sput-object v0, Lcom/lge/systemservice/core/LeccpInfo$Card;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->id:Ljava/lang/String;

    .line 201
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->name:Ljava/lang/String;

    .line 207
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->groupId:Ljava/lang/String;

    .line 213
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->addedDate:J

    .line 221
    iput v2, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->connectionState:I

    .line 228
    iput v2, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->detailState:I

    .line 240
    iput v2, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->serviceType:I

    .line 257
    iput v2, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->deviceType:I

    .line 263
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->serviceId:Ljava/lang/String;

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->actions:Ljava/util/List;

    .line 275
    iput v2, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->batteryPercent:I

    .line 281
    iput v2, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->networkType:I

    .line 285
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->id:Ljava/lang/String;

    .line 201
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->name:Ljava/lang/String;

    .line 207
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->groupId:Ljava/lang/String;

    .line 213
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->addedDate:J

    .line 221
    iput v2, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->connectionState:I

    .line 228
    iput v2, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->detailState:I

    .line 240
    iput v2, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->serviceType:I

    .line 257
    iput v2, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->deviceType:I

    .line 263
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->serviceId:Ljava/lang/String;

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->actions:Ljava/util/List;

    .line 275
    iput v2, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->batteryPercent:I

    .line 281
    iput v2, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->networkType:I

    .line 288
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/LeccpInfo$Card;->readFromParcel(Landroid/os/Parcel;)V

    .line 289
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->id:Ljava/lang/String;

    .line 323
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->id:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->id:Ljava/lang/String;

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->name:Ljava/lang/String;

    .line 325
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->name:Ljava/lang/String;

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->groupId:Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->groupId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->groupId:Ljava/lang/String;

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->addedDate:J

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->connectionState:I

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->detailState:I

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->serviceType:I

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->deviceType:I

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->serviceId:Ljava/lang/String;

    .line 334
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->actions:Ljava/util/List;

    sget-object v1, Lcom/lge/systemservice/core/LeccpInfo$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->batteryPercent:I

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->networkType:I

    .line 337
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->id:Ljava/lang/String;

    goto :goto_0

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->name:Ljava/lang/String;

    goto :goto_1

    .line 327
    :cond_2
    iget-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->groupId:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->id:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 307
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->name:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->groupId:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    iget-wide v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->addedDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 311
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->connectionState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->detailState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->serviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->deviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->serviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->actions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 317
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->batteryPercent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->networkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->id:Ljava/lang/String;

    goto :goto_0

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->name:Ljava/lang/String;

    goto :goto_1

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->groupId:Ljava/lang/String;

    goto :goto_2
.end method
