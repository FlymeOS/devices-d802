.class public Landroid/telephony/TelephonyManager2;
.super Ljava/lang/Object;
.source "TelephonyManager2.java"


# static fields
.field private static sContext:Landroid/content/Context;

.field private static sInstance:Landroid/telephony/TelephonyManager2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Landroid/telephony/TelephonyManager2;

    invoke-direct {v0}, Landroid/telephony/TelephonyManager2;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyManager2;->sInstance:Landroid/telephony/TelephonyManager2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    sput-object v0, Landroid/telephony/TelephonyManager2;->sContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v1, Landroid/telephony/TelephonyManager2;->sContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 19
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 20
    sput-object v0, Landroid/telephony/TelephonyManager2;->sContext:Landroid/content/Context;

    .line 25
    .end local v0    # "appContext":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 22
    .restart local v0    # "appContext":Landroid/content/Context;
    :cond_1
    sput-object p1, Landroid/telephony/TelephonyManager2;->sContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static from(Landroid/content/Context;)Landroid/telephony/TelephonyManager2;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const-string/jumbo v0, "phone2"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager2;

    return-object v0
.end method

.method public static getDefault()Landroid/telephony/TelephonyManager2;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Landroid/telephony/TelephonyManager2;->sInstance:Landroid/telephony/TelephonyManager2;

    return-object v0
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 1

    .prologue
    .line 72
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSubscriberId()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 59
    const/4 v3, 0x1

    :try_start_0
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 60
    .local v1, "subid":[J
    invoke-direct {p0}, Landroid/telephony/TelephonyManager2;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberIdForSubscriber(J)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 65
    .end local v1    # "subid":[J
    :goto_0
    return-object v2

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 63
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 65
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method
