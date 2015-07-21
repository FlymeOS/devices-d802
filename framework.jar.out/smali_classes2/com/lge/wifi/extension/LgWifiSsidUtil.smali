.class public Lcom/lge/wifi/extension/LgWifiSsidUtil;
.super Ljava/lang/Object;
.source "LgWifiSsidUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LgWifiSsidUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static containsHangul(Ljava/lang/String;)Z
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 166
    if-nez p0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v3

    .line 168
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 170
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 171
    .local v0, "ch":C
    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v2

    .line 172
    .local v2, "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v4, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v4, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v4, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 175
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 168
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getConfigForUtf8Hidden(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v1, 0x0

    .line 201
    invoke-static {p0}, Lcom/lge/wifi/extension/LgWifiSsidUtil;->isConfigForUtf8Hidden(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 213
    :cond_0
    :goto_0
    return-object v0

    .line 206
    :cond_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 207
    .local v0, "configUtf8":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/lge/wifi/extension/LgWifiSsidUtil;->setSSIDcheckingUniCode([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 208
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 209
    const-string v2, "LgWifiSsidUtil"

    const-string v3, "getConfigForUtf8Hidden: UTF8 SSID is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 210
    goto :goto_0
.end method

.method public static isConfigForUtf8Hidden(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 5
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v2, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 219
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->useLgeKtCm()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->useKoreanSsid()Z

    move-result v3

    if-nez v3, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v1

    .line 224
    :cond_1
    if-eqz p0, :cond_0

    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 228
    :cond_2
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v3, :cond_0

    .line 230
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, v4, :cond_3

    move v0, v2

    .line 231
    .local v0, "newNetwork":Z
    :goto_1
    if-eqz v0, :cond_0

    .line 233
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Lcom/lge/wifi/extension/LgWifiSsidUtil;->isHangulSsid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 237
    const-string v1, "LgWifiSsidUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isConfigForUtf8Hidden ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is UTF8 Hidden"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 238
    goto :goto_0

    .end local v0    # "newNetwork":Z
    :cond_3
    move v0, v1

    .line 230
    goto :goto_1
.end method

.method public static isHangulSsid(Ljava/lang/String;)Z
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 183
    if-nez p0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return v2

    .line 184
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 185
    .local v1, "maxLen":I
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v0, v4

    .line 187
    .local v0, "bytelen":I
    if-eqz v1, :cond_0

    if-eq v0, v1, :cond_0

    .line 191
    invoke-static {p0}, Lcom/lge/wifi/extension/LgWifiSsidUtil;->containsHangul(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    .line 193
    goto :goto_0
.end method

.method public static isSsidForUtf8Hidden(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, 0x0

    .line 244
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->useLgeKtCm()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->useKoreanSsid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 262
    :cond_0
    :goto_0
    return v0

    .line 249
    :cond_1
    if-eqz p0, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 253
    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Lcom/lge/wifi/extension/LgWifiSsidUtil;->isHangulSsid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    const-string v0, "LgWifiSsidUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSsidForUtf8Hidden ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is Hangul Hidden"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isUniCodeSSID([B)Z
    .locals 8
    .param p0, "byte_array"    # [B

    .prologue
    const/16 v7, 0x80

    .line 28
    const/4 v3, 0x0

    .line 29
    .local v3, "unicodeSSID":Z
    const/4 v4, 0x0

    .line 31
    .local v4, "unicode_step":I
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 92
    :goto_0
    return v5

    .line 33
    :cond_0
    const/4 v2, 0x0

    .line 34
    .local v2, "offset":I
    array-length v1, p0

    .line 36
    .local v1, "length":I
    move v0, v2

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    aget-byte v5, p0, v0

    const/16 v6, 0xa

    if-eq v5, v6, :cond_3

    .line 37
    if-lez v4, :cond_5

    .line 38
    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xc0

    if-ne v5, v7, :cond_2

    .line 39
    add-int/lit8 v4, v4, -0x1

    .line 40
    if-nez v4, :cond_1

    .line 41
    const/4 v3, 0x1

    .line 36
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 45
    :cond_2
    const/4 v3, 0x0

    .line 87
    :cond_3
    :goto_3
    if-eqz v4, :cond_4

    .line 88
    const/4 v3, 0x0

    :cond_4
    move v5, v3

    .line 92
    goto :goto_0

    .line 49
    :cond_5
    if-gez v4, :cond_7

    .line 50
    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xc0

    if-ne v5, v7, :cond_6

    .line 51
    const/4 v4, 0x0

    .line 52
    goto :goto_2

    .line 54
    :cond_6
    const/4 v3, 0x0

    .line 55
    goto :goto_3

    .line 58
    :cond_7
    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_1

    .line 60
    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0xe0

    if-ne v5, v6, :cond_8

    .line 62
    const/4 v4, 0x2

    .line 63
    goto :goto_2

    .line 64
    :cond_8
    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xe0

    const/16 v6, 0xc0

    if-ne v5, v6, :cond_9

    .line 66
    const/4 v4, 0x1

    .line 67
    goto :goto_2

    .line 68
    :cond_9
    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xf8

    const/16 v6, 0xf0

    if-ne v5, v6, :cond_a

    .line 70
    const/4 v4, 0x3

    .line 71
    goto :goto_2

    .line 72
    :cond_a
    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xfc

    const/16 v6, 0xf8

    if-ne v5, v6, :cond_b

    .line 74
    const/4 v4, 0x4

    .line 75
    goto :goto_2

    .line 76
    :cond_b
    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xfe

    const/16 v6, 0xfc

    if-ne v5, v6, :cond_c

    .line 78
    const/4 v4, 0x5

    .line 79
    goto :goto_2

    .line 81
    :cond_c
    const/4 v3, 0x0

    .line 82
    goto :goto_3
.end method

.method public static setSSIDcheckingUniCode([B)Ljava/lang/String;
    .locals 8
    .param p0, "ssid_byte"    # [B

    .prologue
    const/16 v7, 0x80

    .line 98
    const/4 v2, 0x0

    .line 99
    .local v2, "unicodeSSID":Z
    const/4 v4, 0x0

    .line 102
    .local v4, "unicode_step":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, p0

    if-ge v1, v5, :cond_2

    aget-byte v5, p0, v1

    if-eqz v5, :cond_2

    .line 103
    if-lez v4, :cond_4

    .line 104
    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xc0

    if-ne v5, v7, :cond_1

    .line 105
    add-int/lit8 v4, v4, -0x1

    .line 106
    if-nez v4, :cond_0

    .line 107
    const/4 v2, 0x1

    .line 102
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    :cond_1
    const/4 v2, 0x0

    .line 145
    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    .line 146
    const/4 v2, 0x0

    .line 150
    :cond_3
    const/4 v5, 0x1

    if-ne v2, v5, :cond_c

    .line 151
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0}, Ljava/lang/String;-><init>([B)V

    .line 152
    .local v3, "unicodeSsid":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\u200b\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 161
    :goto_3
    return-object v3

    .line 114
    .end local v3    # "unicodeSsid":Ljava/lang/String;
    :cond_4
    if-gez v4, :cond_6

    .line 115
    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xc0

    if-ne v5, v7, :cond_5

    .line 116
    const/4 v4, 0x0

    .line 117
    goto :goto_1

    .line 119
    :cond_5
    const/4 v2, 0x0

    .line 120
    goto :goto_2

    .line 122
    :cond_6
    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_0

    .line 124
    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0xe0

    if-ne v5, v6, :cond_7

    .line 125
    const/4 v4, 0x2

    .line 126
    goto :goto_1

    .line 127
    :cond_7
    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xe0

    const/16 v6, 0xc0

    if-ne v5, v6, :cond_8

    .line 128
    const/4 v4, 0x1

    .line 129
    goto :goto_1

    .line 130
    :cond_8
    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xf8

    const/16 v6, 0xf0

    if-ne v5, v6, :cond_9

    .line 131
    const/4 v4, 0x3

    .line 132
    goto :goto_1

    .line 133
    :cond_9
    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xfc

    const/16 v6, 0xf8

    if-ne v5, v6, :cond_a

    .line 134
    const/4 v4, 0x4

    .line 135
    goto :goto_1

    .line 136
    :cond_a
    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xfe

    const/16 v6, 0xfc

    if-ne v5, v6, :cond_b

    .line 137
    const/4 v4, 0x5

    .line 138
    goto :goto_1

    .line 140
    :cond_b
    const/4 v2, 0x0

    .line 141
    goto :goto_2

    .line 155
    :cond_c
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v5, "KSC5601"

    invoke-direct {v3, p0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v3    # "unicodeSsid":Ljava/lang/String;
    goto :goto_3

    .line 156
    .end local v3    # "unicodeSsid":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v3, 0x0

    .restart local v3    # "unicodeSsid":Ljava/lang/String;
    goto :goto_3
.end method
