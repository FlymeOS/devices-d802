.class public Landroid/net/DataSchedulerPolicy;
.super Ljava/lang/Object;
.source "DataSchedulerPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/DataSchedulerPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final POLICY_DELAY:I = 0x2

.field public static final POLICY_HEURISTIC:I = 0x1

.field public static final POLICY_NONE:I


# instance fields
.field public policy:I

.field public value:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Landroid/net/DataSchedulerPolicy$1;

    invoke-direct {v0}, Landroid/net/DataSchedulerPolicy$1;-><init>()V

    sput-object v0, Landroid/net/DataSchedulerPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v0, p0, Landroid/net/DataSchedulerPolicy;->policy:I

    .line 37
    iput-wide v2, p0, Landroid/net/DataSchedulerPolicy;->value:J

    .line 40
    iput v0, p0, Landroid/net/DataSchedulerPolicy;->policy:I

    .line 41
    iput-wide v2, p0, Landroid/net/DataSchedulerPolicy;->value:J

    .line 42
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2
    .param p1, "policy"    # I
    .param p2, "value"    # J

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/DataSchedulerPolicy;->policy:I

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/DataSchedulerPolicy;->value:J

    .line 45
    iput p1, p0, Landroid/net/DataSchedulerPolicy;->policy:I

    .line 46
    iput-wide p2, p0, Landroid/net/DataSchedulerPolicy;->value:J

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/DataSchedulerPolicy;->policy:I

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/DataSchedulerPolicy;->value:J

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/DataSchedulerPolicy;->policy:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/DataSchedulerPolicy;->value:J

    .line 52
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataSchedulerPolicy{ policy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/DataSchedulerPolicy;->policy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/DataSchedulerPolicy;->value:J

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
    .line 61
    iget v0, p0, Landroid/net/DataSchedulerPolicy;->policy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget-wide v0, p0, Landroid/net/DataSchedulerPolicy;->value:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 63
    return-void
.end method
