.class public Lcom/helpshift/util/HSTransliterator;
.super Ljava/lang/Object;
.source "HSTransliterator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HelpShiftDebug"

.field private static initDone:Z

.field static trans1:Lcom/helpshift/util/HSCharacters1;

.field static trans10:Lcom/helpshift/util/HSCharacters10;

.field static trans11:Lcom/helpshift/util/HSCharacters11;

.field static trans12:Lcom/helpshift/util/HSCharacters12;

.field static trans13:Lcom/helpshift/util/HSCharacters13;

.field static trans14:Lcom/helpshift/util/HSCharacters14;

.field static trans15:Lcom/helpshift/util/HSCharacters15;

.field static trans16:Lcom/helpshift/util/HSCharacters16;

.field static trans2:Lcom/helpshift/util/HSCharacters2;

.field static trans3:Lcom/helpshift/util/HSCharacters3;

.field static trans4:Lcom/helpshift/util/HSCharacters4;

.field static trans5:Lcom/helpshift/util/HSCharacters5;

.field static trans6:Lcom/helpshift/util/HSCharacters6;

.field static trans7:Lcom/helpshift/util/HSCharacters7;

.field static trans8:Lcom/helpshift/util/HSCharacters8;

.field static trans9:Lcom/helpshift/util/HSCharacters9;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-boolean v0, Lcom/helpshift/util/HSTransliterator;->initDone:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deinit()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    sput-object v0, Lcom/helpshift/util/HSTransliterator;->trans1:Lcom/helpshift/util/HSCharacters1;

    .line 54
    sput-object v0, Lcom/helpshift/util/HSTransliterator;->trans2:Lcom/helpshift/util/HSCharacters2;

    .line 55
    sput-object v0, Lcom/helpshift/util/HSTransliterator;->trans3:Lcom/helpshift/util/HSCharacters3;

    .line 56
    sput-object v0, Lcom/helpshift/util/HSTransliterator;->trans4:Lcom/helpshift/util/HSCharacters4;

    .line 57
    sput-object v0, Lcom/helpshift/util/HSTransliterator;->trans5:Lcom/helpshift/util/HSCharacters5;

    .line 58
    sput-object v0, Lcom/helpshift/util/HSTransliterator;->trans6:Lcom/helpshift/util/HSCharacters6;

    .line 59
    sput-object v0, Lcom/helpshift/util/HSTransliterator;->trans7:Lcom/helpshift/util/HSCharacters7;

    .line 60
    sput-object v0, Lcom/helpshift/util/HSTransliterator;->trans8:Lcom/helpshift/util/HSCharacters8;

    .line 61
    sput-object v0, Lcom/helpshift/util/HSTransliterator;->trans9:Lcom/helpshift/util/HSCharacters9;

    .line 62
    sput-object v0, Lcom/helpshift/util/HSTransliterator;->trans10:Lcom/helpshift/util/HSCharacters10;

    .line 63
    sput-object v0, Lcom/helpshift/util/HSTransliterator;->trans11:Lcom/helpshift/util/HSCharacters11;

    .line 64
    sput-object v0, Lcom/helpshift/util/HSTransliterator;->trans12:Lcom/helpshift/util/HSCharacters12;

    .line 65
    sput-object v0, Lcom/helpshift/util/HSTransliterator;->trans13:Lcom/helpshift/util/HSCharacters13;

    .line 66
    sput-object v0, Lcom/helpshift/util/HSTransliterator;->trans14:Lcom/helpshift/util/HSCharacters14;

    .line 67
    sput-object v0, Lcom/helpshift/util/HSTransliterator;->trans15:Lcom/helpshift/util/HSCharacters15;

    .line 68
    sput-object v0, Lcom/helpshift/util/HSTransliterator;->trans16:Lcom/helpshift/util/HSCharacters16;

    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lcom/helpshift/util/HSTransliterator;->initDone:Z

    .line 70
    return-void
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/helpshift/util/HSTransliterator;->initDone:Z

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/helpshift/util/HSCharacters1;

    invoke-direct {v0}, Lcom/helpshift/util/HSCharacters1;-><init>()V

    sput-object v0, Lcom/helpshift/util/HSTransliterator;->trans1:Lcom/helpshift/util/HSCharacters1;

    .line 33
    new-instance v0, Lcom/helpshift/util/HSCharacters2;

    invoke-direct {v0}, Lcom/helpshift/util/HSCharacters2;-><init>()V

    sput-object v0, Lcom/helpshift/util/HSTransliterator;->trans2:Lcom/helpshift/util/HSCharacters2;

    .line 34
    new-instance v0, Lcom/helpshift/util/HSCharacters3;

    invoke-direct {v0}, Lcom/helpshift/util/HSCharacters3;-><init>()V

    sput-object v0, Lcom/helpshift/util/HSTransliterator;->trans3:Lcom/helpshift/util/HSCharacters3;

    .line 35
    new-instance v0, Lcom/helpshift/util/HSCharacters4;

    invoke-direct {v0}, Lcom/helpshift/util/HSCharacters4;-><init>()V

    sput-object v0, Lcom/helpshift/util/HSTransliterator;->trans4:Lcom/helpshift/util/HSCharacters4;

    .line 36
    new-instance v0, Lcom/helpshift/util/HSCharacters5;

    invoke-direct {v0}, Lcom/helpshift/util/HSCharacters5;-><init>()V

    sput-object v0, Lcom/helpshift/util/HSTransliterator;->trans5:Lcom/helpshift/util/HSCharacters5;

    .line 37
    new-instance v0, Lcom/helpshift/util/HSCharacters6;

    invoke-direct {v0}, Lcom/helpshift/util/HSCharacters6;-><init>()V

    sput-object v0, Lcom/helpshift/util/HSTransliterator;->trans6:Lcom/helpshift/util/HSCharacters6;

    .line 38
    new-instance v0, Lcom/helpshift/util/HSCharacters7;

    invoke-direct {v0}, Lcom/helpshift/util/HSCharacters7;-><init>()V

    sput-object v0, Lcom/helpshift/util/HSTransliterator;->trans7:Lcom/helpshift/util/HSCharacters7;

    .line 39
    new-instance v0, Lcom/helpshift/util/HSCharacters8;

    invoke-direct {v0}, Lcom/helpshift/util/HSCharacters8;-><init>()V

    sput-object v0, Lcom/helpshift/util/HSTransliterator;->trans8:Lcom/helpshift/util/HSCharacters8;

    .line 40
    new-instance v0, Lcom/helpshift/util/HSCharacters9;

    invoke-direct {v0}, Lcom/helpshift/util/HSCharacters9;-><init>()V

    sput-object v0, Lcom/helpshift/util/HSTransliterator;->trans9:Lcom/helpshift/util/HSCharacters9;

    .line 41
    new-instance v0, Lcom/helpshift/util/HSCharacters10;

    invoke-direct {v0}, Lcom/helpshift/util/HSCharacters10;-><init>()V

    sput-object v0, Lcom/helpshift/util/HSTransliterator;->trans10:Lcom/helpshift/util/HSCharacters10;

    .line 42
    new-instance v0, Lcom/helpshift/util/HSCharacters11;

    invoke-direct {v0}, Lcom/helpshift/util/HSCharacters11;-><init>()V

    sput-object v0, Lcom/helpshift/util/HSTransliterator;->trans11:Lcom/helpshift/util/HSCharacters11;

    .line 43
    new-instance v0, Lcom/helpshift/util/HSCharacters12;

    invoke-direct {v0}, Lcom/helpshift/util/HSCharacters12;-><init>()V

    sput-object v0, Lcom/helpshift/util/HSTransliterator;->trans12:Lcom/helpshift/util/HSCharacters12;

    .line 44
    new-instance v0, Lcom/helpshift/util/HSCharacters13;

    invoke-direct {v0}, Lcom/helpshift/util/HSCharacters13;-><init>()V

    sput-object v0, Lcom/helpshift/util/HSTransliterator;->trans13:Lcom/helpshift/util/HSCharacters13;

    .line 45
    new-instance v0, Lcom/helpshift/util/HSCharacters14;

    invoke-direct {v0}, Lcom/helpshift/util/HSCharacters14;-><init>()V

    sput-object v0, Lcom/helpshift/util/HSTransliterator;->trans14:Lcom/helpshift/util/HSCharacters14;

    .line 46
    new-instance v0, Lcom/helpshift/util/HSCharacters15;

    invoke-direct {v0}, Lcom/helpshift/util/HSCharacters15;-><init>()V

    sput-object v0, Lcom/helpshift/util/HSTransliterator;->trans15:Lcom/helpshift/util/HSCharacters15;

    .line 47
    new-instance v0, Lcom/helpshift/util/HSCharacters16;

    invoke-direct {v0}, Lcom/helpshift/util/HSCharacters16;-><init>()V

    sput-object v0, Lcom/helpshift/util/HSTransliterator;->trans16:Lcom/helpshift/util/HSCharacters16;

    .line 48
    const/4 v0, 0x1

    sput-boolean v0, Lcom/helpshift/util/HSTransliterator;->initDone:Z

    .line 50
    :cond_0
    return-void
.end method

.method public static isLoaded()Z
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/helpshift/util/HSTransliterator;->initDone:Z

    return v0
.end method

.method public static unidecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    const/16 v14, 0x62

    const/16 v13, 0x55

    const/16 v12, 0x33

    const/16 v11, 0x25

    const/16 v10, 0x11

    .line 73
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2

    .line 74
    :cond_0
    const-string/jumbo p0, ""

    .line 133
    .end local p0    # "input":Ljava/lang/String;
    .local v3, "i":I
    :cond_1
    :goto_0
    return-object p0

    .line 76
    .end local v3    # "i":I
    .restart local p0    # "input":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    .line 77
    .restart local v3    # "i":I
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v3, v9, :cond_3

    .line 78
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 79
    .local v1, "c":C
    const/16 v9, 0x80

    if-le v1, v9, :cond_4

    .line 86
    .end local v1    # "c":C
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 87
    .local v5, "inputArray":[C
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v8, "output":Ljava/lang/StringBuilder;
    move-object v0, v5

    .local v0, "arr$":[C
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v6, :cond_16

    aget-char v1, v0, v4

    .line 90
    .restart local v1    # "c":C
    const/16 v9, 0x80

    if-ge v1, v9, :cond_5

    .line 91
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 82
    .end local v0    # "arr$":[C
    .end local v4    # "i$":I
    .end local v5    # "inputArray":[C
    .end local v6    # "len$":I
    .end local v8    # "output":Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v3, v9, :cond_1

    .line 77
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 93
    .restart local v0    # "arr$":[C
    .restart local v4    # "i$":I
    .restart local v5    # "inputArray":[C
    .restart local v6    # "len$":I
    .restart local v8    # "output":Ljava/lang/StringBuilder;
    :cond_5
    shr-int/lit8 v2, v1, 0x8

    .line 94
    .local v2, "high":I
    and-int/lit16 v7, v1, 0xff

    .line 96
    .local v7, "low":I
    if-lez v2, :cond_6

    if-ge v2, v10, :cond_6

    sget-object v9, Lcom/helpshift/util/HSTransliterator;->trans1:Lcom/helpshift/util/HSCharacters1;

    invoke-virtual {v9, v2, v7}, Lcom/helpshift/util/HSCharacters1;->containsKey(II)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 97
    sget-object v9, Lcom/helpshift/util/HSTransliterator;->trans1:Lcom/helpshift/util/HSCharacters1;

    invoke-virtual {v9, v2, v7}, Lcom/helpshift/util/HSCharacters1;->get(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 98
    :cond_6
    if-lt v2, v10, :cond_7

    if-ge v2, v11, :cond_7

    sget-object v9, Lcom/helpshift/util/HSTransliterator;->trans2:Lcom/helpshift/util/HSCharacters2;

    invoke-virtual {v9, v2, v7}, Lcom/helpshift/util/HSCharacters2;->containsKey(II)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 99
    sget-object v9, Lcom/helpshift/util/HSTransliterator;->trans2:Lcom/helpshift/util/HSCharacters2;

    invoke-virtual {v9, v2, v7}, Lcom/helpshift/util/HSCharacters2;->get(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 100
    :cond_7
    if-lt v2, v11, :cond_8

    if-ge v2, v12, :cond_8

    sget-object v9, Lcom/helpshift/util/HSTransliterator;->trans3:Lcom/helpshift/util/HSCharacters3;

    invoke-virtual {v9, v2, v7}, Lcom/helpshift/util/HSCharacters3;->containsKey(II)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 101
    sget-object v9, Lcom/helpshift/util/HSTransliterator;->trans3:Lcom/helpshift/util/HSCharacters3;

    invoke-virtual {v9, v2, v7}, Lcom/helpshift/util/HSCharacters3;->get(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 102
    :cond_8
    if-lt v2, v12, :cond_9

    if-ge v2, v13, :cond_9

    sget-object v9, Lcom/helpshift/util/HSTransliterator;->trans4:Lcom/helpshift/util/HSCharacters4;

    invoke-virtual {v9, v2, v7}, Lcom/helpshift/util/HSCharacters4;->containsKey(II)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 103
    sget-object v9, Lcom/helpshift/util/HSTransliterator;->trans4:Lcom/helpshift/util/HSCharacters4;

    invoke-virtual {v9, v2, v7}, Lcom/helpshift/util/HSCharacters4;->get(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 104
    :cond_9
    if-lt v2, v13, :cond_a

    if-ge v2, v14, :cond_a

    sget-object v9, Lcom/helpshift/util/HSTransliterator;->trans5:Lcom/helpshift/util/HSCharacters5;

    invoke-virtual {v9, v2, v7}, Lcom/helpshift/util/HSCharacters5;->containsKey(II)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 105
    sget-object v9, Lcom/helpshift/util/HSTransliterator;->trans5:Lcom/helpshift/util/HSCharacters5;

    invoke-virtual {v9, v2, v7}, Lcom/helpshift/util/HSCharacters5;->get(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 106
    :cond_a
    if-lt v2, v14, :cond_b

    const/16 v9, 0x6f

    if-ge v2, v9, :cond_b

    sget-object v9, Lcom/helpshift/util/HSTransliterator;->trans6:Lcom/helpshift/util/HSCharacters6;

    invoke-virtual {v9, v2, v7}, Lcom/helpshift/util/HSCharacters6;->containsKey(II)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 107
    sget-object v9, Lcom/helpshift/util/HSTransliterator;->trans6:Lcom/helpshift/util/HSCharacters6;

    invoke-virtual {v9, v2, v7}, Lcom/helpshift/util/HSCharacters6;->get(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 108
    :cond_b
    const/16 v9, 0x6f

    if-lt v2, v9, :cond_c

    const/16 v9, 0x79

    if-ge v2, v9, :cond_c

    sget-object v9, Lcom/helpshift/util/HSTransliterator;->trans7:Lcom/helpshift/util/HSCharacters7;

    invoke-virtual {v9, v2, v7}, Lcom/helpshift/util/HSCharacters7;->containsKey(II)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 109
    sget-object v9, Lcom/helpshift/util/HSTransliterator;->trans7:Lcom/helpshift/util/HSCharacters7;

    invoke-virtual {v9, v2, v7}, Lcom/helpshift/util/HSCharacters7;->get(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 110
    :cond_c
    const/16 v9, 0x79

    if-lt v2, v9, :cond_d

    const/16 v9, 0x83

    if-ge v2, v9, :cond_d

    sget-object v9, Lcom/helpshift/util/HSTransliterator;->trans8:Lcom/helpshift/util/HSCharacters8;

    invoke-virtual {v9, v2, v7}, Lcom/helpshift/util/HSCharacters8;->containsKey(II)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 111
    sget-object v9, Lcom/helpshift/util/HSTransliterator;->trans8:Lcom/helpshift/util/HSCharacters8;

    invoke-virtual {v9, v2, v7}, Lcom/helpshift/util/HSCharacters8;->get(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 112
    :cond_d
    const/16 v9, 0x83

    if-lt v2, v9, :cond_e

    const/16 v9, 0x8d

    if-ge v2, v9, :cond_e

    sget-object v9, Lcom/helpshift/util/HSTransliterator;->trans9:Lcom/helpshift/util/HSCharacters9;

    invoke-virtual {v9, v2, v7}, Lcom/helpshift/util/HSCharacters9;->containsKey(II)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 113
    sget-object v9, Lcom/helpshift/util/HSTransliterator;->trans9:Lcom/helpshift/util/HSCharacters9;

    invoke-virtual {v9, v2, v7}, Lcom/helpshift/util/HSCharacters9;->get(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 114
    :cond_e
    const/16 v9, 0x8d

    if-lt v2, v9, :cond_f

    const/16 v9, 0x97

    if-ge v2, v9, :cond_f

    sget-object v9, Lcom/helpshift/util/HSTransliterator;->trans10:Lcom/helpshift/util/HSCharacters10;

    invoke-virtual {v9, v2, v7}, Lcom/helpshift/util/HSCharacters10;->containsKey(II)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 115
    sget-object v9, Lcom/helpshift/util/HSTransliterator;->trans10:Lcom/helpshift/util/HSCharacters10;

    invoke-virtual {v9, v2, v7}, Lcom/helpshift/util/HSCharacters10;->get(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 116
    :cond_f
    const/16 v9, 0x97

    if-lt v2, v9, :cond_10

    const/16 v9, 0xa3

    if-ge v2, v9, :cond_10

    sget-object v9, Lcom/helpshift/util/HSTransliterator;->trans11:Lcom/helpshift/util/HSCharacters11;

    invoke-virtual {v9, v2, v7}, Lcom/helpshift/util/HSCharacters11;->containsKey(II)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 117
    sget-object v9, Lcom/helpshift/util/HSTransliterator;->trans11:Lcom/helpshift/util/HSCharacters11;

    invoke-virtual {v9, v2, v7}, Lcom/helpshift/util/HSCharacters11;->get(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 118
    :cond_10
    const/16 v9, 0xa3

    if-lt v2, v9, :cond_11

    const/16 v9, 0xb6

    if-ge v2, v9, :cond_11

    sget-object v9, Lcom/helpshift/util/HSTransliterator;->trans12:Lcom/helpshift/util/HSCharacters12;

    invoke-virtual {v9, v2, v7}, Lcom/helpshift/util/HSCharacters12;->containsKey(II)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 119
    sget-object v9, Lcom/helpshift/util/HSTransliterator;->trans12:Lcom/helpshift/util/HSCharacters12;

    invoke-virtual {v9, v2, v7}, Lcom/helpshift/util/HSCharacters12;->get(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 120
    :cond_11
    const/16 v9, 0xb6

    if-lt v2, v9, :cond_12

    const/16 v9, 0xc0

    if-ge v2, v9, :cond_12

    sget-object v9, Lcom/helpshift/util/HSTransliterator;->trans13:Lcom/helpshift/util/HSCharacters13;

    invoke-virtual {v9, v2, v7}, Lcom/helpshift/util/HSCharacters13;->containsKey(II)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 121
    sget-object v9, Lcom/helpshift/util/HSTransliterator;->trans13:Lcom/helpshift/util/HSCharacters13;

    invoke-virtual {v9, v2, v7}, Lcom/helpshift/util/HSCharacters13;->get(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 122
    :cond_12
    const/16 v9, 0xc0

    if-lt v2, v9, :cond_13

    const/16 v9, 0xcb

    if-ge v2, v9, :cond_13

    sget-object v9, Lcom/helpshift/util/HSTransliterator;->trans14:Lcom/helpshift/util/HSCharacters14;

    invoke-virtual {v9, v2, v7}, Lcom/helpshift/util/HSCharacters14;->containsKey(II)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 123
    sget-object v9, Lcom/helpshift/util/HSTransliterator;->trans14:Lcom/helpshift/util/HSCharacters14;

    invoke-virtual {v9, v2, v7}, Lcom/helpshift/util/HSCharacters14;->get(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 124
    :cond_13
    const/16 v9, 0xcb

    if-lt v2, v9, :cond_14

    const/16 v9, 0xd7

    if-ge v2, v9, :cond_14

    sget-object v9, Lcom/helpshift/util/HSTransliterator;->trans15:Lcom/helpshift/util/HSCharacters15;

    invoke-virtual {v9, v2, v7}, Lcom/helpshift/util/HSCharacters15;->containsKey(II)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 125
    sget-object v9, Lcom/helpshift/util/HSTransliterator;->trans15:Lcom/helpshift/util/HSCharacters15;

    invoke-virtual {v9, v2, v7}, Lcom/helpshift/util/HSCharacters15;->get(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 126
    :cond_14
    const/16 v9, 0xd7

    if-lt v2, v9, :cond_15

    sget-object v9, Lcom/helpshift/util/HSTransliterator;->trans15:Lcom/helpshift/util/HSCharacters15;

    invoke-virtual {v9, v2, v7}, Lcom/helpshift/util/HSCharacters15;->containsKey(II)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 127
    sget-object v9, Lcom/helpshift/util/HSTransliterator;->trans15:Lcom/helpshift/util/HSCharacters15;

    invoke-virtual {v9, v2, v7}, Lcom/helpshift/util/HSCharacters15;->get(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 129
    :cond_15
    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 133
    .end local v1    # "c":C
    .end local v2    # "high":I
    .end local v7    # "low":I
    :cond_16
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method
