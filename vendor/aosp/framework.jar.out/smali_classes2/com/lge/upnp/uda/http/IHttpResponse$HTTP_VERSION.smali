.class public final enum Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_VERSION;
.super Ljava/lang/Enum;
.source "IHttpResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/upnp/uda/http/IHttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HTTP_VERSION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_VERSION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_VERSION;

.field public static final enum HTTP_VERSION_1_0:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_VERSION;

.field public static final enum HTTP_VERSION_1_1:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_VERSION;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 290
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_VERSION;

    const-string v1, "HTTP_VERSION_1_0"

    invoke-direct {v0, v1, v2}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_VERSION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_VERSION;->HTTP_VERSION_1_0:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_VERSION;

    .line 294
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_VERSION;

    const-string v1, "HTTP_VERSION_1_1"

    invoke-direct {v0, v1, v3}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_VERSION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_VERSION;->HTTP_VERSION_1_1:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_VERSION;

    .line 286
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_VERSION;

    sget-object v1, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_VERSION;->HTTP_VERSION_1_0:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_VERSION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_VERSION;->HTTP_VERSION_1_1:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_VERSION;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_VERSION;->$VALUES:[Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_VERSION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 286
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_VERSION;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 286
    const-class v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_VERSION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_VERSION;

    return-object v0
.end method

.method public static values()[Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_VERSION;
    .locals 1

    .prologue
    .line 286
    sget-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_VERSION;->$VALUES:[Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_VERSION;

    invoke-virtual {v0}, [Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_VERSION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_VERSION;

    return-object v0
.end method
