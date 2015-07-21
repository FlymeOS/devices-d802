.class public final enum Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;
.super Ljava/lang/Enum;
.source "IHttpResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/upnp/uda/http/IHttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HTTP_RESPONSES"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

.field public static final enum HTTP_100_Continue:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

.field public static final enum HTTP_200_OK:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

.field public static final enum HTTP_206_Partial_Content:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

.field public static final enum HTTP_400_Bad_Request:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

.field public static final enum HTTP_401_Invalid_Action:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

.field public static final enum HTTP_402_Invalid_Args:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

.field public static final enum HTTP_404_Invalid_Var:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

.field public static final enum HTTP_404_Page_Not_Found:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

.field public static final enum HTTP_405_Method_Not_Allowed:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

.field public static final enum HTTP_406_Not_Acceptable:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

.field public static final enum HTTP_408_Request_Timeout:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

.field public static final enum HTTP_411_Length_Required:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

.field public static final enum HTTP_412_Precondition_Failed:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

.field public static final enum HTTP_415_Unsupported_Media_Type:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

.field public static final enum HTTP_416_Req_Range_Not_Satisfiable:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

.field public static final enum HTTP_500_Internal_Server_Error:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

.field public static final enum HTTP_501_Action_Failed:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

.field public static final enum HTTP_600_Argument_Value_Invalid:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

.field public static final enum HTTP_601_Argument_Value_Out_of_Range:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

.field public static final enum HTTP_602_Optional_Action_Not_Implemented:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

.field public static final enum HTTP_603_Out_of_Memory:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

.field public static final enum HTTP_604_Human_Intervention_Required:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

.field public static final enum HTTP_605_String_Argument_Too_Long:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

.field public static final enum HTTP_606_Action_not_authorized:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

.field public static final enum HTTP_607_Signature_failure:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

.field public static final enum HTTP_608_Signature_missing:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

.field public static final enum HTTP_609_Not_encrypted:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

.field public static final enum HTTP_610_Invalid_sequence:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

.field public static final enum HTTP_611_Invalid_control_URL:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

.field public static final enum HTTP_612_No_such_session:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;


# instance fields
.field private m_val:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 61
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    const-string v1, "HTTP_100_Continue"

    invoke-direct {v0, v1, v4, v4}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_100_Continue:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    .line 65
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    const-string v1, "HTTP_200_OK"

    invoke-direct {v0, v1, v5, v5}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_200_OK:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    .line 69
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    const-string v1, "HTTP_206_Partial_Content"

    invoke-direct {v0, v1, v6, v6}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_206_Partial_Content:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    .line 73
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    const-string v1, "HTTP_400_Bad_Request"

    invoke-direct {v0, v1, v7, v7}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_400_Bad_Request:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    .line 77
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    const-string v1, "HTTP_401_Invalid_Action"

    invoke-direct {v0, v1, v8, v8}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_401_Invalid_Action:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    .line 81
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    const-string v1, "HTTP_402_Invalid_Args"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_402_Invalid_Args:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    .line 85
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    const-string v1, "HTTP_405_Method_Not_Allowed"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_405_Method_Not_Allowed:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    .line 89
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    const-string v1, "HTTP_406_Not_Acceptable"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_406_Not_Acceptable:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    .line 93
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    const-string v1, "HTTP_408_Request_Timeout"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_408_Request_Timeout:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    .line 97
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    const-string v1, "HTTP_411_Length_Required"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_411_Length_Required:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    .line 101
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    const-string v1, "HTTP_412_Precondition_Failed"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_412_Precondition_Failed:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    .line 105
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    const-string v1, "HTTP_415_Unsupported_Media_Type"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_415_Unsupported_Media_Type:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    .line 109
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    const-string v1, "HTTP_416_Req_Range_Not_Satisfiable"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_416_Req_Range_Not_Satisfiable:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    .line 113
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    const-string v1, "HTTP_404_Invalid_Var"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_404_Invalid_Var:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    .line 117
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    const-string v1, "HTTP_500_Internal_Server_Error"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_500_Internal_Server_Error:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    .line 121
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    const-string v1, "HTTP_501_Action_Failed"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_501_Action_Failed:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    .line 125
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    const-string v1, "HTTP_600_Argument_Value_Invalid"

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_600_Argument_Value_Invalid:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    .line 129
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    const-string v1, "HTTP_601_Argument_Value_Out_of_Range"

    const/16 v2, 0x11

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_601_Argument_Value_Out_of_Range:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    .line 133
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    const-string v1, "HTTP_602_Optional_Action_Not_Implemented"

    const/16 v2, 0x12

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_602_Optional_Action_Not_Implemented:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    .line 137
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    const-string v1, "HTTP_603_Out_of_Memory"

    const/16 v2, 0x13

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_603_Out_of_Memory:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    .line 141
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    const-string v1, "HTTP_604_Human_Intervention_Required"

    const/16 v2, 0x14

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_604_Human_Intervention_Required:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    .line 145
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    const-string v1, "HTTP_605_String_Argument_Too_Long"

    const/16 v2, 0x15

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_605_String_Argument_Too_Long:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    .line 149
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    const-string v1, "HTTP_606_Action_not_authorized"

    const/16 v2, 0x16

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_606_Action_not_authorized:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    .line 153
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    const-string v1, "HTTP_607_Signature_failure"

    const/16 v2, 0x17

    const/16 v3, 0x17

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_607_Signature_failure:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    .line 157
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    const-string v1, "HTTP_608_Signature_missing"

    const/16 v2, 0x18

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_608_Signature_missing:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    .line 161
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    const-string v1, "HTTP_609_Not_encrypted"

    const/16 v2, 0x19

    const/16 v3, 0x19

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_609_Not_encrypted:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    .line 165
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    const-string v1, "HTTP_610_Invalid_sequence"

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_610_Invalid_sequence:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    .line 169
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    const-string v1, "HTTP_611_Invalid_control_URL"

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_611_Invalid_control_URL:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    .line 173
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    const-string v1, "HTTP_612_No_such_session"

    const/16 v2, 0x1c

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_612_No_such_session:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    .line 177
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    const-string v1, "HTTP_404_Page_Not_Found"

    const/16 v2, 0x1d

    const/16 v3, 0x1d

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_404_Page_Not_Found:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    .line 57
    const/16 v0, 0x1e

    new-array v0, v0, [Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    sget-object v1, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_100_Continue:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_200_OK:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_206_Partial_Content:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_400_Bad_Request:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    aput-object v1, v0, v7

    sget-object v1, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_401_Invalid_Action:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_402_Invalid_Args:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_405_Method_Not_Allowed:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_406_Not_Acceptable:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_408_Request_Timeout:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_411_Length_Required:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_412_Precondition_Failed:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_415_Unsupported_Media_Type:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_416_Req_Range_Not_Satisfiable:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_404_Invalid_Var:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_500_Internal_Server_Error:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_501_Action_Failed:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_600_Argument_Value_Invalid:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_601_Argument_Value_Out_of_Range:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_602_Optional_Action_Not_Implemented:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_603_Out_of_Memory:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_604_Human_Intervention_Required:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_605_String_Argument_Too_Long:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_606_Action_not_authorized:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_607_Signature_failure:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_608_Signature_missing:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_609_Not_encrypted:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_610_Invalid_sequence:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_611_Invalid_control_URL:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_612_No_such_session:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->HTTP_404_Page_Not_Found:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->$VALUES:[Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 182
    iput p3, p0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->m_val:I

    .line 183
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    const-class v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    return-object v0
.end method

.method public static values()[Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->$VALUES:[Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    invoke-virtual {v0}, [Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    return-object v0
.end method


# virtual methods
.method protected GetVal()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->m_val:I

    return v0
.end method
