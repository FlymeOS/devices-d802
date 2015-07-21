.class public Landroid/nfc/cardemulation/ApduServiceInfoEx;
.super Ljava/lang/Object;
.source "ApduServiceInfoEx.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfoEx;",
            ">;"
        }
    .end annotation
.end field

.field public static final POWER_STATE_BATTERY_OFF:I = 0x4

.field public static final POWER_STATE_SWITCH_OFF:I = 0x2

.field public static final POWER_STATE_SWITCH_ON:I = 0x1

.field public static final SECURE_ELEMENT_ESE:Ljava/lang/String; = "eSE"

.field public static final SECURE_ELEMENT_ROUTE_ALL:I = 0x3

.field public static final SECURE_ELEMENT_ROUTE_ESE:I = 0x1

.field public static final SECURE_ELEMENT_ROUTE_HOST:I = 0x0

.field public static final SECURE_ELEMENT_ROUTE_UICC:I = 0x2

.field public static final SECURE_ELEMENT_UICC:Ljava/lang/String; = "UICC"

.field static final TAG:Ljava/lang/String; = "ApduServiceInfoEx"


# instance fields
.field final mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 160
    new-instance v0, Landroid/nfc/cardemulation/ApduServiceInfoEx$1;

    invoke-direct {v0}, Landroid/nfc/cardemulation/ApduServiceInfoEx$1;-><init>()V

    sput-object v0, Landroid/nfc/cardemulation/ApduServiceInfoEx;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Z)V
    .locals 14
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;
    .param p3, "onHost"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    move-object/from16 v0, p2

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 73
    .local v9, "si":Landroid/content/pm/ServiceInfo;
    const/4 v4, 0x0

    .line 74
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v3, 0x0

    .line 76
    .local v3, "nxpParser":Landroid/content/res/XmlResourceParser;
    const/4 v11, 0x1

    move/from16 v0, p3

    if-ne v0, v11, :cond_0

    .line 77
    new-instance v11, Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;

    const/4 v12, -0x1

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;-><init>(II)V

    iput-object v11, p0, Landroid/nfc/cardemulation/ApduServiceInfoEx;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;

    .line 143
    :goto_0
    return-void

    .line 81
    :cond_0
    const-string v11, "android.nfc.cardemulation.host_apdu_service"

    invoke-virtual {v9, p1, v11}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 82
    const-string v11, "com.nxp.nfc.extensions"

    invoke-virtual {v9, p1, v11}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 83
    if-nez v4, :cond_1

    .line 84
    const-string v11, "ApduServiceInfoEx"

    const-string v12, "No com.nxp.nfc.extensions meta-data"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :goto_1
    if-eqz v3, :cond_d

    .line 93
    :try_start_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    .line 94
    .local v2, "eventType":I
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 95
    .local v1, "depth":I
    const/4 v8, 0x0

    .line 96
    .local v8, "seName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 98
    .local v6, "powerState":I
    :goto_2
    const/4 v11, 0x2

    if-eq v2, v11, :cond_2

    const/4 v11, 0x1

    if-eq v2, v11, :cond_2

    .line 99
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    goto :goto_2

    .line 86
    .end local v1    # "depth":I
    .end local v2    # "eventType":I
    .end local v6    # "powerState":I
    .end local v8    # "seName":Ljava/lang/String;
    :cond_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 101
    .restart local v1    # "depth":I
    .restart local v2    # "eventType":I
    .restart local v6    # "powerState":I
    .restart local v8    # "seName":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 102
    .local v10, "tagName":Ljava/lang/String;
    const-string v11, "extensions"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 103
    new-instance v11, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Meta-data does not start with <extensions> tag "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    .end local v1    # "depth":I
    .end local v2    # "eventType":I
    .end local v6    # "powerState":I
    .end local v8    # "seName":Ljava/lang/String;
    .end local v10    # "tagName":Ljava/lang/String;
    :catchall_0
    move-exception v11

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    throw v11

    .line 107
    .restart local v1    # "depth":I
    .restart local v2    # "eventType":I
    .restart local v6    # "powerState":I
    .restart local v8    # "seName":Ljava/lang/String;
    .restart local v10    # "tagName":Ljava/lang/String;
    :cond_3
    :goto_3
    :try_start_2
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v11, 0x3

    if-ne v2, v11, :cond_4

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    if-le v11, v1, :cond_a

    :cond_4
    const/4 v11, 0x1

    if-eq v2, v11, :cond_a

    .line 108
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 110
    const-string/jumbo v11, "nxp-se-ext-group"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 112
    const/4 v11, 0x2

    if-ne v2, v11, :cond_6

    const-string/jumbo v11, "se-id"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 114
    const/4 v11, 0x0

    const-string/jumbo v12, "name"

    invoke-interface {v3, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 115
    if-eqz v8, :cond_5

    const-string v11, "eSE"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "UICC"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 116
    :cond_5
    new-instance v11, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unsupported se name: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 118
    :cond_6
    const/4 v11, 0x2

    if-ne v2, v11, :cond_3

    const-string/jumbo v11, "se-power-state"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 120
    const/4 v11, 0x0

    const-string/jumbo v12, "name"

    invoke-interface {v3, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 121
    .local v5, "powerName":Ljava/lang/String;
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    invoke-interface {v3, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "true"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v7, 0x1

    .line 122
    .local v7, "powerValue":Z
    :goto_4
    const-string v11, "SwitchOn"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    if-eqz v7, :cond_8

    .line 123
    or-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 121
    .end local v7    # "powerValue":Z
    :cond_7
    const/4 v7, 0x0

    goto :goto_4

    .line 124
    .restart local v7    # "powerValue":Z
    :cond_8
    const-string v11, "SwitchOff"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    if-eqz v7, :cond_9

    .line 125
    or-int/lit8 v6, v6, 0x2

    goto/16 :goto_3

    .line 126
    :cond_9
    const-string v11, "BatteryOff"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    if-eqz v7, :cond_3

    .line 127
    or-int/lit8 v6, v6, 0x4

    goto/16 :goto_3

    .line 131
    .end local v5    # "powerName":Ljava/lang/String;
    .end local v7    # "powerValue":Z
    :cond_a
    if-eqz v8, :cond_c

    .line 132
    new-instance v12, Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;

    const-string v11, "eSE"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    const/4 v11, 0x1

    :goto_5
    invoke-direct {v12, v11, v6}, Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;-><init>(II)V

    iput-object v12, p0, Landroid/nfc/cardemulation/ApduServiceInfoEx;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;

    .line 133
    const-string v11, "ApduServiceInfoEx"

    iget-object v12, p0, Landroid/nfc/cardemulation/ApduServiceInfoEx;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;

    invoke-virtual {v12}, Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    :goto_6
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .line 132
    :cond_b
    const/4 v11, 0x2

    goto :goto_5

    .line 135
    :cond_c
    :try_start_3
    new-instance v11, Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;

    const/4 v12, -0x1

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;-><init>(II)V

    iput-object v11, p0, Landroid/nfc/cardemulation/ApduServiceInfoEx;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    .line 141
    .end local v1    # "depth":I
    .end local v2    # "eventType":I
    .end local v6    # "powerState":I
    .end local v8    # "seName":Ljava/lang/String;
    .end local v10    # "tagName":Ljava/lang/String;
    :cond_d
    new-instance v11, Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;

    const/4 v12, -0x1

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;-><init>(II)V

    iput-object v11, p0, Landroid/nfc/cardemulation/ApduServiceInfoEx;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;)V
    .locals 0
    .param p1, "seExtension"    # Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroid/nfc/cardemulation/ApduServiceInfoEx;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;

    .line 67
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public getSEInfo()Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfoEx;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 151
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfoEx;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;

    invoke-virtual {v0, p1, p2}, Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 152
    return-void
.end method
