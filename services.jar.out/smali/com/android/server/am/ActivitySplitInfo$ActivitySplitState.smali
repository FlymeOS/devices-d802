.class final enum Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;
.super Ljava/lang/Enum;
.source "ActivitySplitInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivitySplitInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ActivitySplitState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

.field public static final enum NATIVE:Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

.field public static final enum NORMAL_REQUESTED:Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

.field public static final enum SPLITED_FULL:Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

.field public static final enum SPLITED_INVISIBLE:Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

.field public static final enum SPLITED_NORMAL:Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

.field public static final enum UN_SPLITING:Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    const-string v1, "NATIVE"

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;->NATIVE:Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    .line 24
    new-instance v0, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    const-string v1, "NORMAL_REQUESTED"

    invoke-direct {v0, v1, v4}, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;->NORMAL_REQUESTED:Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    .line 25
    new-instance v0, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    const-string v1, "SPLITED_NORMAL"

    invoke-direct {v0, v1, v5}, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;->SPLITED_NORMAL:Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    .line 26
    new-instance v0, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    const-string v1, "SPLITED_FULL"

    invoke-direct {v0, v1, v6}, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;->SPLITED_FULL:Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    .line 27
    new-instance v0, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    const-string v1, "SPLITED_INVISIBLE"

    invoke-direct {v0, v1, v7}, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;->SPLITED_INVISIBLE:Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    .line 28
    new-instance v0, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    const-string v1, "UN_SPLITING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;->UN_SPLITING:Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    .line 22
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    sget-object v1, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;->NATIVE:Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;->NORMAL_REQUESTED:Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;->SPLITED_NORMAL:Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;->SPLITED_FULL:Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;->SPLITED_INVISIBLE:Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;->UN_SPLITING:Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;->$VALUES:[Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    return-object v0
.end method

.method public static values()[Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;->$VALUES:[Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    invoke-virtual {v0}, [Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/ActivitySplitInfo$ActivitySplitState;

    return-object v0
.end method
