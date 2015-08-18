.class public final Lcom/lge/lgdrm/DrmManager;
.super Ljava/lang/Object;
.source "DrmManager.java"


# static fields
.field private static sInformed:I

.field private static sSLExtMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/lgdrm/DrmManager;->sSLExtMap:Ljava/util/HashMap;

    .line 73
    const/4 v0, 0x0

    sput v0, Lcom/lge/lgdrm/DrmManager;->sInformed:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method private static checkExtension(ILjava/lang/String;)I
    .locals 3
    .param p0, "agentType"    # I
    .param p1, "ext"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 598
    const/4 v0, 0x0

    .line 599
    .local v0, "storeAs":I
    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    const/16 v2, 0x9

    if-eq p0, v2, :cond_0

    const/16 v2, 0xa

    if-ne p0, v2, :cond_6

    .line 601
    :cond_0
    const-string v2, ".dm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ".dcf"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 602
    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    move v1, v0

    .line 618
    :cond_3
    return v1

    .line 603
    :cond_4
    const-string v2, ".odf"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, ".o4a"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, ".o4v"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, ".o4i"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 605
    :cond_5
    const/4 v0, 0x2

    goto :goto_0

    .line 609
    :cond_6
    const/4 v2, 0x5

    if-eq p0, v2, :cond_7

    const/4 v2, 0x7

    if-ne p0, v2, :cond_2

    .line 610
    :cond_7
    const-string v2, ".wma"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, ".wmv"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 611
    :cond_8
    const/4 v0, 0x5

    goto :goto_0

    .line 612
    :cond_9
    const-string v2, ".eny"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, ".pya"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, ".pyv"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 613
    :cond_a
    const/4 v0, 0x7

    goto :goto_0
.end method

.method private static checkSLExtMap(ILjava/lang/String;)Z
    .locals 4
    .param p0, "agentType"    # I
    .param p1, "ext"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 632
    sget-object v3, Lcom/lge/lgdrm/DrmManager;->sSLExtMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 633
    .local v0, "agent":Ljava/lang/Integer;
    if-eqz v0, :cond_3

    .line 634
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 635
    .local v1, "sAgentType":I
    if-ne v1, p0, :cond_1

    .line 647
    .end local v1    # "sAgentType":I
    :cond_0
    :goto_0
    return v2

    .line 638
    .restart local v1    # "sAgentType":I
    :cond_1
    const/4 v3, 0x2

    if-ne p0, v3, :cond_2

    if-eq v1, v2, :cond_0

    .line 642
    :cond_2
    const/4 v3, 0x7

    if-ne p0, v3, :cond_3

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    .line 647
    .end local v1    # "sAgentType":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static createContentManager(Ljava/lang/String;)Lcom/lge/lgdrm/DrmContentManager;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/lgdrm/DrmException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 179
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 180
    const/4 v0, 0x0

    .line 183
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/lge/lgdrm/DrmContentManager;->newInstance(Ljava/lang/String;)Lcom/lge/lgdrm/DrmContentManager;

    move-result-object v0

    goto :goto_0
.end method

.method public static createContentSession(Ljava/lang/String;Landroid/content/Context;)Lcom/lge/lgdrm/DrmContentSession;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/lgdrm/DrmException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 143
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 144
    const/4 v0, 0x0

    .line 156
    :goto_0
    return-object v0

    .line 147
    :cond_0
    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    if-eqz p1, :cond_2

    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->isUiThread()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/lge/lgdrm/DrmManager;->sInformed:I

    if-nez v0, :cond_2

    .line 149
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/lge/lgdrm/DrmManager;->getAgentInformation(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 150
    const-string v0, "No IMEI exist. Please write IMEI for using DRM contents!"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 152
    :cond_1
    sget v0, Lcom/lge/lgdrm/DrmManager;->sInformed:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lge/lgdrm/DrmManager;->sInformed:I

    .line 156
    :cond_2
    invoke-static {p0, p1}, Lcom/lge/lgdrm/DrmContentSession;->newInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/lge/lgdrm/DrmContentSession;

    move-result-object v0

    goto :goto_0
.end method

.method public static createObjectSession(ILandroid/content/Context;)Lcom/lge/lgdrm/DrmObjectSession;
    .locals 1
    .param p0, "downloadAgent"    # I
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 313
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 314
    const/4 v0, 0x0

    .line 317
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/lge/lgdrm/DrmObjectSession;->newInstance(ILandroid/content/Context;I)Lcom/lge/lgdrm/DrmObjectSession;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAgentInformation(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 449
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 450
    const/4 v0, 0x0

    .line 460
    :goto_0
    return-object v0

    .line 453
    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_1

    .line 454
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_1
    if-ltz p0, :cond_2

    const/4 v0, 0x2

    if-le p0, v0, :cond_3

    .line 457
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_3
    invoke-static {p0}, Lcom/lge/lgdrm/DrmManager;->nativeGetAgentInformation(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 572
    const/4 v0, 0x0

    .line 573
    .local v0, "ext":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 574
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 575
    .local v1, "lastDot":I
    if-gez v1, :cond_0

    .line 576
    const/4 v0, 0x0

    .line 584
    .end local v1    # "lastDot":I
    :goto_0
    return-object v0

    .line 578
    .restart local v1    # "lastDot":I
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 581
    .end local v1    # "lastDot":I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLastError()J
    .locals 2

    .prologue
    .line 558
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getObjectDrmType([B)I
    .locals 2
    .param p0, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 210
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 211
    const/4 v0, 0x0

    .line 218
    :goto_0
    return v0

    .line 214
    :cond_0
    if-nez p0, :cond_1

    .line 215
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter buf is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_1
    invoke-static {p0}, Lcom/lge/lgdrm/DrmManager;->nativeGetObjectDrmType([B)I

    move-result v0

    goto :goto_0
.end method

.method public static getObjectInfo(I[B)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/lgdrm/DrmException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 274
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 275
    const/4 v0, 0x0

    .line 285
    :goto_0
    return-object v0

    .line 278
    :cond_0
    const/4 v0, 0x1

    if-lt p0, v0, :cond_1

    const/4 v0, 0x2

    if-le p0, v0, :cond_2

    .line 279
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_2
    if-nez p1, :cond_3

    .line 282
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter buf is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_3
    invoke-static {p0, p1}, Lcom/lge/lgdrm/DrmManager;->nativeGetObjectInfo(I[B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getObjectMediaMimeType([B)Ljava/lang/String;
    .locals 2
    .param p0, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/lgdrm/DrmException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 239
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 240
    const/4 v0, 0x0

    .line 247
    :goto_0
    return-object v0

    .line 243
    :cond_0
    if-nez p0, :cond_1

    .line 244
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter buf is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_1
    invoke-static {p0}, Lcom/lge/lgdrm/DrmManager;->nativeGetObjectMediaMimeType([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSupportedAgent()[I
    .locals 1

    .prologue
    .line 380
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 381
    const/4 v0, 0x0

    .line 384
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeGetSupportedAgent()[I

    move-result-object v0

    goto :goto_0
.end method

.method public static isDRM(Ljava/lang/String;)I
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 114
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 122
    :goto_0
    return v0

    .line 118
    :cond_0
    if-nez p0, :cond_1

    .line 119
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter filename is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_1
    invoke-static {p0}, Lcom/lge/lgdrm/DrmManager;->nativeIsDRM(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static isSupportedAgent(I)Z
    .locals 5
    .param p0, "agentType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 414
    if-lt p0, v3, :cond_0

    const/16 v4, 0xf

    if-lt p0, v4, :cond_1

    .line 415
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid agentType"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 418
    :cond_1
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->getSupportedAgent()[I

    move-result-object v0

    .line 419
    .local v0, "agents":[I
    if-nez v0, :cond_3

    .line 429
    :cond_2
    :goto_0
    return v2

    .line 423
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 424
    aget v4, v0, v1

    if-ne v4, p0, :cond_4

    move v2, v3

    .line 425
    goto :goto_0

    .line 423
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isSupportedExtension(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "agentType"    # I
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 489
    sget-boolean v4, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v4, :cond_1

    .line 514
    :cond_0
    :goto_0
    return v2

    .line 493
    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    .line 494
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "parameter is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 497
    :cond_2
    invoke-static {p1, p2}, Lcom/lge/lgdrm/DrmManager;->getExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "ext":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 503
    invoke-static {p0, v0}, Lcom/lge/lgdrm/DrmManager;->checkExtension(ILjava/lang/String;)I

    move-result v1

    .line 504
    .local v1, "storeAs":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 509
    invoke-static {p0, v0}, Lcom/lge/lgdrm/DrmManager;->checkSLExtMap(ILjava/lang/String;)Z

    move-result v2

    if-ne v2, v3, :cond_3

    move v2, v3

    .line 510
    goto :goto_0

    .line 514
    :cond_3
    invoke-static {p0, v0, v1}, Lcom/lge/lgdrm/DrmManager;->updateSLExtMap(ILjava/lang/String;I)Z

    move-result v2

    goto :goto_0
.end method

.method private static isUiThread()Z
    .locals 2

    .prologue
    .line 160
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static manageDatabase(I)I
    .locals 2
    .param p0, "operation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 346
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 347
    const/4 v0, -0x1

    .line 357
    :goto_0
    return v0

    .line 350
    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_1

    .line 351
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_1
    if-ltz p0, :cond_2

    const/16 v0, 0x10

    if-lt p0, v0, :cond_3

    .line 355
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid operation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_3
    invoke-static {p0}, Lcom/lge/lgdrm/DrmManager;->nativeManageDatabase(I)I

    move-result v0

    goto :goto_0
.end method

.method private static native nativeAuthCaller()Z
.end method

.method private static native nativeGetAgentInformation(I)Ljava/lang/String;
.end method

.method private static native nativeGetContentBasicInfo(Lcom/lge/lgdrm/DrmContent;Ljava/lang/String;I)I
.end method

.method private static native nativeGetObjectDrmType([B)I
.end method

.method private static native nativeGetObjectInfo(I[B)Ljava/lang/String;
.end method

.method private static native nativeGetObjectMediaMimeType([B)Ljava/lang/String;
.end method

.method private static native nativeGetSupportedAgent()[I
.end method

.method private static native nativeIsDRM(Ljava/lang/String;)I
.end method

.method private static native nativeIsSupportedExtension(ILjava/lang/String;)Z
.end method

.method private static native nativeManageDatabase(I)I
.end method

.method private static native nativeSetDebugOptions(III)V
.end method

.method public static setDebugOptions(III)V
    .locals 2
    .param p0, "agentType"    # I
    .param p1, "option"    # I
    .param p2, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 540
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 549
    :goto_0
    return-void

    .line 544
    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_1

    .line 545
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/lge/lgdrm/DrmManager;->nativeSetDebugOptions(III)V

    goto :goto_0
.end method

.method private static updateSLExtMap(ILjava/lang/String;I)Z
    .locals 2
    .param p0, "agentType"    # I
    .param p1, "ext"    # Ljava/lang/String;
    .param p2, "storeAs"    # I

    .prologue
    .line 664
    invoke-static {p0, p1}, Lcom/lge/lgdrm/DrmManager;->nativeIsSupportedExtension(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 666
    if-eqz p2, :cond_0

    .line 667
    sget-object v0, Lcom/lge/lgdrm/DrmManager;->sSLExtMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    :goto_0
    const/4 v0, 0x1

    .line 673
    :goto_1
    return v0

    .line 669
    :cond_0
    sget-object v0, Lcom/lge/lgdrm/DrmManager;->sSLExtMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 673
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
