.class Lcom/android/internal/telephony/LGSprintReassemblySms$Segment;
.super Ljava/lang/Object;
.source "LGSprintReassemblySms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGSprintReassemblySms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Segment"
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final COUNTER_LENGTH:I = 0xc

.field public static final EXPIRATION_TIME:I = 0x493e0

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final MAX_COUNT:I = 0xa

.field public static final MIN_COUNT:I = 0x2

.field public static final PDU:Ljava/lang/String; = "pdu"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final SEQUENCE:Ljava/lang/String; = "sequence"

.field public static final STATE_BRACE1:I = 0x1

.field public static final STATE_BRACE2:I = 0xb

.field public static final STATE_DONE:I = 0x15

.field public static final STATE_F:I = 0x10

.field public static final STATE_NUMBER1:I = 0x4

.field public static final STATE_NUMBER2:I = 0x9

.field public static final STATE_NUMBER3:I = 0xd

.field public static final STATE_NUMBER4:I = 0x13

.field public static final STATE_O:I = 0xf

.field public static final STATE_SLASH:I = 0x6

.field public static final STATE_SLASH2:I = 0x16

.field public static final STATE_SPACE1:I = 0x2

.field public static final STATE_SPACE2:I = 0x5

.field public static final STATE_SPACE3:I = 0x7

.field public static final STATE_SPACE4:I = 0xa

.field public static final STATE_SPACE5:I = 0xe

.field public static final STATE_SPACE6:I = 0x11

.field public static final STATE_SPACE7:I = 0x14

.field public static final STATE_START:I = 0x0

.field public static final STATE_ZERO1:I = 0x3

.field public static final STATE_ZERO2:I = 0x8

.field public static final STATE_ZERO3:I = 0xc

.field public static final STATE_ZERO4:I = 0x12

.field public static final TAG:Ljava/lang/String; = "SMS Segmentation"

.field public static final TIME:Ljava/lang/String; = "time"

.field public static final TOTAL_COUNT:Ljava/lang/String; = "totalCount"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "time"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "sequence"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "totalCount"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pdu"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms$Segment;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
