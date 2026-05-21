.class public final Lcom/helpshift/HSSearch;
.super Ljava/lang/Object;
.source "HSSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/HSSearch$HS_SEARCH_OPTIONS;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "HelpShiftDebug"

.field private static indexing:Z

.field private static markDeinit:Z

.field private static metaPhone:Lcom/helpshift/external/DoubleMetaphone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    new-instance v0, Lcom/helpshift/external/DoubleMetaphone;

    invoke-direct {v0}, Lcom/helpshift/external/DoubleMetaphone;-><init>()V

    sput-object v0, Lcom/helpshift/HSSearch;->metaPhone:Lcom/helpshift/external/DoubleMetaphone;

    .line 28
    sput-boolean v1, Lcom/helpshift/HSSearch;->indexing:Z

    .line 29
    sput-boolean v1, Lcom/helpshift/HSSearch;->markDeinit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method static synthetic access$000()Lcom/helpshift/external/DoubleMetaphone;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/helpshift/HSSearch;->metaPhone:Lcom/helpshift/external/DoubleMetaphone;

    return-object v0
.end method

.method protected static buildFuzzyIndex(Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/Faq;",
            ">;)",
            "Ljava/util/HashMap;"
        }
    .end annotation

    .prologue
    .line 388
    .local p0, "docs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/Faq;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 389
    .local v3, "fuzzyIndex":Ljava/util/HashMap;
    const/4 v4, 0x0

    .line 390
    .local v4, "i":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/Faq;

    .line 391
    .local v0, "doc":Lcom/helpshift/Faq;
    invoke-virtual {v0}, Lcom/helpshift/Faq;->getTitle()Ljava/lang/String;

    move-result-object v9

    .line 392
    .local v9, "title":Ljava/lang/String;
    invoke-static {v9}, Lcom/helpshift/HSSearch;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/helpshift/HSSearch;->generateTokens(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 393
    .local v10, "token":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 394
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x3

    if-le v12, v13, :cond_0

    .line 395
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 396
    .local v11, "tokenMap":Ljava/util/HashMap;
    const-string/jumbo v12, "w"

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    const-string/jumbo v12, "id"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 399
    .local v2, "firstCharacter":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 400
    .local v1, "firstCharIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    if-nez v1, :cond_1

    .line 401
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "firstCharIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .restart local v1    # "firstCharIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    :cond_1
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    const/4 v12, 0x1

    const/4 v13, 0x2

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 407
    .local v8, "secondCharacter":Ljava/lang/String;
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 408
    .local v7, "secondCharIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    if-nez v7, :cond_2

    .line 409
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "secondCharIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .restart local v7    # "secondCharIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    :cond_2
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    invoke-virtual {v3, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 415
    .end local v1    # "firstCharIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    .end local v2    # "firstCharacter":Ljava/lang/String;
    .end local v7    # "secondCharIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    .end local v8    # "secondCharacter":Ljava/lang/String;
    .end local v10    # "token":Ljava/lang/String;
    .end local v11    # "tokenMap":Ljava/util/HashMap;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 416
    goto/16 :goto_0

    .line 417
    .end local v0    # "doc":Lcom/helpshift/Faq;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "title":Ljava/lang/String;
    :cond_4
    return-object v3
.end method

.method protected static buildTfidfIndex(Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/Faq;",
            ">;)",
            "Ljava/util/HashMap;"
        }
    .end annotation

    .prologue
    .line 320
    .local p0, "docs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/Faq;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    .line 321
    .local v26, "totalDocNum":Ljava/lang/Integer;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v15, "indexedDocs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 323
    .local v10, "i":Ljava/lang/Integer;
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/helpshift/Faq;

    .line 324
    .local v4, "doc":Lcom/helpshift/Faq;
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 325
    .local v14, "indexedDoc":Ljava/util/HashMap;
    const-string/jumbo v27, "terms"

    invoke-virtual {v4}, Lcom/helpshift/Faq;->getTitle()Ljava/lang/String;

    move-result-object v28

    invoke-virtual {v4}, Lcom/helpshift/Faq;->getBody()Ljava/lang/String;

    move-result-object v29

    invoke-virtual {v4}, Lcom/helpshift/Faq;->getTags()Ljava/util/List;

    move-result-object v30

    invoke-static/range {v28 .. v30}, Lcom/helpshift/HSSearch;->indexDocument(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string/jumbo v27, "id"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v27

    add-int/lit8 v27, v27, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 328
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 330
    .end local v4    # "doc":Lcom/helpshift/Faq;
    .end local v14    # "indexedDoc":Ljava/util/HashMap;
    :cond_0
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 331
    .local v9, "globalTerms":Ljava/util/HashMap;
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 332
    .local v4, "doc":Ljava/util/HashMap;
    const-string/jumbo v27, "id"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 333
    .local v6, "docId":Ljava/lang/String;
    const-string/jumbo v27, "terms"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/HashMap;

    .line 334
    .local v23, "terms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 335
    .local v19, "term":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 336
    .local v20, "termFreq":I
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 337
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/HashMap;

    .line 338
    .local v21, "termMap":Ljava/util/HashMap;
    const-string/jumbo v27, "maxFreq"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 339
    .local v17, "maxFreq":Ljava/lang/Integer;
    if-nez v17, :cond_2

    .line 340
    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 342
    :cond_2
    const-string/jumbo v27, "docFreq"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 343
    .local v5, "docFreq":Ljava/lang/Integer;
    if-nez v5, :cond_4

    .line 344
    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 349
    :goto_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    .line 350
    const-string/jumbo v27, "maxFreq"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :cond_3
    const-string/jumbo v27, "docFreq"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 346
    :cond_4
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v27

    add-int/lit8 v27, v27, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_2

    .line 355
    .end local v5    # "docFreq":Ljava/lang/Integer;
    .end local v17    # "maxFreq":Ljava/lang/Integer;
    .end local v21    # "termMap":Ljava/util/HashMap;
    :cond_5
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 356
    .restart local v21    # "termMap":Ljava/util/HashMap;
    const-string/jumbo v27, "maxFreq"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string/jumbo v27, "docFreq"

    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 363
    .end local v4    # "doc":Ljava/util/HashMap;
    .end local v6    # "docId":Ljava/lang/String;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v19    # "term":Ljava/lang/String;
    .end local v20    # "termFreq":I
    .end local v21    # "termMap":Ljava/util/HashMap;
    .end local v23    # "terms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_6
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    .line 365
    .local v25, "tfidf":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 366
    .restart local v4    # "doc":Ljava/util/HashMap;
    const-string/jumbo v27, "id"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 367
    .restart local v6    # "docId":Ljava/lang/String;
    const-string/jumbo v27, "terms"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/HashMap;

    .line 368
    .restart local v23    # "terms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 369
    .restart local v19    # "term":Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/HashMap;

    .line 370
    .local v22, "termMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    if-nez v22, :cond_8

    .line 371
    new-instance v22, Ljava/util/HashMap;

    .end local v22    # "termMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 373
    .restart local v22    # "termMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    :cond_8
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 374
    .local v16, "localTf":Ljava/lang/Integer;
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 375
    .local v8, "globalTerm":Ljava/util/HashMap;
    const-string/jumbo v27, "maxFreq"

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    .line 376
    .local v18, "maxTf":Ljava/lang/Integer;
    const-string/jumbo v27, "docFreq"

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 378
    .local v7, "docTf":Ljava/lang/Integer;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v27

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v28

    div-int v27, v27, v28

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v24

    .line 379
    .local v24, "tf":Ljava/lang/Double;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v27

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v28

    div-int v27, v27, v28

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->log10(D)D

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    .line 380
    .local v13, "idf":Ljava/lang/Double;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v28

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v30

    mul-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 384
    .end local v4    # "doc":Ljava/util/HashMap;
    .end local v6    # "docId":Ljava/lang/String;
    .end local v7    # "docTf":Ljava/lang/Integer;
    .end local v8    # "globalTerm":Ljava/util/HashMap;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "idf":Ljava/lang/Double;
    .end local v16    # "localTf":Ljava/lang/Integer;
    .end local v18    # "maxTf":Ljava/lang/Integer;
    .end local v19    # "term":Ljava/lang/String;
    .end local v22    # "termMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    .end local v23    # "terms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v24    # "tf":Ljava/lang/Double;
    :cond_9
    return-object v25
.end method

.method public static calcFreq(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 144
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 145
    const/4 v0, 0x5

    .line 157
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    const-string/jumbo v1, "ngram"

    if-ne p0, v1, :cond_2

    .line 147
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 148
    :cond_2
    const-string/jumbo v1, "word"

    if-ne p0, v1, :cond_3

    .line 149
    const/16 v0, 0x1e

    goto :goto_0

    .line 150
    :cond_3
    const-string/jumbo v1, "metaphone"

    if-eq p0, v1, :cond_0

    .line 152
    const-string/jumbo v1, "imp_word"

    if-ne p0, v1, :cond_4

    .line 153
    const/16 v0, 0x12c

    goto :goto_0

    .line 154
    :cond_4
    const-string/jumbo v1, "tag_word"

    if-ne p0, v1, :cond_0

    .line 155
    const/16 v0, 0x96

    goto :goto_0
.end method

.method private static calculateWordDistance(Ljava/lang/String;Ljava/lang/String;)F
    .locals 16
    .param p0, "originalString"    # Ljava/lang/String;
    .param p1, "comparisionString"    # Ljava/lang/String;

    .prologue
    .line 496
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 497
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 499
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 500
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 504
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v10

    .line 505
    .local v10, "n":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 507
    .local v7, "m":I
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "n":I
    .local v11, "n":I
    if-eqz v10, :cond_8

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "m":I
    .local v8, "m":I
    if-eqz v7, :cond_7

    .line 508
    mul-int v12, v11, v8

    new-array v2, v12, [I

    .line 510
    .local v2, "d":[I
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_0
    if-ge v6, v11, :cond_0

    .line 511
    aput v6, v2, v6

    .line 510
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 514
    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_1

    .line 515
    mul-int v12, v6, v11

    aput v6, v2, v12

    .line 514
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 518
    :cond_1
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_2
    if-ge v4, v11, :cond_5

    .line 519
    const/4 v5, 0x1

    .local v5, "j":I
    :goto_3
    if-ge v5, v8, :cond_4

    .line 520
    add-int/lit8 v12, v4, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    add-int/lit8 v13, v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v12, v13, :cond_3

    .line 521
    const/4 v1, 0x0

    .line 526
    .local v1, "cost":I
    :goto_4
    mul-int v12, v5, v11

    add-int/2addr v12, v4

    add-int/lit8 v13, v5, -0x1

    mul-int/2addr v13, v11

    add-int/2addr v13, v4

    aget v13, v2, v13

    add-int/lit8 v13, v13, 0x1

    mul-int v14, v5, v11

    add-int/2addr v14, v4

    add-int/lit8 v14, v14, -0x1

    aget v14, v2, v14

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v5, -0x1

    mul-int/2addr v15, v11

    add-int/2addr v15, v4

    add-int/lit8 v15, v15, -0x1

    aget v15, v2, v15

    add-int/2addr v15, v1

    invoke-static {v13, v14, v15}, Lcom/helpshift/HSSearch;->smallestOf(III)I

    move-result v13

    aput v13, v2, v12

    .line 530
    const/4 v12, 0x1

    if-le v4, v12, :cond_2

    const/4 v12, 0x1

    if-le v5, v12, :cond_2

    add-int/lit8 v12, v4, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    add-int/lit8 v13, v5, -0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v12, v13, :cond_2

    add-int/lit8 v12, v4, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    add-int/lit8 v13, v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v12, v13, :cond_2

    .line 533
    mul-int v12, v5, v11

    add-int/2addr v12, v4

    mul-int v13, v5, v11

    add-int/2addr v13, v4

    aget v13, v2, v13

    add-int/lit8 v14, v5, -0x2

    mul-int/2addr v14, v11

    add-int/2addr v14, v4

    add-int/lit8 v14, v14, -0x2

    aget v14, v2, v14

    add-int/2addr v14, v1

    invoke-static {v13, v14}, Lcom/helpshift/HSSearch;->smallestOf(II)I

    move-result v13

    aput v13, v2, v12

    .line 519
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 523
    .end local v1    # "cost":I
    :cond_3
    const/4 v1, 0x1

    .restart local v1    # "cost":I
    goto :goto_4

    .line 518
    .end local v1    # "cost":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 538
    .end local v5    # "j":I
    :cond_5
    mul-int v12, v11, v8

    add-int/lit8 v12, v12, -0x1

    aget v3, v2, v12

    .line 540
    .local v3, "distance":I
    if-le v11, v8, :cond_6

    move v9, v11

    .line 541
    .local v9, "maxLength":I
    :goto_5
    const/high16 v12, 0x3f800000    # 1.0f

    int-to-float v13, v3

    int-to-float v14, v9

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    move v7, v8

    .line 543
    .end local v2    # "d":[I
    .end local v3    # "distance":I
    .end local v4    # "i":I
    .end local v6    # "k":I
    .end local v8    # "m":I
    .end local v9    # "maxLength":I
    .restart local v7    # "m":I
    :goto_6
    return v12

    .end local v7    # "m":I
    .restart local v2    # "d":[I
    .restart local v3    # "distance":I
    .restart local v4    # "i":I
    .restart local v6    # "k":I
    .restart local v8    # "m":I
    :cond_6
    move v9, v8

    .line 540
    goto :goto_5

    .end local v2    # "d":[I
    .end local v3    # "distance":I
    .end local v4    # "i":I
    .end local v6    # "k":I
    :cond_7
    move v7, v8

    .line 543
    .end local v8    # "m":I
    .restart local v7    # "m":I
    :cond_8
    const/4 v12, 0x0

    goto :goto_6
.end method

.method public static deinit()V
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/helpshift/HSSearch;->indexing:Z

    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Lcom/helpshift/util/HSTransliterator;->deinit()V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/helpshift/HSSearch;->markDeinit:Z

    goto :goto_0
.end method

.method protected static filterSearchQuery(Ljava/util/ArrayList;Lcom/helpshift/HSSearch$HS_SEARCH_OPTIONS;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "options"    # Lcom/helpshift/HSSearch$HS_SEARCH_OPTIONS;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/helpshift/HSSearch$HS_SEARCH_OPTIONS;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, "queryTerms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v2, "terms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 219
    .local v1, "termMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "type"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 220
    .local v3, "type":Ljava/lang/String;
    sget-object v4, Lcom/helpshift/HSSearch$HS_SEARCH_OPTIONS;->FULL_SEARCH:Lcom/helpshift/HSSearch$HS_SEARCH_OPTIONS;

    if-ne p1, v4, :cond_1

    .line 221
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 222
    :cond_1
    sget-object v4, Lcom/helpshift/HSSearch$HS_SEARCH_OPTIONS;->METAPHONE_SEARCH:Lcom/helpshift/HSSearch$HS_SEARCH_OPTIONS;

    if-ne p1, v4, :cond_2

    const-string/jumbo v4, "metaphone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 223
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 224
    :cond_2
    sget-object v4, Lcom/helpshift/HSSearch$HS_SEARCH_OPTIONS;->KEYWORD_SEARCH:Lcom/helpshift/HSSearch$HS_SEARCH_OPTIONS;

    if-ne p1, v4, :cond_0

    const-string/jumbo v4, "word"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "ngram"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 225
    :cond_3
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 229
    .end local v1    # "termMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "type":Ljava/lang/String;
    :cond_4
    return-object v2
.end method

.method public static generateNgrams(IILjava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "min"    # I
    .param p1, "max"    # I
    .param p2, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v1, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move v0, p0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-gt v0, p1, :cond_0

    .line 84
    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    return-object v1
.end method

.method public static generateSearchVariations(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "word"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 121
    .local v0, "output":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Lcom/helpshift/HSSearch$5;

    invoke-direct {v1, p0}, Lcom/helpshift/HSSearch$5;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v1, Lcom/helpshift/HSSearch$6;

    invoke-direct {v1, p0}, Lcom/helpshift/HSSearch$6;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public static generateTokens(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v2, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v3, "\\w+"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 60
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 61
    .local v0, "m":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 62
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    .line 63
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_1
    return-object v2
.end method

.method public static generateTokensForSearchQuery(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 70
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v2, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v3, "\\w+"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 72
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 73
    .local v0, "m":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 74
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v5, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 75
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :cond_2
    return-object v2
.end method

.method public static generateVariations(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "word"    # Ljava/lang/String;
    .param p1, "wordType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 92
    .local v3, "output":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v4, Lcom/helpshift/HSSearch$2;

    invoke-direct {v4, p0, p1}, Lcom/helpshift/HSSearch$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 99
    const/4 v4, 0x2

    const/16 v5, 0xa

    invoke-static {v4, v5, p0}, Lcom/helpshift/HSSearch;->generateNgrams(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 100
    .local v2, "ngrams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 101
    .local v1, "ngram":Ljava/lang/String;
    new-instance v4, Lcom/helpshift/HSSearch$3;

    invoke-direct {v4, v1}, Lcom/helpshift/HSSearch$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    .end local v1    # "ngram":Ljava/lang/String;
    :cond_0
    new-instance v4, Lcom/helpshift/HSSearch$4;

    invoke-direct {v4, p0}, Lcom/helpshift/HSSearch$4;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v4
.end method

.method public static getFuzzyMatches(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 24
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "fuzzyIndex"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 422
    .local v13, "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    if-eqz p1, :cond_5

    .line 423
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 424
    .local v6, "faqIdsWithKeywords":Ljava/util/HashMap;
    invoke-static/range {p0 .. p0}, Lcom/helpshift/HSSearch;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/helpshift/HSSearch;->generateTokens(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 425
    .local v15, "token":Ljava/lang/String;
    const/16 v20, 0x0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 426
    .local v14, "rootChar":Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v14}, Lcom/helpshift/HSSearch;->getNeighbourCharacters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 427
    .local v12, "neighbourChars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 429
    .local v2, "character":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    .line 430
    .local v19, "wordsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    if-eqz v19, :cond_1

    .line 431
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/HashMap;

    .line 432
    .local v17, "wordMap":Ljava/util/HashMap;
    const-string/jumbo v20, "w"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 433
    .local v18, "wordToken":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-static {v0, v15}, Lcom/helpshift/HSSearch;->calculateWordDistance(Ljava/lang/String;Ljava/lang/String;)F

    move-result v16

    .line 434
    .local v16, "wordDistance":F
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    cmpl-double v20, v20, v22

    if-lez v20, :cond_2

    .line 435
    const-string/jumbo v20, "id"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 436
    .local v10, "id":Ljava/lang/String;
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 437
    .local v11, "matchWordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v11, :cond_3

    .line 438
    new-instance v11, Ljava/util/ArrayList;

    .end local v11    # "matchWordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 440
    .restart local v11    # "matchWordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 447
    .end local v2    # "character":Ljava/lang/String;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "id":Ljava/lang/String;
    .end local v11    # "matchWordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "neighbourChars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "rootChar":Ljava/lang/String;
    .end local v15    # "token":Ljava/lang/String;
    .end local v16    # "wordDistance":F
    .end local v17    # "wordMap":Ljava/util/HashMap;
    .end local v18    # "wordToken":Ljava/lang/String;
    .end local v19    # "wordsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    :cond_4
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 448
    .local v5, "docIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 449
    .local v3, "docId":Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 450
    .local v4, "docIdTermsMap":Ljava/util/HashMap;
    const-string/jumbo v20, "f"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    const-string/jumbo v20, "t"

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 455
    .end local v3    # "docId":Ljava/lang/String;
    .end local v4    # "docIdTermsMap":Ljava/util/HashMap;
    .end local v5    # "docIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "faqIdsWithKeywords":Ljava/util/HashMap;
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_5
    return-object v13
.end method

.method private static getNeighbourCharacters(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "inputCharacter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 459
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 460
    .local v0, "characterTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    const-string/jumbo v1, "a"

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "q"

    aput-object v3, v2, v4

    const-string/jumbo v3, "w"

    aput-object v3, v2, v5

    const-string/jumbo v3, "s"

    aput-object v3, v2, v6

    const-string/jumbo v3, "z"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const-string/jumbo v1, "b"

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "v"

    aput-object v3, v2, v4

    const-string/jumbo v3, "h"

    aput-object v3, v2, v5

    const-string/jumbo v3, "n"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    const-string/jumbo v1, "c"

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "x"

    aput-object v3, v2, v4

    const-string/jumbo v3, "f"

    aput-object v3, v2, v5

    const-string/jumbo v3, "v"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    const-string/jumbo v1, "d"

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "s"

    aput-object v3, v2, v4

    const-string/jumbo v3, "z"

    aput-object v3, v2, v5

    const-string/jumbo v3, "x"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const-string/jumbo v1, "e"

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "w"

    aput-object v3, v2, v4

    const-string/jumbo v3, "s"

    aput-object v3, v2, v5

    const-string/jumbo v3, "d"

    aput-object v3, v2, v6

    const-string/jumbo v3, "r"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    const-string/jumbo v1, "f"

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "d"

    aput-object v3, v2, v4

    const-string/jumbo v3, "g"

    aput-object v3, v2, v5

    const-string/jumbo v3, "c"

    aput-object v3, v2, v6

    const-string/jumbo v3, "x"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    const-string/jumbo v1, "g"

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "h"

    aput-object v3, v2, v4

    const-string/jumbo v3, "f"

    aput-object v3, v2, v5

    const-string/jumbo v3, "v"

    aput-object v3, v2, v6

    const-string/jumbo v3, "b"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    const-string/jumbo v1, "h"

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "g"

    aput-object v3, v2, v4

    const-string/jumbo v3, "j"

    aput-object v3, v2, v5

    const-string/jumbo v3, "b"

    aput-object v3, v2, v6

    const-string/jumbo v3, "n"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    const-string/jumbo v1, "i"

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "u"

    aput-object v3, v2, v4

    const-string/jumbo v3, "o"

    aput-object v3, v2, v5

    const-string/jumbo v3, "k"

    aput-object v3, v2, v6

    const-string/jumbo v3, "j"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    const-string/jumbo v1, "j"

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "m"

    aput-object v3, v2, v4

    const-string/jumbo v3, "n"

    aput-object v3, v2, v5

    const-string/jumbo v3, "h"

    aput-object v3, v2, v6

    const-string/jumbo v3, "k"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    const-string/jumbo v1, "k"

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "j"

    aput-object v3, v2, v4

    const-string/jumbo v3, "l"

    aput-object v3, v2, v5

    const-string/jumbo v3, "m"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    const-string/jumbo v1, "l"

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "k"

    aput-object v3, v2, v4

    const-string/jumbo v3, "p"

    aput-object v3, v2, v5

    const-string/jumbo v3, "m"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    const-string/jumbo v1, "m"

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "n"

    aput-object v3, v2, v4

    const-string/jumbo v3, "b"

    aput-object v3, v2, v5

    const-string/jumbo v3, "l"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    const-string/jumbo v1, "n"

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "b"

    aput-object v3, v2, v4

    const-string/jumbo v3, "j"

    aput-object v3, v2, v5

    const-string/jumbo v3, "m"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    const-string/jumbo v1, "o"

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "l"

    aput-object v3, v2, v4

    const-string/jumbo v3, "k"

    aput-object v3, v2, v5

    const-string/jumbo v3, "p"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    const-string/jumbo v1, "p"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "l"

    aput-object v3, v2, v4

    const-string/jumbo v3, "o"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    const-string/jumbo v1, "q"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "w"

    aput-object v3, v2, v4

    const-string/jumbo v3, "a"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    const-string/jumbo v1, "r"

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "s"

    aput-object v3, v2, v4

    const-string/jumbo v3, "d"

    aput-object v3, v2, v5

    const-string/jumbo v3, "e"

    aput-object v3, v2, v6

    const-string/jumbo v3, "f"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    const-string/jumbo v1, "s"

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "a"

    aput-object v3, v2, v4

    const-string/jumbo v3, "z"

    aput-object v3, v2, v5

    const-string/jumbo v3, "d"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    const-string/jumbo v1, "t"

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "r"

    aput-object v3, v2, v4

    const-string/jumbo v3, "f"

    aput-object v3, v2, v5

    const-string/jumbo v3, "g"

    aput-object v3, v2, v6

    const-string/jumbo v3, "y"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    const-string/jumbo v1, "u"

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "j"

    aput-object v3, v2, v4

    const-string/jumbo v3, "h"

    aput-object v3, v2, v5

    const-string/jumbo v3, "i"

    aput-object v3, v2, v6

    const-string/jumbo v3, "y"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    const-string/jumbo v1, "v"

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "c"

    aput-object v3, v2, v4

    const-string/jumbo v3, "g"

    aput-object v3, v2, v5

    const-string/jumbo v3, "b"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    const-string/jumbo v1, "w"

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "q"

    aput-object v3, v2, v4

    const-string/jumbo v3, "a"

    aput-object v3, v2, v5

    const-string/jumbo v3, "s"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    const-string/jumbo v1, "x"

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "z"

    aput-object v3, v2, v4

    const-string/jumbo v3, "s"

    aput-object v3, v2, v5

    const-string/jumbo v3, "c"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    const-string/jumbo v1, "y"

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "g"

    aput-object v3, v2, v4

    const-string/jumbo v3, "h"

    aput-object v3, v2, v5

    const-string/jumbo v3, "t"

    aput-object v3, v2, v6

    const-string/jumbo v3, "u"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    const-string/jumbo v1, "z"

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "a"

    aput-object v3, v2, v4

    const-string/jumbo v3, "s"

    aput-object v3, v2, v5

    const-string/jumbo v3, "x"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 490
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public static indexDocument(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/HashMap;
    .locals 10
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "doc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    .local p2, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v2, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {p1}, Lcom/helpshift/HSSearch;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/helpshift/HSSearch;->generateTokens(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 164
    .local v3, "str":Ljava/lang/String;
    const-string/jumbo v8, "word"

    invoke-static {v3, v8}, Lcom/helpshift/HSSearch;->generateVariations(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 167
    .end local v3    # "str":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/helpshift/HSSearch;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/helpshift/HSSearch;->generateTokens(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 168
    .restart local v3    # "str":Ljava/lang/String;
    const-string/jumbo v8, "imp_word"

    invoke-static {v3, v8}, Lcom/helpshift/HSSearch;->generateVariations(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 171
    .end local v3    # "str":Ljava/lang/String;
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 172
    .local v4, "tag":Ljava/lang/String;
    invoke-static {v4}, Lcom/helpshift/HSSearch;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "tag_word"

    invoke-static {v8, v9}, Lcom/helpshift/HSSearch;->generateVariations(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 175
    .end local v4    # "tag":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 177
    .local v1, "indexDoc":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 178
    .local v7, "tokenMap":Ljava/util/HashMap;
    const-string/jumbo v8, "value"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 179
    .local v5, "token":Ljava/lang/String;
    const/4 v6, 0x0

    .line 180
    .local v6, "tokenFreq":I
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 181
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 183
    :cond_3
    const-string/jumbo v8, "type"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8, v5}, Lcom/helpshift/HSSearch;->calcFreq(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    add-int/2addr v6, v8

    .line 184
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 187
    .end local v5    # "token":Ljava/lang/String;
    .end local v6    # "tokenFreq":I
    .end local v7    # "tokenMap":Ljava/util/HashMap;
    :cond_4
    return-object v1
.end method

.method public static indexDocuments(Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/Faq;",
            ">;)",
            "Ljava/util/HashMap;"
        }
    .end annotation

    .prologue
    .local p0, "docs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/Faq;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 192
    .local v0, "fullIndex":Ljava/util/HashMap;
    sget-boolean v3, Lcom/helpshift/HSSearch;->indexing:Z

    if-ne v3, v4, :cond_1

    .line 193
    const/4 v0, 0x0

    .line 213
    .end local v0    # "fullIndex":Ljava/util/HashMap;
    :cond_0
    :goto_0
    return-object v0

    .line 196
    .restart local v0    # "fullIndex":Ljava/util/HashMap;
    :cond_1
    invoke-static {}, Lcom/helpshift/util/HSTransliterator;->isLoaded()Z

    move-result v3

    if-nez v3, :cond_2

    .line 197
    invoke-static {}, Lcom/helpshift/util/HSTransliterator;->init()V

    .line 198
    sput-boolean v4, Lcom/helpshift/HSSearch;->markDeinit:Z

    .line 201
    :cond_2
    sput-boolean v4, Lcom/helpshift/HSSearch;->indexing:Z

    .line 203
    invoke-static {p0}, Lcom/helpshift/HSSearch;->buildTfidfIndex(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v2

    .line 204
    .local v2, "tfidfIndex":Ljava/util/HashMap;
    invoke-static {p0}, Lcom/helpshift/HSSearch;->buildFuzzyIndex(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v1

    .line 205
    .local v1, "fuzzyIndex":Ljava/util/HashMap;
    const-string/jumbo v3, "i"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string/jumbo v3, "f"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sput-boolean v5, Lcom/helpshift/HSSearch;->indexing:Z

    .line 209
    sget-boolean v3, Lcom/helpshift/HSSearch;->markDeinit:Z

    if-ne v3, v4, :cond_0

    .line 210
    invoke-static {}, Lcom/helpshift/HSSearch;->deinit()V

    .line 211
    sput-boolean v5, Lcom/helpshift/HSSearch;->markDeinit:Z

    goto :goto_0
.end method

.method public static init()V
    .locals 2

    .prologue
    .line 32
    sget-boolean v1, Lcom/helpshift/HSSearch;->indexing:Z

    if-nez v1, :cond_0

    .line 33
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/helpshift/HSSearch$1;

    invoke-direct {v1}, Lcom/helpshift/HSSearch$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 38
    .local v0, "indexThread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 39
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 41
    :cond_0
    return-void
.end method

.method public static queryDocs(Ljava/lang/String;Ljava/util/HashMap;Lcom/helpshift/HSSearch$HS_SEARCH_OPTIONS;)Ljava/util/ArrayList;
    .locals 28
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "tfidf"    # Ljava/util/HashMap;
    .param p2, "options"    # Lcom/helpshift/HSSearch$HS_SEARCH_OPTIONS;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap;",
            "Lcom/helpshift/HSSearch$HS_SEARCH_OPTIONS;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 236
    .local v7, "docRanks":Ljava/util/HashMap;
    const/4 v15, 0x0

    .line 237
    .local v15, "resultDocSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 239
    .local v12, "matchedTermsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v21, "terms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static/range {p0 .. p0}, Lcom/helpshift/HSSearch;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/helpshift/HSSearch;->generateTokensForSearchQuery(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 241
    .local v17, "term":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/helpshift/HSSearch;->generateSearchVariations(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/helpshift/HSSearch;->filterSearchQuery(Ljava/util/ArrayList;Lcom/helpshift/HSSearch$HS_SEARCH_OPTIONS;)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 244
    .end local v17    # "term":Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_7

    .line 245
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/HashMap;

    .line 246
    .local v20, "termMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v23, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 247
    .restart local v17    # "term":Ljava/lang/String;
    const-string/jumbo v23, "type"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 248
    .local v22, "type":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashMap;

    .line 249
    .local v18, "termDocMap":Ljava/util/HashMap;
    if-eqz v18, :cond_1

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->size()I

    move-result v23

    if-lez v23, :cond_1

    .line 250
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 251
    .local v3, "docId":Ljava/lang/String;
    invoke-virtual {v12, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 252
    .local v11, "matchTerms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v11, :cond_2

    .line 253
    new-instance v11, Ljava/util/ArrayList;

    .end local v11    # "matchTerms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .restart local v11    # "matchTerms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_3

    .line 256
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_3
    invoke-virtual {v12, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    .line 260
    .local v8, "docTFID":Ljava/lang/Double;
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    .line 261
    .local v5, "docRank":Ljava/lang/Double;
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/helpshift/HSSearch;->calcFreq(Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 262
    .local v2, "docContribution":Ljava/lang/Double;
    if-eqz v5, :cond_4

    .line 263
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v26

    add-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 265
    :cond_4
    invoke-virtual {v7, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 269
    .end local v2    # "docContribution":Ljava/lang/Double;
    .end local v3    # "docId":Ljava/lang/String;
    .end local v5    # "docRank":Ljava/lang/Double;
    .end local v8    # "docTFID":Ljava/lang/Double;
    .end local v11    # "matchTerms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    .line 270
    .local v19, "termDocSet":Ljava/util/HashSet;
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 272
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Ljava/util/HashSet;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_6

    .line 273
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 275
    :cond_6
    new-instance v15, Ljava/util/HashSet;

    .end local v15    # "resultDocSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .restart local v15    # "resultDocSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 280
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v17    # "term":Ljava/lang/String;
    .end local v18    # "termDocMap":Ljava/util/HashMap;
    .end local v19    # "termDocSet":Ljava/util/HashSet;
    .end local v20    # "termMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "type":Ljava/lang/String;
    :cond_7
    if-eqz v15, :cond_8

    invoke-virtual {v15}, Ljava/util/HashSet;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_9

    .line 281
    :cond_8
    new-instance v6, Lcom/helpshift/RankComparator;

    invoke-direct {v6, v7}, Lcom/helpshift/RankComparator;-><init>(Ljava/util/HashMap;)V

    .line 282
    .local v6, "docRankComp":Lcom/helpshift/RankComparator;
    new-instance v16, Ljava/util/TreeMap;

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 283
    .local v16, "sortedDocRanks":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/Double;>;"
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 284
    move-object/from16 v0, v16

    invoke-static {v0, v12}, Lcom/helpshift/HSSearch;->sortMatchedTermsMap(Ljava/util/TreeMap;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v13

    .line 301
    .end local v6    # "docRankComp":Lcom/helpshift/RankComparator;
    .end local v16    # "sortedDocRanks":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/Double;>;"
    :goto_3
    return-object v13

    .line 285
    :cond_9
    invoke-virtual {v15}, Ljava/util/HashSet;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 286
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 287
    .local v4, "docIdTermsMap":Ljava/util/HashMap;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v13, "resultDoc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 289
    .restart local v3    # "docId":Ljava/lang/String;
    const-string/jumbo v23, "f"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string/jumbo v23, "t"

    invoke-virtual {v12, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 294
    .end local v3    # "docId":Ljava/lang/String;
    .end local v4    # "docIdTermsMap":Ljava/util/HashMap;
    .end local v13    # "resultDoc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    :cond_a
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 295
    .local v14, "resultDocRanks":Ljava/util/HashMap;
    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 296
    .restart local v3    # "docId":Ljava/lang/String;
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 298
    .end local v3    # "docId":Ljava/lang/String;
    :cond_b
    new-instance v6, Lcom/helpshift/RankComparator;

    invoke-direct {v6, v14}, Lcom/helpshift/RankComparator;-><init>(Ljava/util/HashMap;)V

    .line 299
    .restart local v6    # "docRankComp":Lcom/helpshift/RankComparator;
    new-instance v16, Ljava/util/TreeMap;

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 300
    .restart local v16    # "sortedDocRanks":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/Double;>;"
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 301
    move-object/from16 v0, v16

    invoke-static {v0, v12}, Lcom/helpshift/HSSearch;->sortMatchedTermsMap(Ljava/util/TreeMap;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v13

    goto :goto_3
.end method

.method public static sanitize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-static {p0}, Lcom/helpshift/HSSearch;->stripHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "htmlText":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/helpshift/util/HSTransliterator;->unidecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static smallestOf(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 561
    move v0, p0

    .line 563
    .local v0, "min":I
    if-ge p1, v0, :cond_0

    .line 564
    move v0, p1

    .line 567
    :cond_0
    return v0
.end method

.method private static smallestOf(III)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .prologue
    .line 547
    move v0, p0

    .line 549
    .local v0, "min":I
    if-ge p1, v0, :cond_0

    .line 550
    move v0, p1

    .line 553
    :cond_0
    if-ge p2, v0, :cond_1

    .line 554
    move v0, p2

    .line 557
    :cond_1
    return v0
.end method

.method private static sortMatchedTermsMap(Ljava/util/TreeMap;Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "sortedDocRanks"    # Ljava/util/TreeMap;
    .param p1, "matchedTermsMap"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap;",
            "Ljava/util/HashMap;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v4, "sortedResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 309
    .local v3, "sortedDocIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 310
    .local v0, "docId":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 311
    .local v1, "docIdTermsMap":Ljava/util/HashMap;
    const-string/jumbo v5, "f"

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string/jumbo v5, "t"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 315
    .end local v0    # "docId":Ljava/lang/String;
    .end local v1    # "docIdTermsMap":Ljava/util/HashMap;
    :cond_0
    return-object v4
.end method

.method public static stripHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "html"    # Ljava/lang/String;

    .prologue
    .line 54
    const-string/jumbo v0, "<[^>]+>"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
