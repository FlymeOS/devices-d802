.class public Lcom/android/internal/telephony/soi/RpMessage$RpduParser;
.super Ljava/lang/Object;
.source "RpMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/soi/RpMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RpduParser"
.end annotation


# instance fields
.field mCur:I

.field mRpdu:[B

.field mRpduLen:I

.field mTpUserData:[B

.field final synthetic this$0:Lcom/android/internal/telephony/soi/RpMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/soi/RpMessage;[B)V
    .locals 1
    .param p2, "rPdu"    # [B

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->this$0:Lcom/android/internal/telephony/soi/RpMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p2, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->mRpdu:[B

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->mCur:I

    .line 103
    array-length v0, p2

    iput v0, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->mRpduLen:I

    .line 104
    return-void
.end method


# virtual methods
.method constructTPUD()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->this$0:Lcom/android/internal/telephony/soi/RpMessage;

    iget-object v1, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->this$0:Lcom/android/internal/telephony/soi/RpMessage;

    # getter for: Lcom/android/internal/telephony/soi/RpMessage;->rpudLength:I
    invoke-static {v1}, Lcom/android/internal/telephony/soi/RpMessage;->access$200(Lcom/android/internal/telephony/soi/RpMessage;)I

    move-result v1

    new-array v1, v1, [B

    # setter for: Lcom/android/internal/telephony/soi/RpMessage;->tpdu:[B
    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/RpMessage;->access$102(Lcom/android/internal/telephony/soi/RpMessage;[B)[B

    .line 151
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->mRpdu:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->mCur:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->this$0:Lcom/android/internal/telephony/soi/RpMessage;

    # getter for: Lcom/android/internal/telephony/soi/RpMessage;->tpdu:[B
    invoke-static {v1}, Lcom/android/internal/telephony/soi/RpMessage;->access$100(Lcom/android/internal/telephony/soi/RpMessage;)[B

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->this$0:Lcom/android/internal/telephony/soi/RpMessage;

    # getter for: Lcom/android/internal/telephony/soi/RpMessage;->tpdu:[B
    invoke-static {v0}, Lcom/android/internal/telephony/soi/RpMessage;->access$100(Lcom/android/internal/telephony/soi/RpMessage;)[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0xe8

    if-gt v0, v1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->mRpdu:[B

    iget v1, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->mCur:I

    iget-object v2, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->this$0:Lcom/android/internal/telephony/soi/RpMessage;

    # getter for: Lcom/android/internal/telephony/soi/RpMessage;->tpdu:[B
    invoke-static {v2}, Lcom/android/internal/telephony/soi/RpMessage;->access$100(Lcom/android/internal/telephony/soi/RpMessage;)[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->this$0:Lcom/android/internal/telephony/soi/RpMessage;

    # getter for: Lcom/android/internal/telephony/soi/RpMessage;->tpdu:[B
    invoke-static {v4}, Lcom/android/internal/telephony/soi/RpMessage;->access$100(Lcom/android/internal/telephony/soi/RpMessage;)[B

    move-result-object v4

    array-length v4, v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->this$0:Lcom/android/internal/telephony/soi/RpMessage;

    # getter for: Lcom/android/internal/telephony/soi/RpMessage;->rpMti:I
    invoke-static {v0}, Lcom/android/internal/telephony/soi/RpMessage;->access$300(Lcom/android/internal/telephony/soi/RpMessage;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->this$0:Lcom/android/internal/telephony/soi/RpMessage;

    # getter for: Lcom/android/internal/telephony/soi/RpMessage;->tpdu:[B
    invoke-static {v0}, Lcom/android/internal/telephony/soi/RpMessage;->access$100(Lcom/android/internal/telephony/soi/RpMessage;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->this$0:Lcom/android/internal/telephony/soi/RpMessage;

    # getter for: Lcom/android/internal/telephony/soi/RpMessage;->tpdu:[B
    invoke-static {v0}, Lcom/android/internal/telephony/soi/RpMessage;->access$100(Lcom/android/internal/telephony/soi/RpMessage;)[B

    move-result-object v0

    array-length v0, v0

    if-le v0, v5, :cond_1

    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->this$0:Lcom/android/internal/telephony/soi/RpMessage;

    iget-object v1, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->this$0:Lcom/android/internal/telephony/soi/RpMessage;

    # getter for: Lcom/android/internal/telephony/soi/RpMessage;->tpdu:[B
    invoke-static {v1}, Lcom/android/internal/telephony/soi/RpMessage;->access$100(Lcom/android/internal/telephony/soi/RpMessage;)[B

    move-result-object v1

    aget-byte v1, v1, v5

    # setter for: Lcom/android/internal/telephony/soi/RpMessage;->tpduMr:B
    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/RpMessage;->access$402(Lcom/android/internal/telephony/soi/RpMessage;B)B

    .line 157
    :cond_1
    const-string v0, "RpMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTpdu: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->this$0:Lcom/android/internal/telephony/soi/RpMessage;

    # getter for: Lcom/android/internal/telephony/soi/RpMessage;->tpdu:[B
    invoke-static {v2}, Lcom/android/internal/telephony/soi/RpMessage;->access$100(Lcom/android/internal/telephony/soi/RpMessage;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget v0, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->mCur:I

    iget-object v1, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->this$0:Lcom/android/internal/telephony/soi/RpMessage;

    # getter for: Lcom/android/internal/telephony/soi/RpMessage;->tpdu:[B
    invoke-static {v1}, Lcom/android/internal/telephony/soi/RpMessage;->access$100(Lcom/android/internal/telephony/soi/RpMessage;)[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->mCur:I

    .line 159
    return-void
.end method

.method getByte()I
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->mRpdu:[B

    iget v1, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->mCur:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->mCur:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method getSCAddress()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x60

    .line 110
    invoke-virtual {p0}, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->getByte()I

    move-result v0

    .line 121
    .local v0, "len":I
    iget-object v3, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->mRpdu:[B

    array-length v3, v3

    iget v4, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->mCur:I

    sub-int/2addr v3, v4

    if-lt v3, v0, :cond_0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    const/16 v3, 0xb

    if-le v0, v3, :cond_1

    .line 122
    :cond_0
    const-string v3, "RpMessage"

    const-string v4, "getSCAddress Error 1"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v3, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->this$0:Lcom/android/internal/telephony/soi/RpMessage;

    new-instance v4, Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;

    iget-object v5, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->this$0:Lcom/android/internal/telephony/soi/RpMessage;

    invoke-direct {v4, v5, v6}, Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;-><init>(Lcom/android/internal/telephony/soi/RpMessage;I)V

    # setter for: Lcom/android/internal/telephony/soi/RpMessage;->parseError:Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/soi/RpMessage;->access$002(Lcom/android/internal/telephony/soi/RpMessage;Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;)Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;

    .line 124
    const/4 v1, 0x0

    .line 138
    .local v1, "ret":Ljava/lang/String;
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->mCur:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->mCur:I

    .line 139
    return-object v1

    .line 128
    .end local v1    # "ret":Ljava/lang/String;
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->mRpdu:[B

    iget v4, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->mCur:I

    invoke-static {v3, v4, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 130
    .restart local v1    # "ret":Ljava/lang/String;
    const-string v3, "RpMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SC address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    .end local v1    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 132
    .local v2, "tr":Ljava/lang/RuntimeException;
    const-string v3, "RpMessage"

    const-string v4, "invalid SC address: "

    invoke-static {v3, v4, v2}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    iget-object v3, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->this$0:Lcom/android/internal/telephony/soi/RpMessage;

    new-instance v4, Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;

    iget-object v5, p0, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->this$0:Lcom/android/internal/telephony/soi/RpMessage;

    invoke-direct {v4, v5, v6}, Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;-><init>(Lcom/android/internal/telephony/soi/RpMessage;I)V

    # setter for: Lcom/android/internal/telephony/soi/RpMessage;->parseError:Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/soi/RpMessage;->access$002(Lcom/android/internal/telephony/soi/RpMessage;Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;)Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;

    .line 135
    const/4 v1, 0x0

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0
.end method
