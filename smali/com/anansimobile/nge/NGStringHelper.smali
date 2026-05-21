.class public Lcom/anansimobile/nge/NGStringHelper;
.super Ljava/lang/Object;
.source "NGStringHelper.java"


# static fields
.field private static word_end:Ljava/lang/String;

.field private static word_start:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    sput-object v0, Lcom/anansimobile/nge/NGStringHelper;->word_start:Ljava/lang/String;

    .line 12
    sput-object v0, Lcom/anansimobile/nge/NGStringHelper;->word_end:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native AddStringLine(ILjava/lang/String;)V
.end method

.method private static native UpdateLineHeight(II)V
.end method

.method private static native WordEndFlag(I)Ljava/lang/String;
.end method

.method private static native WordStartFlag(I)Ljava/lang/String;
.end method

.method private static breakText(IILjava/lang/String;Ljava/lang/String;I)V
    .locals 16
    .param p0, "ctxPtr"    # I
    .param p1, "width"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "fontName"    # Ljava/lang/String;
    .param p4, "fontSize"    # I

    .prologue
    .line 121
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    .line 122
    .local v3, "textPaint":Landroid/text/TextPaint;
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 123
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setFilterBitmap(Z)V

    .line 125
    invoke-static/range {p3 .. p3}, Lcom/anansimobile/nge/NGTypefacePool;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v15

    .line 126
    .local v15, "tf":Landroid/graphics/Typeface;
    invoke-virtual {v3, v15}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 127
    move/from16 v0, p4

    int-to-float v2, v0

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 130
    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v9

    .line 131
    .local v9, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v2, v9, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v4, v9, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v2, v4

    float-to-int v2, v2

    move/from16 v0, p0

    invoke-static {v0, v2}, Lcom/anansimobile/nge/NGStringHelper;->UpdateLineHeight(II)V

    .line 133
    new-instance v1, Landroid/text/StaticLayout;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3fc00000    # 1.5f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p2

    move/from16 v4, p1

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 135
    .local v1, "layout":Landroid/text/StaticLayout;
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v13

    .line 136
    .local v13, "lineNum":I
    const/4 v14, 0x0

    .line 137
    .local v14, "lineStart":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v13, :cond_2

    .line 138
    invoke-virtual {v1, v10}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v11

    .line 139
    .local v11, "lineEnd":I
    if-ne v11, v14, :cond_0

    .line 141
    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p0

    invoke-static {v0, v2}, Lcom/anansimobile/nge/NGStringHelper;->AddStringLine(ILjava/lang/String;)V

    .line 137
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 143
    :cond_0
    const/4 v12, 0x0

    .line 144
    .local v12, "lineEndOffset":I
    add-int/lit8 v2, v11, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0xa

    if-ne v2, v4, :cond_1

    .line 145
    const/4 v12, -0x1

    .line 147
    :cond_1
    add-int v2, v11, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p0

    invoke-static {v0, v2}, Lcom/anansimobile/nge/NGStringHelper;->AddStringLine(ILjava/lang/String;)V

    .line 148
    move v14, v11

    goto :goto_1

    .line 162
    .end local v11    # "lineEnd":I
    .end local v12    # "lineEndOffset":I
    :cond_2
    return-void
.end method

.method static getStringLen(Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 165
    if-nez p0, :cond_0

    .line 166
    const/4 v0, 0x0

    .line 169
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method static getSubString(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 173
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 174
    :cond_0
    const-string/jumbo p0, ""

    .line 180
    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 178
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_0
.end method
