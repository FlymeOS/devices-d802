.class public Lcom/android/server/notification/NotificationVibrator;
.super Landroid/os/Vibrator;
.source "NotificationVibrator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationVibrator"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mVolumeVibrator:Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Vibrator;-><init>()V

    .line 22
    const-string v2, "NotificationVibrator"

    const-string v3, "Calling NotificationVibrator Constructor"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iput-object p1, p0, Lcom/android/server/notification/NotificationVibrator;->mContext:Landroid/content/Context;

    .line 24
    new-instance v1, Lcom/lge/loader/LGContextHelper;

    iget-object v2, p0, Lcom/android/server/notification/NotificationVibrator;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lge/loader/LGContextHelper;-><init>(Landroid/content/Context;)V

    .line 26
    .local v1, "helper":Lcom/lge/loader/LGContextHelper;
    :try_start_0
    const-string v2, "volumevibrator"

    invoke-virtual {v1, v2}, Lcom/lge/loader/LGContextHelper;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;

    iput-object v2, p0, Lcom/android/server/notification/NotificationVibrator;->mVolumeVibrator:Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 32
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 29
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getVibratorVolumePattern(I)[I
    .locals 5
    .param p1, "length"    # I

    .prologue
    .line 102
    const/4 v1, 0x0

    .line 103
    .local v1, "volume":I
    iget-object v3, p0, Lcom/android/server/notification/NotificationVibrator;->mVolumeVibrator:Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;

    if-eqz v3, :cond_0

    .line 104
    iget-object v3, p0, Lcom/android/server/notification/NotificationVibrator;->mVolumeVibrator:Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;

    iget-object v4, p0, Lcom/android/server/notification/NotificationVibrator;->mVolumeVibrator:Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;->getVibrateVolume(I)I

    move-result v1

    .line 105
    :cond_0
    new-array v2, p1, [I

    .line 106
    .local v2, "volumeArray":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 107
    aput v1, v2, v0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_1
    return-object v2
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 97
    const-string v0, "NotificationVibrator"

    const-string v1, "cancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/android/server/notification/NotificationVibrator;->mVolumeVibrator:Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;

    invoke-interface {v0}, Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;->cancel()V

    .line 99
    return-void
.end method

.method public hasVibrator()Z
    .locals 2

    .prologue
    .line 39
    const-string v0, "NotificationVibrator"

    const-string v1, "hasVibrator() unused method"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public vibrate(ILjava/lang/String;JLandroid/media/AudioAttributes;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "milliseconds"    # J
    .param p5, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 88
    return-void
.end method

.method public vibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "pattern"    # [J
    .param p4, "repeat"    # I
    .param p5, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 65
    const-string v4, "NotificationVibrator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vibrate() uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", opPkg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", repeat = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", attributes.mUsage = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p5}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 69
    .local v2, "identity":J
    :try_start_0
    array-length v4, p3

    invoke-direct {p0, v4}, Lcom/android/server/notification/NotificationVibrator;->getVibratorVolumePattern(I)[I

    move-result-object v1

    .line 70
    .local v1, "vibratePattern":[I
    iget-object v4, p0, Lcom/android/server/notification/NotificationVibrator;->mVolumeVibrator:Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;

    if-eqz v4, :cond_0

    .line 71
    iget-object v4, p0, Lcom/android/server/notification/NotificationVibrator;->mVolumeVibrator:Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;

    invoke-interface {v4, p3, p4, v1, p5}, Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;->vibrate([JI[ILandroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 77
    .end local v1    # "vibratePattern":[I
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_1
    const-string v4, "NotificationVibrator"

    const-string v5, "Unexpected ArrayIndexOutOfBoundsException was thrown"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public vibrate(J)V
    .locals 2
    .param p1, "milliseconds"    # J

    .prologue
    .line 48
    const-string v0, "NotificationVibrator"

    const-string v1, "vibrate() unused milliseconds vibrate method. one arg"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method

.method public vibrate(JLandroid/media/AudioAttributes;)V
    .locals 0
    .param p1, "milliseconds"    # J
    .param p3, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 81
    return-void
.end method

.method public vibrate([JI)V
    .locals 2
    .param p1, "pattern"    # [J
    .param p2, "repeat"    # I

    .prologue
    .line 57
    const-string v0, "NotificationVibrator"

    const-string v1, "vibrate() unused pattern vibrate method. two args"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method

.method public vibrate([JILandroid/media/AudioAttributes;)V
    .locals 0
    .param p1, "pattern"    # [J
    .param p2, "repeat"    # I
    .param p3, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 84
    return-void
.end method
