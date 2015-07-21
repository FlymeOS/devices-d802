.class public Lcom/lge/internal/hardware/fmradio/DeviceVariation$FmReceiverCustom;
.super Ljava/lang/Object;
.source "DeviceVariation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/internal/hardware/fmradio/DeviceVariation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FmReceiverCustom"
.end annotation


# static fields
.field private static frClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    :try_start_0
    const-string v0, "qcom.fmradio.FmReceiver"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/lge/internal/hardware/fmradio/DeviceVariation$FmReceiverCustom;->frClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setAnalogMode(Ljava/lang/Object;Z)Z
    .locals 6
    .param p0, "fr"    # Ljava/lang/Object;
    .param p1, "value"    # Z

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 38
    .local v0, "result":Z
    :try_start_0
    sget-object v1, Lcom/lge/internal/hardware/fmradio/DeviceVariation$FmReceiverCustom;->frClass:Ljava/lang/Class;

    if-eqz v1, :cond_0

    const-string v1, "ro.fm.analogpath.supported"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    sget-object v1, Lcom/lge/internal/hardware/fmradio/DeviceVariation$FmReceiverCustom;->frClass:Ljava/lang/Class;

    const-string/jumbo v2, "setAnalogMode"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 50
    :cond_0
    :goto_0
    return v0

    .line 47
    :catch_0
    move-exception v1

    goto :goto_0

    .line 45
    :catch_1
    move-exception v1

    goto :goto_0

    .line 43
    :catch_2
    move-exception v1

    goto :goto_0
.end method
