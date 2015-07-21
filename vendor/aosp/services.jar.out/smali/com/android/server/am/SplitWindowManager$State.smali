.class final enum Lcom/android/server/am/SplitWindowManager$State;
.super Ljava/lang/Enum;
.source "SplitWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SplitWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/am/SplitWindowManager$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/am/SplitWindowManager$State;

.field public static final enum FINISHING:Lcom/android/server/am/SplitWindowManager$State;

.field public static final enum NORMAL:Lcom/android/server/am/SplitWindowManager$State;

.field public static final enum PREPARED:Lcom/android/server/am/SplitWindowManager$State;

.field public static final enum RECENTAPP:Lcom/android/server/am/SplitWindowManager$State;

.field public static final enum REQUESTED:Lcom/android/server/am/SplitWindowManager$State;

.field public static final enum SPLITED:Lcom/android/server/am/SplitWindowManager$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    new-instance v0, Lcom/android/server/am/SplitWindowManager$State;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/SplitWindowManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/SplitWindowManager$State;->NORMAL:Lcom/android/server/am/SplitWindowManager$State;

    .line 55
    new-instance v0, Lcom/android/server/am/SplitWindowManager$State;

    const-string v1, "REQUESTED"

    invoke-direct {v0, v1, v4}, Lcom/android/server/am/SplitWindowManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/SplitWindowManager$State;->REQUESTED:Lcom/android/server/am/SplitWindowManager$State;

    .line 56
    new-instance v0, Lcom/android/server/am/SplitWindowManager$State;

    const-string v1, "PREPARED"

    invoke-direct {v0, v1, v5}, Lcom/android/server/am/SplitWindowManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/SplitWindowManager$State;->PREPARED:Lcom/android/server/am/SplitWindowManager$State;

    .line 57
    new-instance v0, Lcom/android/server/am/SplitWindowManager$State;

    const-string v1, "SPLITED"

    invoke-direct {v0, v1, v6}, Lcom/android/server/am/SplitWindowManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/SplitWindowManager$State;->SPLITED:Lcom/android/server/am/SplitWindowManager$State;

    .line 58
    new-instance v0, Lcom/android/server/am/SplitWindowManager$State;

    const-string v1, "RECENTAPP"

    invoke-direct {v0, v1, v7}, Lcom/android/server/am/SplitWindowManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/SplitWindowManager$State;->RECENTAPP:Lcom/android/server/am/SplitWindowManager$State;

    .line 59
    new-instance v0, Lcom/android/server/am/SplitWindowManager$State;

    const-string v1, "FINISHING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/SplitWindowManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/SplitWindowManager$State;->FINISHING:Lcom/android/server/am/SplitWindowManager$State;

    .line 53
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/server/am/SplitWindowManager$State;

    sget-object v1, Lcom/android/server/am/SplitWindowManager$State;->NORMAL:Lcom/android/server/am/SplitWindowManager$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/am/SplitWindowManager$State;->REQUESTED:Lcom/android/server/am/SplitWindowManager$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/am/SplitWindowManager$State;->PREPARED:Lcom/android/server/am/SplitWindowManager$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/am/SplitWindowManager$State;->SPLITED:Lcom/android/server/am/SplitWindowManager$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/am/SplitWindowManager$State;->RECENTAPP:Lcom/android/server/am/SplitWindowManager$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/server/am/SplitWindowManager$State;->FINISHING:Lcom/android/server/am/SplitWindowManager$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/SplitWindowManager$State;->$VALUES:[Lcom/android/server/am/SplitWindowManager$State;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/SplitWindowManager$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lcom/android/server/am/SplitWindowManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/SplitWindowManager$State;

    return-object v0
.end method

.method public static values()[Lcom/android/server/am/SplitWindowManager$State;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/server/am/SplitWindowManager$State;->$VALUES:[Lcom/android/server/am/SplitWindowManager$State;

    invoke-virtual {v0}, [Lcom/android/server/am/SplitWindowManager$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/SplitWindowManager$State;

    return-object v0
.end method
