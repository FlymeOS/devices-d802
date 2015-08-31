.class public final enum Lcom/lge/wapservice/push/PushOpCfgItem;
.super Ljava/lang/Enum;
.source "PushOpCfgItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/wapservice/push/PushOpCfgItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/wapservice/push/PushOpCfgItem;

.field public static final enum PUSH_CFG_ACCEPTING_NULL_CREATED_TIME:Lcom/lge/wapservice/push/PushOpCfgItem;

.field public static final enum PUSH_CFG_ACCEPTING_SIGNAL_NONE_MESSAGE:Lcom/lge/wapservice/push/PushOpCfgItem;

.field public static final enum PUSH_CFG_BLACK_LIST_FUNCTION_ENABLED_I:Lcom/lge/wapservice/push/PushOpCfgItem;

.field public static final enum PUSH_CFG_HANDLING_ACTION_HIGH:Lcom/lge/wapservice/push/PushOpCfgItem;

.field public static final enum PUSH_CFG_HANDLING_ACTION_LOW:Lcom/lge/wapservice/push/PushOpCfgItem;

.field public static final enum PUSH_CFG_HANDLING_ACTION_MEDIUM:Lcom/lge/wapservice/push/PushOpCfgItem;

.field public static final enum PUSH_CFG_HANDLING_ACTION_NONE:Lcom/lge/wapservice/push/PushOpCfgItem;

.field public static final enum PUSH_CFG_HANDLING_CHECK_EXPLICITYLY_CREATE_TIME:Lcom/lge/wapservice/push/PushOpCfgItem;

.field public static final enum PUSH_CFG_HANDLING_EXECUTE_HIGH:Lcom/lge/wapservice/push/PushOpCfgItem;

.field public static final enum PUSH_CFG_HANDLING_EXECUTE_LOW:Lcom/lge/wapservice/push/PushOpCfgItem;

.field public static final enum PUSH_CFG_HANDLING_METHOD_CONTENT:Lcom/lge/wapservice/push/PushOpCfgItem;

.field public static final enum PUSH_CFG_HANDLING_METHOD_HREF:Lcom/lge/wapservice/push/PushOpCfgItem;

.field public static final enum PUSH_CFG_HANDLING_METHOD_SIID:Lcom/lge/wapservice/push/PushOpCfgItem;

.field public static final enum PUSH_CFG_HANDLING_PUSH_SL_CACHE:Lcom/lge/wapservice/push/PushOpCfgItem;

.field public static final enum PUSH_CFG_INDEX_END:Lcom/lge/wapservice/push/PushOpCfgItem;

.field public static final enum PUSH_CFG_RECV_ENABLED_I:Lcom/lge/wapservice/push/PushOpCfgItem;

.field public static final enum PUSH_CFG_SL_ENABLED_I:Lcom/lge/wapservice/push/PushOpCfgItem;

.field public static final enum PUSH_CFG_SL_OPTION_I:Lcom/lge/wapservice/push/PushOpCfgItem;

.field public static final enum PUSH_CFG_UNMATCH_UPDATE_ENABLED_I:Lcom/lge/wapservice/push/PushOpCfgItem;

.field public static final enum PUSH_CFG_VALIDATING_CREATED_TIME:Lcom/lge/wapservice/push/PushOpCfgItem;

.field public static final enum PUSH_CFG_VALIDATING_EXPIRE_TIME:Lcom/lge/wapservice/push/PushOpCfgItem;

.field public static final enum PUSH_CFG_WHITE_LIST_FUNCTION_ENABLED_I:Lcom/lge/wapservice/push/PushOpCfgItem;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lcom/lge/wapservice/push/PushOpCfgItem;

    const-string v1, "PUSH_CFG_HANDLING_METHOD_SIID"

    invoke-direct {v0, v1, v3}, Lcom/lge/wapservice/push/PushOpCfgItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_METHOD_SIID:Lcom/lge/wapservice/push/PushOpCfgItem;

    .line 22
    new-instance v0, Lcom/lge/wapservice/push/PushOpCfgItem;

    const-string v1, "PUSH_CFG_HANDLING_METHOD_HREF"

    invoke-direct {v0, v1, v4}, Lcom/lge/wapservice/push/PushOpCfgItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_METHOD_HREF:Lcom/lge/wapservice/push/PushOpCfgItem;

    .line 23
    new-instance v0, Lcom/lge/wapservice/push/PushOpCfgItem;

    const-string v1, "PUSH_CFG_HANDLING_METHOD_CONTENT"

    invoke-direct {v0, v1, v5}, Lcom/lge/wapservice/push/PushOpCfgItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_METHOD_CONTENT:Lcom/lge/wapservice/push/PushOpCfgItem;

    .line 24
    new-instance v0, Lcom/lge/wapservice/push/PushOpCfgItem;

    const-string v1, "PUSH_CFG_VALIDATING_CREATED_TIME"

    invoke-direct {v0, v1, v6}, Lcom/lge/wapservice/push/PushOpCfgItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_VALIDATING_CREATED_TIME:Lcom/lge/wapservice/push/PushOpCfgItem;

    .line 25
    new-instance v0, Lcom/lge/wapservice/push/PushOpCfgItem;

    const-string v1, "PUSH_CFG_VALIDATING_EXPIRE_TIME"

    invoke-direct {v0, v1, v7}, Lcom/lge/wapservice/push/PushOpCfgItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_VALIDATING_EXPIRE_TIME:Lcom/lge/wapservice/push/PushOpCfgItem;

    .line 26
    new-instance v0, Lcom/lge/wapservice/push/PushOpCfgItem;

    const-string v1, "PUSH_CFG_ACCEPTING_SIGNAL_NONE_MESSAGE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lge/wapservice/push/PushOpCfgItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_ACCEPTING_SIGNAL_NONE_MESSAGE:Lcom/lge/wapservice/push/PushOpCfgItem;

    .line 27
    new-instance v0, Lcom/lge/wapservice/push/PushOpCfgItem;

    const-string v1, "PUSH_CFG_ACCEPTING_NULL_CREATED_TIME"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lge/wapservice/push/PushOpCfgItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_ACCEPTING_NULL_CREATED_TIME:Lcom/lge/wapservice/push/PushOpCfgItem;

    .line 28
    new-instance v0, Lcom/lge/wapservice/push/PushOpCfgItem;

    const-string v1, "PUSH_CFG_HANDLING_ACTION_NONE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/lge/wapservice/push/PushOpCfgItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_ACTION_NONE:Lcom/lge/wapservice/push/PushOpCfgItem;

    .line 29
    new-instance v0, Lcom/lge/wapservice/push/PushOpCfgItem;

    const-string v1, "PUSH_CFG_HANDLING_ACTION_LOW"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/lge/wapservice/push/PushOpCfgItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_ACTION_LOW:Lcom/lge/wapservice/push/PushOpCfgItem;

    .line 30
    new-instance v0, Lcom/lge/wapservice/push/PushOpCfgItem;

    const-string v1, "PUSH_CFG_HANDLING_ACTION_MEDIUM"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/lge/wapservice/push/PushOpCfgItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_ACTION_MEDIUM:Lcom/lge/wapservice/push/PushOpCfgItem;

    .line 31
    new-instance v0, Lcom/lge/wapservice/push/PushOpCfgItem;

    const-string v1, "PUSH_CFG_HANDLING_ACTION_HIGH"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/lge/wapservice/push/PushOpCfgItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_ACTION_HIGH:Lcom/lge/wapservice/push/PushOpCfgItem;

    .line 32
    new-instance v0, Lcom/lge/wapservice/push/PushOpCfgItem;

    const-string v1, "PUSH_CFG_HANDLING_EXECUTE_LOW"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/lge/wapservice/push/PushOpCfgItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_EXECUTE_LOW:Lcom/lge/wapservice/push/PushOpCfgItem;

    .line 33
    new-instance v0, Lcom/lge/wapservice/push/PushOpCfgItem;

    const-string v1, "PUSH_CFG_HANDLING_EXECUTE_HIGH"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/lge/wapservice/push/PushOpCfgItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_EXECUTE_HIGH:Lcom/lge/wapservice/push/PushOpCfgItem;

    .line 34
    new-instance v0, Lcom/lge/wapservice/push/PushOpCfgItem;

    const-string v1, "PUSH_CFG_HANDLING_PUSH_SL_CACHE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/lge/wapservice/push/PushOpCfgItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_PUSH_SL_CACHE:Lcom/lge/wapservice/push/PushOpCfgItem;

    .line 35
    new-instance v0, Lcom/lge/wapservice/push/PushOpCfgItem;

    const-string v1, "PUSH_CFG_HANDLING_CHECK_EXPLICITYLY_CREATE_TIME"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/lge/wapservice/push/PushOpCfgItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_CHECK_EXPLICITYLY_CREATE_TIME:Lcom/lge/wapservice/push/PushOpCfgItem;

    .line 37
    new-instance v0, Lcom/lge/wapservice/push/PushOpCfgItem;

    const-string v1, "PUSH_CFG_RECV_ENABLED_I"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/lge/wapservice/push/PushOpCfgItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_RECV_ENABLED_I:Lcom/lge/wapservice/push/PushOpCfgItem;

    .line 38
    new-instance v0, Lcom/lge/wapservice/push/PushOpCfgItem;

    const-string v1, "PUSH_CFG_SL_ENABLED_I"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/lge/wapservice/push/PushOpCfgItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_SL_ENABLED_I:Lcom/lge/wapservice/push/PushOpCfgItem;

    .line 40
    new-instance v0, Lcom/lge/wapservice/push/PushOpCfgItem;

    const-string v1, "PUSH_CFG_SL_OPTION_I"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/lge/wapservice/push/PushOpCfgItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_SL_OPTION_I:Lcom/lge/wapservice/push/PushOpCfgItem;

    .line 41
    new-instance v0, Lcom/lge/wapservice/push/PushOpCfgItem;

    const-string v1, "PUSH_CFG_UNMATCH_UPDATE_ENABLED_I"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/lge/wapservice/push/PushOpCfgItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_UNMATCH_UPDATE_ENABLED_I:Lcom/lge/wapservice/push/PushOpCfgItem;

    .line 42
    new-instance v0, Lcom/lge/wapservice/push/PushOpCfgItem;

    const-string v1, "PUSH_CFG_BLACK_LIST_FUNCTION_ENABLED_I"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/lge/wapservice/push/PushOpCfgItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_BLACK_LIST_FUNCTION_ENABLED_I:Lcom/lge/wapservice/push/PushOpCfgItem;

    .line 43
    new-instance v0, Lcom/lge/wapservice/push/PushOpCfgItem;

    const-string v1, "PUSH_CFG_WHITE_LIST_FUNCTION_ENABLED_I"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/lge/wapservice/push/PushOpCfgItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_WHITE_LIST_FUNCTION_ENABLED_I:Lcom/lge/wapservice/push/PushOpCfgItem;

    .line 45
    new-instance v0, Lcom/lge/wapservice/push/PushOpCfgItem;

    const-string v1, "PUSH_CFG_INDEX_END"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/lge/wapservice/push/PushOpCfgItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_INDEX_END:Lcom/lge/wapservice/push/PushOpCfgItem;

    .line 19
    const/16 v0, 0x16

    new-array v0, v0, [Lcom/lge/wapservice/push/PushOpCfgItem;

    sget-object v1, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_METHOD_SIID:Lcom/lge/wapservice/push/PushOpCfgItem;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_METHOD_HREF:Lcom/lge/wapservice/push/PushOpCfgItem;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_METHOD_CONTENT:Lcom/lge/wapservice/push/PushOpCfgItem;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_VALIDATING_CREATED_TIME:Lcom/lge/wapservice/push/PushOpCfgItem;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_VALIDATING_EXPIRE_TIME:Lcom/lge/wapservice/push/PushOpCfgItem;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_ACCEPTING_SIGNAL_NONE_MESSAGE:Lcom/lge/wapservice/push/PushOpCfgItem;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_ACCEPTING_NULL_CREATED_TIME:Lcom/lge/wapservice/push/PushOpCfgItem;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_ACTION_NONE:Lcom/lge/wapservice/push/PushOpCfgItem;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_ACTION_LOW:Lcom/lge/wapservice/push/PushOpCfgItem;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_ACTION_MEDIUM:Lcom/lge/wapservice/push/PushOpCfgItem;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_ACTION_HIGH:Lcom/lge/wapservice/push/PushOpCfgItem;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_EXECUTE_LOW:Lcom/lge/wapservice/push/PushOpCfgItem;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_EXECUTE_HIGH:Lcom/lge/wapservice/push/PushOpCfgItem;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_PUSH_SL_CACHE:Lcom/lge/wapservice/push/PushOpCfgItem;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_CHECK_EXPLICITYLY_CREATE_TIME:Lcom/lge/wapservice/push/PushOpCfgItem;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_RECV_ENABLED_I:Lcom/lge/wapservice/push/PushOpCfgItem;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_SL_ENABLED_I:Lcom/lge/wapservice/push/PushOpCfgItem;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_SL_OPTION_I:Lcom/lge/wapservice/push/PushOpCfgItem;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_UNMATCH_UPDATE_ENABLED_I:Lcom/lge/wapservice/push/PushOpCfgItem;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_BLACK_LIST_FUNCTION_ENABLED_I:Lcom/lge/wapservice/push/PushOpCfgItem;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_WHITE_LIST_FUNCTION_ENABLED_I:Lcom/lge/wapservice/push/PushOpCfgItem;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_INDEX_END:Lcom/lge/wapservice/push/PushOpCfgItem;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/wapservice/push/PushOpCfgItem;->$VALUES:[Lcom/lge/wapservice/push/PushOpCfgItem;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/wapservice/push/PushOpCfgItem;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/lge/wapservice/push/PushOpCfgItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/wapservice/push/PushOpCfgItem;

    return-object v0
.end method

.method public static values()[Lcom/lge/wapservice/push/PushOpCfgItem;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/lge/wapservice/push/PushOpCfgItem;->$VALUES:[Lcom/lge/wapservice/push/PushOpCfgItem;

    invoke-virtual {v0}, [Lcom/lge/wapservice/push/PushOpCfgItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/wapservice/push/PushOpCfgItem;

    return-object v0
.end method
