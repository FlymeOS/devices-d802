.class public Lcom/lge/loader/volumevibrator/VolumeVibratorManagerCreator;
.super Lcom/lge/loader/InstanceCreator;
.source "VolumeVibratorManagerCreator.java"


# static fields
.field private static LGSYSTEM_SERVICE_CORE_LIB:Ljava/lang/String;

.field private static VOL_VIBRATOR_MANAGER_CLASS:Ljava/lang/String;

.field private static sVolumeVibratorManagerConstructor:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 12
    const-string v2, "/system/framework/com.lge.systemservice.core.jar"

    sput-object v2, Lcom/lge/loader/volumevibrator/VolumeVibratorManagerCreator;->LGSYSTEM_SERVICE_CORE_LIB:Ljava/lang/String;

    .line 14
    const-string v2, "com.lge.systemservice.core.volumevibratormanager.VolumeVibratorManager"

    sput-object v2, Lcom/lge/loader/volumevibrator/VolumeVibratorManagerCreator;->VOL_VIBRATOR_MANAGER_CLASS:Ljava/lang/String;

    .line 18
    new-instance v0, Ldalvik/system/PathClassLoader;

    sget-object v2, Lcom/lge/loader/volumevibrator/VolumeVibratorManagerCreator;->LGSYSTEM_SERVICE_CORE_LIB:Ljava/lang/String;

    const-class v3, Lcom/lge/loader/volumevibrator/VolumeVibratorManagerCreator;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 21
    .local v0, "cloader":Ljava/lang/ClassLoader;
    :try_start_0
    sget-object v2, Lcom/lge/loader/volumevibrator/VolumeVibratorManagerCreator;->VOL_VIBRATOR_MANAGER_CLASS:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/lge/loader/volumevibrator/VolumeVibratorManagerCreator;->sVolumeVibratorManagerConstructor:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :goto_0
    return-void

    .line 23
    :catch_0
    move-exception v1

    .line 25
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "VolumeVibratorLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/lge/loader/volumevibrator/VolumeVibratorManagerCreator;->VOL_VIBRATOR_MANAGER_CLASS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " don\'t exist in library"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/lge/loader/InstanceCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "args"    # Ljava/lang/Object;

    .prologue
    .line 32
    :try_start_0
    sget-object v1, Lcom/lge/loader/volumevibrator/VolumeVibratorManagerCreator;->sVolumeVibratorManagerConstructor:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 33
    sget-object v1, Lcom/lge/loader/volumevibrator/VolumeVibratorManagerCreator;->sVolumeVibratorManagerConstructor:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 42
    :goto_0
    return-object v1

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 42
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 37
    :catch_1
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 39
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method
