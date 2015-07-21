.class public Landroid/net/DataSchedulerAppInfo;
.super Ljava/lang/Object;
.source "DataSchedulerAppInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/DataSchedulerAppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public alarm:Ljava/lang/String;

.field public pid:I

.field public repeat:J

.field public timeout:J

.field public uid:I

.field public window:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Landroid/net/DataSchedulerAppInfo$1;

    invoke-direct {v0}, Landroid/net/DataSchedulerAppInfo$1;-><init>()V

    sput-object v0, Landroid/net/DataSchedulerAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;JJJ)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "alarm"    # Ljava/lang/String;
    .param p4, "timeout"    # J
    .param p6, "repeat"    # J
    .param p8, "window"    # J

    .prologue
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Landroid/net/DataSchedulerAppInfo;->uid:I

    .line 27
    iput v0, p0, Landroid/net/DataSchedulerAppInfo;->pid:I

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/DataSchedulerAppInfo;->alarm:Ljava/lang/String;

    .line 41
    iput-wide v2, p0, Landroid/net/DataSchedulerAppInfo;->timeout:J

    .line 48
    iput-wide v2, p0, Landroid/net/DataSchedulerAppInfo;->repeat:J

    .line 55
    iput-wide v2, p0, Landroid/net/DataSchedulerAppInfo;->window:J

    .line 58
    iput p1, p0, Landroid/net/DataSchedulerAppInfo;->uid:I

    .line 59
    iput p2, p0, Landroid/net/DataSchedulerAppInfo;->pid:I

    .line 60
    iput-object p3, p0, Landroid/net/DataSchedulerAppInfo;->alarm:Ljava/lang/String;

    .line 61
    iput-wide p4, p0, Landroid/net/DataSchedulerAppInfo;->timeout:J

    .line 62
    iput-wide p6, p0, Landroid/net/DataSchedulerAppInfo;->repeat:J

    .line 63
    iput-wide p8, p0, Landroid/net/DataSchedulerAppInfo;->window:J

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/net/DataSchedulerAppInfo;)V
    .locals 4
    .param p1, "obj"    # Landroid/net/DataSchedulerAppInfo;

    .prologue
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Landroid/net/DataSchedulerAppInfo;->uid:I

    .line 27
    iput v0, p0, Landroid/net/DataSchedulerAppInfo;->pid:I

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/DataSchedulerAppInfo;->alarm:Ljava/lang/String;

    .line 41
    iput-wide v2, p0, Landroid/net/DataSchedulerAppInfo;->timeout:J

    .line 48
    iput-wide v2, p0, Landroid/net/DataSchedulerAppInfo;->repeat:J

    .line 55
    iput-wide v2, p0, Landroid/net/DataSchedulerAppInfo;->window:J

    .line 67
    iget v0, p1, Landroid/net/DataSchedulerAppInfo;->uid:I

    iput v0, p0, Landroid/net/DataSchedulerAppInfo;->uid:I

    .line 68
    iget v0, p1, Landroid/net/DataSchedulerAppInfo;->pid:I

    iput v0, p0, Landroid/net/DataSchedulerAppInfo;->pid:I

    .line 69
    iget-object v0, p1, Landroid/net/DataSchedulerAppInfo;->alarm:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/DataSchedulerAppInfo;->alarm:Ljava/lang/String;

    .line 70
    iget-wide v0, p1, Landroid/net/DataSchedulerAppInfo;->timeout:J

    iput-wide v0, p0, Landroid/net/DataSchedulerAppInfo;->timeout:J

    .line 71
    iget-wide v0, p1, Landroid/net/DataSchedulerAppInfo;->repeat:J

    iput-wide v0, p0, Landroid/net/DataSchedulerAppInfo;->repeat:J

    .line 72
    iget-wide v0, p1, Landroid/net/DataSchedulerAppInfo;->window:J

    iput-wide v0, p0, Landroid/net/DataSchedulerAppInfo;->window:J

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Landroid/net/DataSchedulerAppInfo;->uid:I

    .line 27
    iput v0, p0, Landroid/net/DataSchedulerAppInfo;->pid:I

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/DataSchedulerAppInfo;->alarm:Ljava/lang/String;

    .line 41
    iput-wide v2, p0, Landroid/net/DataSchedulerAppInfo;->timeout:J

    .line 48
    iput-wide v2, p0, Landroid/net/DataSchedulerAppInfo;->repeat:J

    .line 55
    iput-wide v2, p0, Landroid/net/DataSchedulerAppInfo;->window:J

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/DataSchedulerAppInfo;->uid:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/DataSchedulerAppInfo;->pid:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/DataSchedulerAppInfo;->alarm:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/DataSchedulerAppInfo;->timeout:J

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/DataSchedulerAppInfo;->repeat:J

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/DataSchedulerAppInfo;->window:J

    .line 82
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataSchedulerAppInfo{ uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/DataSchedulerAppInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/DataSchedulerAppInfo;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " alarm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/DataSchedulerAppInfo;->alarm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/DataSchedulerAppInfo;->timeout:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " repeat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/DataSchedulerAppInfo;->repeat:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " window="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/DataSchedulerAppInfo;->window:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

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
    .line 91
    iget v0, p0, Landroid/net/DataSchedulerAppInfo;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget v0, p0, Landroid/net/DataSchedulerAppInfo;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-object v0, p0, Landroid/net/DataSchedulerAppInfo;->alarm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-wide v0, p0, Landroid/net/DataSchedulerAppInfo;->timeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 95
    iget-wide v0, p0, Landroid/net/DataSchedulerAppInfo;->repeat:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 96
    iget-wide v0, p0, Landroid/net/DataSchedulerAppInfo;->window:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 97
    return-void
.end method
