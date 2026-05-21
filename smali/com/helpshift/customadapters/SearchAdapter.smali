.class public Lcom/helpshift/customadapters/SearchAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/customadapters/SearchAdapter$1;,
        Lcom/helpshift/customadapters/SearchAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/Faq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/Faq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/Faq;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 29
    iput-object p3, p0, Lcom/helpshift/customadapters/SearchAdapter;->items:Ljava/util/List;

    .line 30
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/helpshift/customadapters/SearchAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 31
    iput-object p1, p0, Lcom/helpshift/customadapters/SearchAdapter;->context:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 25
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 37
    if-nez p2, :cond_1

    .line 38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/customadapters/SearchAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v21, v0

    sget v22, Lcom/helpshift/D$layout;->hs__simple_list_item_1:I

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 39
    new-instance v7, Lcom/helpshift/customadapters/SearchAdapter$ViewHolder;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Lcom/helpshift/customadapters/SearchAdapter$ViewHolder;-><init>(Lcom/helpshift/customadapters/SearchAdapter$1;)V

    .line 40
    .local v7, "holder":Lcom/helpshift/customadapters/SearchAdapter$ViewHolder;
    const v21, 0x1020014

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    iput-object v0, v7, Lcom/helpshift/customadapters/SearchAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 41
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 46
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/customadapters/SearchAdapter;->items:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/helpshift/Faq;

    .line 47
    .local v12, "item":Lcom/helpshift/Faq;
    invoke-virtual {v12}, Lcom/helpshift/Faq;->getSearchTerms()Ljava/util/ArrayList;

    move-result-object v14

    .line 49
    .local v14, "matchedWords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12}, Lcom/helpshift/Faq;->getTitle()Ljava/lang/String;

    move-result-object v16

    .line 51
    .local v16, "title":Ljava/lang/String;
    if-eqz v14, :cond_7

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_7

    .line 52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/customadapters/SearchAdapter;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    sget v22, Lcom/helpshift/D$attr;->hs__searchHighlightColor:I

    invoke-static/range {v21 .. v22}, Lcom/helpshift/util/Styles;->getColor(Landroid/content/Context;I)I

    move-result v6

    .line 53
    .local v6, "highlightColor":I
    new-instance v15, Landroid/text/SpannableString;

    invoke-direct/range {v15 .. v16}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 54
    .local v15, "spannedTitle":Landroid/text/Spannable;
    invoke-static/range {v16 .. v16}, Lcom/helpshift/util/HSTransliterator;->unidecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 55
    .local v11, "isEnglish":Z
    if-eqz v11, :cond_2

    .line 56
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    .line 57
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 58
    .local v20, "word":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_0

    .line 59
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v10

    .line 60
    .local v10, "index":I
    :goto_1
    if-ltz v10, :cond_0

    .line 61
    new-instance v21, Landroid/text/style/BackgroundColorSpan;

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v22

    add-int v22, v22, v10

    const/16 v23, 0x21

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v15, v0, v10, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 65
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v21

    add-int v21, v21, v10

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v10

    goto :goto_1

    .line 43
    .end local v6    # "highlightColor":I
    .end local v7    # "holder":Lcom/helpshift/customadapters/SearchAdapter$ViewHolder;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "index":I
    .end local v11    # "isEnglish":Z
    .end local v12    # "item":Lcom/helpshift/Faq;
    .end local v14    # "matchedWords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "spannedTitle":Landroid/text/Spannable;
    .end local v16    # "title":Ljava/lang/String;
    .end local v20    # "word":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/helpshift/customadapters/SearchAdapter$ViewHolder;

    .restart local v7    # "holder":Lcom/helpshift/customadapters/SearchAdapter$ViewHolder;
    goto/16 :goto_0

    .line 72
    .restart local v6    # "highlightColor":I
    .restart local v11    # "isEnglish":Z
    .restart local v12    # "item":Lcom/helpshift/Faq;
    .restart local v14    # "matchedWords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v15    # "spannedTitle":Landroid/text/Spannable;
    .restart local v16    # "title":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    .line 73
    .local v18, "titleLength":I
    const-string/jumbo v19, ""

    .line 76
    .local v19, "transliteration":Ljava/lang/String;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v17, "titleIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    move/from16 v0, v18

    if-ge v8, v0, :cond_4

    .line 79
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 80
    .local v5, "character":C
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/helpshift/util/HSTransliterator;->unidecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, "charTransliteration":Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v13, v0, :cond_3

    .line 82
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4, v13}, Ljava/lang/String;->charAt(I)C

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 83
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 78
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 86
    .end local v4    # "charTransliteration":Ljava/lang/String;
    .end local v5    # "character":C
    .end local v13    # "j":I
    :cond_4
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    .line 87
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 88
    .restart local v20    # "word":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    .line 89
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_5

    .line 90
    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v10

    .line 91
    .restart local v10    # "index":I
    :goto_4
    if-ltz v10, :cond_5

    .line 92
    new-instance v22, Landroid/text/style/BackgroundColorSpan;

    move-object/from16 v0, v22

    invoke-direct {v0, v6}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v23

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v21

    add-int v21, v21, v10

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    const/16 v24, 0x21

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v21

    move/from16 v3, v24

    invoke-interface {v15, v0, v1, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 96
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v21

    add-int v21, v21, v10

    invoke-static/range {v19 .. v21}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v10

    goto :goto_4

    .line 103
    .end local v8    # "i":I
    .end local v10    # "index":I
    .end local v17    # "titleIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18    # "titleLength":I
    .end local v19    # "transliteration":Ljava/lang/String;
    .end local v20    # "word":Ljava/lang/String;
    :cond_6
    iget-object v0, v7, Lcom/helpshift/customadapters/SearchAdapter$ViewHolder;->text:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .end local v6    # "highlightColor":I
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "isEnglish":Z
    .end local v15    # "spannedTitle":Landroid/text/Spannable;
    :goto_5
    return-object p2

    .line 105
    :cond_7
    iget-object v0, v7, Lcom/helpshift/customadapters/SearchAdapter$ViewHolder;->text:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5
.end method
