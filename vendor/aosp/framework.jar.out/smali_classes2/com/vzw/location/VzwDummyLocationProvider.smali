.class public Lcom/vzw/location/VzwDummyLocationProvider;
.super Lcom/vzw/location/VzwLocationProvider;
.source "VzwDummyLocationProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VzwDummyLocationProvider"


# instance fields
.field mAccuracy:I

.field mHasMonetaryCost:Z

.field mName:Ljava/lang/String;

.field mPowerRequirement:I

.field mRequiresCell:Z

.field mRequiresNetwork:Z

.field mRequiresSatellite:Z

.field mSupportsAltitude:Z

.field mSupportsBearing:Z

.field mSupportsSpeed:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/vzw/location/IVzwLocationManager;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "service"    # Lcom/vzw/location/IVzwLocationManager;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/vzw/location/VzwLocationProvider;-><init>(Ljava/lang/String;Lcom/vzw/location/IVzwLocationManager;)V

    .line 58
    return-void
.end method


# virtual methods
.method public getAccuracy()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mAccuracy:I

    return v0
.end method

.method public getPowerRequirement()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mPowerRequirement:I

    return v0
.end method

.method public hasMonetaryCost()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mHasMonetaryCost:Z

    return v0
.end method

.method public requiresCell()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mRequiresCell:Z

    return v0
.end method

.method public requiresNetwork()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mRequiresNetwork:Z

    return v0
.end method

.method public requiresSatellite()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mRequiresSatellite:Z

    return v0
.end method

.method public setAccuracy(I)V
    .locals 0
    .param p1, "accuracy"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mAccuracy:I

    .line 94
    return-void
.end method

.method public setHasMonetaryCost(Z)V
    .locals 0
    .param p1, "hasMonetaryCost"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mHasMonetaryCost:Z

    .line 74
    return-void
.end method

.method public setPowerRequirement(I)V
    .locals 0
    .param p1, "powerRequirement"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mPowerRequirement:I

    .line 90
    return-void
.end method

.method public setRequiresCell(Z)V
    .locals 0
    .param p1, "requiresCell"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mRequiresCell:Z

    .line 70
    return-void
.end method

.method public setRequiresNetwork(Z)V
    .locals 0
    .param p1, "requiresNetwork"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mRequiresNetwork:Z

    .line 62
    return-void
.end method

.method public setRequiresSatellite(Z)V
    .locals 0
    .param p1, "requiresSatellite"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mRequiresSatellite:Z

    .line 66
    return-void
.end method

.method public setSupportsAltitude(Z)V
    .locals 0
    .param p1, "supportsAltitude"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mSupportsAltitude:Z

    .line 78
    return-void
.end method

.method public setSupportsBearing(Z)V
    .locals 0
    .param p1, "supportsBearing"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mSupportsBearing:Z

    .line 86
    return-void
.end method

.method public setSupportsSpeed(Z)V
    .locals 0
    .param p1, "supportsSpeed"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mSupportsSpeed:Z

    .line 82
    return-void
.end method

.method public supportsAltitude()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mSupportsAltitude:Z

    return v0
.end method

.method public supportsBearing()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mSupportsBearing:Z

    return v0
.end method

.method public supportsSpeed()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/vzw/location/VzwDummyLocationProvider;->mSupportsSpeed:Z

    return v0
.end method
