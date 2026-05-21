.class public Lcom/anansimobile/nge/NextGenEngine;
.super Ljava/lang/Object;
.source "NextGenEngine.java"


# static fields
.field public static final STRING_TEXTURE_CACHE_LIMIT:I = 0x800

.field public static final STROKE_WIDTH:I = 0x4

.field public static final SYSTEMFONT_MODE_FILL:I = 0x0

.field public static final SYSTEMFONT_MODE_FILLSTROKE:I = 0x2

.field public static final SYSTEMFONT_MODE_STROKE:I = 0x1

.field public static glInstance:Ljavax/microedition/khronos/opengles/GL10;

.field public static m_isStrokeUseHightSpace:Z

.field public static m_isUseGooglePlayExtractImage:Z

.field public static sMainActivity:Lcom/anansimobile/nge/RootActivity;

.field public static sMainService:Lcom/anansimobile/nge/RootService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 31
    sput-object v0, Lcom/anansimobile/nge/NextGenEngine;->glInstance:Ljavax/microedition/khronos/opengles/GL10;

    .line 32
    sput-boolean v1, Lcom/anansimobile/nge/NextGenEngine;->m_isUseGooglePlayExtractImage:Z

    .line 33
    sput-boolean v1, Lcom/anansimobile/nge/NextGenEngine;->m_isStrokeUseHightSpace:Z

    .line 61
    sput-object v0, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    .line 62
    sput-object v0, Lcom/anansimobile/nge/NextGenEngine;->sMainService:Lcom/anansimobile/nge/RootService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreateStringTextureCache(ILjava/lang/String;Ljava/lang/String;IIIII)[I
    .locals 25
    .param p0, "texturePtr"    # I
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fontName"    # Ljava/lang/String;
    .param p3, "fontSize"    # I
    .param p4, "fontColor"    # I
    .param p5, "strokeColor"    # I
    .param p6, "shadowColor"    # I
    .param p7, "fontMode"    # I

    .prologue
    .line 493
    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    .line 495
    .local v19, "textPaint":Landroid/graphics/Paint;
    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 496
    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 498
    invoke-static/range {p2 .. p2}, Lcom/anansimobile/nge/NGTypefacePool;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v20

    .line 499
    .local v20, "tf":Landroid/graphics/Typeface;
    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 500
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 502
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v7

    .line 508
    .local v7, "fm":Landroid/graphics/Paint$FontMetrics;
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    .line 509
    .local v17, "strW":F
    iget v0, v7, Landroid/graphics/Paint$FontMetrics;->bottom:F

    move/from16 v21, v0

    iget v0, v7, Landroid/graphics/Paint$FontMetrics;->top:F

    move/from16 v22, v0

    sub-float v16, v21, v22

    .line 512
    .local v16, "strH":F
    const/16 v21, 0x1

    move/from16 v0, p7

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    const/16 v21, 0x2

    move/from16 v0, p7

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 513
    :cond_0
    const/high16 v21, 0x40800000    # 4.0f

    add-float v17, v17, v21

    .line 514
    const/high16 v21, 0x40800000    # 4.0f

    add-float v16, v16, v21

    .line 517
    :cond_1
    const/16 v21, 0x0

    cmpg-float v21, v16, v21

    if-gtz v21, :cond_2

    .line 518
    const/16 v21, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v20

    .line 519
    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 520
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 521
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v7

    .line 522
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    .line 523
    iget v0, v7, Landroid/graphics/Paint$FontMetrics;->bottom:F

    move/from16 v21, v0

    iget v0, v7, Landroid/graphics/Paint$FontMetrics;->top:F

    move/from16 v22, v0

    sub-float v16, v21, v22

    .line 526
    :cond_2
    const/16 v21, 0x0

    cmpg-float v21, v17, v21

    if-gtz v21, :cond_3

    .line 528
    const/high16 v17, 0x3f800000    # 1.0f

    .line 531
    :cond_3
    const-string/jumbo v21, "str (%s) size: %.2f x %.2f"

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object p1, v22, v23

    const/16 v23, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 533
    const/4 v4, 0x0

    .line 534
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    .line 536
    .local v13, "lineWidths":[I
    const/high16 v21, 0x45000000    # 2048.0f

    cmpg-float v21, v17, v21

    if-gtz v21, :cond_7

    .line 538
    const/high16 v21, 0x3f000000    # 0.5f

    add-float v21, v21, v17

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x3f000000    # 0.5f

    add-float v22, v22, v16

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    sget-object v23, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v21 .. v23}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 539
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 549
    .local v5, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, v19

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 553
    const/16 v21, 0x1

    move/from16 v0, p7

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    const/16 v21, 0x2

    move/from16 v0, p7

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 555
    :cond_4
    new-instance v18, Landroid/graphics/Paint;

    invoke-direct/range {v18 .. v19}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 556
    .local v18, "strokePaint":Landroid/graphics/Paint;
    sget-object v21, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 557
    sget-object v21, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 558
    sget-object v21, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 559
    const/high16 v21, 0x40800000    # 4.0f

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 560
    move-object/from16 v0, v18

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 562
    sget-boolean v21, Lcom/anansimobile/nge/NextGenEngine;->m_isStrokeUseHightSpace:Z

    if-eqz v21, :cond_5

    .line 563
    const/high16 v21, 0x40000000    # 2.0f

    iget v0, v7, Landroid/graphics/Paint$FontMetrics;->top:F

    move/from16 v22, v0

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    add-float v22, v22, v23

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v18

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 564
    const/high16 v21, 0x40000000    # 2.0f

    iget v0, v7, Landroid/graphics/Paint$FontMetrics;->top:F

    move/from16 v22, v0

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    add-float v22, v22, v23

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v19

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 574
    .end local v18    # "strokePaint":Landroid/graphics/Paint;
    :goto_0
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v13, v0, [I

    .line 575
    const/16 v21, 0x0

    const/16 v22, 0x1

    aput v22, v13, v21

    .line 576
    const/16 v21, 0x1

    const/high16 v22, 0x3f000000    # 0.5f

    add-float v22, v22, v16

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    aput v22, v13, v21

    .line 577
    const/16 v21, 0x2

    const/high16 v22, 0x3f000000    # 0.5f

    add-float v22, v22, v17

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    aput v22, v13, v21

    .line 579
    move/from16 v0, p0

    invoke-static {v0, v4}, Lcom/anansimobile/nge/NextGenEngine;->loadBitmap(ILandroid/graphics/Bitmap;)V

    move-object v14, v13

    .line 659
    .end local v13    # "lineWidths":[I
    .local v14, "lineWidths":[I
    :goto_1
    return-object v14

    .line 566
    .end local v14    # "lineWidths":[I
    .restart local v13    # "lineWidths":[I
    .restart local v18    # "strokePaint":Landroid/graphics/Paint;
    :cond_5
    const/high16 v21, 0x40000000    # 2.0f

    iget v0, v7, Landroid/graphics/Paint$FontMetrics;->top:F

    move/from16 v22, v0

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v18

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 567
    const/high16 v21, 0x40000000    # 2.0f

    iget v0, v7, Landroid/graphics/Paint$FontMetrics;->top:F

    move/from16 v22, v0

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v19

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 571
    .end local v18    # "strokePaint":Landroid/graphics/Paint;
    :cond_6
    const/16 v21, 0x0

    iget v0, v7, Landroid/graphics/Paint$FontMetrics;->top:F

    move/from16 v22, v0

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v19

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 585
    .end local v5    # "canvas":Landroid/graphics/Canvas;
    :cond_7
    const/4 v15, 0x0

    .line 586
    .local v15, "startAt":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 587
    .local v6, "endAt":I
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 589
    .local v11, "lineStr":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 592
    .local v12, "lineW":F
    :cond_8
    add-int v21, v6, v15

    div-int/lit8 v6, v21, 0x2

    .line 593
    add-int/lit8 v21, v6, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v15, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v12

    .line 595
    const/high16 v21, 0x45000000    # 2048.0f

    cmpg-float v21, v12, v21

    if-gtz v21, :cond_8

    .line 596
    add-int/lit8 v21, v6, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 597
    add-int/lit8 v15, v6, 0x1

    .line 598
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 600
    if-gt v6, v15, :cond_9

    .line 615
    :goto_2
    const/high16 v21, 0x3f000000    # 0.5f

    add-float v21, v21, v16

    move/from16 v0, v21

    float-to-int v10, v0

    .line 616
    .local v10, "lineHeight":I
    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v21

    add-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    new-array v13, v0, [I

    .line 617
    const/16 v21, 0x0

    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v22

    aput v22, v13, v21

    .line 618
    const/16 v21, 0x1

    aput v10, v13, v21

    .line 619
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v8, v0, :cond_a

    .line 620
    add-int/lit8 v22, v8, 0x2

    invoke-virtual {v11, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    aput v21, v13, v22

    .line 619
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 604
    .end local v8    # "i":I
    .end local v10    # "lineHeight":I
    :cond_9
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v12

    .line 606
    const/high16 v21, 0x45000000    # 2048.0f

    cmpg-float v21, v12, v21

    if-gtz v21, :cond_8

    .line 608
    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 624
    .restart local v8    # "i":I
    .restart local v10    # "lineHeight":I
    :cond_a
    const/16 v21, 0x800

    const/high16 v22, 0x3f000000    # 0.5f

    add-float v22, v22, v16

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v23

    mul-int v22, v22, v23

    sget-object v23, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v21 .. v23}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 625
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 627
    .restart local v5    # "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, v19

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 628
    const/16 v18, 0x0

    .line 629
    .restart local v18    # "strokePaint":Landroid/graphics/Paint;
    const/16 v21, 0x1

    move/from16 v0, p7

    move/from16 v1, v21

    if-eq v0, v1, :cond_b

    const/16 v21, 0x2

    move/from16 v0, p7

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 630
    :cond_b
    new-instance v18, Landroid/graphics/Paint;

    .end local v18    # "strokePaint":Landroid/graphics/Paint;
    invoke-direct/range {v18 .. v19}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 631
    .restart local v18    # "strokePaint":Landroid/graphics/Paint;
    sget-object v21, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 632
    sget-object v21, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 633
    sget-object v21, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 634
    const/high16 v21, 0x40800000    # 4.0f

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 635
    move-object/from16 v0, v18

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 638
    :cond_c
    const/4 v8, 0x0

    :goto_4
    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v8, v0, :cond_10

    .line 639
    invoke-virtual {v11, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 641
    .local v9, "line":Ljava/lang/String;
    const/16 v21, 0x1

    move/from16 v0, p7

    move/from16 v1, v21

    if-eq v0, v1, :cond_d

    const/16 v21, 0x2

    move/from16 v0, p7

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 643
    :cond_d
    sget-boolean v21, Lcom/anansimobile/nge/NextGenEngine;->m_isStrokeUseHightSpace:Z

    if-eqz v21, :cond_e

    .line 644
    const/high16 v21, 0x40000000    # 2.0f

    iget v0, v7, Landroid/graphics/Paint$FontMetrics;->top:F

    move/from16 v22, v0

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    mul-int v23, v10, v8

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    add-float v22, v22, v23

    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v18

    invoke-virtual {v5, v9, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 645
    const/high16 v21, 0x40000000    # 2.0f

    iget v0, v7, Landroid/graphics/Paint$FontMetrics;->top:F

    move/from16 v22, v0

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    mul-int v23, v10, v8

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    add-float v22, v22, v23

    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v5, v9, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 638
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 647
    :cond_e
    const/high16 v21, 0x40000000    # 2.0f

    iget v0, v7, Landroid/graphics/Paint$FontMetrics;->top:F

    move/from16 v22, v0

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    mul-int v23, v10, v8

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v18

    invoke-virtual {v5, v9, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 648
    const/high16 v21, 0x40000000    # 2.0f

    iget v0, v7, Landroid/graphics/Paint$FontMetrics;->top:F

    move/from16 v22, v0

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    mul-int v23, v10, v8

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v5, v9, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 652
    :cond_f
    const/16 v21, 0x0

    iget v0, v7, Landroid/graphics/Paint$FontMetrics;->top:F

    move/from16 v22, v0

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    mul-int v23, v10, v8

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v5, v9, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 657
    .end local v9    # "line":Ljava/lang/String;
    :cond_10
    move/from16 v0, p0

    invoke-static {v0, v4}, Lcom/anansimobile/nge/NextGenEngine;->loadBitmap(ILandroid/graphics/Bitmap;)V

    move-object v14, v13

    .line 659
    .end local v13    # "lineWidths":[I
    .restart local v14    # "lineWidths":[I
    goto/16 :goto_1
.end method

.method public static CreateTextureWithString(ILjava/lang/String;Ljava/lang/String;IIIII)J
    .locals 14
    .param p0, "texturePtr"    # I
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fontName"    # Ljava/lang/String;
    .param p3, "fontSize"    # I
    .param p4, "fontColor"    # I
    .param p5, "strokeColor"    # I
    .param p6, "shadowColor"    # I
    .param p7, "fontMode"    # I

    .prologue
    .line 380
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 382
    .local v8, "textPaint":Landroid/graphics/Paint;
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 383
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 385
    invoke-static/range {p2 .. p2}, Lcom/anansimobile/nge/NGTypefacePool;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    .line 386
    .local v9, "tf":Landroid/graphics/Typeface;
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 387
    move/from16 v0, p3

    int-to-float v10, v0

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 389
    invoke-virtual {v8}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    .line 391
    .local v4, "fm":Landroid/graphics/Paint$FontMetrics;
    invoke-virtual {v8, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 392
    .local v6, "strW":F
    iget v10, v4, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v11, v4, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v5, v10, v11

    .line 394
    .local v5, "strH":F
    const/4 v10, 0x1

    move/from16 v0, p7

    if-eq v0, v10, :cond_0

    const/4 v10, 0x2

    move/from16 v0, p7

    if-ne v0, v10, :cond_1

    .line 395
    :cond_0
    const/high16 v10, 0x40800000    # 4.0f

    add-float/2addr v6, v10

    .line 396
    const/high16 v10, 0x40800000    # 4.0f

    add-float/2addr v5, v10

    .line 399
    :cond_1
    const/4 v10, 0x0

    cmpg-float v10, v5, v10

    if-gtz v10, :cond_2

    .line 400
    const/4 v10, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v9

    .line 401
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 402
    move/from16 v0, p3

    int-to-float v10, v0

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 403
    invoke-virtual {v8}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    .line 404
    invoke-virtual {v8, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 405
    iget v10, v4, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v11, v4, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v5, v10, v11

    .line 408
    :cond_2
    const/4 v10, 0x0

    cmpg-float v10, v6, v10

    if-gtz v10, :cond_3

    .line 410
    const/high16 v6, 0x3f800000    # 1.0f

    .line 413
    :cond_3
    const-string/jumbo v10, "str (%s) size: %.2f x %.2f"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    const/4 v12, 0x1

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v10, v6

    float-to-int v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v11, v5

    float-to-int v11, v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 417
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 419
    .local v3, "canvas":Landroid/graphics/Canvas;
    move/from16 v0, p4

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 420
    const/4 v10, 0x0

    iget v11, v4, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v11, v11

    invoke-virtual {v3, p1, v10, v11, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 424
    const/4 v10, 0x1

    move/from16 v0, p7

    if-eq v0, v10, :cond_4

    const/4 v10, 0x2

    move/from16 v0, p7

    if-ne v0, v10, :cond_5

    .line 427
    :cond_4
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v8}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 428
    .local v7, "strokePaint":Landroid/graphics/Paint;
    sget-object v10, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 429
    sget-object v10, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 430
    sget-object v10, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 431
    const/high16 v10, 0x40800000    # 4.0f

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 432
    move/from16 v0, p5

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 434
    sget-boolean v10, Lcom/anansimobile/nge/NextGenEngine;->m_isStrokeUseHightSpace:Z

    if-eqz v10, :cond_6

    .line 435
    const/high16 v10, 0x40000000    # 2.0f

    iget v11, v4, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    add-float/2addr v11, v12

    invoke-virtual {v3, p1, v10, v11, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 436
    const/high16 v10, 0x40000000    # 2.0f

    iget v11, v4, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    add-float/2addr v11, v12

    invoke-virtual {v3, p1, v10, v11, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 443
    .end local v7    # "strokePaint":Landroid/graphics/Paint;
    :cond_5
    :goto_0
    invoke-static {p0, v2}, Lcom/anansimobile/nge/NextGenEngine;->loadBitmap(ILandroid/graphics/Bitmap;)V

    .line 445
    const-wide/16 v10, 0x0

    return-wide v10

    .line 438
    .restart local v7    # "strokePaint":Landroid/graphics/Paint;
    :cond_6
    const/high16 v10, 0x40000000    # 2.0f

    iget v11, v4, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v11, v11

    invoke-virtual {v3, p1, v10, v11, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 439
    const/high16 v10, 0x40000000    # 2.0f

    iget v11, v4, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v11, v11

    invoke-virtual {v3, p1, v10, v11, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static ReadAsset(Ljava/lang/String;)[B
    .locals 6
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 678
    :try_start_0
    sget-object v5, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v5}, Lcom/anansimobile/nge/RootActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 679
    .local v2, "is":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 681
    .local v3, "len":I
    if-lez v3, :cond_0

    .line 685
    new-array v0, v3, [B

    .line 686
    .local v0, "data":[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 687
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    .end local v0    # "data":[B
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "len":I
    :goto_0
    return-object v0

    .line 692
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move-object v0, v4

    .line 695
    goto :goto_0

    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "len":I
    :cond_0
    move-object v0, v4

    .line 698
    goto :goto_0
.end method

.method public static SetUseGooglePlayExtractImage()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lcom/anansimobile/nge/NextGenEngine;->m_isUseGooglePlayExtractImage:Z

    .line 40
    return-void
.end method

.method public static SetUseStrokeUseHightSpace()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    sput-boolean v0, Lcom/anansimobile/nge/NextGenEngine;->m_isStrokeUseHightSpace:Z

    .line 47
    return-void
.end method

.method public static native bitmapDataDidLoad(ILandroid/graphics/Bitmap;II)V
.end method

.method public static exportImageAssets(Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;)V
    .locals 16
    .param p0, "assetsImageName"    # Ljava/lang/String;
    .param p1, "exportSuffix"    # Ljava/lang/String;
    .param p2, "scalefactor"    # F
    .param p3, "outputRoot"    # Ljava/lang/String;

    .prologue
    .line 711
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p2, v3

    if-eqz v3, :cond_0

    .line 712
    :try_start_0
    sget-object v3, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v3}, Lcom/anansimobile/nge/RootActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    .line 713
    .local v12, "is":Ljava/io/InputStream;
    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 715
    .local v2, "bm":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 716
    .local v7, "m":Landroid/graphics/Matrix;
    move/from16 v0, p2

    move/from16 v1, p2

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 718
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 720
    .local v15, "scaledBitmap":Landroid/graphics/Bitmap;
    new-instance v14, Ljava/io/File;

    const-string/jumbo v3, "%s%s.png"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v8, "@"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-direct {v14, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    .local v14, "outputImageFile":Ljava/io/File;
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 722
    .local v11, "fos":Ljava/io/FileOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v15, v3, v4, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 723
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->flush()V

    .line 724
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 726
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 751
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    .end local v7    # "m":Landroid/graphics/Matrix;
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "is":Ljava/io/InputStream;
    .end local v14    # "outputImageFile":Ljava/io/File;
    .end local v15    # "scaledBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 728
    :cond_0
    sget-object v3, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v3}, Lcom/anansimobile/nge/RootActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    .line 729
    .restart local v12    # "is":Ljava/io/InputStream;
    new-instance v14, Ljava/io/File;

    const-string/jumbo v3, "%s%s.png"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v8, "@"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-direct {v14, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    .restart local v14    # "outputImageFile":Ljava/io/File;
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 731
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    const/4 v13, 0x0

    .line 732
    .local v13, "nData":I
    const/16 v3, 0x1000

    new-array v9, v3, [B

    .line 734
    .local v9, "buffer":[B
    :goto_1
    invoke-virtual {v12, v9}, Ljava/io/InputStream;->read([B)I

    move-result v13

    .line 735
    const/4 v3, -0x1

    if-ne v13, v3, :cond_1

    .line 736
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 737
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->flush()V

    .line 738
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 746
    .end local v9    # "buffer":[B
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "is":Ljava/io/InputStream;
    .end local v13    # "nData":I
    .end local v14    # "outputImageFile":Ljava/io/File;
    :catch_0
    move-exception v10

    .line 747
    .local v10, "e":Ljava/io/IOException;
    const-string/jumbo v3, "exportImageAssets error, msg: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 741
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v9    # "buffer":[B
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "is":Ljava/io/InputStream;
    .restart local v13    # "nData":I
    .restart local v14    # "outputImageFile":Ljava/io/File;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v11, v9, v3, v13}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 748
    .end local v9    # "buffer":[B
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "is":Ljava/io/InputStream;
    .end local v13    # "nData":I
    .end local v14    # "outputImageFile":Ljava/io/File;
    :catch_1
    move-exception v10

    .line 749
    .local v10, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v3, "exportImageAssets error, msg: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v10}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static extractFileFromExpansion(Ljava/lang/String;)V
    .locals 14
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 755
    invoke-static {p0}, Lcom/anansimobile/nge/NGDevice;->isFileExist(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 791
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    :try_start_0
    sget-object v9, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v9}, Lcom/anansimobile/nge/RootActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    sget-object v10, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v10}, Lcom/anansimobile/nge/RootActivity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    iget v8, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 761
    .local v8, "version":I
    sget-object v9, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    const/4 v10, 0x0

    .line 762
    invoke-static {v9, v8, v10}, Lcom/android/vending/expansion/zipfile/APKExpansionSupport;->getAPKExpansionZipFile(Landroid/content/Context;II)Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    move-result-object v4

    .line 764
    .local v4, "expansionFile":Lcom/android/vending/expansion/zipfile/ZipResourceFile;
    if-eqz v4, :cond_0

    .line 768
    invoke-virtual {v4, p0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 770
    .local v5, "fileStream":Ljava/io/InputStream;
    if-eqz v5, :cond_0

    .line 775
    invoke-static {}, Lcom/anansimobile/nge/NGDevice;->getDocumentRoot()Ljava/io/File;

    move-result-object v2

    .line 776
    .local v2, "docRoot":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 777
    .local v7, "outputFile":Ljava/io/File;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 778
    .local v6, "os":Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 779
    .local v1, "bytesRead":I
    const/16 v9, 0x2000

    new-array v0, v9, [B

    .line 780
    .local v0, "buffer":[B
    :goto_1
    const/4 v9, 0x0

    const/16 v10, 0x2000

    invoke-virtual {v5, v0, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v9, -0x1

    if-eq v1, v9, :cond_2

    .line 781
    const/4 v9, 0x0

    invoke-virtual {v6, v0, v9, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 786
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v2    # "docRoot":Ljava/io/File;
    .end local v4    # "expansionFile":Lcom/android/vending/expansion/zipfile/ZipResourceFile;
    .end local v5    # "fileStream":Ljava/io/InputStream;
    .end local v6    # "os":Ljava/io/OutputStream;
    .end local v7    # "outputFile":Ljava/io/File;
    .end local v8    # "version":I
    :catch_0
    move-exception v3

    .line 787
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v9, "extract pansion file error, msg: %s"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 783
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v2    # "docRoot":Ljava/io/File;
    .restart local v4    # "expansionFile":Lcom/android/vending/expansion/zipfile/ZipResourceFile;
    .restart local v5    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "os":Ljava/io/OutputStream;
    .restart local v7    # "outputFile":Ljava/io/File;
    .restart local v8    # "version":I
    :cond_2
    :try_start_1
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 784
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 788
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v2    # "docRoot":Ljava/io/File;
    .end local v4    # "expansionFile":Lcom/android/vending/expansion/zipfile/ZipResourceFile;
    .end local v5    # "fileStream":Ljava/io/InputStream;
    .end local v6    # "os":Ljava/io/OutputStream;
    .end local v7    # "outputFile":Ljava/io/File;
    .end local v8    # "version":I
    :catch_1
    move-exception v3

    .line 789
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "extract pansion file error, msg: %s"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static isAssetExist(Ljava/lang/String;)Z
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 66
    :try_start_0
    sget-object v2, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v2}, Lcom/anansimobile/nge/RootActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 67
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    const/4 v2, 0x1

    .end local v1    # "is":Ljava/io/InputStream;
    :goto_0
    return v2

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isDebugMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 702
    sget-object v2, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    if-nez v2, :cond_1

    .line 706
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v1

    .line 705
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    sget-object v2, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v2}, Lcom/anansimobile/nge/RootActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 706
    .restart local v0    # "info":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static loadBitmap(ILandroid/graphics/Bitmap;)V
    .locals 10
    .param p0, "texturePtr"    # I
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 82
    if-nez p1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 87
    .local v2, "contentWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 91
    .local v1, "contentHeight":I
    move v5, v2

    .line 92
    .local v5, "width":I
    move v3, v1

    .line 94
    .local v3, "height":I
    if-eq v5, v9, :cond_3

    add-int/lit8 v7, v5, -0x1

    and-int/2addr v7, v5

    if-eqz v7, :cond_3

    .line 95
    const/4 v4, 0x1

    .line 96
    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_2

    .line 97
    mul-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 99
    :cond_2
    move v5, v4

    .line 102
    .end local v4    # "i":I
    :cond_3
    if-eq v3, v9, :cond_5

    add-int/lit8 v7, v3, -0x1

    and-int/2addr v7, v3

    if-eqz v7, :cond_5

    .line 103
    const/4 v4, 0x1

    .line 104
    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v3, :cond_4

    .line 105
    mul-int/lit8 v4, v4, 0x2

    goto :goto_2

    .line 107
    :cond_4
    move v3, v4

    .line 110
    .end local v4    # "i":I
    :cond_5
    const/4 v6, 0x0

    .line 112
    .local v6, "wrapperBitmap":Landroid/graphics/Bitmap;
    if-ne v5, v2, :cond_6

    if-ne v3, v1, :cond_6

    .line 113
    move-object v6, p1

    .line 124
    :goto_3
    if-eqz v6, :cond_0

    .line 125
    invoke-static {p0, v6, v2, v1}, Lcom/anansimobile/nge/NextGenEngine;->bitmapDataDidLoad(ILandroid/graphics/Bitmap;II)V

    .line 126
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 127
    const/4 v6, 0x0

    goto :goto_0

    .line 115
    :cond_6
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 116
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 117
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v7, 0x0

    invoke-virtual {v0, p1, v8, v8, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 118
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 119
    const/4 p1, 0x0

    goto :goto_3
.end method

.method public static loadBitmapData(ILjava/lang/String;)V
    .locals 9
    .param p0, "texturePtr"    # I
    .param p1, "imagename"    # Ljava/lang/String;

    .prologue
    .line 172
    const-string/jumbo v6, "start load bitmap data, name(%s)!~"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/anansimobile/nge/NextGenEngine;->nge_log(Ljava/lang/String;)V

    .line 174
    const/4 v1, 0x0

    .line 175
    .local v1, "bitmapStream":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 179
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p1}, Lcom/anansimobile/nge/NGDevice;->isFileExist(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 181
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    invoke-static {}, Lcom/anansimobile/nge/NGDevice;->getDocumentRoot()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "bitmapStream":Ljava/io/InputStream;
    .local v2, "bitmapStream":Ljava/io/InputStream;
    move-object v1, v2

    .line 215
    .end local v2    # "bitmapStream":Ljava/io/InputStream;
    .restart local v1    # "bitmapStream":Ljava/io/InputStream;
    :goto_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 216
    invoke-static {p0, v0}, Lcom/anansimobile/nge/NextGenEngine;->loadBitmap(ILandroid/graphics/Bitmap;)V

    .line 217
    :cond_0
    :goto_1
    return-void

    .line 183
    :cond_1
    :try_start_1
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    .line 184
    invoke-virtual {v7}, Lcom/anansimobile/nge/RootActivity;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "assets_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    .line 185
    invoke-virtual {v7}, Lcom/anansimobile/nge/RootActivity;->getExpansionFileVersionCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    .local v5, "exportedImageAsset":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 188
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local v1    # "bitmapStream":Ljava/io/InputStream;
    .restart local v2    # "bitmapStream":Ljava/io/InputStream;
    move-object v1, v2

    .end local v2    # "bitmapStream":Ljava/io/InputStream;
    .restart local v1    # "bitmapStream":Ljava/io/InputStream;
    goto :goto_0

    .line 191
    :cond_2
    sget-object v6, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v6}, Lcom/anansimobile/nge/RootActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    .line 194
    .end local v5    # "exportedImageAsset":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 195
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v6, "load bitmap failed!~"

    invoke-static {v6}, Lcom/anansimobile/nge/NextGenEngine;->nge_log(Ljava/lang/String;)V

    .line 196
    sget-boolean v6, Lcom/anansimobile/nge/NextGenEngine;->m_isUseGooglePlayExtractImage:Z

    if-eqz v6, :cond_0

    .line 199
    invoke-static {p1}, Lcom/anansimobile/nge/NextGenEngine;->extractFileFromExpansion(Ljava/lang/String;)V

    .line 202
    :try_start_2
    invoke-static {p1}, Lcom/anansimobile/nge/NGDevice;->isFileExist(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 204
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    invoke-static {}, Lcom/anansimobile/nge/NGDevice;->getDocumentRoot()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local v1    # "bitmapStream":Ljava/io/InputStream;
    .restart local v2    # "bitmapStream":Ljava/io/InputStream;
    move-object v1, v2

    .line 212
    .end local v2    # "bitmapStream":Ljava/io/InputStream;
    .restart local v1    # "bitmapStream":Ljava/io/InputStream;
    goto/16 :goto_0

    .line 206
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "extractFileFromExpansion failed(image)!~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/anansimobile/nge/NextGenEngine;->nge_log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 209
    :catch_1
    move-exception v4

    .line 210
    .local v4, "ee":Ljava/io/IOException;
    const-string/jumbo v6, "load bitmap failed2!~"

    invoke-static {v6}, Lcom/anansimobile/nge/NextGenEngine;->nge_log(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static loadPackageBitmapData(I[BI)V
    .locals 2
    .param p0, "texturePtr"    # I
    .param p1, "imageData"    # [B
    .param p2, "len"    # I

    .prologue
    .line 223
    const/4 v0, 0x0

    .line 226
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    invoke-static {p1, v1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 227
    invoke-static {p0, v0}, Lcom/anansimobile/nge/NextGenEngine;->loadBitmap(ILandroid/graphics/Bitmap;)V

    .line 228
    return-void
.end method

.method public static nge_log(Ljava/lang/String;)V
    .locals 4
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {}, Lcom/anansimobile/nge/NextGenEngine;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-string/jumbo v0, "native_project_lib"

    const-string/jumbo v1, "[jni_log] %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    return-void
.end method

.method public static varargs nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 56
    invoke-static {}, Lcom/anansimobile/nge/NextGenEngine;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const-string/jumbo v0, "native_project_lib"

    const-string/jumbo v1, "[jni_log] %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    return-void
.end method

.method public static openFile(Ljava/lang/String;)[B
    .locals 11
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 133
    const-string/jumbo v6, "will open %s"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p0, v7, v8

    invoke-static {v6, v7}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-static {}, Lcom/anansimobile/nge/NGDevice;->getDocumentRoot()Ljava/io/File;

    move-result-object v1

    .line 137
    .local v1, "docRoot":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 139
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 140
    const-string/jumbo v6, "not exist in Documents/, will find it in asset!"

    invoke-static {v6}, Lcom/anansimobile/nge/NextGenEngine;->nge_log(Ljava/lang/String;)V

    .line 141
    invoke-static {p0}, Lcom/anansimobile/nge/NextGenEngine;->ReadAsset(Ljava/lang/String;)[B

    move-result-object v4

    .line 164
    :goto_0
    return-object v4

    .line 144
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/anansimobile/nge/NextGenEngine;->nge_log(Ljava/lang/String;)V

    .line 146
    const/4 v4, 0x0

    .line 150
    .local v4, "fileData":[B
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 152
    .local v5, "os":Ljava/io/FileInputStream;
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v0

    .line 153
    .local v0, "dataSize":I
    new-array v4, v0, [B

    .line 154
    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6, v0}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 156
    .end local v0    # "dataSize":I
    .end local v5    # "os":Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    .line 157
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v6, "open file: %s failed, msg: %s!~"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object p0, v7, v8

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 158
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 159
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v6, "open file: %s failed, msg: %s!~"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object p0, v7, v8

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setMediaPlayer(Landroid/media/MediaPlayer;Ljava/lang/String;)V
    .locals 8
    .param p0, "mplayer"    # Landroid/media/MediaPlayer;
    .param p1, "mediaFile"    # Ljava/lang/String;

    .prologue
    .line 666
    :try_start_0
    sget-object v0, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v0}, Lcom/anansimobile/nge/RootActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 667
    .local v7, "fd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    .end local v7    # "fd":Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return-void

    .line 669
    :catch_0
    move-exception v6

    .line 670
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v0, "set media player (\"%s\") failed!~"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
