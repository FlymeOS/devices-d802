.class public Lcom/google/android/mms/pdu/PduParser;
.super Ljava/lang/Object;
.source "PduParser.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEBUG:Z = false

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LOCAL_LOGV:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PduParser"

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final QUOTE:I = 0x7f

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field private static final SHORT_LENGTH_MAX:I = 0x1e

.field private static final TEXT_MAX:I = 0x7f

.field private static final TEXT_MIN:I = 0x20

.field private static final THE_FIRST_PART:I = 0x0

.field private static final THE_LAST_PART:I = 0x1

.field private static final TYPE_QUOTED_STRING:I = 0x1

.field private static final TYPE_TEXT_STRING:I = 0x0

.field private static final TYPE_TOKEN_STRING:I = 0x2

.field protected static mAppContext:Landroid/content/Context;

.field private static mStartParam:[B

.field private static mTypeParam:[B


# instance fields
.field private mBody:Lcom/google/android/mms/pdu/PduBody;

.field private mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

.field private mPduDataStream:Ljava/io/ByteArrayInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    const-class v0, Lcom/google/android/mms/pdu/PduParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    .line 95
    sput-object v1, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    .line 100
    sput-object v1, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "pduDataStream"    # [B

    .prologue
    const/4 v0, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 85
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 90
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 120
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 121
    return-void
.end method

.method public constructor <init>([BLandroid/content/Context;)V
    .locals 1
    .param p1, "pduDataStream"    # [B
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 85
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 90
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 130
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 131
    sput-object p2, Lcom/google/android/mms/pdu/PduParser;->mAppContext:Landroid/content/Context;

    .line 132
    return-void
.end method

.method protected static checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z
    .locals 40
    .param p0, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;

    .prologue
    .line 1977
    if-nez p0, :cond_0

    .line 1978
    const/16 v37, 0x0

    .line 2184
    :goto_0
    return v37

    .line 1982
    :cond_0
    const/16 v37, 0x8c

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v8

    .line 1985
    .local v8, "messageType":I
    const/16 v37, 0x8d

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v9

    .line 1986
    .local v9, "mmsVersion":I
    if-nez v9, :cond_1

    .line 1988
    const/16 v37, 0x0

    goto :goto_0

    .line 1992
    :cond_1
    packed-switch v8, :pswitch_data_0

    .line 2181
    const/16 v37, 0x0

    goto :goto_0

    .line 1995
    :pswitch_0
    const/16 v37, 0x84

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v34

    .line 1996
    .local v34, "srContentType":[B
    if-nez v34, :cond_2

    .line 1997
    const/16 v37, 0x0

    goto :goto_0

    .line 2001
    :cond_2
    const/16 v37, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v35

    .line 2002
    .local v35, "srFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v35, :cond_3

    .line 2003
    const/16 v37, 0x0

    goto :goto_0

    .line 2007
    :cond_3
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v36

    .line 2008
    .local v36, "srTransactionId":[B
    if-nez v36, :cond_15

    .line 2009
    const/16 v37, 0x0

    goto :goto_0

    .line 2015
    .end local v34    # "srContentType":[B
    .end local v35    # "srFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v36    # "srTransactionId":[B
    :pswitch_1
    const/16 v37, 0x92

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v32

    .line 2016
    .local v32, "scResponseStatus":I
    if-nez v32, :cond_4

    .line 2017
    const/16 v37, 0x0

    goto :goto_0

    .line 2021
    :cond_4
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v33

    .line 2022
    .local v33, "scTransactionId":[B
    if-nez v33, :cond_15

    .line 2023
    const/16 v37, 0x0

    goto :goto_0

    .line 2029
    .end local v32    # "scResponseStatus":I
    .end local v33    # "scTransactionId":[B
    :pswitch_2
    const/16 v37, 0x83

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v10

    .line 2030
    .local v10, "niContentLocation":[B
    if-nez v10, :cond_5

    .line 2031
    const/16 v37, 0x0

    goto :goto_0

    .line 2035
    :cond_5
    const/16 v37, 0x88

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v12

    .line 2036
    .local v12, "niExpiry":J
    const-wide/16 v38, -0x1

    cmp-long v37, v38, v12

    if-nez v37, :cond_6

    .line 2037
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2041
    :cond_6
    const/16 v37, 0x8a

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v11

    .line 2042
    .local v11, "niMessageClass":[B
    if-nez v11, :cond_7

    .line 2043
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2047
    :cond_7
    const/16 v37, 0x8e

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v14

    .line 2048
    .local v14, "niMessageSize":J
    const-wide/16 v38, -0x1

    cmp-long v37, v38, v14

    if-nez v37, :cond_8

    .line 2049
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2053
    :cond_8
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v16

    .line 2054
    .local v16, "niTransactionId":[B
    if-nez v16, :cond_15

    .line 2055
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2061
    .end local v10    # "niContentLocation":[B
    .end local v11    # "niMessageClass":[B
    .end local v12    # "niExpiry":J
    .end local v14    # "niMessageSize":J
    .end local v16    # "niTransactionId":[B
    :pswitch_3
    const/16 v37, 0x95

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v17

    .line 2062
    .local v17, "nriStatus":I
    if-nez v17, :cond_9

    .line 2063
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2067
    :cond_9
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v18

    .line 2068
    .local v18, "nriTransactionId":[B
    if-nez v18, :cond_15

    .line 2069
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2075
    .end local v17    # "nriStatus":I
    .end local v18    # "nriTransactionId":[B
    :pswitch_4
    const/16 v37, 0x84

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v19

    .line 2076
    .local v19, "rcContentType":[B
    if-nez v19, :cond_a

    .line 2077
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2081
    :cond_a
    const/16 v37, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v20

    .line 2082
    .local v20, "rcDate":J
    const-wide/16 v38, -0x1

    cmp-long v37, v38, v20

    if-nez v37, :cond_15

    .line 2083
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2089
    .end local v19    # "rcContentType":[B
    .end local v20    # "rcDate":J
    :pswitch_5
    const/16 v37, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v4

    .line 2090
    .local v4, "diDate":J
    const-wide/16 v38, -0x1

    cmp-long v37, v38, v4

    if-nez v37, :cond_b

    .line 2091
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2095
    :cond_b
    const/16 v37, 0x8b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    .line 2096
    .local v3, "diMessageId":[B
    if-nez v3, :cond_c

    .line 2097
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2101
    :cond_c
    const/16 v37, 0x95

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v6

    .line 2102
    .local v6, "diStatus":I
    if-nez v6, :cond_d

    .line 2103
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2107
    :cond_d
    const/16 v37, 0x97

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v7

    .line 2108
    .local v7, "diTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v7, :cond_15

    .line 2109
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2115
    .end local v3    # "diMessageId":[B
    .end local v4    # "diDate":J
    .end local v6    # "diStatus":I
    .end local v7    # "diTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_6
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v2

    .line 2116
    .local v2, "aiTransactionId":[B
    if-nez v2, :cond_15

    .line 2117
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2123
    .end local v2    # "aiTransactionId":[B
    :pswitch_7
    const/16 v37, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v22

    .line 2124
    .local v22, "roDate":J
    const-wide/16 v38, -0x1

    cmp-long v37, v38, v22

    if-nez v37, :cond_e

    .line 2125
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2129
    :cond_e
    const/16 v37, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v24

    .line 2130
    .local v24, "roFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v24, :cond_f

    .line 2131
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2135
    :cond_f
    const/16 v37, 0x8b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v25

    .line 2136
    .local v25, "roMessageId":[B
    if-nez v25, :cond_10

    .line 2137
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2141
    :cond_10
    const/16 v37, 0x9b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v26

    .line 2142
    .local v26, "roReadStatus":I
    if-nez v26, :cond_11

    .line 2143
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2147
    :cond_11
    const/16 v37, 0x97

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v27

    .line 2148
    .local v27, "roTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v27, :cond_15

    .line 2149
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2155
    .end local v22    # "roDate":J
    .end local v24    # "roFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v25    # "roMessageId":[B
    .end local v26    # "roReadStatus":I
    .end local v27    # "roTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_8
    const/16 v37, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v28

    .line 2156
    .local v28, "rrFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v28, :cond_12

    .line 2157
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2161
    :cond_12
    const/16 v37, 0x8b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v29

    .line 2162
    .local v29, "rrMessageId":[B
    if-nez v29, :cond_13

    .line 2163
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2167
    :cond_13
    const/16 v37, 0x9b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v30

    .line 2168
    .local v30, "rrReadStatus":I
    if-nez v30, :cond_14

    .line 2169
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2173
    :cond_14
    const/16 v37, 0x97

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v31

    .line 2174
    .local v31, "rrTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v31, :cond_15

    .line 2175
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2184
    .end local v28    # "rrFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v29    # "rrMessageId":[B
    .end local v30    # "rrReadStatus":I
    .end local v31    # "rrTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_15
    const/16 v37, 0x1

    goto/16 :goto_0

    .line 1992
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private static checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I
    .locals 5
    .param p0, "part"    # Lcom/google/android/mms/pdu/PduPart;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1941
    sget-boolean v4, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1942
    :cond_0
    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    if-nez v4, :cond_2

    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-nez v4, :cond_2

    .line 1967
    :cond_1
    :goto_0
    return v2

    .line 1948
    :cond_2
    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-eqz v4, :cond_3

    .line 1949
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    .line 1950
    .local v0, "contentId":[B
    if-eqz v0, :cond_3

    .line 1951
    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-ne v2, v4, :cond_3

    move v2, v3

    .line 1952
    goto :goto_0

    .line 1958
    .end local v0    # "contentId":[B
    :cond_3
    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    if-eqz v4, :cond_1

    .line 1959
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    .line 1960
    .local v1, "contentType":[B
    if-eqz v1, :cond_1

    .line 1961
    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-ne v2, v4, :cond_1

    move v2, v3

    .line 1962
    goto :goto_0
.end method

.method protected static extractByteValue(Ljava/io/ByteArrayInputStream;)I
    .locals 2
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 1327
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1328
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1329
    .local v0, "temp":I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1330
    :cond_1
    and-int/lit16 v1, v0, 0xff

    return v1
.end method

.method private static extractMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 2192
    if-nez p0, :cond_1

    .line 2193
    const/4 p0, 0x0

    .line 2202
    .end local p0    # "type":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 2195
    .restart local p0    # "type":Ljava/lang/String;
    :cond_1
    const-string v0, "(?i).*application/vnd.oma.drm.content.*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2196
    const-string p0, "application/vnd.oma.drm.content"

    goto :goto_0

    .line 2197
    :cond_2
    const-string v0, "(?i).*application/vnd.oma.drm.message.*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2198
    const-string p0, "application/vnd.oma.drm.message"

    goto :goto_0

    .line 2199
    :cond_3
    const-string v0, "(?i).*application/vnd.oma.drm.dcf.*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2200
    const-string p0, "application/vnd.oma.drm.dcf"

    goto :goto_0
.end method

.method protected static getWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "stringType"    # I

    .prologue
    const/4 v3, -0x1

    .line 1293
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1294
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1295
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1296
    .local v1, "temp":I
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-ne v3, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1297
    :cond_1
    if-eq v3, v1, :cond_4

    if-eqz v1, :cond_4

    .line 1299
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 1300
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isTokenCharacter(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1301
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1309
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1310
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-ne v3, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1304
    :cond_3
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isText(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1305
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 1313
    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 1314
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 1317
    :goto_1
    return-object v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected static isText(I)Z
    .locals 2
    .param p0, "ch"    # I

    .prologue
    const/4 v0, 0x1

    .line 1277
    const/16 v1, 0x20

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7e

    if-le p0, v1, :cond_1

    :cond_0
    const/16 v1, 0x80

    if-lt p0, v1, :cond_2

    const/16 v1, 0xff

    if-gt p0, v1, :cond_2

    .line 1288
    :cond_1
    :goto_0
    :pswitch_0
    return v0

    .line 1281
    :cond_2
    packed-switch p0, :pswitch_data_0

    .line 1288
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1281
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static isTokenCharacter(I)Z
    .locals 2
    .param p0, "ch"    # I

    .prologue
    const/4 v0, 0x0

    .line 1233
    const/16 v1, 0x21

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7e

    if-le p0, v1, :cond_1

    .line 1258
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 1237
    :cond_1
    sparse-switch p0, :sswitch_data_0

    .line 1258
    const/4 v0, 0x1

    goto :goto_0

    .line 1237
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 1047
    return-void
.end method

.method protected static parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B
    .locals 11
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 1660
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v9, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v9, :cond_0

    if-nez p0, :cond_0

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1662
    :cond_0
    const/4 v0, 0x0

    .line 1663
    .local v0, "contentType":[B
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1664
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    .line 1665
    .local v8, "temp":I
    sget-boolean v9, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v9, :cond_1

    const/4 v9, -0x1

    if-ne v9, v8, :cond_1

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1666
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1668
    and-int/lit16 v1, v8, 0xff

    .line 1670
    .local v1, "cur":I
    const/16 v9, 0x20

    if-ge v1, v9, :cond_7

    .line 1671
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v5

    .line 1672
    .local v5, "length":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    .line 1673
    .local v7, "startPos":I
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1674
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    .line 1675
    sget-boolean v9, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v9, :cond_2

    const/4 v9, -0x1

    if-ne v9, v8, :cond_2

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1676
    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1677
    and-int/lit16 v3, v8, 0xff

    .line 1679
    .local v3, "first":I
    const/16 v9, 0x20

    if-lt v3, v9, :cond_4

    const/16 v9, 0x7f

    if-gt v3, v9, :cond_4

    .line 1680
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 1695
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .line 1696
    .local v2, "endPos":I
    sub-int v9, v7, v2

    sub-int v6, v5, v9

    .line 1697
    .local v6, "parameterLen":I
    if-lez v6, :cond_3

    .line 1698
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {p0, p1, v9}, Lcom/google/android/mms/pdu/PduParser;->parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 1701
    :cond_3
    if-gez v6, :cond_8

    .line 1702
    const-string v9, "PduParser"

    const-string v10, "Corrupt MMS message"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 1712
    .end local v2    # "endPos":I
    .end local v3    # "first":I
    .end local v5    # "length":I
    .end local v6    # "parameterLen":I
    .end local v7    # "startPos":I
    :goto_1
    return-object v9

    .line 1681
    .restart local v3    # "first":I
    .restart local v5    # "length":I
    .restart local v7    # "startPos":I
    :cond_4
    const/16 v9, 0x7f

    if-le v3, v9, :cond_6

    .line 1682
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .line 1684
    .local v4, "index":I
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v9, v9

    if-ge v4, v9, :cond_5

    .line 1685
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 1687
    :cond_5
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1688
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    goto :goto_0

    .line 1691
    .end local v4    # "index":I
    :cond_6
    const-string v9, "PduParser"

    const-string v10, "Corrupt content-type"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    goto :goto_1

    .line 1705
    .end local v3    # "first":I
    .end local v5    # "length":I
    .end local v7    # "startPos":I
    :cond_7
    const/16 v9, 0x7f

    if-gt v1, v9, :cond_9

    .line 1706
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    :cond_8
    :goto_2
    move-object v9, v0

    .line 1712
    goto :goto_1

    .line 1708
    :cond_9
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_2
.end method

.method protected static parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V
    .locals 22
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p2, "length"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1460
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v19, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v19, :cond_0

    if-nez p0, :cond_0

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19

    .line 1461
    :cond_0
    sget-boolean v19, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v19, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v19

    if-gtz v19, :cond_1

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19

    .line 1463
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v16

    .line 1464
    .local v16, "startPos":I
    const/16 v17, 0x0

    .line 1465
    .local v17, "tempPos":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1466
    .local v12, "lastLen":I
    :goto_0
    if-lez v12, :cond_d

    .line 1467
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v14

    .line 1468
    .local v14, "param":I
    sget-boolean v19, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v19, :cond_2

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v0, v14, :cond_2

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19

    .line 1469
    :cond_2
    add-int/lit8 v12, v12, -0x1

    .line 1471
    sparse-switch v14, :sswitch_data_0

    .line 1631
    const/16 v19, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 1632
    const-string v19, "PduParser"

    const-string v20, "Corrupt Content-Type"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1487
    :sswitch_0
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1488
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v9

    .line 1489
    .local v9, "first":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1490
    const/16 v19, 0x7f

    move/from16 v0, v19

    if-le v9, v0, :cond_4

    .line 1492
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v11

    .line 1494
    .local v11, "index":I
    sget-object v19, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v11, v0, :cond_3

    .line 1495
    sget-object v19, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v19, v19, v11

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    .line 1498
    .local v18, "type":[B
    if-eqz v18, :cond_3

    if-eqz p1, :cond_3

    .line 1499
    const/16 v19, 0x83

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1513
    .end local v11    # "index":I
    .end local v18    # "type":[B
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v17

    .line 1514
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v19

    sub-int v20, v16, v17

    sub-int v12, v19, v20

    .line 1515
    goto :goto_0

    .line 1507
    :cond_4
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v18

    .line 1508
    .restart local v18    # "type":[B
    if-eqz v18, :cond_3

    if-eqz p1, :cond_3

    .line 1509
    const/16 v19, 0x83

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1532
    .end local v9    # "first":I
    .end local v18    # "type":[B
    :sswitch_1
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v15

    .line 1533
    .local v15, "start":[B
    if-eqz v15, :cond_5

    if-eqz p1, :cond_5

    .line 1534
    const/16 v19, 0x99

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1537
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v17

    .line 1538
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v19

    sub-int v20, v16, v17

    sub-int v12, v19, v20

    .line 1539
    goto/16 :goto_0

    .line 1556
    .end local v15    # "start":[B
    :sswitch_2
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1557
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    .line 1558
    .local v10, "firstValue":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1560
    const/16 v19, 0x20

    move/from16 v0, v19

    if-le v10, v0, :cond_6

    const/16 v19, 0x7f

    move/from16 v0, v19

    if-lt v10, v0, :cond_7

    :cond_6
    if-nez v10, :cond_9

    .line 1563
    :cond_7
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 1565
    .local v6, "charsetStr":[B
    :try_start_0
    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v19 .. v19}, Lcom/google/android/mms/pdu/CharacterSets;->getMibEnumValue(Ljava/lang/String;)I

    move-result v5

    .line 1569
    .local v5, "charsetInt":I
    if-eqz p1, :cond_8

    .line 1570
    const/16 v19, 0x81

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1591
    .end local v5    # "charsetInt":I
    .end local v6    # "charsetStr":[B
    :cond_8
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v17

    .line 1592
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v19

    sub-int v20, v16, v17

    sub-int v12, v19, v20

    .line 1593
    goto/16 :goto_0

    .line 1573
    .restart local v6    # "charsetStr":[B
    :catch_0
    move-exception v7

    .line 1575
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    const-string v19, "PduParser"

    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1578
    if-eqz p1, :cond_8

    .line 1579
    const/16 v19, 0x81

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1585
    .end local v6    # "charsetStr":[B
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v4, v0

    .line 1586
    .local v4, "charset":I
    if-eqz p1, :cond_8

    .line 1587
    const/16 v19, 0x81

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1605
    .end local v4    # "charset":I
    .end local v10    # "firstValue":I
    :sswitch_3
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v13

    .line 1606
    .local v13, "name":[B
    if-eqz v13, :cond_a

    if-eqz p1, :cond_a

    .line 1607
    const/16 v19, 0x97

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1610
    :cond_a
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v17

    .line 1611
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v19

    sub-int v20, v16, v17

    sub-int v12, v19, v20

    .line 1612
    goto/16 :goto_0

    .line 1618
    .end local v13    # "name":[B
    :sswitch_4
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v8

    .line 1619
    .local v8, "fileName":[B
    if-eqz v8, :cond_b

    if-eqz p1, :cond_b

    .line 1620
    const/16 v19, 0x98

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1622
    :cond_b
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v17

    .line 1623
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v19

    sub-int v20, v16, v17

    sub-int v12, v19, v20

    .line 1624
    goto/16 :goto_0

    .line 1634
    .end local v8    # "fileName":[B
    :cond_c
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1640
    .end local v14    # "param":I
    :cond_d
    if-eqz v12, :cond_e

    .line 1641
    const-string v19, "PduParser"

    const-string v20, "Corrupt Content-Type"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    :cond_e
    return-void

    .line 1471
    nop

    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_2
        0x83 -> :sswitch_0
        0x85 -> :sswitch_3
        0x86 -> :sswitch_4
        0x89 -> :sswitch_0
        0x8a -> :sswitch_1
        0x97 -> :sswitch_3
        0x98 -> :sswitch_4
        0x99 -> :sswitch_1
    .end sparse-switch
.end method

.method protected static parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 10
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    const/4 v7, 0x0

    .line 1123
    sget-boolean v8, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    if-nez p0, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1124
    :cond_0
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1125
    const/4 v3, 0x0

    .line 1126
    .local v3, "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v0, 0x0

    .line 1127
    .local v0, "charset":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 1128
    .local v5, "temp":I
    sget-boolean v8, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v8, :cond_1

    const/4 v8, -0x1

    if-ne v8, v5, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1129
    :cond_1
    and-int/lit16 v2, v5, 0xff

    .line 1133
    .local v2, "first":I
    if-nez v2, :cond_2

    .line 1135
    const-string v8, "PduParser"

    const-string v9, "EncodedStringValue is null"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    :goto_0
    return-object v7

    .line 1140
    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1141
    const/16 v8, 0x20

    if-ge v2, v8, :cond_3

    .line 1142
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 1144
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1147
    :cond_3
    const/4 v8, 0x0

    invoke-static {p0, v8}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 1150
    .local v6, "textString":[B
    if-eqz v0, :cond_4

    .line 1151
    :try_start_0
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v0, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .end local v3    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v4, "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v3, v4

    .end local v4    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v3    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_1
    move-object v7, v3

    .line 1159
    goto :goto_0

    .line 1153
    :cond_4
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v4    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v3, v4

    .end local v4    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v3    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_1

    .line 1155
    :catch_0
    move-exception v1

    .line 1156
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method protected static parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 1402
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1403
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1404
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1405
    .local v0, "temp":I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1406
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1407
    const/16 v1, 0x7f

    if-le v0, v1, :cond_2

    .line 1408
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    int-to-long v2, v1

    .line 1410
    :goto_0
    return-wide v2

    :cond_2
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v2

    goto :goto_0
.end method

.method protected static parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    .locals 10
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    const/16 v9, 0x8

    const/4 v8, -0x1

    .line 1370
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p0, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1371
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1372
    .local v4, "temp":I
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-ne v8, v4, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1373
    :cond_1
    and-int/lit16 v0, v4, 0xff

    .line 1375
    .local v0, "count":I
    if-le v0, v9, :cond_2

    .line 1376
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Octet count greater than 8 and I can\'t represent that!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1379
    :cond_2
    const-wide/16 v2, 0x0

    .line 1381
    .local v2, "result":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 1382
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1383
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    if-ne v8, v4, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1384
    :cond_3
    shl-long/2addr v2, v9

    .line 1385
    and-int/lit16 v5, v4, 0xff

    int-to-long v6, v5

    add-long/2addr v2, v6

    .line 1381
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1388
    :cond_4
    return-wide v2
.end method

.method protected static parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z
    .locals 24
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .param p2, "length"    # I

    .prologue
    .line 1725
    sget-boolean v21, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v21, :cond_0

    if-nez p0, :cond_0

    new-instance v21, Ljava/lang/AssertionError;

    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    throw v21

    .line 1726
    :cond_0
    sget-boolean v21, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v21, :cond_1

    if-nez p1, :cond_1

    new-instance v21, Ljava/lang/AssertionError;

    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    throw v21

    .line 1727
    :cond_1
    sget-boolean v21, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v21, :cond_2

    if-gtz p2, :cond_2

    new-instance v21, Ljava/lang/AssertionError;

    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    throw v21

    .line 1745
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v12

    .line 1746
    .local v12, "startPos":I
    const/4 v15, 0x0

    .line 1747
    .local v15, "tempPos":I
    move/from16 v9, p2

    .line 1748
    .local v9, "lastLen":I
    :cond_3
    :goto_0
    if-lez v9, :cond_19

    .line 1749
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    .line 1750
    .local v7, "header":I
    sget-boolean v21, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v21, :cond_4

    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v0, v7, :cond_4

    new-instance v21, Ljava/lang/AssertionError;

    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    throw v21

    .line 1751
    :cond_4
    add-int/lit8 v9, v9, -0x1

    .line 1753
    const/16 v21, 0x7f

    move/from16 v0, v21

    if-le v7, v0, :cond_15

    .line 1755
    sparse-switch v7, :sswitch_data_0

    .line 1892
    const/16 v21, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_14

    .line 1893
    const-string v21, "PduParser"

    const-string v22, "Corrupt Part headers"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    const/16 v21, 0x0

    .line 1930
    .end local v7    # "header":I
    :goto_1
    return v21

    .line 1761
    .restart local v7    # "header":I
    :sswitch_0
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    .line 1762
    .local v4, "contentLocation":[B
    if-eqz v4, :cond_5

    .line 1763
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1766
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    .line 1767
    sub-int v21, v12, v15

    sub-int v9, p2, v21

    .line 1768
    goto :goto_0

    .line 1774
    .end local v4    # "contentLocation":[B
    :sswitch_1
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    .line 1775
    .local v3, "contentId":[B
    if-eqz v3, :cond_6

    .line 1776
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 1779
    :cond_6
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    .line 1780
    sub-int v21, v12, v15

    sub-int v9, p2, v21

    .line 1781
    goto :goto_0

    .line 1784
    .end local v3    # "contentId":[B
    :sswitch_2
    sget-object v21, Lcom/google/android/mms/ContentType;->OPERATOR_CODE:Ljava/lang/String;

    const-string v22, "SPR"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    sget-object v21, Lcom/google/android/mms/ContentType;->COUNTRY_CODE:Ljava/lang/String;

    const-string v22, "US"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_3

    :cond_7
    sget-object v21, Lcom/google/android/mms/ContentType;->OPERATOR_CODE:Ljava/lang/String;

    const-string v22, "BM"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    sget-object v21, Lcom/google/android/mms/ContentType;->COUNTRY_CODE:Ljava/lang/String;

    const-string v22, "US"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 1804
    :cond_8
    :sswitch_3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x1120051

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 1808
    .local v2, "contentDisposition":Z
    sget-object v21, Lcom/google/android/mms/ContentType;->OPERATOR_CODE:Ljava/lang/String;

    const-string v22, "SPR"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    sget-object v21, Lcom/google/android/mms/ContentType;->COUNTRY_CODE:Ljava/lang/String;

    const-string v22, "US"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_a

    :cond_9
    sget-object v21, Lcom/google/android/mms/ContentType;->OPERATOR_CODE:Ljava/lang/String;

    const-string v22, "BM"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    sget-object v21, Lcom/google/android/mms/ContentType;->COUNTRY_CODE:Ljava/lang/String;

    const-string v22, "US"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 1814
    :cond_a
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v5

    .line 1817
    .local v5, "disposition":[B
    if-eqz v5, :cond_3

    .line 1818
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    .line 1819
    .local v6, "disposition_string":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    const-string v22, "inline"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 1820
    sget-object v21, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_INLINE:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 1821
    const-string v21, "filename="

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    .line 1822
    .local v11, "position":I
    if-lez v11, :cond_b

    .line 1823
    new-instance v17, Ljava/lang/String;

    add-int/lit8 v21, v11, 0x9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1825
    .local v17, "temp_string":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 1840
    .end local v17    # "temp_string":Ljava/lang/String;
    :cond_b
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    .line 1841
    sub-int v21, v12, v15

    sub-int v9, p2, v21

    goto/16 :goto_0

    .line 1827
    .end local v11    # "position":I
    :cond_c
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    const-string v22, "attachment"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 1828
    sget-object v21, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_ATTACHMENT:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 1829
    const-string v21, "filename="

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    .line 1830
    .restart local v11    # "position":I
    if-lez v11, :cond_b

    .line 1831
    new-instance v17, Ljava/lang/String;

    add-int/lit8 v21, v11, 0x9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1833
    .restart local v17    # "temp_string":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    goto :goto_2

    .line 1836
    .end local v11    # "position":I
    .end local v17    # "temp_string":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1837
    const-string v21, "PduParser"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Not supported Part headers: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1844
    .end local v5    # "disposition":[B
    .end local v6    # "disposition_string":Ljava/lang/String;
    :cond_e
    if-eqz v2, :cond_3

    .line 1845
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    .line 1846
    .local v10, "len":I
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1847
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v19

    .line 1848
    .local v19, "thisStartPos":I
    const/16 v18, 0x0

    .line 1849
    .local v18, "thisEndPos":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v20

    .line 1851
    .local v20, "value":I
    const/16 v21, 0x80

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 1852
    sget-object v21, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_FROM_DATA:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 1865
    :goto_3
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v18

    .line 1866
    sub-int v21, v19, v18

    move/from16 v0, v21

    if-ge v0, v10, :cond_10

    .line 1867
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v20

    .line 1868
    const/16 v21, 0x98

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 1869
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 1874
    :cond_f
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v18

    .line 1875
    sub-int v21, v19, v18

    move/from16 v0, v21

    if-ge v0, v10, :cond_10

    .line 1876
    sub-int v21, v19, v18

    sub-int v8, v10, v21

    .line 1877
    .local v8, "last":I
    new-array v13, v8, [B

    .line 1878
    .local v13, "temp":[B
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v13, v1, v8}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 1882
    .end local v8    # "last":I
    .end local v13    # "temp":[B
    :cond_10
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    .line 1883
    sub-int v21, v12, v15

    sub-int v9, p2, v21

    .line 1884
    goto/16 :goto_0

    .line 1853
    :cond_11
    const/16 v21, 0x81

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    .line 1854
    sget-object v21, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_ATTACHMENT:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_3

    .line 1855
    :cond_12
    const/16 v21, 0x82

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_13

    .line 1856
    sget-object v21, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_INLINE:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_3

    .line 1858
    :cond_13
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1860
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto/16 :goto_3

    .line 1896
    .end local v2    # "contentDisposition":Z
    .end local v10    # "len":I
    .end local v18    # "thisEndPos":I
    .end local v19    # "thisStartPos":I
    .end local v20    # "value":I
    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1899
    :cond_15
    const/16 v21, 0x20

    move/from16 v0, v21

    if-lt v7, v0, :cond_17

    const/16 v21, 0x7f

    move/from16 v0, v21

    if-gt v7, v0, :cond_17

    .line 1901
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v14

    .line 1902
    .local v14, "tempHeader":[B
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v16

    .line 1905
    .local v16, "tempValue":[B
    const/16 v21, 0x1

    const-string v22, "Content-Transfer-Encoding"

    new-instance v23, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v0, v14}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_16

    .line 1907
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentTransferEncoding([B)V

    .line 1910
    :cond_16
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    .line 1911
    sub-int v21, v12, v15

    sub-int v9, p2, v21

    .line 1912
    goto/16 :goto_0

    .line 1917
    .end local v14    # "tempHeader":[B
    .end local v16    # "tempValue":[B
    :cond_17
    const/16 v21, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_18

    .line 1918
    const-string v21, "PduParser"

    const-string v22, "Corrupt Part headers"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 1921
    :cond_18
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1925
    .end local v7    # "header":I
    :cond_19
    if-eqz v9, :cond_1a

    .line 1926
    const-string v21, "PduParser"

    const-string v22, "Corrupt Part headers"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 1930
    :cond_1a
    const/16 v21, 0x1

    goto/16 :goto_1

    .line 1755
    :sswitch_data_0
    .sparse-switch
        0x8e -> :sswitch_0
        0xae -> :sswitch_2
        0xc0 -> :sswitch_1
        0xc5 -> :sswitch_3
    .end sparse-switch
.end method

.method protected static parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;
    .locals 31
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 887
    if-nez p0, :cond_1

    .line 888
    const/4 v4, 0x0

    .line 1035
    :cond_0
    :goto_0
    return-object v4

    .line 891
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v8

    .line 892
    .local v8, "count":I
    new-instance v4, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v4}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 894
    .local v4, "body":Lcom/google/android/mms/pdu/PduBody;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    if-ge v14, v8, :cond_0

    .line 895
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v13

    .line 896
    .local v13, "headerLength":I
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v9

    .line 897
    .local v9, "dataLength":I
    new-instance v19, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v19 .. v19}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 898
    .local v19, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v25

    .line 899
    .local v25, "startPos":I
    if-gtz v25, :cond_2

    .line 901
    const/4 v4, 0x0

    goto :goto_0

    .line 905
    :cond_2
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 906
    .local v16, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v7

    .line 907
    .local v7, "contentType":[B
    if-eqz v7, :cond_5

    .line 908
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 914
    :goto_2
    const/16 v27, 0x97

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [B

    move-object/from16 v18, v27

    check-cast v18, [B

    .line 915
    .local v18, "name":[B
    if-eqz v18, :cond_3

    .line 916
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 920
    :cond_3
    const/16 v27, 0x81

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 921
    .local v5, "charset":Ljava/lang/Integer;
    if-eqz v5, :cond_4

    .line 922
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 926
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v12

    .line 927
    .local v12, "endPos":I
    sub-int v27, v25, v12

    sub-int v23, v13, v27

    .line 928
    .local v23, "partHeaderLen":I
    if-lez v23, :cond_6

    .line 929
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/google/android/mms/pdu/PduParser;->parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z

    move-result v27

    if-nez v27, :cond_7

    .line 931
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 910
    .end local v5    # "charset":Ljava/lang/Integer;
    .end local v12    # "endPos":I
    .end local v18    # "name":[B
    .end local v23    # "partHeaderLen":I
    :cond_5
    sget-object v27, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/16 v28, 0x0

    aget-object v27, v27, v28

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    goto :goto_2

    .line 933
    .restart local v5    # "charset":Ljava/lang/Integer;
    .restart local v12    # "endPos":I
    .restart local v18    # "name":[B
    .restart local v23    # "partHeaderLen":I
    :cond_6
    if-gez v23, :cond_7

    .line 935
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 941
    :cond_7
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v27

    if-nez v27, :cond_8

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v27

    if-nez v27, :cond_8

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v27

    if-nez v27, :cond_8

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v27

    if-nez v27, :cond_8

    .line 945
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 950
    :cond_8
    if-lez v9, :cond_9

    .line 951
    new-array v0, v9, [B

    move-object/from16 v21, v0

    .line 952
    .local v21, "partData":[B
    new-instance v20, Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 953
    .local v20, "partContentType":Ljava/lang/String;
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2, v9}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 954
    const-string v27, "application/vnd.wap.multipart.alternative"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 956
    new-instance v27, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v6

    .line 958
    .local v6, "childBody":Lcom/google/android/mms/pdu/PduBody;
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v19

    .line 1026
    .end local v6    # "childBody":Lcom/google/android/mms/pdu/PduBody;
    .end local v20    # "partContentType":Ljava/lang/String;
    .end local v21    # "partData":[B
    :cond_9
    :goto_3
    invoke-static/range {v19 .. v19}, Lcom/google/android/mms/pdu/PduParser;->checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I

    move-result v27

    if-nez v27, :cond_13

    .line 1028
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    .line 894
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 961
    .restart local v20    # "partContentType":Ljava/lang/String;
    .restart local v21    # "partData":[B
    :cond_a
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/PduPart;->getContentTransferEncoding()[B

    move-result-object v22

    .line 962
    .local v22, "partDataEncoding":[B
    if-eqz v22, :cond_b

    .line 963
    new-instance v11, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-direct {v11, v0}, Ljava/lang/String;-><init>([B)V

    .line 964
    .local v11, "encoding":Ljava/lang/String;
    const-string v27, "base64"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_c

    .line 966
    invoke-static/range {v21 .. v21}, Lcom/google/android/mms/pdu/Base64;->decodeBase64([B)[B

    move-result-object v21

    .line 974
    .end local v11    # "encoding":Ljava/lang/String;
    :cond_b
    :goto_5
    if-nez v21, :cond_d

    .line 975
    const-string v27, "Decode part data error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 976
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 967
    .restart local v11    # "encoding":Ljava/lang/String;
    :cond_c
    const-string v27, "quoted-printable"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_b

    .line 969
    invoke-static/range {v21 .. v21}, Lcom/google/android/mms/pdu/QuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object v21

    goto :goto_5

    .line 981
    .end local v11    # "encoding":Ljava/lang/String;
    :cond_d
    sget-object v27, Lcom/google/android/mms/pdu/PduParser;->mAppContext:Landroid/content/Context;

    if-eqz v27, :cond_12

    .line 982
    const/4 v15, 0x0

    .line 983
    .local v15, "isDrmContent":Z
    const/16 v26, 0x0

    .line 984
    .local v26, "type":Ljava/lang/String;
    if-nez v7, :cond_f

    .line 986
    :try_start_0
    invoke-static/range {v21 .. v21}, Lcom/lge/lgdrm/DrmManager;->getObjectMediaMimeType([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v26

    .line 994
    :goto_6
    const-string v27, "PduParser"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Content Type (before) : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    invoke-static/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduParser;->extractMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 997
    .local v17, "mimeType":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_10

    .line 998
    const-string v27, "PduParser"

    const-string v28, "DRM is TRUE"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_e

    .line 1000
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 1002
    :cond_e
    const/4 v15, 0x1

    .line 1007
    :goto_7
    const-string v27, "PduParser"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Content Type (after) : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    new-instance v29, Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    const-string v27, "PduParser"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "isDrmContent : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    if-eqz v15, :cond_11

    .line 1010
    const-string v27, "PduParser"

    const-string v28, "processDrmObject()"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    sget-object v27, Lcom/google/android/mms/pdu/PduParser;->mAppContext:Landroid/content/Context;

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/google/android/mms/pdu/PduParser;->processDrmObject(Landroid/content/Context;Ljava/lang/String;[B)[B

    move-result-object v24

    .line 1012
    .local v24, "result":[B
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    goto/16 :goto_3

    .line 987
    .end local v17    # "mimeType":Ljava/lang/String;
    .end local v24    # "result":[B
    :catch_0
    move-exception v10

    .line 988
    .local v10, "e":Ljava/lang/Exception;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "parseParts() : DrmManager.getObjectMediaMimeType : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 991
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_f
    new-instance v26, Ljava/lang/String;

    .end local v26    # "type":Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([B)V

    .restart local v26    # "type":Ljava/lang/String;
    goto/16 :goto_6

    .line 1004
    .restart local v17    # "mimeType":Ljava/lang/String;
    :cond_10
    const-string v27, "PduParser"

    const-string v28, "DRM is FALSE"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1014
    :cond_11
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    goto/16 :goto_3

    .line 1019
    .end local v15    # "isDrmContent":Z
    .end local v17    # "mimeType":Ljava/lang/String;
    .end local v26    # "type":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    goto/16 :goto_3

    .line 1031
    .end local v20    # "partContentType":Ljava/lang/String;
    .end local v21    # "partData":[B
    .end local v22    # "partDataEncoding":[B
    :cond_13
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto/16 :goto_4
.end method

.method protected static parseShortInteger(Ljava/io/ByteArrayInputStream;)I
    .locals 2
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 1347
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1348
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1349
    .local v0, "temp":I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1350
    :cond_1
    and-int/lit8 v1, v0, 0x7f

    return v1
.end method

.method protected static parseSingleBodyPart(Ljava/io/ByteArrayInputStream;Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/mms/pdu/PduBody;
    .locals 10
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const/4 v0, 0x0

    .line 2313
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2365
    :cond_0
    :goto_0
    return-object v0

    .line 2316
    :cond_1
    const-string v6, "PduParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[LGE]parseSingleBodyPart / MMS with single body only received ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 2319
    .local v1, "dataLength":I
    if-gtz v1, :cond_2

    .line 2320
    const-string v6, "PduParser"

    const-string v7, "[LGE]parseSingleBodyPart / Data stream is empty"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2325
    :cond_2
    new-instance v3, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v3}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 2327
    .local v3, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 2329
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 2332
    new-array v4, v1, [B

    .line 2333
    .local v4, "partData":[B
    invoke-virtual {p0, v4, v9, v1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 2334
    if-nez v4, :cond_3

    .line 2335
    const-string v6, "PduParser"

    const-string v7, "[LGE]parseSingleBodyPart / Unable to read body part data in PDU"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2340
    :cond_3
    if-eqz p2, :cond_6

    .line 2341
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->extractMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2342
    .local v2, "mimeType":Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2343
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 2344
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 2347
    :cond_4
    const-string v6, "PduParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[LGE]parseSingleBodyPart / DRM object included ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    invoke-static {p2, v2, v4}, Lcom/google/android/mms/pdu/PduParser;->processDrmObject(Landroid/content/Context;Ljava/lang/String;[B)[B

    move-result-object v5

    .line 2349
    .local v5, "result":[B
    invoke-virtual {v3, v5}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 2358
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v5    # "result":[B
    :goto_1
    new-instance v0, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v0}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 2359
    .local v0, "body":Lcom/google/android/mms/pdu/PduBody;
    invoke-static {v3}, Lcom/google/android/mms/pdu/PduParser;->checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I

    move-result v6

    if-nez v6, :cond_7

    .line 2360
    invoke-virtual {v0, v9, v3}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    goto/16 :goto_0

    .line 2351
    .end local v0    # "body":Lcom/google/android/mms/pdu/PduBody;
    .restart local v2    # "mimeType":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3, v4}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    goto :goto_1

    .line 2354
    .end local v2    # "mimeType":Ljava/lang/String;
    :cond_6
    invoke-virtual {v3, v4}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    goto :goto_1

    .line 2362
    .restart local v0    # "body":Lcom/google/android/mms/pdu/PduBody;
    :cond_7
    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto/16 :goto_0
.end method

.method protected static parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    const/4 v3, -0x1

    .line 1061
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1062
    :cond_0
    const/4 v0, 0x0

    .line 1063
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1064
    .local v1, "temp":I
    if-ne v1, v3, :cond_1

    move v2, v1

    .line 1080
    :goto_0
    return v2

    .line 1068
    :cond_1
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_2

    .line 1069
    shl-int/lit8 v0, v0, 0x7

    .line 1070
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    .line 1071
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1072
    if-ne v1, v3, :cond_1

    move v2, v1

    .line 1073
    goto :goto_0

    .line 1077
    :cond_2
    shl-int/lit8 v0, v0, 0x7

    .line 1078
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    move v2, v0

    .line 1080
    goto :goto_0
.end method

.method protected static parseValueLength(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 1098
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1099
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1100
    .local v1, "temp":I
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1101
    :cond_1
    and-int/lit16 v0, v1, 0xff

    .line 1103
    .local v0, "first":I
    const/16 v2, 0x1e

    if-gt v0, v2, :cond_2

    .line 1106
    .end local v0    # "first":I
    :goto_0
    return v0

    .line 1105
    .restart local v0    # "first":I
    :cond_2
    const/16 v2, 0x1f

    if-ne v0, v2, :cond_3

    .line 1106
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    goto :goto_0

    .line 1109
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Value length > LENGTH_QUOTE!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static parseWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 3
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "stringType"    # I

    .prologue
    const/4 v2, 0x1

    .line 1171
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1189
    :cond_0
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1192
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1193
    .local v0, "temp":I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1194
    :cond_1
    if-ne v2, p1, :cond_2

    const/16 v1, 0x22

    if-ne v1, v0, :cond_2

    .line 1197
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1212
    :goto_0
    invoke-static {p0, p1}, Lcom/google/android/mms/pdu/PduParser;->getWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    return-object v1

    .line 1198
    :cond_2
    if-nez p1, :cond_3

    const/16 v1, 0x7f

    if-ne v1, v0, :cond_3

    .line 1201
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_0

    .line 1204
    :cond_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    goto :goto_0
.end method

.method private static processDrmObject(Landroid/content/Context;Ljava/lang/String;[B)[B
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "partData"    # [B

    .prologue
    .line 2214
    if-nez p2, :cond_1

    .line 2215
    :try_start_0
    const-string v14, "PduParser"

    const-string v15, "createObjectSession() : Fail"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    const/4 v12, 0x0

    .line 2307
    :cond_0
    :goto_0
    return-object v12

    .line 2219
    :cond_1
    const/4 v14, 0x6

    move-object/from16 v0, p0

    invoke-static {v14, v0}, Lcom/lge/lgdrm/DrmManager;->createObjectSession(ILandroid/content/Context;)Lcom/lge/lgdrm/DrmObjectSession;

    move-result-object v13

    .line 2220
    .local v13, "session":Lcom/lge/lgdrm/DrmObjectSession;
    if-nez v13, :cond_2

    .line 2221
    const-string v14, "PduParser"

    const-string v15, "createObjectSession() : Fail"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    const/4 v12, 0x0

    goto :goto_0

    .line 2225
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/drm_temp.tmp"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2226
    .local v6, "fileName":Ljava/lang/String;
    const/4 v14, 0x0

    const/16 v15, 0x2f

    invoke-virtual {v6, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    invoke-virtual {v6, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 2227
    .local v11, "path":Ljava/lang/String;
    const/16 v14, 0x1f9

    const/4 v15, -0x1

    const-string v16, "lgdrm_acc"

    invoke-static/range {v16 .. v16}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-static {v11, v14, v15, v0}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2229
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v14}, Lcom/lge/lgdrm/DrmObjectSession;->processInit(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_3

    .line 2231
    const-string v14, "PduParser"

    const-string v15, "processInit() : Fail"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Lcom/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 2233
    const/4 v12, 0x0

    goto :goto_0

    .line 2236
    :cond_3
    move-object/from16 v0, p2

    array-length v14, v0

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v14}, Lcom/lge/lgdrm/DrmObjectSession;->processUpdate([BI)I

    move-result v4

    .line 2237
    .local v4, "drmError":I
    const-string v14, "PduParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "session.processUpdate: Data Length"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    const-string v14, "PduParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "session.processUpdate:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    if-eqz v4, :cond_4

    .line 2241
    const-string v14, "PduParser"

    const-string v15, "processUpdate() : Fail"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Lcom/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 2243
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 2246
    :cond_4
    const/4 v14, -0x1

    invoke-virtual {v13}, Lcom/lge/lgdrm/DrmObjectSession;->processStatus()I

    move-result v15

    if-ne v14, v15, :cond_5

    .line 2247
    const-string v14, "PduParser"

    const-string v15, "processStatus() : Fail"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Lcom/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 2249
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 2252
    :cond_5
    const/4 v14, -0x1

    const/4 v15, 0x2

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/lge/lgdrm/DrmObjectSession;->processEnd(ILandroid/content/ComponentName;)I

    move-result v15

    if-ne v14, v15, :cond_6

    .line 2254
    const-string v14, "PduParser"

    const-string v15, "processEnd() : Fail"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Lcom/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 2256
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 2259
    :cond_6
    invoke-virtual {v13}, Lcom/lge/lgdrm/DrmObjectSession;->getStoredFilename()Ljava/lang/String;

    move-result-object v10

    .line 2260
    .local v10, "outfileName":Ljava/lang/String;
    if-eqz v10, :cond_7

    .line 2261
    const-string v14, "PduParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getStoredFilename() : file name = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2264
    :cond_7
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 2266
    const-string v14, "PduParser"

    const-string v15, "here is outfileName"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    if-eqz v10, :cond_a

    .line 2268
    const-string v14, "PduParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "outfileName"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5

    .line 2269
    const/4 v12, 0x0

    .line 2272
    .local v12, "result":[B
    const/4 v7, 0x0

    .line 2274
    .local v7, "fin":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 2276
    .local v2, "bufLength":I
    :try_start_1
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2277
    .local v9, "outFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v14

    long-to-int v2, v14

    .line 2279
    new-array v12, v2, [B

    .line 2281
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2282
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .local v8, "fin":Ljava/io/FileInputStream;
    :try_start_2
    invoke-virtual {v8, v12}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 2284
    .local v3, "buffer_size":I
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 2285
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2291
    :cond_8
    if-eqz v8, :cond_b

    .line 2293
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_5

    move-object v7, v8

    .line 2296
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 2294
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    :catch_0
    move-exception v14

    move-object v7, v8

    .line 2296
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 2286
    .end local v3    # "buffer_size":I
    .end local v9    # "outFile":Ljava/io/File;
    :catch_1
    move-exception v5

    .line 2287
    .local v5, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2291
    if-eqz v7, :cond_0

    .line 2293
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 2294
    :catch_2
    move-exception v14

    goto/16 :goto_0

    .line 2288
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v5

    .line 2289
    .local v5, "e":Ljava/io/IOException;
    :goto_2
    :try_start_6
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2291
    if-eqz v7, :cond_0

    .line 2293
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    .line 2294
    :catch_4
    move-exception v14

    goto/16 :goto_0

    .line 2291
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    :goto_3
    if-eqz v7, :cond_9

    .line 2293
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_5

    .line 2296
    :cond_9
    :goto_4
    :try_start_9
    throw v14
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_5

    .line 2303
    .end local v2    # "bufLength":I
    .end local v4    # "drmError":I
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v10    # "outfileName":Ljava/lang/String;
    .end local v11    # "path":Ljava/lang/String;
    .end local v12    # "result":[B
    .end local v13    # "session":Lcom/lge/lgdrm/DrmObjectSession;
    :catch_5
    move-exception v5

    .line 2304
    .local v5, "e":Ljava/lang/SecurityException;
    invoke-virtual {v5}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 2307
    .end local v5    # "e":Ljava/lang/SecurityException;
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 2294
    .restart local v2    # "bufLength":I
    .restart local v4    # "drmError":I
    .restart local v6    # "fileName":Ljava/lang/String;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v10    # "outfileName":Ljava/lang/String;
    .restart local v11    # "path":Ljava/lang/String;
    .restart local v12    # "result":[B
    .restart local v13    # "session":Lcom/lge/lgdrm/DrmObjectSession;
    :catch_6
    move-exception v15

    goto :goto_4

    .line 2291
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v9    # "outFile":Ljava/io/File;
    :catchall_1
    move-exception v14

    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto :goto_3

    .line 2288
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    :catch_7
    move-exception v5

    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto :goto_2

    .line 2286
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    :catch_8
    move-exception v5

    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "buffer_size":I
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    :cond_b
    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method

.method protected static skipWapValue(Ljava/io/ByteArrayInputStream;I)I
    .locals 3
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "length"    # I

    .prologue
    .line 1422
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1423
    :cond_0
    new-array v0, p1, [B

    .line 1424
    .local v0, "area":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v1

    .line 1425
    .local v1, "readLen":I
    if-ge v1, p1, :cond_1

    .line 1426
    const/4 v1, -0x1

    .line 1428
    .end local v1    # "readLen":I
    :cond_1
    return v1
.end method


# virtual methods
.method public parse()Lcom/google/android/mms/pdu/GenericPdu;
    .locals 20

    .prologue
    .line 143
    const/4 v8, 0x0

    .line 146
    .local v8, "headerContentType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 147
    const/4 v15, 0x0

    .line 256
    :cond_0
    :goto_0
    return-object v15

    .line 151
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v18, v0

    if-nez v18, :cond_2

    .line 154
    const/4 v15, 0x0

    goto :goto_0

    .line 158
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v18, v0

    const/16 v19, 0x8c

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v10

    .line 161
    .local v10, "messageType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/google/android/mms/pdu/PduParser;->checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 162
    const-string v18, "check mandatory headers failed!"

    invoke-static/range {v18 .. v18}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 163
    const/4 v15, 0x0

    goto :goto_0

    .line 166
    :cond_3
    const/16 v18, 0x80

    move/from16 v0, v18

    if-eq v0, v10, :cond_4

    const/16 v18, 0x84

    move/from16 v0, v18

    if-ne v0, v10, :cond_7

    .line 171
    :cond_4
    :try_start_0
    new-instance v9, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v18, v0

    const/16 v19, 0x84

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 172
    .end local v8    # "headerContentType":Ljava/lang/String;
    .local v9, "headerContentType":Ljava/lang/String;
    :try_start_1
    const-string v18, "application/vnd.wap.multipart.mixed"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    const-string v18, "application/vnd.wap.multipart.related"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    const-string v18, "application/vnd.wap.multipart.alternative"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v18, v0

    sget-object v19, Lcom/google/android/mms/pdu/PduParser;->mAppContext:Landroid/content/Context;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v9, v1}, Lcom/google/android/mms/pdu/PduParser;->parseSingleBodyPart(Ljava/io/ByteArrayInputStream;Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 186
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    move-object/from16 v18, v0

    if-nez v18, :cond_6

    .line 188
    const/4 v15, 0x0

    move-object v8, v9

    .end local v9    # "headerContentType":Ljava/lang/String;
    .restart local v8    # "headerContentType":Ljava/lang/String;
    goto/16 :goto_0

    .line 178
    .end local v8    # "headerContentType":Ljava/lang/String;
    .restart local v9    # "headerContentType":Ljava/lang/String;
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 180
    :catch_0
    move-exception v6

    move-object v8, v9

    .line 181
    .end local v9    # "headerContentType":Ljava/lang/String;
    .local v6, "e":Ljava/lang/NullPointerException;
    .restart local v8    # "headerContentType":Ljava/lang/String;
    :goto_2
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 182
    const/4 v15, 0x0

    goto/16 :goto_0

    .end local v6    # "e":Ljava/lang/NullPointerException;
    .end local v8    # "headerContentType":Ljava/lang/String;
    .restart local v9    # "headerContentType":Ljava/lang/String;
    :cond_6
    move-object v8, v9

    .line 192
    .end local v9    # "headerContentType":Ljava/lang/String;
    .restart local v8    # "headerContentType":Ljava/lang/String;
    :cond_7
    packed-switch v10, :pswitch_data_0

    .line 255
    const-string v18, "Parser doesn\'t support this message type in this version!"

    invoke-static/range {v18 .. v18}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 256
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 194
    :pswitch_0
    new-instance v17, Lcom/google/android/mms/pdu/SendReq;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Lcom/google/android/mms/pdu/SendReq;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .local v17, "sendReq":Lcom/google/android/mms/pdu/SendReq;
    move-object/from16 v15, v17

    .line 195
    goto/16 :goto_0

    .line 197
    .end local v17    # "sendReq":Lcom/google/android/mms/pdu/SendReq;
    :pswitch_1
    new-instance v16, Lcom/google/android/mms/pdu/SendConf;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/SendConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v16, "sendConf":Lcom/google/android/mms/pdu/SendConf;
    move-object/from16 v15, v16

    .line 198
    goto/16 :goto_0

    .line 200
    .end local v16    # "sendConf":Lcom/google/android/mms/pdu/SendConf;
    :pswitch_2
    new-instance v11, Lcom/google/android/mms/pdu/NotificationInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Lcom/google/android/mms/pdu/NotificationInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v11, "notificationInd":Lcom/google/android/mms/pdu/NotificationInd;
    move-object v15, v11

    .line 202
    goto/16 :goto_0

    .line 204
    .end local v11    # "notificationInd":Lcom/google/android/mms/pdu/NotificationInd;
    :pswitch_3
    new-instance v12, Lcom/google/android/mms/pdu/NotifyRespInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v12, "notifyRespInd":Lcom/google/android/mms/pdu/NotifyRespInd;
    move-object v15, v12

    .line 206
    goto/16 :goto_0

    .line 208
    .end local v12    # "notifyRespInd":Lcom/google/android/mms/pdu/NotifyRespInd;
    :pswitch_4
    new-instance v15, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v15, v0, v1}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .line 211
    .local v15, "retrieveConf":Lcom/google/android/mms/pdu/RetrieveConf;
    invoke-virtual {v15}, Lcom/google/android/mms/pdu/RetrieveConf;->getContentType()[B

    move-result-object v3

    .line 212
    .local v3, "contentType":[B
    if-nez v3, :cond_8

    .line 213
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 215
    :cond_8
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 216
    .local v4, "ctTypeStr":Ljava/lang/String;
    const-string v18, "application/vnd.wap.multipart.mixed"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    const-string v18, "application/vnd.wap.multipart.related"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    const-string v18, "application/vnd.wap.multipart.alternative"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 223
    const-string v18, "application/vnd.wap.multipart.alternative"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v7

    .line 227
    .local v7, "firstPart":Lcom/google/android/mms/pdu/PduPart;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/PduBody;->removeAll()V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    goto/16 :goto_0

    .line 232
    .end local v7    # "firstPart":Lcom/google/android/mms/pdu/PduPart;
    :cond_9
    if-eqz v8, :cond_a

    .line 233
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 237
    :cond_a
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 239
    .end local v3    # "contentType":[B
    .end local v4    # "ctTypeStr":Ljava/lang/String;
    .end local v15    # "retrieveConf":Lcom/google/android/mms/pdu/RetrieveConf;
    :pswitch_5
    new-instance v5, Lcom/google/android/mms/pdu/DeliveryInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Lcom/google/android/mms/pdu/DeliveryInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v5, "deliveryInd":Lcom/google/android/mms/pdu/DeliveryInd;
    move-object v15, v5

    .line 241
    goto/16 :goto_0

    .line 243
    .end local v5    # "deliveryInd":Lcom/google/android/mms/pdu/DeliveryInd;
    :pswitch_6
    new-instance v2, Lcom/google/android/mms/pdu/AcknowledgeInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v2, "acknowledgeInd":Lcom/google/android/mms/pdu/AcknowledgeInd;
    move-object v15, v2

    .line 245
    goto/16 :goto_0

    .line 247
    .end local v2    # "acknowledgeInd":Lcom/google/android/mms/pdu/AcknowledgeInd;
    :pswitch_7
    new-instance v13, Lcom/google/android/mms/pdu/ReadOrigInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Lcom/google/android/mms/pdu/ReadOrigInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v13, "readOrigInd":Lcom/google/android/mms/pdu/ReadOrigInd;
    move-object v15, v13

    .line 249
    goto/16 :goto_0

    .line 251
    .end local v13    # "readOrigInd":Lcom/google/android/mms/pdu/ReadOrigInd;
    :pswitch_8
    new-instance v14, Lcom/google/android/mms/pdu/ReadRecInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v14, "readRecInd":Lcom/google/android/mms/pdu/ReadRecInd;
    move-object v15, v14

    .line 253
    goto/16 :goto_0

    .line 180
    .end local v14    # "readRecInd":Lcom/google/android/mms/pdu/ReadRecInd;
    :catch_1
    move-exception v6

    goto/16 :goto_2

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method protected parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;
    .locals 40
    .param p1, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 267
    if-nez p1, :cond_1

    .line 268
    const/4 v14, 0x0

    .line 877
    :cond_0
    :goto_0
    return-object v14

    .line 270
    :cond_1
    const/16 v17, 0x1

    .line 271
    .local v17, "keepParsing":Z
    new-instance v14, Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v14}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V

    .line 273
    .local v14, "headers":Lcom/google/android/mms/pdu/PduHeaders;
    :cond_2
    :goto_1
    if-eqz v17, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v35

    if-lez v35, :cond_0

    .line 274
    const/16 v35, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 275
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v13

    .line 277
    .local v13, "headerField":I
    const/16 v35, 0x20

    move/from16 v0, v35

    if-lt v13, v0, :cond_3

    const/16 v35, 0x7f

    move/from16 v0, v35

    if-gt v13, v0, :cond_3

    .line 278
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 279
    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 284
    .local v6, "bVal":[B
    goto :goto_1

    .line 286
    .end local v6    # "bVal":[B
    :cond_3
    packed-switch v13, :pswitch_data_0

    .line 872
    :pswitch_0
    const-string v35, "Unknown header"

    invoke-static/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 289
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v21

    .line 290
    .local v21, "messageType":I
    packed-switch v21, :pswitch_data_1

    .line 310
    :try_start_0
    move/from16 v0, v21

    invoke-virtual {v14, v0, v13}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 311
    :catch_0
    move-exception v8

    .line 312
    .local v8, "e":Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Set invalid Octet value: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " into the header filed: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 314
    const/4 v14, 0x0

    goto :goto_0

    .line 307
    .end local v8    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    :pswitch_2
    const/4 v14, 0x0

    goto :goto_0

    .line 315
    :catch_1
    move-exception v8

    .line 316
    .local v8, "e":Ljava/lang/RuntimeException;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "is not Octet header field!"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 317
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 350
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .end local v21    # "messageType":I
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v32

    .line 353
    .local v32, "value":I
    :try_start_1
    move/from16 v0, v32

    invoke-virtual {v14, v0, v13}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_1
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_1

    .line 354
    :catch_2
    move-exception v8

    .line 355
    .local v8, "e":Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Set invalid Octet value: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " into the header filed: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 357
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 358
    .end local v8    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_3
    move-exception v8

    .line 359
    .local v8, "e":Ljava/lang/RuntimeException;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "is not Octet header field!"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 360
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 371
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .end local v32    # "value":I
    :pswitch_4
    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v32

    .line 372
    .local v32, "value":J
    move-wide/from16 v0, v32

    invoke-virtual {v14, v0, v1, v13}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_1

    .line 373
    .end local v32    # "value":J
    :catch_4
    move-exception v8

    .line 374
    .restart local v8    # "e":Ljava/lang/RuntimeException;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "is not Long-Integer header field!"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 375
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 386
    .end local v8    # "e":Ljava/lang/RuntimeException;
    :pswitch_5
    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v32

    .line 387
    .restart local v32    # "value":J
    move-wide/from16 v0, v32

    invoke-virtual {v14, v0, v1, v13}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_1

    .line 388
    .end local v32    # "value":J
    :catch_5
    move-exception v8

    .line 389
    .restart local v8    # "e":Ljava/lang/RuntimeException;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "is not Long-Integer header field!"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 390
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 416
    .end local v8    # "e":Ljava/lang/RuntimeException;
    :pswitch_6
    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v32

    .line 417
    .local v32, "value":[B
    if-eqz v32, :cond_2

    .line 419
    :try_start_4
    move-object/from16 v0, v32

    invoke-virtual {v14, v0, v13}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_7

    goto/16 :goto_1

    .line 420
    :catch_6
    move-exception v8

    .line 421
    .local v8, "e":Ljava/lang/NullPointerException;
    const-string v35, "null pointer error!"

    invoke-static/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 422
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :catch_7
    move-exception v8

    .line 423
    .local v8, "e":Ljava/lang/RuntimeException;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "is not Text-String header field!"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 424
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 446
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .end local v32    # "value":[B
    :pswitch_7
    const-string v35, "ro.build.target_region"

    invoke-static/range {v35 .. v35}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string v36, "AME"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_e

    .line 447
    const/16 v32, 0x0

    .line 448
    .local v32, "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    const/16 v35, 0x0

    move/from16 v0, v35

    new-array v5, v0, [B

    .line 449
    .local v5, "b":[B
    const/16 v16, 0x0

    .line 450
    .local v16, "isBase64":Z
    const/16 v35, 0x96

    move/from16 v0, v35

    if-ne v13, v0, :cond_9

    .line 451
    sget-boolean v35, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v35, :cond_4

    if-nez p1, :cond_4

    new-instance v35, Ljava/lang/AssertionError;

    invoke-direct/range {v35 .. v35}, Ljava/lang/AssertionError;-><init>()V

    throw v35

    .line 452
    :cond_4
    const/16 v35, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 453
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v28

    .line 454
    .local v28, "temp1":I
    sget-boolean v35, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v35, :cond_5

    const/16 v35, -0x1

    move/from16 v0, v35

    move/from16 v1, v28

    if-ne v0, v1, :cond_5

    new-instance v35, Ljava/lang/AssertionError;

    invoke-direct/range {v35 .. v35}, Ljava/lang/AssertionError;-><init>()V

    throw v35

    .line 455
    :cond_5
    move/from16 v0, v28

    and-int/lit16 v10, v0, 0xff

    .line 456
    .local v10, "first":I
    const/16 v35, 0x3d

    move/from16 v0, v35

    if-ne v10, v0, :cond_d

    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v35

    const/16 v36, 0x3f

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_d

    .line 457
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    const/16 v35, 0x5

    move/from16 v0, v35

    if-ge v15, v0, :cond_6

    .line 458
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->read()I

    .line 457
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 459
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v35

    const/16 v36, 0x3f

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_c

    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v35

    const/16 v36, 0x42

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_c

    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v35

    const/16 v36, 0x3f

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_c

    .line 460
    new-instance v22, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 461
    .local v22, "out":Ljava/io/ByteArrayOutputStream;
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v27

    .line 462
    .local v27, "temp":I
    :cond_7
    const/16 v35, 0x3f

    move/from16 v0, v27

    move/from16 v1, v35

    if-eq v0, v1, :cond_8

    .line 463
    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 464
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v27

    .line 465
    sget-boolean v35, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v35, :cond_7

    const/16 v35, -0x1

    move/from16 v0, v35

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    new-instance v35, Ljava/lang/AssertionError;

    invoke-direct/range {v35 .. v35}, Ljava/lang/AssertionError;-><init>()V

    throw v35

    .line 467
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->read()I

    .line 468
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->read()I

    .line 469
    invoke-virtual/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v35

    if-lez v35, :cond_b

    .line 470
    invoke-virtual/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 472
    :try_start_5
    invoke-static {v5}, Lcom/google/android/mms/pdu/Base64;->decodeBase64([B)[B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    move-result-object v5

    .line 473
    const/16 v16, 0x1

    .line 486
    .end local v22    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v27    # "temp":I
    :goto_3
    if-eqz v16, :cond_9

    .line 487
    new-instance v32, Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v32    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object/from16 v0, v32

    invoke-direct {v0, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    .line 493
    .end local v10    # "first":I
    .end local v15    # "i":I
    .end local v28    # "temp1":I
    .restart local v32    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_9
    :goto_4
    if-nez v16, :cond_a

    .line 494
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v32

    .line 501
    .end local v5    # "b":[B
    .end local v16    # "isBase64":Z
    :cond_a
    :goto_5
    if-eqz v32, :cond_2

    .line 503
    :try_start_6
    move-object/from16 v0, v32

    invoke-virtual {v14, v0, v13}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_a

    goto/16 :goto_1

    .line 504
    :catch_8
    move-exception v8

    .line 505
    .local v8, "e":Ljava/lang/NullPointerException;
    const-string v35, "null pointer error!"

    invoke-static/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 474
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .restart local v5    # "b":[B
    .restart local v10    # "first":I
    .restart local v15    # "i":I
    .restart local v16    # "isBase64":Z
    .restart local v22    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v27    # "temp":I
    .restart local v28    # "temp1":I
    :catch_9
    move-exception v8

    .line 475
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 476
    const-string v35, "PDUPARSER"

    const-string v36, "Exception while parsing Base64 string"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/16 v16, 0x0

    .line 478
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    goto :goto_3

    .line 482
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    goto :goto_3

    .line 485
    .end local v22    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v27    # "temp":I
    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    goto :goto_3

    .line 491
    .end local v15    # "i":I
    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    goto :goto_4

    .line 498
    .end local v5    # "b":[B
    .end local v10    # "first":I
    .end local v16    # "isBase64":Z
    .end local v28    # "temp1":I
    .end local v32    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_e
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v32

    .restart local v32    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_5

    .line 506
    :catch_a
    move-exception v8

    .line 507
    .local v8, "e":Ljava/lang/RuntimeException;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 508
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 519
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .end local v32    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v32

    .line 521
    .restart local v32    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v32, :cond_2

    .line 522
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v4

    .line 523
    .local v4, "address":[B
    if-eqz v4, :cond_12

    .line 524
    new-instance v26, Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    .line 525
    .local v26, "str":Ljava/lang/String;
    const-string v35, "/"

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 526
    .local v9, "endIndex":I
    if-lez v9, :cond_11

    .line 527
    sget-object v35, Lcom/google/android/mms/ContentType;->OPERATOR_CODE:Ljava/lang/String;

    const-string v36, "MPCS"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_f

    sget-object v35, Lcom/google/android/mms/ContentType;->COUNTRY_CODE:Ljava/lang/String;

    const-string v36, "US"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_10

    :cond_f
    sget-object v35, Lcom/google/android/mms/ContentType;->OPERATOR_CODE:Ljava/lang/String;

    const-string v36, "CRK"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_14

    sget-object v35, Lcom/google/android/mms/ContentType;->COUNTRY_CODE:Ljava/lang/String;

    const-string v36, "US"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_14

    .line 531
    :cond_10
    const/16 v35, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v35

    const/16 v36, 0x2b

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_13

    const/16 v35, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v35

    const/16 v36, 0x31

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_13

    .line 533
    const/16 v35, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    .line 546
    :cond_11
    :goto_6
    :try_start_7
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v35

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_c

    .line 554
    .end local v9    # "endIndex":I
    .end local v26    # "str":Ljava/lang/String;
    :cond_12
    :try_start_8
    move-object/from16 v0, v32

    invoke-virtual {v14, v0, v13}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_d

    goto/16 :goto_1

    .line 555
    :catch_b
    move-exception v8

    .line 556
    .local v8, "e":Ljava/lang/NullPointerException;
    const-string v35, "null pointer error!"

    invoke-static/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 537
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .restart local v9    # "endIndex":I
    .restart local v26    # "str":Ljava/lang/String;
    :cond_13
    const/16 v35, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    goto :goto_6

    .line 542
    :cond_14
    const/16 v35, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    goto :goto_6

    .line 547
    :catch_c
    move-exception v8

    .line 548
    .restart local v8    # "e":Ljava/lang/NullPointerException;
    const-string v35, "null pointer error!"

    invoke-static/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 549
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 557
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .end local v9    # "endIndex":I
    .end local v26    # "str":Ljava/lang/String;
    :catch_d
    move-exception v8

    .line 558
    .local v8, "e":Ljava/lang/RuntimeException;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 559
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 572
    .end local v4    # "address":[B
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .end local v32    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_9
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 575
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v29

    .line 580
    .local v29, "token":I
    :try_start_9
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_f

    move-result-wide v30

    .line 585
    .local v30, "timeValue":J
    const/16 v35, 0x81

    move/from16 v0, v35

    move/from16 v1, v29

    if-ne v0, v1, :cond_15

    .line 588
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    const-wide/16 v38, 0x3e8

    div-long v36, v36, v38

    add-long v30, v30, v36

    .line 592
    :cond_15
    :try_start_a
    move-wide/from16 v0, v30

    invoke-virtual {v14, v0, v1, v13}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_e

    goto/16 :goto_1

    .line 593
    :catch_e
    move-exception v8

    .line 594
    .restart local v8    # "e":Ljava/lang/RuntimeException;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "is not Long-Integer header field!"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 595
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 581
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .end local v30    # "timeValue":J
    :catch_f
    move-exception v8

    .line 582
    .restart local v8    # "e":Ljava/lang/RuntimeException;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "is not Long-Integer header field!"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 583
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 605
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .end local v29    # "token":I
    :pswitch_a
    const/4 v11, 0x0

    .line 606
    .local v11, "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 609
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v12

    .line 612
    .local v12, "fromToken":I
    const/16 v35, 0x80

    move/from16 v0, v35

    if-ne v0, v12, :cond_1c

    .line 614
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v11

    .line 615
    if-eqz v11, :cond_19

    .line 616
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v4

    .line 617
    .restart local v4    # "address":[B
    if-eqz v4, :cond_19

    .line 618
    new-instance v26, Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    .line 619
    .restart local v26    # "str":Ljava/lang/String;
    const-string v35, "/"

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 620
    .restart local v9    # "endIndex":I
    if-lez v9, :cond_18

    .line 621
    sget-object v35, Lcom/google/android/mms/ContentType;->OPERATOR_CODE:Ljava/lang/String;

    const-string v36, "MPCS"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_16

    sget-object v35, Lcom/google/android/mms/ContentType;->COUNTRY_CODE:Ljava/lang/String;

    const-string v36, "US"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_17

    :cond_16
    sget-object v35, Lcom/google/android/mms/ContentType;->OPERATOR_CODE:Ljava/lang/String;

    const-string v36, "CRK"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1b

    sget-object v35, Lcom/google/android/mms/ContentType;->COUNTRY_CODE:Ljava/lang/String;

    const-string v36, "US"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1b

    .line 625
    :cond_17
    const/16 v35, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v35

    const/16 v36, 0x2b

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1a

    const/16 v35, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v35

    const/16 v36, 0x31

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1a

    .line 627
    const/16 v35, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    .line 638
    :cond_18
    :goto_7
    :try_start_b
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v11, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_11

    .line 656
    .end local v4    # "address":[B
    .end local v9    # "endIndex":I
    .end local v26    # "str":Ljava/lang/String;
    :cond_19
    :goto_8
    const/16 v35, 0x89

    :try_start_c
    move/from16 v0, v35

    invoke-virtual {v14, v11, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_13

    goto/16 :goto_1

    .line 657
    :catch_10
    move-exception v8

    .line 658
    .local v8, "e":Ljava/lang/NullPointerException;
    const-string v35, "null pointer error!"

    invoke-static/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 630
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .restart local v4    # "address":[B
    .restart local v9    # "endIndex":I
    .restart local v26    # "str":Ljava/lang/String;
    :cond_1a
    const/16 v35, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    goto :goto_7

    .line 634
    :cond_1b
    const/16 v35, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    goto :goto_7

    .line 639
    :catch_11
    move-exception v8

    .line 640
    .restart local v8    # "e":Ljava/lang/NullPointerException;
    const-string v35, "null pointer error!"

    invoke-static/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 641
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 647
    .end local v4    # "address":[B
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .end local v9    # "endIndex":I
    .end local v26    # "str":Ljava/lang/String;
    :cond_1c
    :try_start_d
    new-instance v11, Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v11    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    const-string v35, "insert-address-token"

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->getBytes()[B

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v11, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_12

    .restart local v11    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_8

    .line 649
    .end local v11    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_12
    move-exception v8

    .line 650
    .restart local v8    # "e":Ljava/lang/NullPointerException;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 651
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 659
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .restart local v11    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_13
    move-exception v8

    .line 660
    .local v8, "e":Ljava/lang/RuntimeException;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 661
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 668
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .end local v11    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v12    # "fromToken":I
    :pswitch_b
    const/16 v35, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 669
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v19

    .line 671
    .local v19, "messageClass":I
    const/16 v35, 0x80

    move/from16 v0, v19

    move/from16 v1, v35

    if-lt v0, v1, :cond_20

    .line 674
    const/16 v35, 0x80

    move/from16 v0, v35

    move/from16 v1, v19

    if-ne v0, v1, :cond_1d

    .line 675
    :try_start_e
    const-string v35, "personal"

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->getBytes()[B

    move-result-object v35

    const/16 v36, 0x8a

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v14, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_14
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_15

    goto/16 :goto_1

    .line 691
    :catch_14
    move-exception v8

    .line 692
    .local v8, "e":Ljava/lang/NullPointerException;
    const-string v35, "null pointer error!"

    invoke-static/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 678
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :cond_1d
    const/16 v35, 0x81

    move/from16 v0, v35

    move/from16 v1, v19

    if-ne v0, v1, :cond_1e

    .line 679
    :try_start_f
    const-string v35, "advertisement"

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->getBytes()[B

    move-result-object v35

    const/16 v36, 0x8a

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v14, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_14
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_15

    goto/16 :goto_1

    .line 693
    :catch_15
    move-exception v8

    .line 694
    .local v8, "e":Ljava/lang/RuntimeException;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "is not Text-String header field!"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 695
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 682
    .end local v8    # "e":Ljava/lang/RuntimeException;
    :cond_1e
    const/16 v35, 0x82

    move/from16 v0, v35

    move/from16 v1, v19

    if-ne v0, v1, :cond_1f

    .line 683
    :try_start_10
    const-string v35, "informational"

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->getBytes()[B

    move-result-object v35

    const/16 v36, 0x8a

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v14, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    goto/16 :goto_1

    .line 686
    :cond_1f
    const/16 v35, 0x83

    move/from16 v0, v35

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 687
    const-string v35, "auto"

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->getBytes()[B

    move-result-object v35

    const/16 v36, 0x8a

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v14, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_14
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_15

    goto/16 :goto_1

    .line 699
    :cond_20
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 700
    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v20

    .line 701
    .local v20, "messageClassString":[B
    if-eqz v20, :cond_2

    .line 703
    const/16 v35, 0x8a

    :try_start_11
    move-object/from16 v0, v20

    move/from16 v1, v35

    invoke-virtual {v14, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_16
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_17

    goto/16 :goto_1

    .line 704
    :catch_16
    move-exception v8

    .line 705
    .local v8, "e":Ljava/lang/NullPointerException;
    const-string v35, "null pointer error!"

    invoke-static/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 706
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :catch_17
    move-exception v8

    .line 707
    .local v8, "e":Ljava/lang/RuntimeException;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "is not Text-String header field!"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 708
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 716
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .end local v19    # "messageClass":I
    .end local v20    # "messageClassString":[B
    :pswitch_c
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v34

    .line 719
    .local v34, "version":I
    const/16 v35, 0x8d

    :try_start_12
    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v14, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_12
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_12 .. :try_end_12} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_19

    goto/16 :goto_1

    .line 720
    :catch_18
    move-exception v8

    .line 721
    .local v8, "e":Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Set invalid Octet value: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " into the header filed: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 723
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 724
    .end local v8    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_19
    move-exception v8

    .line 725
    .local v8, "e":Ljava/lang/RuntimeException;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "is not Octet header field!"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 726
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 735
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .end local v34    # "version":I
    :pswitch_d
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 739
    :try_start_13
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_1b

    .line 746
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v23

    .line 748
    .local v23, "previouslySentBy":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v23, :cond_2

    .line 750
    const/16 v35, 0xa0

    :try_start_14
    move-object/from16 v0, v23

    move/from16 v1, v35

    invoke-virtual {v14, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_1a
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_1c

    goto/16 :goto_1

    .line 752
    :catch_1a
    move-exception v8

    .line 753
    .local v8, "e":Ljava/lang/NullPointerException;
    const-string v35, "null pointer error!"

    invoke-static/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 740
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .end local v23    # "previouslySentBy":Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_1b
    move-exception v8

    .line 741
    .local v8, "e":Ljava/lang/RuntimeException;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " is not Integer-Value"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 742
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 754
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .restart local v23    # "previouslySentBy":Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_1c
    move-exception v8

    .line 755
    .restart local v8    # "e":Ljava/lang/RuntimeException;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 756
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 766
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .end local v23    # "previouslySentBy":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_e
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 770
    :try_start_15
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_1e

    .line 778
    :try_start_16
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v24

    .line 779
    .local v24, "perviouslySentDate":J
    const/16 v35, 0xa1

    move-wide/from16 v0, v24

    move/from16 v2, v35

    invoke-virtual {v14, v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_1d

    goto/16 :goto_1

    .line 781
    .end local v24    # "perviouslySentDate":J
    :catch_1d
    move-exception v8

    .line 782
    .restart local v8    # "e":Ljava/lang/RuntimeException;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "is not Long-Integer header field!"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 783
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 771
    .end local v8    # "e":Ljava/lang/RuntimeException;
    :catch_1e
    move-exception v8

    .line 772
    .restart local v8    # "e":Ljava/lang/RuntimeException;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " is not Integer-Value"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 773
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 796
    .end local v8    # "e":Ljava/lang/RuntimeException;
    :pswitch_f
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 799
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 802
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    goto/16 :goto_1

    .line 815
    :pswitch_10
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 818
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 822
    :try_start_17
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_1f

    goto/16 :goto_1

    .line 823
    :catch_1f
    move-exception v8

    .line 824
    .restart local v8    # "e":Ljava/lang/RuntimeException;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " is not Integer-Value"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 825
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 834
    .end local v8    # "e":Ljava/lang/RuntimeException;
    :pswitch_11
    const/16 v35, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    goto/16 :goto_1

    .line 842
    :pswitch_12
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 844
    .local v18, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v7

    .line 847
    .local v7, "contentType":[B
    if-eqz v7, :cond_21

    .line 849
    const/16 v35, 0x84

    :try_start_18
    move/from16 v0, v35

    invoke-virtual {v14, v7, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_18} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_21

    .line 859
    :cond_21
    :goto_9
    const/16 v35, 0x99

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, [B

    check-cast v35, [B

    sput-object v35, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    .line 862
    const/16 v35, 0x83

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, [B

    check-cast v35, [B

    sput-object v35, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    .line 864
    const/16 v17, 0x0

    .line 865
    goto/16 :goto_1

    .line 850
    :catch_20
    move-exception v8

    .line 851
    .local v8, "e":Ljava/lang/NullPointerException;
    const-string v35, "null pointer error!"

    invoke-static/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_9

    .line 852
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :catch_21
    move-exception v8

    .line 853
    .local v8, "e":Ljava/lang/RuntimeException;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "is not Text-String header field!"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 854
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_12
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_6
        :pswitch_1
        :pswitch_c
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_9
        :pswitch_6
        :pswitch_4
        :pswitch_d
        :pswitch_e
        :pswitch_3
        :pswitch_3
        :pswitch_f
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_10
        :pswitch_3
        :pswitch_10
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_11
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_3
    .end packed-switch

    .line 290
    :pswitch_data_1
    .packed-switch 0x89
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
