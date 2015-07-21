.class public final enum Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;
.super Ljava/lang/Enum;
.source "LGDataRecovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/lgdata/LGDataRecovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LinkState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

.field public static final enum LINKDOWN:Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

.field public static final enum LINKUP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 185
    new-instance v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

    const-string v1, "LINKDOWN"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;->LINKDOWN:Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

    .line 186
    new-instance v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

    const-string v1, "LINKUP"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;->LINKUP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

    .line 184
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

    sget-object v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;->LINKDOWN:Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;->LINKUP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;->$VALUES:[Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

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
    .line 184
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 184
    const-class v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;->$VALUES:[Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

    return-object v0
.end method
