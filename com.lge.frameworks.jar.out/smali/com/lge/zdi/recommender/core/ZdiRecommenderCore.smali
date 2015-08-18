.class public Lcom/lge/zdi/recommender/core/ZdiRecommenderCore;
.super Ljava/lang/Object;
.source "ZdiRecommenderCore.java"


# instance fields
.field TAG:Ljava/lang/String;

.field public cardinality:I

.field elementIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/zdi/recommender/core/ZdiRecommenderCore;->elementIndexMap:Ljava/util/HashMap;

    .line 24
    const-string v0, "ZdiRecommenderCore"

    iput-object v0, p0, Lcom/lge/zdi/recommender/core/ZdiRecommenderCore;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/zdi/recommender/core/ZdiRecommenderCore;->cardinality:I

    .line 21
    return-void
.end method

.method private resultVectorToGlobalRankedAppList(Lorg/apache/mahout/math/Vector;ILjava/util/HashMap;)Ljava/util/List;
    .locals 24
    .param p1, "vector"    # Lorg/apache/mahout/math/Vector;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mahout/math/Vector;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/zdi/recommender/common/RankedApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    .local p3, "resolveInfoIndexMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/ResolveInfo;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v8, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/zdi/recommender/common/RankedApp;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 172
    .local v9, "appRankMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    const/4 v11, 0x0

    .line 174
    .local v11, "cnt":I
    invoke-interface/range {p1 .. p1}, Lorg/apache/mahout/math/Vector;->iterateNonZero()Ljava/util/Iterator;

    move-result-object v19

    .line 176
    .local v19, "pIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/mahout/math/Vector$Element;>;"
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 197
    new-instance v14, Lcom/lge/zdi/recommender/common/ValueComparator;

    invoke-direct {v14, v9}, Lcom/lge/zdi/recommender/common/ValueComparator;-><init>(Ljava/util/Map;)V

    .line 199
    .local v14, "comparator":Lcom/lge/zdi/recommender/common/ValueComparator;, "Lcom/lge/zdi/recommender/common/ValueComparator<Ljava/lang/String;Ljava/lang/Double;>;"
    new-instance v21, Ljava/util/TreeMap;

    move-object/from16 v0, v21

    invoke-direct {v0, v14}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 200
    .local v21, "sorted":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/Double;>;"
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 201
    invoke-virtual/range {v21 .. v21}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 203
    .local v17, "itr_sorted":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move/from16 v0, p2

    if-lt v11, v0, :cond_4

    .line 211
    :cond_0
    return-object v8

    .line 177
    .end local v14    # "comparator":Lcom/lge/zdi/recommender/common/ValueComparator;, "Lcom/lge/zdi/recommender/common/ValueComparator<Ljava/lang/String;Ljava/lang/Double;>;"
    .end local v17    # "itr_sorted":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v21    # "sorted":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/Double;>;"
    :cond_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/mahout/math/Vector$Element;

    .line 178
    .local v15, "element":Lorg/apache/mahout/math/Vector$Element;
    invoke-interface {v15}, Lorg/apache/mahout/math/Vector$Element;->index()I

    move-result v10

    .line 179
    .local v10, "c_index":I
    invoke-interface {v15}, Lorg/apache/mahout/math/Vector$Element;->get()D

    move-result-wide v12

    .line 180
    .local v12, "c_value":D
    const-string v20, ""

    .line 181
    .local v20, "resultKey":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/zdi/recommender/core/ZdiRecommenderCore;->getElementIndexMap()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 182
    .local v16, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const-string v18, ""

    .line 183
    .local v18, "key":Ljava/lang/String;
    const/16 v23, 0x0

    .line 185
    .local v23, "value":I
    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 194
    :goto_2
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 186
    :cond_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "key":Ljava/lang/String;
    check-cast v18, Ljava/lang/String;

    .line 187
    .restart local v18    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/zdi/recommender/core/ZdiRecommenderCore;->getElementIndexMap()Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 189
    move/from16 v0, v23

    if-ne v0, v10, :cond_2

    .line 190
    move-object/from16 v20, v18

    .line 191
    goto :goto_2

    .line 204
    .end local v10    # "c_index":I
    .end local v12    # "c_value":D
    .end local v15    # "element":Lorg/apache/mahout/math/Vector$Element;
    .end local v16    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v18    # "key":Ljava/lang/String;
    .end local v20    # "resultKey":Ljava/lang/String;
    .end local v23    # "value":I
    .restart local v14    # "comparator":Lcom/lge/zdi/recommender/common/ValueComparator;, "Lcom/lge/zdi/recommender/common/ValueComparator<Ljava/lang/String;Ljava/lang/Double;>;"
    .restart local v17    # "itr_sorted":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v21    # "sorted":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/Double;>;"
    :cond_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 205
    .local v22, "temp_id":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 206
    .local v4, "score":D
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 207
    .local v6, "rInfoEntry":Landroid/content/pm/ResolveInfo;
    new-instance v2, Lcom/lge/zdi/recommender/common/RankedApp;

    iget-object v3, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/lge/zdi/recommender/common/RankedApp;-><init>(Ljava/lang/String;DLandroid/content/pm/ResolveInfo;Lcom/lge/zdi/recommender/common/RankedApp;)V

    .line 208
    .local v2, "rankedApp":Lcom/lge/zdi/recommender/common/RankedApp;
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1
.end method

.method private resultVectorToIndividualRankedAppList(Lorg/apache/mahout/math/Vector;ILjava/lang/String;Ljava/util/HashMap;)Ljava/util/List;
    .locals 24
    .param p1, "vector"    # Lorg/apache/mahout/math/Vector;
    .param p2, "count"    # I
    .param p3, "itself"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mahout/math/Vector;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/zdi/recommender/common/RankedApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    .local p4, "resolveInfoIndexMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/ResolveInfo;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v8, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/zdi/recommender/common/RankedApp;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 218
    .local v9, "appRankMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    const/4 v11, 0x0

    .line 220
    .local v11, "cnt":I
    invoke-interface/range {p1 .. p1}, Lorg/apache/mahout/math/Vector;->iterateNonZero()Ljava/util/Iterator;

    move-result-object v19

    .line 222
    .local v19, "pIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/mahout/math/Vector$Element;>;"
    :cond_0
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 246
    new-instance v14, Lcom/lge/zdi/recommender/common/ValueComparator;

    invoke-direct {v14, v9}, Lcom/lge/zdi/recommender/common/ValueComparator;-><init>(Ljava/util/Map;)V

    .line 248
    .local v14, "comparator":Lcom/lge/zdi/recommender/common/ValueComparator;, "Lcom/lge/zdi/recommender/common/ValueComparator<Ljava/lang/String;Ljava/lang/Double;>;"
    new-instance v21, Ljava/util/TreeMap;

    move-object/from16 v0, v21

    invoke-direct {v0, v14}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 249
    .local v21, "sorted":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/Double;>;"
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 250
    invoke-virtual/range {v21 .. v21}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 252
    .local v17, "itr_sorted":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    move/from16 v0, p2

    if-lt v11, v0, :cond_5

    .line 260
    :cond_1
    return-object v8

    .line 223
    .end local v14    # "comparator":Lcom/lge/zdi/recommender/common/ValueComparator;, "Lcom/lge/zdi/recommender/common/ValueComparator<Ljava/lang/String;Ljava/lang/Double;>;"
    .end local v17    # "itr_sorted":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v21    # "sorted":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/Double;>;"
    :cond_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/mahout/math/Vector$Element;

    .line 224
    .local v15, "element":Lorg/apache/mahout/math/Vector$Element;
    invoke-interface {v15}, Lorg/apache/mahout/math/Vector$Element;->index()I

    move-result v10

    .line 225
    .local v10, "c_index":I
    invoke-interface {v15}, Lorg/apache/mahout/math/Vector$Element;->get()D

    move-result-wide v12

    .line 226
    .local v12, "c_value":D
    const-string v20, ""

    .line 227
    .local v20, "resultKey":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/zdi/recommender/core/ZdiRecommenderCore;->getElementIndexMap()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 228
    .local v16, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const-string v18, ""

    .line 229
    .local v18, "key":Ljava/lang/String;
    const/16 v23, 0x0

    .line 231
    .local v23, "value":I
    :cond_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 241
    :goto_2
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 242
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 232
    :cond_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "key":Ljava/lang/String;
    check-cast v18, Ljava/lang/String;

    .line 233
    .restart local v18    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/zdi/recommender/core/ZdiRecommenderCore;->getElementIndexMap()Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 235
    move/from16 v0, v23

    if-ne v0, v10, :cond_3

    .line 236
    move-object/from16 v20, v18

    .line 237
    goto :goto_2

    .line 253
    .end local v10    # "c_index":I
    .end local v12    # "c_value":D
    .end local v15    # "element":Lorg/apache/mahout/math/Vector$Element;
    .end local v16    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v18    # "key":Ljava/lang/String;
    .end local v20    # "resultKey":Ljava/lang/String;
    .end local v23    # "value":I
    .restart local v14    # "comparator":Lcom/lge/zdi/recommender/common/ValueComparator;, "Lcom/lge/zdi/recommender/common/ValueComparator<Ljava/lang/String;Ljava/lang/Double;>;"
    .restart local v17    # "itr_sorted":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v21    # "sorted":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/Double;>;"
    :cond_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 254
    .local v22, "temp_id":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 255
    .local v4, "score":D
    move-object/from16 v0, p4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 256
    .local v6, "rInfoEntry":Landroid/content/pm/ResolveInfo;
    new-instance v2, Lcom/lge/zdi/recommender/common/RankedApp;

    iget-object v3, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/lge/zdi/recommender/common/RankedApp;-><init>(Ljava/lang/String;DLandroid/content/pm/ResolveInfo;Lcom/lge/zdi/recommender/common/RankedApp;)V

    .line 257
    .local v2, "rankedApp":Lcom/lge/zdi/recommender/common/RankedApp;
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public getCardinality()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/lge/zdi/recommender/core/ZdiRecommenderCore;->cardinality:I

    return v0
.end method

.method public getElementIndexMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lge/zdi/recommender/core/ZdiRecommenderCore;->elementIndexMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getGlobalRecApp(Landroid/content/Context;ILorg/apache/mahout/math/Matrix;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/List;
    .locals 30
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "count"    # I
    .param p3, "columnStocasticMatrix"    # Lorg/apache/mahout/math/Matrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lorg/apache/mahout/math/Matrix;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/zdi/recommender/common/RankedApp;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    .local p4, "resolveInfoIndexMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/ResolveInfo;>;"
    .local p5, "eIndexMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-wide v8, 0x3fe6666666666666L    # 0.7

    .line 47
    .local v8, "dampingFactor":D
    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    .line 51
    .local v4, "alpha":D
    invoke-virtual/range {p0 .. p0}, Lcom/lge/zdi/recommender/core/ZdiRecommenderCore;->getCardinality()I

    move-result v6

    .line 52
    .local v6, "cardinality":I
    if-nez v6, :cond_0

    .line 53
    const/16 v22, 0x0

    .line 98
    :goto_0
    return-object v22

    .line 56
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/lge/zdi/recommender/core/ZdiRecommenderCore;->setIndexMap(Ljava/util/HashMap;)V

    .line 58
    const/16 v21, 0x0

    .line 59
    .local v21, "resultVector":Lorg/apache/mahout/math/Vector;
    new-instance v15, Lorg/apache/mahout/math/RandomAccessSparseVector;

    invoke-direct {v15, v6}, Lorg/apache/mahout/math/RandomAccessSparseVector;-><init>(I)V

    .line 60
    .local v15, "prevDistributedVector":Lorg/apache/mahout/math/Vector;
    new-instance v20, Lorg/apache/mahout/math/RandomAccessSparseVector;

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Lorg/apache/mahout/math/RandomAccessSparseVector;-><init>(I)V

    .line 61
    .local v20, "restartVector":Lorg/apache/mahout/math/Vector;
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    int-to-double v0, v6

    move-wide/from16 v28, v0

    div-double v26, v26, v28

    move-object/from16 v0, v20

    move-wide/from16 v1, v26

    invoke-interface {v0, v1, v2}, Lorg/apache/mahout/math/Vector;->assign(D)Lorg/apache/mahout/math/Vector;

    .line 63
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    sub-double v26, v26, v8

    move-object/from16 v0, v20

    move-wide/from16 v1, v26

    invoke-interface {v0, v1, v2}, Lorg/apache/mahout/math/Vector;->times(D)Lorg/apache/mahout/math/Vector;

    move-result-object v13

    .line 68
    .local v13, "intermediateResultVector2":Lorg/apache/mahout/math/Vector;
    const/4 v14, 0x1

    .line 70
    .local v14, "is_first":Z
    const/4 v7, 0x0

    .line 73
    .local v7, "cnt":I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 74
    if-eqz v14, :cond_3

    .line 75
    move-object/from16 v0, v20

    invoke-interface {v0, v8, v9}, Lorg/apache/mahout/math/Vector;->times(D)Lorg/apache/mahout/math/Vector;

    move-result-object v11

    .line 76
    .local v11, "distributedVector":Lorg/apache/mahout/math/Vector;
    const/4 v14, 0x0

    .line 81
    :goto_1
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Lorg/apache/mahout/math/Matrix;->times(Lorg/apache/mahout/math/Vector;)Lorg/apache/mahout/math/Vector;

    move-result-object v12

    .line 82
    .local v12, "intermediateResultVector1":Lorg/apache/mahout/math/Vector;
    invoke-interface {v12, v13}, Lorg/apache/mahout/math/Vector;->plus(Lorg/apache/mahout/math/Vector;)Lorg/apache/mahout/math/Vector;

    move-result-object v11

    .line 83
    invoke-interface {v11, v15}, Lorg/apache/mahout/math/Vector;->minus(Lorg/apache/mahout/math/Vector;)Lorg/apache/mahout/math/Vector;

    move-result-object v10

    .line 85
    .local v10, "diffVector":Lorg/apache/mahout/math/Vector;
    invoke-interface {v10}, Lorg/apache/mahout/math/Vector;->maxValue()D

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    .line 86
    .local v16, "maxValue":D
    invoke-interface {v10}, Lorg/apache/mahout/math/Vector;->minValue()D

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    .line 87
    .local v18, "minValue":D
    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v24

    .line 89
    .local v24, "theGreater":D
    move-object v15, v11

    .line 90
    move-object/from16 v21, v11

    .line 92
    cmpg-double v23, v24, v4

    if-lez v23, :cond_2

    const/16 v23, 0xa

    move/from16 v0, v23

    if-lt v7, v0, :cond_1

    .line 96
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/zdi/recommender/core/ZdiRecommenderCore;->resultVectorToGlobalRankedAppList(Lorg/apache/mahout/math/Vector;ILjava/util/HashMap;)Ljava/util/List;

    move-result-object v22

    .line 98
    .local v22, "sortedAppList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/zdi/recommender/common/RankedApp;>;"
    goto :goto_0

    .line 78
    .end local v10    # "diffVector":Lorg/apache/mahout/math/Vector;
    .end local v11    # "distributedVector":Lorg/apache/mahout/math/Vector;
    .end local v12    # "intermediateResultVector1":Lorg/apache/mahout/math/Vector;
    .end local v16    # "maxValue":D
    .end local v18    # "minValue":D
    .end local v22    # "sortedAppList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/zdi/recommender/common/RankedApp;>;"
    .end local v24    # "theGreater":D
    :cond_3
    invoke-interface {v15, v8, v9}, Lorg/apache/mahout/math/Vector;->times(D)Lorg/apache/mahout/math/Vector;

    move-result-object v11

    .restart local v11    # "distributedVector":Lorg/apache/mahout/math/Vector;
    goto :goto_1
.end method

.method public internalIndividualRecommendApp(Ljava/lang/String;ILjava/util/HashMap;Ljava/util/HashMap;Lorg/apache/mahout/math/Matrix;)Ljava/util/List;
    .locals 30
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p5, "columnStocasticMatrix"    # Lorg/apache/mahout/math/Matrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lorg/apache/mahout/math/Matrix;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/zdi/recommender/common/RankedApp;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    .local p3, "indexMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p4, "resolveInfoIndexMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/ResolveInfo;>;"
    const-wide v10, 0x3fe6666666666666L    # 0.7

    .line 106
    .local v10, "dampingFactor":D
    const-wide v6, 0x3f1a36e2eb1c432dL    # 1.0E-4

    .line 110
    .local v6, "alpha":D
    invoke-virtual/range {p0 .. p0}, Lcom/lge/zdi/recommender/core/ZdiRecommenderCore;->getCardinality()I

    move-result v8

    .line 111
    .local v8, "cardinality":I
    if-nez v8, :cond_0

    .line 112
    const/16 v24, 0x0

    .line 164
    :goto_0
    return-object v24

    .line 115
    :cond_0
    new-instance v22, Lorg/apache/mahout/math/RandomAccessSparseVector;

    move-object/from16 v0, v22

    invoke-direct {v0, v8}, Lorg/apache/mahout/math/RandomAccessSparseVector;-><init>(I)V

    .line 116
    .local v22, "restartVector":Lorg/apache/mahout/math/Vector;
    const-wide/16 v28, 0x0

    move-object/from16 v0, v22

    move-wide/from16 v1, v28

    invoke-interface {v0, v1, v2}, Lorg/apache/mahout/math/Vector;->assign(D)Lorg/apache/mahout/math/Vector;

    .line 118
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/lge/zdi/recommender/core/ZdiRecommenderCore;->setIndexMap(Ljava/util/HashMap;)V

    .line 120
    const/16 v25, 0x0

    .line 121
    .local v25, "vItemIndex":I
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v25

    .line 122
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, v22

    move/from16 v1, v25

    move-wide/from16 v2, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/mahout/math/Vector;->setQuick(ID)V

    .line 125
    new-instance v17, Lorg/apache/mahout/math/RandomAccessSparseVector;

    move-object/from16 v0, v17

    invoke-direct {v0, v8}, Lorg/apache/mahout/math/RandomAccessSparseVector;-><init>(I)V

    .line 126
    .local v17, "prevDistributedVector":Lorg/apache/mahout/math/Vector;
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    sub-double v28, v28, v10

    move-object/from16 v0, v22

    move-wide/from16 v1, v28

    invoke-interface {v0, v1, v2}, Lorg/apache/mahout/math/Vector;->times(D)Lorg/apache/mahout/math/Vector;

    move-result-object v14

    .line 131
    .local v14, "intermediateResultVector2":Lorg/apache/mahout/math/Vector;
    const/4 v15, 0x1

    .line 133
    .local v15, "is_first":Z
    const/16 v16, 0x0

    .line 136
    .local v16, "loopcnt":I
    :cond_1
    add-int/lit8 v16, v16, 0x1

    .line 137
    if-eqz v15, :cond_3

    .line 138
    move-object/from16 v0, v22

    invoke-interface {v0, v10, v11}, Lorg/apache/mahout/math/Vector;->times(D)Lorg/apache/mahout/math/Vector;

    move-result-object v12

    .line 139
    .local v12, "distributedVector":Lorg/apache/mahout/math/Vector;
    const/4 v15, 0x0

    .line 145
    :goto_1
    move-object/from16 v0, p5

    invoke-interface {v0, v12}, Lorg/apache/mahout/math/Matrix;->times(Lorg/apache/mahout/math/Vector;)Lorg/apache/mahout/math/Vector;

    move-result-object v13

    .line 147
    .local v13, "intermediateResultVector1":Lorg/apache/mahout/math/Vector;
    invoke-interface {v13, v14}, Lorg/apache/mahout/math/Vector;->plus(Lorg/apache/mahout/math/Vector;)Lorg/apache/mahout/math/Vector;

    move-result-object v12

    .line 148
    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Lorg/apache/mahout/math/Vector;->minus(Lorg/apache/mahout/math/Vector;)Lorg/apache/mahout/math/Vector;

    move-result-object v9

    .line 150
    .local v9, "diffVector":Lorg/apache/mahout/math/Vector;
    invoke-interface {v9}, Lorg/apache/mahout/math/Vector;->maxValue()D

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    .line 151
    .local v18, "maxValue":D
    invoke-interface {v9}, Lorg/apache/mahout/math/Vector;->minValue()D

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    .line 152
    .local v20, "minValue":D
    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v26

    .line 154
    .local v26, "theGreater":D
    move-object/from16 v17, v12

    .line 155
    move-object/from16 v23, v12

    .line 157
    .local v23, "resultVector":Lorg/apache/mahout/math/Vector;
    cmpg-double v28, v26, v6

    if-lez v28, :cond_2

    const/16 v28, 0xa

    move/from16 v0, v16

    move/from16 v1, v28

    if-lt v0, v1, :cond_1

    .line 161
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, p2

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/zdi/recommender/core/ZdiRecommenderCore;->resultVectorToIndividualRankedAppList(Lorg/apache/mahout/math/Vector;ILjava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v24

    .line 164
    .local v24, "sortedAppList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/zdi/recommender/common/RankedApp;>;"
    goto/16 :goto_0

    .line 141
    .end local v9    # "diffVector":Lorg/apache/mahout/math/Vector;
    .end local v12    # "distributedVector":Lorg/apache/mahout/math/Vector;
    .end local v13    # "intermediateResultVector1":Lorg/apache/mahout/math/Vector;
    .end local v18    # "maxValue":D
    .end local v20    # "minValue":D
    .end local v23    # "resultVector":Lorg/apache/mahout/math/Vector;
    .end local v24    # "sortedAppList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/zdi/recommender/common/RankedApp;>;"
    .end local v26    # "theGreater":D
    :cond_3
    move-object/from16 v0, v17

    invoke-interface {v0, v10, v11}, Lorg/apache/mahout/math/Vector;->times(D)Lorg/apache/mahout/math/Vector;

    move-result-object v12

    .restart local v12    # "distributedVector":Lorg/apache/mahout/math/Vector;
    goto :goto_1
.end method

.method public setCardinality(I)V
    .locals 0
    .param p1, "cardinality"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/lge/zdi/recommender/core/ZdiRecommenderCore;->cardinality:I

    .line 37
    return-void
.end method

.method public setIndexMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "eIndexMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/lge/zdi/recommender/core/ZdiRecommenderCore;->elementIndexMap:Ljava/util/HashMap;

    .line 33
    return-void
.end method
