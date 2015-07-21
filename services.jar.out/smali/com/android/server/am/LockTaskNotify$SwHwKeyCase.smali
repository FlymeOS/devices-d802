.class final enum Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;
.super Ljava/lang/Enum;
.source "LockTaskNotify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/LockTaskNotify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SwHwKeyCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;

.field public static final enum HWMENUKEY:Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;

.field public static final enum HWRECENTKEY:Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;

.field public static final enum SWKEY:Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-instance v0, Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;

    const-string v1, "SWKEY"

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;->SWKEY:Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;

    .line 62
    new-instance v0, Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;

    const-string v1, "HWRECENTKEY"

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;->HWRECENTKEY:Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;

    .line 63
    new-instance v0, Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;

    const-string v1, "HWMENUKEY"

    invoke-direct {v0, v1, v4}, Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;->HWMENUKEY:Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;

    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;

    sget-object v1, Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;->SWKEY:Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;->HWRECENTKEY:Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;->HWMENUKEY:Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;->$VALUES:[Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;

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
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    const-class v0, Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;

    return-object v0
.end method

.method public static values()[Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;->$VALUES:[Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;

    invoke-virtual {v0}, [Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/LockTaskNotify$SwHwKeyCase;

    return-object v0
.end method
