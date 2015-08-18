.class public Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;
.super Ljava/lang/Object;
.source "LgeProfile.java"

# interfaces
.implements Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfilingConstants;


# static fields
.field private static final DBG:Z = true

.field private static final EDBG:Z = true

.field private static final VDBG:Z = true

.field private static instance:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLastSimState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProfiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mContext:Landroid/content/Context;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mProfiles:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mLastSimState:Ljava/util/HashMap;

    .line 43
    return-void
.end method

.method private getEccListSimLock(I)Ljava/lang/String;
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 274
    const-string v2, "sim_lock_ecclist"

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->getValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "eccListSimLock":Ljava/lang/String;
    const-string v2, "persist.sys.iccid-mcc"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 279
    .local v1, "mcc":I
    const/16 v2, 0xea

    if-eq v1, v2, :cond_0

    const/16 v2, 0x110

    if-eq v1, v2, :cond_0

    const/16 v2, 0x20d

    if-eq v1, v2, :cond_0

    const/16 v2, 0x1c6

    if-eq v1, v2, :cond_0

    const/16 v2, 0x1c7

    if-eq v1, v2, :cond_0

    const/16 v2, 0xde

    if-ne v1, v2, :cond_2

    const-string v2, "H3G"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 284
    :cond_0
    const-string v0, "999"

    .line 293
    :cond_1
    :goto_0
    return-object v0

    .line 286
    :cond_2
    const/16 v2, 0x1d2

    if-ne v1, v2, :cond_3

    .line 287
    const-string v0, "110,119"

    goto :goto_0

    .line 289
    :cond_3
    const/16 v2, 0x1cc

    if-ne v1, v2, :cond_1

    .line 290
    const-string v0, "110,119,120,122"

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    sget-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->instance:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->instance:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;

    .line 52
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->instance:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;

    return-object v0

    .line 49
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->instance:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->setContext(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private loadProfileFromPreferences(IZ)Z
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "defaultProfile"    # Z

    .prologue
    const/4 v4, 0x0

    .line 85
    const-string v5, "TelephonyAutoProfiling"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[loadProfileFromPreferences] *** start profile loading from preferences - defaultProfile : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v1, 0x0

    .line 88
    .local v1, "prefName":Ljava/lang/String;
    const-string v5, "ro.build.date"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "currentSWBuildDate":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 91
    const-string v1, "defaultProfile"

    .line 96
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 98
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string v5, "build_date"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 99
    const-string v5, "TelephonyAutoProfiling"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[loadProfileFromPreferences] preferences do not exist or BUILD_DATE is different - phoneId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_1
    return v4

    .line 93
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "profile_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 103
    .restart local v2    # "preferences":Landroid/content/SharedPreferences;
    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 105
    .local v3, "profile":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "build_date"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v4, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mProfiles:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v4, "TelephonyAutoProfiling"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[loadProfileFromPreferences] *** profile loading from preferences complete - defaultProfile : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phoneId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private loadProfileFromXml(Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;I)V
    .locals 6
    .param p1, "simInfo"    # Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;
    .param p2, "phoneId"    # I

    .prologue
    .line 115
    const-string v3, "TelephonyAutoProfiling"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[loadProfileFromXml] *** start profile loading from xml - phoneId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;

    invoke-direct {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;-><init>()V

    .line 119
    .local v0, "parser":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->getMatchedProfile(ILcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;

    .line 121
    .local v1, "profileFromXml":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;
    if-nez v1, :cond_0

    .line 122
    const-string v3, "TelephonyAutoProfiling"

    const-string v4, "[profileFromXml] load profile from xml failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->profileToMap(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;)Ljava/util/HashMap;

    move-result-object v2

    .line 129
    .local v2, "profileMapFromXml":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v2, :cond_1

    .line 130
    const-string v3, "TelephonyAutoProfiling"

    const-string v4, "[loadProfileFromXml] load profile Map from xml failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mProfiles:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v3, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_3

    .line 138
    invoke-virtual {p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->isNull()Z

    move-result v3

    if-nez v3, :cond_2

    .line 139
    const-string v3, "TelephonyAutoProfiling"

    const-string v4, "[loadProfileFromXml] save SimInfo to preferences"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v3, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->writeToPreference(Landroid/content/Context;Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;I)V

    .line 142
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->isNull()Z

    move-result v3

    invoke-direct {p0, v2, p2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->saveProfileToPreferences(Ljava/util/HashMap;IZ)V

    .line 145
    :cond_3
    const-string v3, "TelephonyAutoProfiling"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[loadProfileFromXml] *** end profile loading from xml - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveProfileToPreferences(Ljava/util/HashMap;IZ)V
    .locals 8
    .param p2, "phoneId"    # I
    .param p3, "simInfoIsNull"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "profileMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 151
    .local v3, "prefName":Ljava/lang/String;
    const-string v5, "ro.build.date"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, "swBuildDate":Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 154
    const-string v3, "defaultProfile"

    .line 163
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 165
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "TelephonyAutoProfiling"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[saveProfileToPreferences] save to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 168
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 169
    const-string v5, "build_date"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 172
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 173
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 155
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    if-nez p3, :cond_2

    .line 156
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "profile_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 158
    :cond_2
    const-string v5, "TelephonyAutoProfiling"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[saveProfileToPreferences] simInfo is null, do not save to preferences, phoneId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_2
    return-void

    .line 176
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2
.end method

.method private setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 57
    iput-object p1, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mContext:Landroid/content/Context;

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method public getLastSimState(I)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 232
    iget-object v1, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mLastSimState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 234
    .local v0, "lastSimState":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0    # "lastSimState":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getValue(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .prologue
    .line 297
    const/4 v1, 0x0

    .line 299
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mProfiles:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 300
    iget-object v2, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mProfiles:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 301
    .local v0, "profile":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 302
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->loadProfile(I)V

    .line 303
    iget-object v2, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mProfiles:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "profile":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast v0, Ljava/util/HashMap;

    .line 306
    .restart local v0    # "profile":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "value":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 311
    .end local v0    # "profile":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "value":Ljava/lang/String;
    :cond_1
    const-string v2, "TelephonyAutoProfiling"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getValue] PROFILE key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", phoneId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    if-nez v1, :cond_2

    const-string v1, ""

    .end local v1    # "value":Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method public loadProfile(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    .line 62
    invoke-static {p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getSimInfo(I)Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;

    move-result-object v1

    .line 63
    .local v1, "simInfo":Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;
    const/4 v0, 0x0

    .line 65
    .local v0, "loadSuccessFromPreferences":Z
    iget-object v2, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 66
    invoke-virtual {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->isNull()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 67
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->loadProfileFromPreferences(IZ)Z

    move-result v0

    .line 73
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 74
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->loadProfileFromXml(Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;I)V

    .line 77
    :cond_1
    const-string v2, "1"

    const-string v3, "persist.sys.cupss.changed"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    const-string v2, "TelephonyAutoProfiling"

    const-string v3, "[LGE][SBP] Operator is changed. Need to reload!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->loadProfileFromXml(Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;I)V

    .line 82
    :cond_2
    return-void

    .line 68
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->isNull()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->createFromPreference(Landroid/content/Context;I)Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->equals(Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->loadProfileFromPreferences(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public setEccList(Ljava/lang/String;I)V
    .locals 6
    .param p1, "simState"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .prologue
    const/16 v5, 0x10

    .line 238
    const-string v2, "KR"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    const/4 v1, 0x0

    .line 243
    .local v1, "eccList":Ljava/lang/String;
    const/4 v0, 0x0

    .line 245
    .local v0, "changed":Z
    const-string v2, "ABSENT"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 246
    const-string v2, "no_sim_ecclist"

    invoke-virtual {p0, v2, p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->getValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 247
    const/4 v0, 0x1

    .line 250
    const-string v2, "TelephonyAutoProfiling"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setEccList] phoneId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", KEY_NO_SIM_ECCLIST : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->privateLogHandler(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 269
    invoke-static {p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getAutoProfileEcclistPropName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 252
    :cond_3
    const-string v2, "LOCKED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "trigger_restart_min_framework"

    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "NOT_READY"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 253
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->getEccListSimLock(I)Ljava/lang/String;

    move-result-object v1

    .line 254
    const/4 v0, 0x1

    .line 257
    const-string v2, "TelephonyAutoProfiling"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setEccList] phoneId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", KEY_SIM_LOCK_ECCLIST : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->privateLogHandler(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 259
    :cond_5
    const-string v2, "LOADED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 260
    const-string v2, "ECC_list"

    invoke-virtual {p0, v2, p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->getValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 261
    const/4 v0, 0x1

    .line 264
    const-string v2, "TelephonyAutoProfiling"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setEccList] phoneId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", KEY_ECC_LIST : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->privateLogHandler(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public setLastSimState(ILjava/lang/String;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "simState"    # Ljava/lang/String;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mLastSimState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    return-void
.end method

.method public updateProfile(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 180
    iget-object v7, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mContext:Landroid/content/Context;

    if-nez v7, :cond_1

    .line 181
    const-string v7, "TelephonyAutoProfiling"

    const-string v8, "[updateProfile] context is null, return"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getDefaultPhoneId()I

    move-result v5

    .line 190
    .local v5, "phoneId":I
    const-string v7, "phone"

    invoke-virtual {p1, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 192
    const-string v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 193
    const-string v7, "ss"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 195
    .local v6, "simState":Ljava/lang/String;
    const-string v7, "ABSENT"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "LOCKED"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "NOT_READY"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "LOADED"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 200
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "[updateProfile] ACTION_SIM_STATE_CHANGED -"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .local v1, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 203
    .local v2, "extras":Landroid/os/Bundle;
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 204
    .local v4, "key":Ljava/lang/String;
    const-string v7, " ["

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 207
    .end local v4    # "key":Ljava/lang/String;
    :cond_3
    const-string v7, "TelephonyAutoProfiling"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->getLastSimState(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 211
    const-string v7, "TelephonyAutoProfiling"

    const-string v8, "[updateProfile] repeated SIM_STATE, ignore"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 214
    :cond_4
    const-string v7, "TelephonyAutoProfiling"

    const-string v8, "[updateProfile] new SIM_STATE, continue process"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->setLastSimState(ILjava/lang/String;)V

    .line 218
    const-string v7, "TelephonyAutoProfiling"

    const-string v8, "[updateProfile] loadProfile"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->loadProfile(I)V

    .line 222
    invoke-virtual {p0, v6, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->setEccList(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method
