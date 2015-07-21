.class public Lcom/vzw/location/geofence/VzwGeoFenceParams;
.super Ljava/lang/Object;
.source "VzwGeoFenceParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vzw/location/geofence/VzwGeoFenceParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final ENTERING:I = 0x1

.field public static final LEAVING:I = 0x2


# instance fields
.field public final mCircleParams:Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;

.field public final mEllipseParams:Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;

.field public final mExpiration:J

.field public final mIntent:Landroid/app/PendingIntent;

.field public final mLatitude:D

.field public final mLongitude:D

.field public final mPackageName:Ljava/lang/String;

.field public final mPolygonParams:Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;

.field public final mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/vzw/location/geofence/VzwGeoFenceParams$1;

    invoke-direct {v0}, Lcom/vzw/location/geofence/VzwGeoFenceParams$1;-><init>()V

    sput-object v0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DDJLandroid/app/PendingIntent;Ljava/lang/String;Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;)V
    .locals 13
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "expiration"    # J
    .param p7, "intent"    # Landroid/app/PendingIntent;
    .param p8, "packageName"    # Ljava/lang/String;
    .param p9, "circleParams"    # Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;
    .param p10, "ellipseParams"    # Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;
    .param p11, "polygonParams"    # Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;

    .prologue
    .line 46
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    move-object v0, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/vzw/location/geofence/VzwGeoFenceParams;-><init>(IDDJLandroid/app/PendingIntent;Ljava/lang/String;Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;)V

    .line 48
    return-void
.end method

.method public constructor <init>(IDDJLandroid/app/PendingIntent;Ljava/lang/String;Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;)V
    .locals 0
    .param p1, "uId"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "expiration"    # J
    .param p8, "intent"    # Landroid/app/PendingIntent;
    .param p9, "packageName"    # Ljava/lang/String;
    .param p10, "circleParams"    # Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;
    .param p11, "ellipseParams"    # Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;
    .param p12, "polygonParams"    # Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mUid:I

    .line 57
    iput-wide p2, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mLatitude:D

    .line 58
    iput-wide p4, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mLongitude:D

    .line 59
    iput-wide p6, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mExpiration:J

    .line 60
    iput-object p8, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mIntent:Landroid/app/PendingIntent;

    .line 61
    iput-object p9, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mPackageName:Ljava/lang/String;

    .line 62
    iput-object p10, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mCircleParams:Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;

    .line 63
    iput-object p11, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mEllipseParams:Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;

    .line 64
    iput-object p12, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mPolygonParams:Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mUid:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mLatitude:D

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mLongitude:D

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mExpiration:J

    .line 73
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mIntent:Landroid/app/PendingIntent;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mPackageName:Ljava/lang/String;

    .line 75
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;

    iput-object v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mCircleParams:Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;

    .line 76
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;

    iput-object v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mEllipseParams:Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;

    .line 77
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;

    iput-object v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mPolygonParams:Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;

    .line 78
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 100
    iget v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-wide v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 102
    iget-wide v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 103
    iget-wide v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mExpiration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 104
    iget-object v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 105
    iget-object v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mCircleParams:Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mEllipseParams:Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mPolygonParams:Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 109
    return-void
.end method
