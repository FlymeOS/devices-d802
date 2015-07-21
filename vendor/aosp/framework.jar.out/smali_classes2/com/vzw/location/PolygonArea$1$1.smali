.class Lcom/vzw/location/PolygonArea$1$1;
.super Ljava/lang/Object;
.source "PolygonArea.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vzw/location/PolygonArea$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/vzw/location/VzwCoordinate;",
        ">;"
    }
.end annotation


# instance fields
.field private i:I

.field final synthetic this$1:Lcom/vzw/location/PolygonArea$1;


# direct methods
.method constructor <init>(Lcom/vzw/location/PolygonArea$1;)V
    .locals 1

    .prologue
    .line 71
    iput-object p1, p0, Lcom/vzw/location/PolygonArea$1$1;->this$1:Lcom/vzw/location/PolygonArea$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/PolygonArea$1$1;->i:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vzw/location/PolygonArea$1$1;->this$1:Lcom/vzw/location/PolygonArea$1;

    iget-object v0, v0, Lcom/vzw/location/PolygonArea$1;->this$0:Lcom/vzw/location/PolygonArea;

    # getter for: Lcom/vzw/location/PolygonArea;->polygonDescription:[Lcom/vzw/location/VzwCoordinate;
    invoke-static {v0}, Lcom/vzw/location/PolygonArea;->access$000(Lcom/vzw/location/PolygonArea;)[Lcom/vzw/location/VzwCoordinate;

    move-result-object v0

    array-length v0, v0

    iget v1, p0, Lcom/vzw/location/PolygonArea$1$1;->i:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/vzw/location/VzwCoordinate;
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vzw/location/PolygonArea$1$1;->this$1:Lcom/vzw/location/PolygonArea$1;

    iget-object v0, v0, Lcom/vzw/location/PolygonArea$1;->this$0:Lcom/vzw/location/PolygonArea;

    # getter for: Lcom/vzw/location/PolygonArea;->polygonDescription:[Lcom/vzw/location/VzwCoordinate;
    invoke-static {v0}, Lcom/vzw/location/PolygonArea;->access$000(Lcom/vzw/location/PolygonArea;)[Lcom/vzw/location/VzwCoordinate;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/PolygonArea$1$1;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/vzw/location/PolygonArea$1$1;->i:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/vzw/location/PolygonArea$1$1;->next()Lcom/vzw/location/VzwCoordinate;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "[remove] Removing an element is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
