.class public final Lcom/lge/lgdrm/DrmCertManager;
.super Ljava/lang/Object;
.source "DrmCertManager.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static getIndex()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 131
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 132
    const/4 v0, -0x1

    .line 139
    :goto_0
    return v0

    .line 135
    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmCertManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_1
    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lge/lgdrm/DrmCertManager;->nativeManageCertificate(IILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static getInformation(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 187
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 188
    const/4 v0, 0x0

    .line 198
    :goto_0
    return-object v0

    .line 191
    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmCertManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_1
    const/4 v0, 0x1

    if-lt p0, v0, :cond_2

    const/4 v0, 0x2

    if-le p0, v0, :cond_3

    .line 196
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_3
    invoke-static {p0}, Lcom/lge/lgdrm/DrmCertManager;->nativeGetCertificateInformation(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isTestSet()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 211
    sget-boolean v1, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v0

    .line 215
    :cond_1
    invoke-static {}, Lcom/lge/lgdrm/DrmCertManager;->nativeAuthCaller()Z

    move-result v1

    if-nez v1, :cond_2

    .line 216
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_2
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/lge/lgdrm/DrmCertManager;->nativeManageCertificate(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 220
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static load(ZLjava/lang/String;)I
    .locals 3
    .param p0, "loadOnDemand"    # Z
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 243
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 244
    const/4 v0, -0x1

    .line 254
    :goto_0
    return v0

    .line 247
    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmCertManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_1
    if-eqz p0, :cond_2

    .line 252
    const/4 v0, 0x4

    invoke-static {v0, v2, p1}, Lcom/lge/lgdrm/DrmCertManager;->nativeManageCertificate(IILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 254
    :cond_2
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lcom/lge/lgdrm/DrmCertManager;->nativeManageCertificate(IILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private static native nativeAuthCaller()Z
.end method

.method private static native nativeGetCertificateInformation(I)Ljava/lang/String;
.end method

.method private static native nativeManageCertificate(IILjava/lang/String;)I
.end method

.method private static native nativeWriteCertificate(I[B)I
.end method

.method public static reset()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 153
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 154
    const/4 v0, -0x1

    .line 161
    :goto_0
    return v0

    .line 157
    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmCertManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_1
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lge/lgdrm/DrmCertManager;->nativeManageCertificate(IILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static setIndex(I)I
    .locals 2
    .param p0, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 109
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 110
    const/4 v0, -0x1

    .line 117
    :goto_0
    return v0

    .line 113
    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmCertManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_1
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/lge/lgdrm/DrmCertManager;->nativeManageCertificate(IILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static verify()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 85
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 86
    const/4 v0, -0x1

    .line 93
    :goto_0
    return v0

    .line 89
    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmCertManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lge/lgdrm/DrmCertManager;->nativeManageCertificate(IILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static write(I[B)I
    .locals 2
    .param p0, "type"    # I
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 53
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 54
    const/4 v0, -0x1

    .line 69
    :goto_0
    return v0

    .line 57
    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmCertManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    const/4 v0, 0x1

    if-lt p0, v0, :cond_2

    const/4 v0, 0x4

    if-le p0, v0, :cond_3

    .line 62
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_3
    if-nez p1, :cond_4

    .line 66
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter buf is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_4
    invoke-static {p0, p1}, Lcom/lge/lgdrm/DrmCertManager;->nativeWriteCertificate(I[B)I

    move-result v0

    goto :goto_0
.end method
