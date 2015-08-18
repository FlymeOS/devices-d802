.class public Lcom/lge/provider/LGSearchIndexablesContract;
.super Ljava/lang/Object;
.source "LGSearchIndexablesContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/provider/LGSearchIndexablesContract$BaseColumns;,
        Lcom/lge/provider/LGSearchIndexablesContract$NonIndexableKey;,
        Lcom/lge/provider/LGSearchIndexablesContract$RawData;,
        Lcom/lge/provider/LGSearchIndexablesContract$XmlResource;
    }
.end annotation


# static fields
.field public static final COLUMN_INDEX_NON_INDEXABLE_KEYS_KEY_VALUE:I = 0x0

.field public static final COLUMN_INDEX_RAW_CHECK_VALUE:I = 0x13

.field public static final COLUMN_INDEX_RAW_CLASS_NAME:I = 0x7

.field public static final COLUMN_INDEX_RAW_CURRENT_ENABLE:I = 0xe

.field public static final COLUMN_INDEX_RAW_ENTRIES:I = 0x4

.field public static final COLUMN_INDEX_RAW_ICON_RESID:I = 0x8

.field public static final COLUMN_INDEX_RAW_INTENT_ACTION:I = 0x9

.field public static final COLUMN_INDEX_RAW_INTENT_TARGET_CLASS:I = 0xb

.field public static final COLUMN_INDEX_RAW_INTENT_TARGET_PACKAGE:I = 0xa

.field public static final COLUMN_INDEX_RAW_KEY:I = 0xc

.field public static final COLUMN_INDEX_RAW_KEYWORDS:I = 0x5

.field public static final COLUMN_INDEX_RAW_PREPERENCE_TYPE:I = 0xf

.field public static final COLUMN_INDEX_RAW_RANK:I = 0x0

.field public static final COLUMN_INDEX_RAW_SCREEN_TITLE:I = 0x6

.field public static final COLUMN_INDEX_RAW_SETTINGS_DB_FIELD:I = 0x11

.field public static final COLUMN_INDEX_RAW_SETTINGS_DB_TABLE:I = 0x10

.field public static final COLUMN_INDEX_RAW_SUMMARY_OFF:I = 0x3

.field public static final COLUMN_INDEX_RAW_SUMMARY_ON:I = 0x2

.field public static final COLUMN_INDEX_RAW_TITLE:I = 0x1

.field public static final COLUMN_INDEX_RAW_USER_ID:I = 0xd

.field public static final COLUMN_INDEX_RAW_VISIBLE:I = 0x12

.field public static final COLUMN_INDEX_XML_RES_CLASS_NAME:I = 0x2

.field public static final COLUMN_INDEX_XML_RES_ICON_RESID:I = 0x3

.field public static final COLUMN_INDEX_XML_RES_INTENT_ACTION:I = 0x4

.field public static final COLUMN_INDEX_XML_RES_INTENT_TARGET_CLASS:I = 0x6

.field public static final COLUMN_INDEX_XML_RES_INTENT_TARGET_PACKAGE:I = 0x5

.field public static final COLUMN_INDEX_XML_RES_RANK:I = 0x0

.field public static final COLUMN_INDEX_XML_RES_RESID:I = 0x1

.field public static final INDEXABLES_RAW:Ljava/lang/String; = "indexables_raw"

.field public static final INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

.field public static final INDEXABLES_RAW_COLUMNS_SIZE:I = 0x14

.field public static final INDEXABLES_RAW_PATH:Ljava/lang/String; = "settings/indexables_raw"

.field public static final INDEXABLES_XML_RES:Ljava/lang/String; = "indexables_xml_res"

.field public static final INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

.field public static final INDEXABLES_XML_RES_PATH:Ljava/lang/String; = "settings/indexables_xml_res"

.field public static final NON_INDEXABLES_KEYS:Ljava/lang/String; = "non_indexables_key"

.field public static final NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

.field public static final NON_INDEXABLES_KEYS_PATH:Ljava/lang/String; = "settings/non_indexables_key"

.field public static final PROVIDER_INTERFACE:Ljava/lang/String; = "android.content.action.SEARCH_INDEXABLES_PROVIDER"

.field public static final SETTINGS:Ljava/lang/String; = "settings"

.field public static final SETTINGS_NEW_VALUE:Ljava/lang/String; = "newValue"

.field public static final SETTINGS_PERFORM:Ljava/lang/String; = "perform"

.field public static final SETTINGS_SEARCH:Ljava/lang/String; = "search"

.field public static final SETTINGS_SEARCH_ITEM:Ljava/lang/String; = "search_item"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 105
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "rank"

    aput-object v1, v0, v3

    const-string v1, "xmlResId"

    aput-object v1, v0, v4

    const-string v1, "className"

    aput-object v1, v0, v5

    const-string v1, "iconResId"

    aput-object v1, v0, v6

    const-string v1, "intentAction"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "intentTargetPackage"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "intentTargetClass"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/provider/LGSearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    .line 161
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "rank"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "summaryOn"

    aput-object v1, v0, v5

    const-string v1, "summaryOff"

    aput-object v1, v0, v6

    const-string v1, "entries"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "keywords"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "screenTitle"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "className"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "iconResId"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "intentAction"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "intentTargetPackage"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "intentTargetClass"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "key"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "user_id"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "currentEnable"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "preperenceType"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "settingsDBTableName"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "settingsDBField"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "visible"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "checkValue"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/provider/LGSearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    .line 314
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "key"

    aput-object v1, v0, v3

    sput-object v0, Lcom/lge/provider/LGSearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    return-void
.end method
