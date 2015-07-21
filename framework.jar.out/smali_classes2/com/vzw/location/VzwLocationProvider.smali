.class public abstract Lcom/vzw/location/VzwLocationProvider;
.super Ljava/lang/Object;
.source "VzwLocationProvider.java"


# static fields
.field public static final AVAILABLE:I = 0x2

.field static final BAD_CHARS_REGEX:Ljava/lang/String; = "[^a-zA-Z0-9]"

.field public static final OUT_OF_SERVICE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VzwLocationProvider"

.field public static final TEMPORARILY_UNAVAILABLE:I = 0x1


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mService:Lcom/vzw/location/IVzwLocationManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/vzw/location/IVzwLocationManager;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "service"    # Lcom/vzw/location/IVzwLocationManager;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "[^a-zA-Z0-9]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contains an illegal character"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/vzw/location/VzwLocationProvider;->mName:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/vzw/location/VzwLocationProvider;->mService:Lcom/vzw/location/IVzwLocationManager;

    .line 60
    return-void
.end method


# virtual methods
.method public abstract getAccuracy()I
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vzw/location/VzwLocationProvider;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getPowerRequirement()I
.end method

.method public abstract hasMonetaryCost()Z
.end method

.method public abstract requiresCell()Z
.end method

.method public abstract requiresNetwork()Z
.end method

.method public abstract requiresSatellite()Z
.end method

.method public abstract supportsAltitude()Z
.end method

.method public abstract supportsBearing()Z
.end method

.method public abstract supportsSpeed()Z
.end method
