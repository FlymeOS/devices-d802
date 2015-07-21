.class public final Lcom/lge/uicc/framework/LGUICC;
.super Ljava/lang/Object;
.source "LGUICC.java"


# static fields
.field private static final PREFERENCE_NAME:Ljava/lang/String; = "lguicc"

.field private static SLOTS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LGUICC"

.field private static final TARGET_COMBO:Ljava/lang/String;

.field private static final TARGET_COUNTRY:Ljava/lang/String;

.field private static final TARGET_OPERATOR:Ljava/lang/String;

.field private static final TARGET_OPERATOR_EXT:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mRegistrantsData:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/RegistrantList;",
            ">;"
        }
    .end annotation
.end field

.field private static mUiccData:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-string v0, "ro.build.target_operator"

    const-string v1, "OPEN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/uicc/framework/LGUICC;->TARGET_OPERATOR:Ljava/lang/String;

    .line 38
    const-string v0, "ro.build.target_operator_ext"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/uicc/framework/LGUICC;->TARGET_OPERATOR_EXT:Ljava/lang/String;

    .line 39
    const-string v0, "ro.build.target_country"

    const-string v1, "COM"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/uicc/framework/LGUICC;->TARGET_COUNTRY:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/lge/uicc/framework/LGUICC;->TARGET_OPERATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lge/uicc/framework/LGUICC;->TARGET_COUNTRY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/uicc/framework/LGUICC;->TARGET_COMBO:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/lge/uicc/framework/LGUICC;->mUiccData:Ljava/util/TreeMap;

    .line 43
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/lge/uicc/framework/LGUICC;->mRegistrantsData:Ljava/util/TreeMap;

    .line 46
    const/4 v0, 0x1

    sput v0, Lcom/lge/uicc/framework/LGUICC;->SLOTS:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 13
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 294
    const-string v10, "LGUICC Config:"

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    sget-object v10, Lcom/lge/uicc/framework/LGUICC;->mUiccData:Ljava/util/TreeMap;

    invoke-virtual {v10}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 296
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]: ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 298
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    array-length v10, p2

    if-eqz v10, :cond_1

    aget-object v10, p2, v12

    const-string v11, "all"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 321
    :cond_1
    return-void

    .line 300
    :cond_2
    const-string v10, "\nLGUICC Registrants:"

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    sget-object v10, Lcom/lge/uicc/framework/LGUICC;->mRegistrantsData:Ljava/util/TreeMap;

    invoke-virtual {v10}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 302
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/RegistrantList;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 303
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/RegistrantList;

    .line 304
    .local v8, "rs":Landroid/os/RegistrantList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v8}, Landroid/os/RegistrantList;->size()I

    move-result v10

    if-ge v3, v10, :cond_3

    .line 305
    invoke-virtual {v8, v3}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Registrant;

    .line 306
    .local v6, "r":Landroid/os/Registrant;
    invoke-virtual {v6}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 307
    .local v2, "h":Landroid/os/Handler;
    if-eqz v2, :cond_5

    .line 308
    invoke-virtual {v6}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v5

    .line 309
    .local v5, "m":Landroid/os/Message;
    if-eqz v5, :cond_4

    iget-object v10, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v10, :cond_6

    :cond_4
    const-string v7, "*"

    .line 310
    .local v7, "regv":Ljava/lang/String;
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] -> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 304
    .end local v5    # "m":Landroid/os/Message;
    .end local v7    # "regv":Ljava/lang/String;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 309
    .restart local v5    # "m":Landroid/os/Message;
    :cond_6
    iget-object v10, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    move-object v7, v10

    goto :goto_2

    .line 314
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/RegistrantList;>;"
    .end local v2    # "h":Landroid/os/Handler;
    .end local v3    # "i":I
    .end local v5    # "m":Landroid/os/Message;
    .end local v6    # "r":Landroid/os/Registrant;
    .end local v8    # "rs":Landroid/os/RegistrantList;
    :cond_7
    sget-object v10, Lcom/lge/uicc/framework/LGUICC;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_1

    .line 315
    const-string v10, "\nLGUICC Preferences:"

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    sget-object v10, Lcom/lge/uicc/framework/LGUICC;->mContext:Landroid/content/Context;

    const-string v11, "lguicc"

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 317
    .local v9, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 318
    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "{"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "}: {"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "}"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 160
    const/4 v0, -0x1

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConfig(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "slotId"    # I

    .prologue
    .line 168
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getConfig(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "slotId"    # I
    .param p2, "def"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 172
    const-class v4, Lcom/lge/uicc/framework/LGUICC;

    monitor-enter v4

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 189
    .end local p2    # "def":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit v4

    return-object p2

    .line 174
    .restart local p2    # "def":Ljava/lang/String;
    :cond_1
    if-gtz p1, :cond_2

    :try_start_1
    sget v3, Lcom/lge/uicc/framework/LGUICC;->SLOTS:I

    if-eq v3, v6, :cond_3

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x23

    if-ne v3, v5, :cond_4

    .line 175
    :cond_3
    sget-object v3, Lcom/lge/uicc/framework/LGUICC;->mUiccData:Ljava/util/TreeMap;

    invoke-virtual {v3, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 176
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object p2, v1

    .line 177
    goto :goto_0

    .line 178
    .end local v1    # "value":Ljava/lang/String;
    :cond_4
    if-ltz p1, :cond_0

    sget v3, Lcom/lge/uicc/framework/LGUICC;->SLOTS:I

    if-le v3, v6, :cond_0

    .line 179
    sget-object v3, Lcom/lge/uicc/framework/LGUICC;->mUiccData:Ljava/util/TreeMap;

    invoke-virtual {v3, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 180
    .local v2, "values":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 181
    invoke-static {v2}, Lcom/lge/uicc/framework/LGUICC;->splitValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "v":[Ljava/lang/String;
    array-length v3, v0

    if-ge p1, v3, :cond_0

    .line 183
    aget-object v1, v0, p1

    .line 184
    .restart local v1    # "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    move-object p2, v1

    .line 185
    goto :goto_0

    .line 172
    .end local v0    # "v":[Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "values":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .prologue
    .line 164
    const/4 v0, -0x1

    invoke-static {p0, v0, p1}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreference(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 279
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/lge/uicc/framework/LGUICC;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .prologue
    .line 283
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 290
    .end local p1    # "def":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 285
    .restart local p1    # "def":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/lge/uicc/framework/LGUICC;->mContext:Landroid/content/Context;

    if-nez v1, :cond_2

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreference: fails to get context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/uicc/framework/LGUICC;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_2
    sget-object v1, Lcom/lge/uicc/framework/LGUICC;->mContext:Landroid/content/Context;

    const-string v2, "lguicc"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 290
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static joinValues([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "v"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 90
    aget-object v2, p0, v3

    if-nez v2, :cond_1

    const-string v1, ""

    .line 91
    .local v1, "values":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x1

    .local v0, "n":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    aget-object v2, p0, v0

    if-eqz v2, :cond_0

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    .end local v0    # "n":I
    .end local v1    # "values":Ljava/lang/String;
    :cond_1
    aget-object v1, p0, v3

    goto :goto_0

    .line 96
    .restart local v0    # "n":I
    .restart local v1    # "values":Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method public static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 333
    const-string v0, "LGUICC"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-void
.end method

.method public static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 337
    const-string v0, "LGUICC"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return-void
.end method

.method public static logp(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 341
    const-string v0, "LGUICC"

    invoke-static {v0, p0}, Lcom/lge/uicc/Plog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return-void
.end method

.method private static notifyRegistrantConfigExisted(Ljava/lang/String;Ljava/lang/String;Landroid/os/Registrant;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "regValue"    # Ljava/lang/String;
    .param p2, "r"    # Landroid/os/Registrant;

    .prologue
    .line 222
    const/4 v0, 0x0

    .local v0, "slotId":I
    :goto_0
    sget v2, Lcom/lge/uicc/framework/LGUICC;->SLOTS:I

    if-ge v0, v2, :cond_2

    .line 223
    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    .line 222
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    .end local v1    # "value":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static notifyRegistrantsConfigChanged(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "slotId"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 231
    sget-object v6, Lcom/lge/uicc/framework/LGUICC;->mRegistrantsData:Ljava/util/TreeMap;

    invoke-virtual {v6, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RegistrantList;

    .line 232
    .local v4, "rs":Landroid/os/RegistrantList;
    if-eqz v4, :cond_3

    .line 234
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v4}, Landroid/os/RegistrantList;->size()I

    move-result v5

    .local v5, "s":I
    :goto_0
    if-ge v0, v5, :cond_3

    .line 235
    invoke-virtual {v4, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Registrant;

    .line 236
    .local v2, "r":Landroid/os/Registrant;
    invoke-virtual {v2}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v1

    .line 237
    .local v1, "msg":Landroid/os/Message;
    if-nez v1, :cond_1

    .line 234
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    :cond_1
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 241
    .local v3, "regValue":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 242
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    goto :goto_1

    .line 245
    .end local v0    # "i":I
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "r":Landroid/os/Registrant;
    .end local v3    # "regValue":Ljava/lang/String;
    .end local v5    # "s":I
    :cond_3
    return-void
.end method

.method public static notifyResultForConfig(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 248
    sget-object v1, Lcom/lge/uicc/framework/LGUICC;->mRegistrantsData:Ljava/util/TreeMap;

    invoke-virtual {v1, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RegistrantList;

    .line 249
    .local v0, "rs":Landroid/os/RegistrantList;
    if-nez v0, :cond_0

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyForConfig: no registrants for key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/uicc/framework/LGUICC;->logd(Ljava/lang/String;)V

    .line 254
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static declared-synchronized registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "regValue"    # Ljava/lang/String;

    .prologue
    .line 193
    const-class v3, Lcom/lge/uicc/framework/LGUICC;

    monitor-enter v3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 207
    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    .line 195
    :cond_1
    :try_start_1
    sget-object v2, Lcom/lge/uicc/framework/LGUICC;->mRegistrantsData:Ljava/util/TreeMap;

    invoke-virtual {v2, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RegistrantList;

    .line 196
    .local v1, "rs":Landroid/os/RegistrantList;
    if-nez v1, :cond_2

    .line 197
    new-instance v1, Landroid/os/RegistrantList;

    .end local v1    # "rs":Landroid/os/RegistrantList;
    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    .line 198
    .restart local v1    # "rs":Landroid/os/RegistrantList;
    sget-object v2, Lcom/lge/uicc/framework/LGUICC;->mRegistrantsData:Ljava/util/TreeMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_2
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 202
    .local v0, "r":Landroid/os/Registrant;
    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 203
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 205
    sget-object v2, Lcom/lge/uicc/framework/LGUICC;->mUiccData:Ljava/util/TreeMap;

    invoke-virtual {v2, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 206
    invoke-static {p0, p3, v0}, Lcom/lge/uicc/framework/LGUICC;->notifyRegistrantConfigExisted(Ljava/lang/String;Ljava/lang/String;Landroid/os/Registrant;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 193
    .end local v0    # "r":Landroid/os/Registrant;
    .end local v1    # "rs":Landroid/os/RegistrantList;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static removeConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 114
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/lge/uicc/framework/LGUICC;->setConfig(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeConfig(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "slotId"    # I

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/lge/uicc/framework/LGUICC;->setConfig(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removePreference(Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/uicc/framework/LGUICC;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public static declared-synchronized setConfig(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "slotId"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 127
    const-class v4, Lcom/lge/uicc/framework/LGUICC;

    monitor-enter v4

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 155
    :cond_0
    :goto_0
    monitor-exit v4

    return-object v0

    .line 130
    :cond_1
    if-gtz p1, :cond_2

    :try_start_1
    sget v3, Lcom/lge/uicc/framework/LGUICC;->SLOTS:I

    if-eq v3, v6, :cond_3

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x23

    if-ne v3, v5, :cond_6

    .line 131
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    .line 132
    :cond_4
    sget-object v3, Lcom/lge/uicc/framework/LGUICC;->mUiccData:Ljava/util/TreeMap;

    invoke-virtual {v3, p0}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    goto :goto_0

    .line 134
    :cond_5
    sget-object v3, Lcom/lge/uicc/framework/LGUICC;->mUiccData:Ljava/util/TreeMap;

    invoke-virtual {v3, p0, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 136
    .local v0, "oldValue":Ljava/lang/String;
    const/4 p1, 0x0

    .line 154
    :goto_1
    invoke-static {p0, p1, p2}, Lcom/lge/uicc/framework/LGUICC;->notifyRegistrantsConfigChanged(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 127
    .end local v0    # "oldValue":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 137
    :cond_6
    if-ltz p1, :cond_0

    :try_start_2
    sget v3, Lcom/lge/uicc/framework/LGUICC;->SLOTS:I

    if-le v3, v6, :cond_0

    .line 138
    sget-object v3, Lcom/lge/uicc/framework/LGUICC;->mUiccData:Ljava/util/TreeMap;

    invoke-virtual {v3, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 139
    .local v2, "values":Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/uicc/framework/LGUICC;->splitValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "v":[Ljava/lang/String;
    array-length v3, v1

    if-ge p1, v3, :cond_0

    .line 142
    aget-object v0, v1, p1

    .line 143
    .restart local v0    # "oldValue":Ljava/lang/String;
    aput-object p2, v1, p1

    .line 144
    invoke-static {v1}, Lcom/lge/uicc/framework/LGUICC;->joinValues([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    array-length v5, v1

    if-ge v3, v5, :cond_7

    .line 146
    sget-object v3, Lcom/lge/uicc/framework/LGUICC;->mUiccData:Ljava/util/TreeMap;

    invoke-virtual {v3, p0}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 149
    :cond_7
    sget-object v3, Lcom/lge/uicc/framework/LGUICC;->mUiccData:Ljava/util/TreeMap;

    invoke-virtual {v3, p0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static setConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 122
    const/4 v0, -0x1

    invoke-static {p0, v0, p1}, Lcom/lge/uicc/framework/LGUICC;->setConfig(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 262
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    sget-object v2, Lcom/lge/uicc/framework/LGUICC;->mContext:Landroid/content/Context;

    if-nez v2, :cond_2

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreference: fails to get context : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/framework/LGUICC;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :cond_2
    sget-object v2, Lcom/lge/uicc/framework/LGUICC;->mContext:Landroid/content/Context;

    const-string v3, "lguicc"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 269
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 270
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 271
    :cond_3
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 275
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 273
    :cond_4
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method protected static setup(Landroid/content/Context;I)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "count"    # I

    .prologue
    .line 69
    if-lez p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    sput-object p0, Lcom/lge/uicc/framework/LGUICC;->mContext:Landroid/content/Context;

    .line 72
    sput p1, Lcom/lge/uicc/framework/LGUICC;->SLOTS:I

    .line 73
    const-string v0, "#target"

    sget-object v1, Lcom/lge/uicc/framework/LGUICC;->TARGET_COMBO:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/lge/uicc/framework/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method private static splitValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "values"    # Ljava/lang/String;

    .prologue
    .line 77
    sget v6, Lcom/lge/uicc/framework/LGUICC;->SLOTS:I

    new-array v5, v6, [Ljava/lang/String;

    .line 78
    .local v5, "v":[Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 79
    const/4 v1, 0x0

    .local v1, "n":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 80
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "start":I
    :goto_0
    array-length v6, v5

    if-ge v1, v6, :cond_1

    if-ge v4, v3, :cond_1

    .line 81
    const/16 v6, 0x2c

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .local v0, "end":I
    if-gez v0, :cond_0

    .line 82
    move v0, v3

    .line 83
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "n":I
    .local v2, "n":I
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 80
    add-int/lit8 v4, v0, 0x1

    move v1, v2

    .end local v2    # "n":I
    .restart local v1    # "n":I
    goto :goto_0

    .line 86
    .end local v0    # "end":I
    .end local v1    # "n":I
    .end local v3    # "size":I
    .end local v4    # "start":I
    :cond_1
    return-object v5
.end method

.method public static varargs targetCountry([Ljava/lang/String;)Z
    .locals 5
    .param p0, "countries"    # [Ljava/lang/String;

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 62
    .local v1, "country":Ljava/lang/String;
    sget-object v4, Lcom/lge/uicc/framework/LGUICC;->TARGET_COUNTRY:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    const/4 v4, 0x1

    .line 65
    .end local v1    # "country":Ljava/lang/String;
    :goto_1
    return v4

    .line 61
    .restart local v1    # "country":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    .end local v1    # "country":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static varargs targetOperator([Ljava/lang/String;)Z
    .locals 5
    .param p0, "operators"    # [Ljava/lang/String;

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 54
    .local v3, "op":Ljava/lang/String;
    sget-object v4, Lcom/lge/uicc/framework/LGUICC;->TARGET_OPERATOR:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/lge/uicc/framework/LGUICC;->TARGET_OPERATOR_EXT:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/lge/uicc/framework/LGUICC;->TARGET_COMBO:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    :cond_0
    const/4 v4, 0x1

    .line 57
    .end local v3    # "op":Ljava/lang/String;
    :goto_1
    return v4

    .line 53
    .restart local v3    # "op":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .end local v3    # "op":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static traceStack(I)Ljava/lang/String;
    .locals 5
    .param p0, "trace_count"    # I

    .prologue
    .line 324
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 325
    .local v1, "stack":[Ljava/lang/StackTraceElement;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 326
    .local v2, "trace":Ljava/lang/StringBuffer;
    const/4 v0, 0x3

    .local v0, "s":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    add-int/lit8 v3, p0, 0x3

    if-ge v0, v3, :cond_0

    .line 327
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static declared-synchronized unregisterForConfig(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 210
    const-class v2, Lcom/lge/uicc/framework/LGUICC;

    monitor-enter v2

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 219
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 212
    :cond_1
    :try_start_1
    sget-object v1, Lcom/lge/uicc/framework/LGUICC;->mRegistrantsData:Ljava/util/TreeMap;

    invoke-virtual {v1, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RegistrantList;

    .line 213
    .local v0, "rs":Landroid/os/RegistrantList;
    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 217
    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 218
    sget-object v1, Lcom/lge/uicc/framework/LGUICC;->mRegistrantsData:Ljava/util/TreeMap;

    invoke-virtual {v1, p0}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 210
    .end local v0    # "rs":Landroid/os/RegistrantList;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
