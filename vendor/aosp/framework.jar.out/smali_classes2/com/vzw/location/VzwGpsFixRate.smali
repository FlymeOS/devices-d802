.class public Lcom/vzw/location/VzwGpsFixRate;
.super Ljava/lang/Object;
.source "VzwGpsFixRate.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final ALWAYS_ON_GPS_FIXES:J = -0x1L

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vzw/location/VzwGpsFixRate;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = true

.field private static final INITIAL_TIME_BETWEEN_FIXES:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "VzwGpsFixRate"


# instance fields
.field private mNumFixes:J

.field private mTimeBetweenFixes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/vzw/location/VzwGpsFixRate$1;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsFixRate$1;-><init>()V

    sput-object v0, Lcom/vzw/location/VzwGpsFixRate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide v0, p0, Lcom/vzw/location/VzwGpsFixRate;->mNumFixes:J

    .line 28
    iput-wide v0, p0, Lcom/vzw/location/VzwGpsFixRate;->mTimeBetweenFixes:J

    .line 31
    const-string v0, "VzwGpsFixRate"

    const-string v1, "[VzwGpsFixRate] Create new VzwGpsFixRate object. Calling setToDefault()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsFixRate;->setToDefault()V

    .line 33
    return-void
.end method

.method private setToDefault()V
    .locals 2

    .prologue
    .line 52
    const-string v0, "VzwGpsFixRate"

    const-string v1, "[setToDefault] Set VzwGpsFixRate as default."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsFixRate;->mNumFixes:J

    .line 54
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsFixRate;->mTimeBetweenFixes:J

    .line 55
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getNumFixes()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsFixRate;->mNumFixes:J

    return-wide v0
.end method

.method public getTimeBetweenFixes()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsFixRate;->mTimeBetweenFixes:J

    return-wide v0
.end method

.method public setGpsFixRate(JJ)V
    .locals 3
    .param p1, "numFixes"    # J
    .param p3, "timeBetweenFixes"    # J

    .prologue
    .line 36
    const-string v0, "VzwGpsFixRate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setGpsFixRate] NumFixes : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | TimeBetweenFixes : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iput-wide p1, p0, Lcom/vzw/location/VzwGpsFixRate;->mNumFixes:J

    .line 38
    iput-wide p3, p0, Lcom/vzw/location/VzwGpsFixRate;->mTimeBetweenFixes:J

    .line 39
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNumFixes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/vzw/location/VzwGpsFixRate;->mNumFixes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTimeBetweenFixes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/vzw/location/VzwGpsFixRate;->mTimeBetweenFixes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "log":Ljava/lang/String;
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsFixRate;->mNumFixes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 63
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsFixRate;->mTimeBetweenFixes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 64
    return-void
.end method
