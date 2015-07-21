.class Lcom/android/internal/telephony/gsm/LgeNetworkNameUtils;
.super Ljava/lang/Object;
.source "LgeNetworkNameUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static matchData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "valueFromSystem"    # Ljava/lang/String;
    .param p2, "valueFromXml"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 69
    const-string v0, "plmn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "spn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    :cond_0
    invoke-static {p1, p2, v2, v1}, Lcom/android/internal/telephony/gsm/LgeNetworkNameUtils;->matchData(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    .line 76
    :goto_0
    return v0

    .line 72
    :cond_1
    const-string v0, "gid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "imsi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    :cond_2
    invoke-static {p1, p2, v1, v2}, Lcom/android/internal/telephony/gsm/LgeNetworkNameUtils;->matchData(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    goto :goto_0

    .line 76
    :cond_3
    invoke-static {p1, p2, v1, v1}, Lcom/android/internal/telephony/gsm/LgeNetworkNameUtils;->matchData(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public static matchData(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 6
    .param p0, "valueFromSystem"    # Ljava/lang/String;
    .param p1, "valueFromXml"    # Ljava/lang/String;
    .param p2, "ignoreCase"    # Z
    .param p3, "startsWith"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 26
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v5, ";"

    invoke-direct {v1, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .local v1, "st":Ljava/util/StringTokenizer;
    const/4 v0, 0x0

    .line 30
    .local v0, "match":Z
    :cond_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 31
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "xmlValue":Ljava/lang/String;
    const-string v5, "not null"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz p0, :cond_3

    .line 34
    const-string v5, "null"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    move v0, v3

    .line 51
    :goto_0
    if-eqz v0, :cond_0

    move v4, v3

    .line 56
    .end local v2    # "xmlValue":Ljava/lang/String;
    :cond_1
    return v4

    .restart local v2    # "xmlValue":Ljava/lang/String;
    :cond_2
    move v0, v4

    .line 34
    goto :goto_0

    .line 35
    :cond_3
    const-string v5, "null"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 36
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    move v0, v3

    :goto_1
    goto :goto_0

    :cond_5
    move v0, v4

    goto :goto_1

    .line 38
    :cond_6
    if-eqz p0, :cond_1

    .line 39
    if-eqz p2, :cond_7

    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 41
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 44
    :cond_7
    if-eqz p3, :cond_8

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_2
    goto :goto_0

    :cond_8
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2
.end method
