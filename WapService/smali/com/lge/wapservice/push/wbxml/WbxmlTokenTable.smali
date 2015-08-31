.class public interface abstract Lcom/lge/wapservice/push/wbxml/WbxmlTokenTable;
.super Ljava/lang/Object;
.source "WbxmlTokenTable.java"


# static fields
.field public static final ATTRIBUTE_START_TABLE_CODEPAGE_SI:[Ljava/lang/String;

.field public static final ATTRIBUTE_START_TABLE_CODEPAGE_SL:[Ljava/lang/String;

.field public static final ATTRIBUTE_VALUE_TABLE_CODEPAGE_SI:[Ljava/lang/String;

.field public static final ATTRIBUTE_VALUE_TABLE_CODEPAGE_SL:[Ljava/lang/String;

.field public static final TAG_TABLE_CODEPAGE_SI:[Ljava/lang/String;

.field public static final TAG_TABLE_CODEPAGE_SL:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "si"

    aput-object v1, v0, v3

    const-string v1, "indication"

    aput-object v1, v0, v4

    const-string v1, "info"

    aput-object v1, v0, v5

    const-string v1, "item"

    aput-object v1, v0, v6

    sput-object v0, Lcom/lge/wapservice/push/wbxml/WbxmlTokenTable;->TAG_TABLE_CODEPAGE_SI:[Ljava/lang/String;

    .line 21
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "sl"

    aput-object v1, v0, v3

    sput-object v0, Lcom/lge/wapservice/push/wbxml/WbxmlTokenTable;->TAG_TABLE_CODEPAGE_SL:[Ljava/lang/String;

    .line 23
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "action=signal-none"

    aput-object v1, v0, v3

    const-string v1, "action=signal-low"

    aput-object v1, v0, v4

    const-string v1, "action=signal-medium"

    aput-object v1, v0, v5

    const-string v1, "action=signal-high"

    aput-object v1, v0, v6

    const-string v1, "action=delete"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "created"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "href"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "href=http://"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "href=http://www."

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "href=https://"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "href=https://www."

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "si-expires"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "si-id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "class"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/wapservice/push/wbxml/WbxmlTokenTable;->ATTRIBUTE_START_TABLE_CODEPAGE_SI:[Ljava/lang/String;

    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "action=execute-low"

    aput-object v1, v0, v3

    const-string v1, "action=execute-high"

    aput-object v1, v0, v4

    const-string v1, "action=cache"

    aput-object v1, v0, v5

    const-string v1, "href"

    aput-object v1, v0, v6

    const-string v1, "href=http://"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "href=http://www."

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "href=https://"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "href=https://www."

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/wapservice/push/wbxml/WbxmlTokenTable;->ATTRIBUTE_START_TABLE_CODEPAGE_SL:[Ljava/lang/String;

    .line 49
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, ".com/"

    aput-object v1, v0, v3

    const-string v1, ".edu/"

    aput-object v1, v0, v4

    const-string v1, ".net/"

    aput-object v1, v0, v5

    const-string v1, ".org/"

    aput-object v1, v0, v6

    sput-object v0, Lcom/lge/wapservice/push/wbxml/WbxmlTokenTable;->ATTRIBUTE_VALUE_TABLE_CODEPAGE_SI:[Ljava/lang/String;

    .line 55
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, ".com/"

    aput-object v1, v0, v3

    const-string v1, ".edu/"

    aput-object v1, v0, v4

    const-string v1, ".net/"

    aput-object v1, v0, v5

    const-string v1, ".org/"

    aput-object v1, v0, v6

    sput-object v0, Lcom/lge/wapservice/push/wbxml/WbxmlTokenTable;->ATTRIBUTE_VALUE_TABLE_CODEPAGE_SL:[Ljava/lang/String;

    return-void
.end method
