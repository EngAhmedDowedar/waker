.class public Lcom/anansimobile/nge/NGLabel;
.super Ljava/lang/Object;
.source "NGLabel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fitTextToLabelWidth(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "fontName"    # Ljava/lang/String;
    .param p1, "fontSize"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "maxWidth"    # I
    .param p4, "suffix"    # Ljava/lang/String;

    .prologue
    .line 10
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 12
    .local v6, "textPaint":Landroid/graphics/Paint;
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 13
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 15
    invoke-static {p0}, Lcom/anansimobile/nge/NGTypefacePool;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    .line 16
    .local v7, "tf":Landroid/graphics/Typeface;
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 17
    int-to-float v8, p1

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 19
    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 21
    .local v2, "fm":Landroid/graphics/Paint$FontMetrics;
    invoke-virtual {v6, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 22
    .local v5, "strW":F
    iget v8, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v9, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v4, v8, v9

    .line 24
    .local v4, "strH":F
    const/4 v8, 0x0

    cmpg-float v8, v4, v8

    if-gtz v8, :cond_0

    .line 25
    const/4 v8, 0x1

    invoke-static {p0, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    .line 26
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 27
    int-to-float v8, p1

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 28
    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 29
    invoke-virtual {v6, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 30
    iget v8, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v9, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v4, v8, v9

    .line 33
    :cond_0
    int-to-float v8, p3

    cmpg-float v8, v5, v8

    if-gez v8, :cond_2

    .line 35
    const/4 v0, 0x0

    .line 48
    :cond_1
    :goto_0
    return-object v0

    .line 38
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "i":I
    :goto_1
    if-lez v3, :cond_3

    .line 39
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {p2, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "clippedStr":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    float-to-int v1, v8

    .line 41
    .local v1, "clippedStrWidth":I
    if-lt v1, p3, :cond_1

    .line 38
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 48
    .end local v0    # "clippedStr":Ljava/lang/String;
    .end local v1    # "clippedStrWidth":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
