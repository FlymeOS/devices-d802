.class public Lcom/vzw/location/VzwGpsPerformance;
.super Ljava/lang/Object;
.source "VzwGpsPerformance.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vzw/location/VzwGpsPerformance;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "VzwGpsPerformance"


# instance fields
.field private mHorizontalAccuracy:J

.field private mPreferredResponseTime:J

.field private mVerticalAccuracy:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/vzw/location/VzwGpsPerformance$1;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsPerformance$1;-><init>()V

    sput-object v0, Lcom/vzw/location/VzwGpsPerformance;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x46

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->mVerticalAccuracy:J

    .line 22
    iput-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->mHorizontalAccuracy:J

    .line 23
    iput-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->mPreferredResponseTime:J

    .line 26
    const-string v0, "VzwGpsPerformance"

    const-string v1, "[VzwGpsPerformance] Create new VzwGpsPerformance object."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getHorizontalAccuracy()J
    .locals 4

    .prologue
    .line 58
    const-string v0, "VzwGpsPerformance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getHorizontalAccuracy] Entering ==> return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/vzw/location/VzwGpsPerformance;->mHorizontalAccuracy:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->mHorizontalAccuracy:J

    return-wide v0
.end method

.method public getPreferredResponseTime()J
    .locals 4

    .prologue
    .line 68
    const-string v0, "VzwGpsPerformance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getPreferredResponseTime] Entering ==> return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/vzw/location/VzwGpsPerformance;->mPreferredResponseTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->mPreferredResponseTime:J

    return-wide v0
.end method

.method public getVerticalAccuracy()J
    .locals 4

    .prologue
    .line 63
    const-string v0, "VzwGpsPerformance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getVerticalAccuracy] Entering ==> return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/vzw/location/VzwGpsPerformance;->mVerticalAccuracy:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->mVerticalAccuracy:J

    return-wide v0
.end method

.method public setPerformance(III)V
    .locals 8
    .param p1, "va"    # I
    .param p2, "ha"    # I
    .param p3, "prt"    # I

    .prologue
    .line 30
    int-to-long v2, p1

    int-to-long v4, p2

    int-to-long v6, p3

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/vzw/location/VzwGpsPerformance;->setPerformance(JJJ)V

    .line 31
    return-void
.end method

.method public setPerformance(JJJ)V
    .locals 7
    .param p1, "va"    # J
    .param p3, "ha"    # J
    .param p5, "prt"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 34
    const-string v0, "VzwGpsPerformance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setPerformance] Entering. VA="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | HA="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | PRT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    cmp-long v0, p1, v4

    if-ltz v0, :cond_0

    .line 36
    iput-wide p1, p0, Lcom/vzw/location/VzwGpsPerformance;->mVerticalAccuracy:J

    .line 37
    const-string v0, "VzwGpsPerformance"

    const-string v1, "[setPerformance] Vertical Accuracy is set successfully."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :goto_0
    cmp-long v0, p3, v4

    if-ltz v0, :cond_1

    .line 43
    iput-wide p3, p0, Lcom/vzw/location/VzwGpsPerformance;->mHorizontalAccuracy:J

    .line 44
    const-string v0, "VzwGpsPerformance"

    const-string v1, "[setPerformance] Horizontal Accuracy is set successfully."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :goto_1
    cmp-long v0, p5, v4

    if-ltz v0, :cond_2

    .line 50
    iput-wide p5, p0, Lcom/vzw/location/VzwGpsPerformance;->mPreferredResponseTime:J

    .line 51
    const-string v0, "VzwGpsPerformance"

    const-string v1, "[setPerformance] Preferred Response Time is set successfully."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :goto_2
    return-void

    .line 39
    :cond_0
    const-string v0, "VzwGpsPerformance"

    const-string v1, "[setPerformance] Vertical Accuracy is out of range."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 46
    :cond_1
    const-string v0, "VzwGpsPerformance"

    const-string v1, "[setPerformance] Horizontal Accuracy is out of range."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 53
    :cond_2
    const-string v0, "VzwGpsPerformance"

    const-string v1, "[setPerformance] Preferred Response Time is out of range."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVerticalAccuracy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/vzw/location/VzwGpsPerformance;->mVerticalAccuracy:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mHorizontalAccuracy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/vzw/location/VzwGpsPerformance;->mHorizontalAccuracy:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPreferredResponseTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/vzw/location/VzwGpsPerformance;->mPreferredResponseTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "log":Ljava/lang/String;
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 77
    const-string v0, "VzwGpsPerformance"

    const-string v1, "[writeToParcel] Entering"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->mVerticalAccuracy:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 79
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->mHorizontalAccuracy:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 80
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->mPreferredResponseTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 81
    return-void
.end method
