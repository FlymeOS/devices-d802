.class Lcom/vzw/location/PolygonArea$1;
.super Ljava/lang/Object;
.source "PolygonArea.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vzw/location/PolygonArea;->getPolygonCoordinates()Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/vzw/location/VzwCoordinate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vzw/location/PolygonArea;


# direct methods
.method constructor <init>(Lcom/vzw/location/PolygonArea;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/vzw/location/PolygonArea$1;->this$0:Lcom/vzw/location/PolygonArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/vzw/location/VzwCoordinate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lcom/vzw/location/PolygonArea$1$1;

    invoke-direct {v0, p0}, Lcom/vzw/location/PolygonArea$1$1;-><init>(Lcom/vzw/location/PolygonArea$1;)V

    return-object v0
.end method
