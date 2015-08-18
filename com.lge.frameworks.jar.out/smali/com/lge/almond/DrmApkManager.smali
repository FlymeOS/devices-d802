.class public final Lcom/lge/almond/DrmApkManager;
.super Ljava/lang/Object;
.source "DrmApkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/almond/DrmApkManager$DrmApkInfo;
    }
.end annotation


# static fields
.field public static final DRM_VERSION:Ljava/lang/String; = "1.0.1"

.field public static final LGDRM_ALMOND:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "lgalmond"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static getProtectionInfo(Ljava/lang/String;)Lcom/lge/almond/DrmApkManager$DrmApkInfo;
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 131
    if-nez p0, :cond_0

    .line 132
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Parameter filename is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 135
    :cond_0
    const-string v3, ".apk"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v0, v2

    .line 153
    :cond_1
    :goto_0
    return-object v0

    .line 140
    :cond_2
    new-instance v0, Lcom/lge/almond/DrmApkManager$DrmApkInfo;

    invoke-direct {v0}, Lcom/lge/almond/DrmApkManager$DrmApkInfo;-><init>()V

    .line 141
    .local v0, "dexInfo":Lcom/lge/almond/DrmApkManager$DrmApkInfo;
    invoke-static {p0, v0}, Lcom/lge/almond/DrmApkManager;->nativeGetProtectionInfo(Ljava/lang/String;Lcom/lge/almond/DrmApkManager$DrmApkInfo;)I

    move-result v1

    .line 142
    .local v1, "retVal":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    move-object v0, v2

    .line 144
    goto :goto_0

    .line 147
    :cond_3
    if-nez v1, :cond_1

    move-object v0, v2

    .line 149
    goto :goto_0
.end method

.method public static isProtected(Ljava/lang/String;)Z
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 106
    if-nez p0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter filename is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    const-string v0, ".odex"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-ne v1, v0, :cond_1

    .line 111
    invoke-static {p0, v1}, Lcom/lge/almond/DrmApkManager;->nativeIsProtected(Ljava/lang/String;Z)Z

    move-result v0

    .line 114
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/almond/DrmApkManager;->nativeIsProtected(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method private static native nativeGetProtectionInfo(Ljava/lang/String;Lcom/lge/almond/DrmApkManager$DrmApkInfo;)I
.end method

.method private static native nativeIsProtected(Ljava/lang/String;Z)Z
.end method
