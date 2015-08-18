.class public Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;
.super Ljava/lang/Object;
.source "LeccpInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/LeccpInfo$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayAction"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLAY_ACTION_STATE_PAUSED:I = 0x3

.field public static final PLAY_ACTION_STATE_PLAYING:I = 0x2

.field public static final PLAY_ACTION_STATE_STOPPED:I = 0x0

.field public static final PLAY_ACTION_STATE_TRANSITIONING:I = 0x1

.field public static final PLAY_ACTION_TYPE_PAUSE:I = 0x2

.field public static final PLAY_ACTION_TYPE_PLAY:I = 0x0

.field public static final PLAY_ACTION_TYPE_RESUME:I = 0x3

.field public static final PLAY_ACTION_TYPE_SEEK:I = 0x4

.field public static final PLAY_ACTION_TYPE_STOP:I = 0x1

.field public static final PLAY_ACTION_TYPE_VOLUME_DOWN:I = 0x6

.field public static final PLAY_ACTION_TYPE_VOLUME_MUTE:I = 0x7

.field public static final PLAY_ACTION_TYPE_VOLUME_UNMUTE:I = 0x8

.field public static final PLAY_ACTION_TYPE_VOLUME_UP:I = 0x5


# instance fields
.field public currentPosition:I

.field public currentVolume:I

.field public maxPosition:I

.field public state:I

.field public supportedPlayActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 774
    new-instance v0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction$1;

    invoke-direct {v0}, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction$1;-><init>()V

    sput-object v0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 705
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->supportedPlayActions:Ljava/util/List;

    .line 711
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->state:I

    .line 717
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->currentVolume:I

    .line 723
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->maxPosition:I

    .line 729
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->currentPosition:I

    .line 733
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 705
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->supportedPlayActions:Ljava/util/List;

    .line 711
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->state:I

    .line 717
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->currentVolume:I

    .line 723
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->maxPosition:I

    .line 729
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->currentPosition:I

    .line 736
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->readFromParcel(Landroid/os/Parcel;)V

    .line 737
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 763
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->supportedPlayActions:Ljava/util/List;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 764
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->state:I

    .line 765
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->currentVolume:I

    .line 766
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->maxPosition:I

    .line 767
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->currentPosition:I

    .line 768
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 741
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 755
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->supportedPlayActions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 756
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 757
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->currentVolume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 758
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->maxPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 759
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->currentPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 760
    return-void
.end method
