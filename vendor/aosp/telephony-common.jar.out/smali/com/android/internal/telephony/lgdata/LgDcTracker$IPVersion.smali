.class public final enum Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;
.super Ljava/lang/Enum;
.source "LgDcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/lgdata/LgDcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IPVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;

.field public static final enum INET:Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;

.field public static final enum INET6:Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1391
    new-instance v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;

    const-string v1, "INET"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;->INET:Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;

    new-instance v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;

    const-string v1, "INET6"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;->INET6:Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;

    .line 1390
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;

    sget-object v1, Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;->INET:Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;->INET6:Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;->$VALUES:[Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1390
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1390
    const-class v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;
    .locals 1

    .prologue
    .line 1390
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;->$VALUES:[Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/lgdata/LgDcTracker$IPVersion;

    return-object v0
.end method
