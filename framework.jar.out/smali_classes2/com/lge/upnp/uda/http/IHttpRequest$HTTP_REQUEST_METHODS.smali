.class public final enum Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;
.super Ljava/lang/Enum;
.source "IHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/upnp/uda/http/IHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HTTP_REQUEST_METHODS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

.field public static final enum HTTP_REQUEST_GET:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

.field public static final enum HTTP_REQUEST_HEAD:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

.field public static final enum HTTP_REQUEST_MSEARCH:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

.field public static final enum HTTP_REQUEST_M_POST:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

.field public static final enum HTTP_REQUEST_NOTIFY:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

.field public static final enum HTTP_REQUEST_POST:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

.field public static final enum HTTP_REQUEST_SUBSCRIBE:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

.field public static final enum HTTP_REQUEST_UNSUBSCRIBE:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;


# instance fields
.field private m_val:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 145
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    const-string v1, "HTTP_REQUEST_GET"

    invoke-direct {v0, v1, v4, v4}, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->HTTP_REQUEST_GET:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    .line 149
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    const-string v1, "HTTP_REQUEST_POST"

    invoke-direct {v0, v1, v5, v5}, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->HTTP_REQUEST_POST:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    .line 153
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    const-string v1, "HTTP_REQUEST_M_POST"

    invoke-direct {v0, v1, v6, v6}, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->HTTP_REQUEST_M_POST:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    .line 157
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    const-string v1, "HTTP_REQUEST_NOTIFY"

    invoke-direct {v0, v1, v7, v7}, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->HTTP_REQUEST_NOTIFY:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    .line 161
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    const-string v1, "HTTP_REQUEST_SUBSCRIBE"

    invoke-direct {v0, v1, v8, v8}, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->HTTP_REQUEST_SUBSCRIBE:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    .line 165
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    const-string v1, "HTTP_REQUEST_UNSUBSCRIBE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->HTTP_REQUEST_UNSUBSCRIBE:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    .line 169
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    const-string v1, "HTTP_REQUEST_MSEARCH"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->HTTP_REQUEST_MSEARCH:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    .line 173
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    const-string v1, "HTTP_REQUEST_HEAD"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->HTTP_REQUEST_HEAD:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    .line 140
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    sget-object v1, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->HTTP_REQUEST_GET:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->HTTP_REQUEST_POST:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->HTTP_REQUEST_M_POST:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->HTTP_REQUEST_NOTIFY:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    aput-object v1, v0, v7

    sget-object v1, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->HTTP_REQUEST_SUBSCRIBE:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->HTTP_REQUEST_UNSUBSCRIBE:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->HTTP_REQUEST_MSEARCH:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->HTTP_REQUEST_HEAD:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->$VALUES:[Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 182
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 183
    iput p3, p0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->m_val:I

    .line 184
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 140
    const-class v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    return-object v0
.end method

.method public static values()[Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->$VALUES:[Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    invoke-virtual {v0}, [Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    return-object v0
.end method


# virtual methods
.method protected getVal()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->m_val:I

    return v0
.end method
