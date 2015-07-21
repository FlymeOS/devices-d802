.class public Lcom/lge/telephony/msim/LGPhoneFactory;
.super Ljava/lang/Object;
.source "LGPhoneFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LGPhoneFactory"

.field private static final VENDOR_PHONEFACTORY_ADAPTORS:[Ljava/lang/String;

.field private static mActivePhoneFactory:Lcom/lge/telephony/msim/LGPhoneFactoryBase;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 13
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "com.lge.telephony.msim.TargetPhoneFactoryAdaptor"

    aput-object v3, v2, v4

    sput-object v2, Lcom/lge/telephony/msim/LGPhoneFactory;->VENDOR_PHONEFACTORY_ADAPTORS:[Ljava/lang/String;

    .line 21
    sget-object v2, Lcom/lge/telephony/msim/LGPhoneFactory;->VENDOR_PHONEFACTORY_ADAPTORS:[Ljava/lang/String;

    invoke-static {v2}, Lcom/lge/telephony/msim/RuntimeLoader;->getActiveDefaultConstructorFromClassList([Ljava/lang/String;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 23
    .local v1, "msimConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-nez v1, :cond_0

    .line 24
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error!! don\'t load any class"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 29
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/telephony/msim/LGPhoneFactoryBase;

    sput-object v2, Lcom/lge/telephony/msim/LGPhoneFactory;->mActivePhoneFactory:Lcom/lge/telephony/msim/LGPhoneFactoryBase;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 40
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 33
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 35
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 37
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCdmaPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "simID"    # I

    .prologue
    .line 59
    sget-object v0, Lcom/lge/telephony/msim/LGPhoneFactory;->mActivePhoneFactory:Lcom/lge/telephony/msim/LGPhoneFactoryBase;

    invoke-virtual {v0, p0}, Lcom/lge/telephony/msim/LGPhoneFactoryBase;->getCdmaPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public static getDataSubscription()I
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/lge/telephony/msim/LGPhoneFactory;->mActivePhoneFactory:Lcom/lge/telephony/msim/LGPhoneFactoryBase;

    invoke-virtual {v0}, Lcom/lge/telephony/msim/LGPhoneFactoryBase;->getDataSubscription()I

    move-result v0

    return v0
.end method

.method public static getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/lge/telephony/msim/LGPhoneFactory;->mActivePhoneFactory:Lcom/lge/telephony/msim/LGPhoneFactoryBase;

    invoke-virtual {v0}, Lcom/lge/telephony/msim/LGPhoneFactoryBase;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultSubscription()I
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/lge/telephony/msim/LGPhoneFactory;->mActivePhoneFactory:Lcom/lge/telephony/msim/LGPhoneFactoryBase;

    invoke-virtual {v0}, Lcom/lge/telephony/msim/LGPhoneFactoryBase;->getDefaultSubscription()I

    move-result v0

    return v0
.end method

.method public static getGsmPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "simID"    # I

    .prologue
    .line 63
    sget-object v0, Lcom/lge/telephony/msim/LGPhoneFactory;->mActivePhoneFactory:Lcom/lge/telephony/msim/LGPhoneFactoryBase;

    invoke-virtual {v0, p0}, Lcom/lge/telephony/msim/LGPhoneFactoryBase;->getGsmPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public static getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "simID"    # I

    .prologue
    .line 67
    sget-object v0, Lcom/lge/telephony/msim/LGPhoneFactory;->mActivePhoneFactory:Lcom/lge/telephony/msim/LGPhoneFactoryBase;

    invoke-virtual {v0, p0}, Lcom/lge/telephony/msim/LGPhoneFactoryBase;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public static getSMSSubscription()I
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/lge/telephony/msim/LGPhoneFactory;->mActivePhoneFactory:Lcom/lge/telephony/msim/LGPhoneFactoryBase;

    invoke-virtual {v0}, Lcom/lge/telephony/msim/LGPhoneFactoryBase;->getSMSSubscription()I

    move-result v0

    return v0
.end method

.method public static isPromptEnabled()Z
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/lge/telephony/msim/LGPhoneFactory;->mActivePhoneFactory:Lcom/lge/telephony/msim/LGPhoneFactoryBase;

    invoke-virtual {v0}, Lcom/lge/telephony/msim/LGPhoneFactoryBase;->isPromptEnabled()Z

    move-result v0

    return v0
.end method

.method public static makeDefaultPhone(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    sget-object v0, Lcom/lge/telephony/msim/LGPhoneFactory;->mActivePhoneFactory:Lcom/lge/telephony/msim/LGPhoneFactoryBase;

    invoke-virtual {v0, p0}, Lcom/lge/telephony/msim/LGPhoneFactoryBase;->makeDefaultPhone(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public static makeDefaultPhones(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-static {p0}, Lcom/lge/telephony/msim/LGPhoneFactory;->makeDefaultPhone(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public static makeMultiSimDefaultPhones(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-static {p0}, Lcom/lge/telephony/msim/LGPhoneFactory;->makeDefaultPhone(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public static makeSipPhone(Ljava/lang/String;)V
    .locals 1
    .param p0, "sipUri"    # Ljava/lang/String;

    .prologue
    .line 71
    sget-object v0, Lcom/lge/telephony/msim/LGPhoneFactory;->mActivePhoneFactory:Lcom/lge/telephony/msim/LGPhoneFactoryBase;

    invoke-virtual {v0, p0}, Lcom/lge/telephony/msim/LGPhoneFactoryBase;->makeSipPhone(Ljava/lang/String;)V

    .line 72
    return-void
.end method


# virtual methods
.method public setDefaultSubscription(I)V
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 87
    sget-object v0, Lcom/lge/telephony/msim/LGPhoneFactory;->mActivePhoneFactory:Lcom/lge/telephony/msim/LGPhoneFactoryBase;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/msim/LGPhoneFactoryBase;->setDefaultSubscription(I)V

    .line 88
    return-void
.end method
