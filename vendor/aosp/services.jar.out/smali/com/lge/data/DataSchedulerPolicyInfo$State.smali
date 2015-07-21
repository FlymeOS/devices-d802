.class public final enum Lcom/lge/data/DataSchedulerPolicyInfo$State;
.super Ljava/lang/Enum;
.source "DataSchedulerPolicyInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/data/DataSchedulerPolicyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/data/DataSchedulerPolicyInfo$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/data/DataSchedulerPolicyInfo$State;

.field public static final enum CANDIDATE:Lcom/lge/data/DataSchedulerPolicyInfo$State;

.field public static final enum NEW:Lcom/lge/data/DataSchedulerPolicyInfo$State;

.field public static final enum NOMINEE:Lcom/lge/data/DataSchedulerPolicyInfo$State;

.field public static final enum TARGET:Lcom/lge/data/DataSchedulerPolicyInfo$State;

.field public static final enum UNKNOWN:Lcom/lge/data/DataSchedulerPolicyInfo$State;

.field public static final enum WHITE:Lcom/lge/data/DataSchedulerPolicyInfo$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 123
    new-instance v0, Lcom/lge/data/DataSchedulerPolicyInfo$State;

    const-string v1, "WHITE"

    invoke-direct {v0, v1, v3}, Lcom/lge/data/DataSchedulerPolicyInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/data/DataSchedulerPolicyInfo$State;->WHITE:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    .line 124
    new-instance v0, Lcom/lge/data/DataSchedulerPolicyInfo$State;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v4}, Lcom/lge/data/DataSchedulerPolicyInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/data/DataSchedulerPolicyInfo$State;->NEW:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    .line 125
    new-instance v0, Lcom/lge/data/DataSchedulerPolicyInfo$State;

    const-string v1, "CANDIDATE"

    invoke-direct {v0, v1, v5}, Lcom/lge/data/DataSchedulerPolicyInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/data/DataSchedulerPolicyInfo$State;->CANDIDATE:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    .line 126
    new-instance v0, Lcom/lge/data/DataSchedulerPolicyInfo$State;

    const-string v1, "NOMINEE"

    invoke-direct {v0, v1, v6}, Lcom/lge/data/DataSchedulerPolicyInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/data/DataSchedulerPolicyInfo$State;->NOMINEE:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    .line 127
    new-instance v0, Lcom/lge/data/DataSchedulerPolicyInfo$State;

    const-string v1, "TARGET"

    invoke-direct {v0, v1, v7}, Lcom/lge/data/DataSchedulerPolicyInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/data/DataSchedulerPolicyInfo$State;->TARGET:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    .line 128
    new-instance v0, Lcom/lge/data/DataSchedulerPolicyInfo$State;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lge/data/DataSchedulerPolicyInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/data/DataSchedulerPolicyInfo$State;->UNKNOWN:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    .line 122
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/lge/data/DataSchedulerPolicyInfo$State;

    sget-object v1, Lcom/lge/data/DataSchedulerPolicyInfo$State;->WHITE:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/data/DataSchedulerPolicyInfo$State;->NEW:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/data/DataSchedulerPolicyInfo$State;->CANDIDATE:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/data/DataSchedulerPolicyInfo$State;->NOMINEE:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lge/data/DataSchedulerPolicyInfo$State;->TARGET:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lge/data/DataSchedulerPolicyInfo$State;->UNKNOWN:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/data/DataSchedulerPolicyInfo$State;->$VALUES:[Lcom/lge/data/DataSchedulerPolicyInfo$State;

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
    .line 122
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/data/DataSchedulerPolicyInfo$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 122
    const-class v0, Lcom/lge/data/DataSchedulerPolicyInfo$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/data/DataSchedulerPolicyInfo$State;

    return-object v0
.end method

.method public static values()[Lcom/lge/data/DataSchedulerPolicyInfo$State;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/lge/data/DataSchedulerPolicyInfo$State;->$VALUES:[Lcom/lge/data/DataSchedulerPolicyInfo$State;

    invoke-virtual {v0}, [Lcom/lge/data/DataSchedulerPolicyInfo$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/data/DataSchedulerPolicyInfo$State;

    return-object v0
.end method
