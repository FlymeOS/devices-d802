.class public Lcom/lge/upnp/uda/service/DeviceInfo;
.super Lcom/lge/upnp/uda/service/IDeviceInfo;
.source "DeviceInfo.java"


# instance fields
.field private m_ObjId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/lge/upnp/uda/service/IDeviceInfo;-><init>()V

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    .line 31
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "objId"    # J

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/lge/upnp/uda/service/IDeviceInfo;-><init>()V

    .line 39
    iput-wide p1, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    .line 40
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 499
    if-nez p1, :cond_1

    .line 513
    :cond_0
    :goto_0
    return v1

    .line 503
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 507
    check-cast v0, Lcom/lge/upnp/uda/service/DeviceInfo;

    .line 509
    .local v0, "other":Lcom/lge/upnp/uda/service/DeviceInfo;
    invoke-virtual {p0}, Lcom/lge/upnp/uda/service/DeviceInfo;->getObjectId()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/lge/upnp/uda/service/DeviceInfo;->getObjectId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 513
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAbsPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 452
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIDeviceInfo;->GetAbsPath(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChildren()[Lcom/lge/upnp/uda/service/IDeviceInfo;
    .locals 2

    .prologue
    .line 342
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIDeviceInfo;->GetChildren(J)[Lcom/lge/upnp/uda/service/IDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDevExpTime()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIDeviceInfo;->GetDevExpTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIDeviceInfo;->GetDeviceType(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDlnaDeviceNameList()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 409
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIDeviceInfo;->GetDlnaDeviceNameList(J)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtraTagList()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 486
    iget-wide v6, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    invoke-static {v6, v7}, Lcom/lge/upnp/uda/service/JNIDeviceInfo;->GetExtraTagList(J)[Ljava/lang/String;

    move-result-object v1

    .line 487
    .local v1, "arrStr":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 488
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 489
    .local v5, "tagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 490
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 494
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "str":Ljava/lang/String;
    .end local v5    # "tagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    const/4 v5, 0x0

    :cond_1
    return-object v5
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "arr":[B
    iget-wide v2, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    invoke-static {v2, v3}, Lcom/lge/upnp/uda/service/JNIDeviceInfo;->GetFriendlyName(J)[B

    move-result-object v0

    .line 89
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 90
    .local v1, "str":Ljava/lang/String;
    return-object v1
.end method

.method public getIcon(I)Lcom/lge/upnp/uda/service/IIconInfo;
    .locals 2
    .param p1, "iIndex"    # I

    .prologue
    .line 383
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    invoke-static {v0, v1, p1}, Lcom/lge/upnp/uda/service/JNIDeviceInfo;->GetIcon(JI)Lcom/lge/upnp/uda/service/IIconInfo;

    move-result-object v0

    return-object v0
.end method

.method public getIconList()[Lcom/lge/upnp/uda/service/IIconInfo;
    .locals 2

    .prologue
    .line 365
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIDeviceInfo;->GetIconList(J)[Lcom/lge/upnp/uda/service/IIconInfo;

    move-result-object v0

    return-object v0
.end method

.method public getManfacturer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIDeviceInfo;->GetManfacturer(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManfacutrerURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIDeviceInfo;->GetManfacutrerURL(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIDeviceInfo;->GetModelDescription(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIDeviceInfo;->GetModelName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIDeviceInfo;->GetModelNumber(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIDeviceInfo;->GetModelURL(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkInfo()Lcom/lge/upnp/uda/service/INetworkInfo;
    .locals 2

    .prologue
    .line 400
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIDeviceInfo;->GetNetworkInfo(J)Lcom/lge/upnp/uda/service/INetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNumServices()I
    .locals 2

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIDeviceInfo;->GetNumServices(J)I

    move-result v0

    return v0
.end method

.method public getObjectId()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    return-wide v0
.end method

.method public getParentDevice()Lcom/lge/upnp/uda/service/IDeviceInfo;
    .locals 2

    .prologue
    .line 175
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIDeviceInfo;->GetParentDevice(J)Lcom/lge/upnp/uda/service/IDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPresentationURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIDeviceInfo;->GetPresentationURL(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRelativeName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 464
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIDeviceInfo;->GetRelativeName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSchemaName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIDeviceInfo;->GetSchemaName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNum()Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIDeviceInfo;->GetSerialNum(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 440
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIDeviceInfo;->GetServerName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getService(I)Lcom/lge/upnp/uda/service/IServiceInfo;
    .locals 2
    .param p1, "iIndex"    # I

    .prologue
    .line 231
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    invoke-static {v0, v1, p1}, Lcom/lge/upnp/uda/service/JNIDeviceInfo;->GetService(JI)Lcom/lge/upnp/uda/service/IServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getService(Ljava/lang/String;)Lcom/lge/upnp/uda/service/IServiceInfo;
    .locals 2
    .param p1, "serviceId"    # Ljava/lang/String;

    .prologue
    .line 249
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    invoke-static {v0, v1, p1}, Lcom/lge/upnp/uda/service/JNIDeviceInfo;->GetService(JLjava/lang/String;)Lcom/lge/upnp/uda/service/IServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getServices()[Lcom/lge/upnp/uda/service/IServiceInfo;
    .locals 2

    .prologue
    .line 354
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIDeviceInfo;->GetServiceList(J)[Lcom/lge/upnp/uda/service/IServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getUPC()Ljava/lang/String;
    .locals 2

    .prologue
    .line 263
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIDeviceInfo;->GetUPC(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURLBase()Ljava/lang/String;
    .locals 2

    .prologue
    .line 275
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIDeviceInfo;->GetURLBase(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueDeviceId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 475
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIDeviceInfo;->GetUniqueDeviceId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueDeviceName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 285
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIDeviceInfo;->GetUniqueDeviceName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasChildren()Z
    .locals 2

    .prologue
    .line 296
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIDeviceInfo;->HasChildren(J)Z

    move-result v0

    return v0
.end method

.method public hasIcon()Z
    .locals 2

    .prologue
    .line 307
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIDeviceInfo;->HasIcon(J)Z

    move-result v0

    return v0
.end method

.method public hasServices()Z
    .locals 2

    .prologue
    .line 318
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIDeviceInfo;->HasServices(J)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 518
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    long-to-int v0, v0

    return v0
.end method

.method public isRootDevice()Z
    .locals 2

    .prologue
    .line 328
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIDeviceInfo;->IsRootDevice(J)Z

    move-result v0

    return v0
.end method

.method public setDeviceInfoObjId(J)V
    .locals 1
    .param p1, "objId"    # J

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    .line 49
    return-void
.end method

.method public setFriendlyName(Ljava/lang/String;)V
    .locals 2
    .param p1, "friendlyName"    # Ljava/lang/String;

    .prologue
    .line 422
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    invoke-static {v0, v1, p1}, Lcom/lge/upnp/uda/service/JNIDeviceInfo;->SetFriendlyName(JLjava/lang/String;)V

    .line 423
    return-void
.end method

.method public setUUID(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 431
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    invoke-static {v0, v1, p1}, Lcom/lge/upnp/uda/service/JNIDeviceInfo;->SetUUID(JLjava/lang/String;)V

    .line 432
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/lge/upnp/uda/service/DeviceInfo;->m_ObjId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
