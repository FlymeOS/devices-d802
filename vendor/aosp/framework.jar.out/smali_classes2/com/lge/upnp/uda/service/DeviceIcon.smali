.class public Lcom/lge/upnp/uda/service/DeviceIcon;
.super Ljava/lang/Object;
.source "DeviceIcon.java"


# instance fields
.field private mDepth:I

.field private mHeight:I

.field private mMimeType:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDepth()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/lge/upnp/uda/service/DeviceIcon;->mDepth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/lge/upnp/uda/service/DeviceIcon;->mHeight:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lge/upnp/uda/service/DeviceIcon;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/lge/upnp/uda/service/DeviceIcon;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/lge/upnp/uda/service/DeviceIcon;->mWidth:I

    return v0
.end method

.method public setDepth(I)V
    .locals 0
    .param p1, "depth"    # I

    .prologue
    .line 119
    iput p1, p0, Lcom/lge/upnp/uda/service/DeviceIcon;->mDepth:I

    .line 120
    return-void
.end method

.method public setDepth(Ljava/lang/String;)V
    .locals 2
    .param p1, "depth"    # Ljava/lang/String;

    .prologue
    .line 129
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lge/upnp/uda/service/DeviceIcon;->mDepth:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/upnp/uda/service/DeviceIcon;->mDepth:I

    goto :goto_0
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/lge/upnp/uda/service/DeviceIcon;->mHeight:I

    .line 89
    return-void
.end method

.method public setHeight(Ljava/lang/String;)V
    .locals 2
    .param p1, "height"    # Ljava/lang/String;

    .prologue
    .line 98
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lge/upnp/uda/service/DeviceIcon;->mHeight:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/upnp/uda/service/DeviceIcon;->mHeight:I

    goto :goto_0
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lge/upnp/uda/service/DeviceIcon;->mMimeType:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/lge/upnp/uda/service/DeviceIcon;->mUrl:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/lge/upnp/uda/service/DeviceIcon;->mWidth:I

    .line 58
    return-void
.end method

.method public setWidth(Ljava/lang/String;)V
    .locals 2
    .param p1, "width"    # Ljava/lang/String;

    .prologue
    .line 67
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lge/upnp/uda/service/DeviceIcon;->mWidth:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/upnp/uda/service/DeviceIcon;->mWidth:I

    goto :goto_0
.end method
