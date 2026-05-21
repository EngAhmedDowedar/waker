.class public Lcom/helpshift/external/DoubleMetaphone;
.super Ljava/lang/Object;
.source "DoubleMetaphone.java"

# interfaces
.implements Lcom/helpshift/external/StringEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;
    }
.end annotation


# static fields
.field private static final ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String;

.field private static final L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String;

.field private static final L_T_K_S_N_M_B_Z:[Ljava/lang/String;

.field private static final SILENT_START:[Ljava/lang/String;

.field private static final VOWELS:Ljava/lang/String; = "AEIOUY"


# instance fields
.field private maxCodeLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "GN"

    aput-object v1, v0, v3

    const-string/jumbo v1, "KN"

    aput-object v1, v0, v4

    const-string/jumbo v1, "PN"

    aput-object v1, v0, v5

    const-string/jumbo v1, "WR"

    aput-object v1, v0, v6

    const-string/jumbo v1, "PS"

    aput-object v1, v0, v7

    sput-object v0, Lcom/helpshift/external/DoubleMetaphone;->SILENT_START:[Ljava/lang/String;

    .line 54
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "L"

    aput-object v1, v0, v3

    const-string/jumbo v1, "R"

    aput-object v1, v0, v4

    const-string/jumbo v1, "N"

    aput-object v1, v0, v5

    const-string/jumbo v1, "M"

    aput-object v1, v0, v6

    const-string/jumbo v1, "B"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "H"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, " "

    aput-object v2, v0, v1

    sput-object v0, Lcom/helpshift/external/DoubleMetaphone;->L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String;

    .line 56
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "ES"

    aput-object v1, v0, v3

    const-string/jumbo v1, "EP"

    aput-object v1, v0, v4

    const-string/jumbo v1, "EB"

    aput-object v1, v0, v5

    const-string/jumbo v1, "EL"

    aput-object v1, v0, v6

    const-string/jumbo v1, "EY"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "IB"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "IL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "IN"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "IE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "EI"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "ER"

    aput-object v2, v0, v1

    sput-object v0, Lcom/helpshift/external/DoubleMetaphone;->ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String;

    .line 58
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "L"

    aput-object v1, v0, v3

    const-string/jumbo v1, "T"

    aput-object v1, v0, v4

    const-string/jumbo v1, "K"

    aput-object v1, v0, v5

    const-string/jumbo v1, "S"

    aput-object v1, v0, v6

    const-string/jumbo v1, "N"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "M"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "Z"

    aput-object v2, v0, v1

    sput-object v0, Lcom/helpshift/external/DoubleMetaphone;->L_T_K_S_N_M_B_Z:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x4

    iput v0, p0, Lcom/helpshift/external/DoubleMetaphone;->maxCodeLen:I

    .line 71
    return-void
.end method

.method private cleanInput(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 888
    if-nez p1, :cond_1

    .line 895
    :cond_0
    :goto_0
    return-object v0

    .line 891
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 892
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 895
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private conditionC0(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 781
    const/4 v3, 0x4

    const-string/jumbo v4, "CHIA"

    invoke-static {p1, p2, v3, v4}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 791
    :cond_0
    :goto_0
    return v1

    .line 783
    :cond_1
    if-le p2, v2, :cond_0

    .line 785
    add-int/lit8 v3, p2, -0x2

    invoke-virtual {p0, p1, v3}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/helpshift/external/DoubleMetaphone;->isVowel(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 787
    add-int/lit8 v3, p2, -0x1

    const/4 v4, 0x3

    const-string/jumbo v5, "ACH"

    invoke-static {p1, v3, v4, v5}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 790
    add-int/lit8 v3, p2, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    .line 791
    .local v0, "c":C
    const/16 v3, 0x49

    if-eq v0, v3, :cond_2

    const/16 v3, 0x45

    if-ne v0, v3, :cond_3

    :cond_2
    add-int/lit8 v3, p2, -0x2

    const/4 v4, 0x6

    const-string/jumbo v5, "BACHER"

    const-string/jumbo v6, "MACHER"

    invoke-static {p1, v3, v4, v5, v6}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private conditionCH0(Ljava/lang/String;I)Z
    .locals 9
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x0

    .line 800
    if-eqz p2, :cond_0

    move v0, v7

    .line 808
    :goto_0
    return v0

    .line 802
    :cond_0
    add-int/lit8 v0, p2, 0x1

    const-string/jumbo v1, "HARAC"

    const-string/jumbo v2, "HARIS"

    invoke-static {p1, v0, v8, v1, v2}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v1, p2, 0x1

    const/4 v2, 0x3

    const-string/jumbo v3, "HOR"

    const-string/jumbo v4, "HYM"

    const-string/jumbo v5, "HIA"

    const-string/jumbo v6, "HEM"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v7

    .line 804
    goto :goto_0

    .line 805
    :cond_1
    const-string/jumbo v0, "CHORE"

    invoke-static {p1, v7, v8, v0}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v7

    .line 806
    goto :goto_0

    .line 808
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private conditionCH1(Ljava/lang/String;I)Z
    .locals 9
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 816
    const/4 v0, 0x4

    const-string/jumbo v1, "VAN "

    const-string/jumbo v2, "VON "

    invoke-static {p1, v7, v0, v1, v2}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    const-string/jumbo v1, "SCH"

    invoke-static {p1, v7, v0, v1}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v1, p2, -0x2

    const/4 v2, 0x6

    const-string/jumbo v3, "ORCHES"

    const-string/jumbo v4, "ARCHIT"

    const-string/jumbo v5, "ORCHID"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v0, p2, 0x2

    const-string/jumbo v1, "T"

    const-string/jumbo v2, "S"

    invoke-static {p1, v0, v8, v1, v2}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v1, p2, -0x1

    const-string/jumbo v3, "A"

    const-string/jumbo v4, "O"

    const-string/jumbo v5, "U"

    const-string/jumbo v6, "E"

    move-object v0, p1

    move v2, v8

    invoke-static/range {v0 .. v6}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_2

    :cond_0
    add-int/lit8 v0, p2, 0x2

    sget-object v1, Lcom/helpshift/external/DoubleMetaphone;->L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String;

    invoke-static {p1, v0, v8, v1}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    :cond_1
    move v0, v8

    :goto_0
    return v0

    :cond_2
    move v0, v7

    goto :goto_0
.end method

.method private conditionL0(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x1

    .line 827
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    if-ne p2, v0, :cond_0

    add-int/lit8 v1, p2, -0x1

    const-string/jumbo v3, "ILLO"

    const-string/jumbo v4, "ILLA"

    const-string/jumbo v5, "ALLE"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    .line 835
    :goto_0
    return v0

    .line 830
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x2

    const-string/jumbo v3, "AS"

    const-string/jumbo v4, "OS"

    invoke-static {p1, v0, v1, v3, v4}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string/jumbo v1, "A"

    const-string/jumbo v3, "O"

    invoke-static {p1, v0, v6, v1, v3}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    add-int/lit8 v0, p2, -0x1

    const-string/jumbo v1, "ALLE"

    invoke-static {p1, v0, v2, v1}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v6

    .line 833
    goto :goto_0

    .line 835
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private conditionM0(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    const/4 v0, 0x1

    .line 843
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    const/16 v2, 0x4d

    if-ne v1, v2, :cond_1

    .line 846
    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int/lit8 v1, p2, -0x1

    const/4 v2, 0x3

    const-string/jumbo v3, "UMB"

    invoke-static {p1, v1, v2, v3}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, p2, 0x2

    const/4 v2, 0x2

    const-string/jumbo v3, "ER"

    invoke-static {p1, v1, v2, v3}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria"    # Ljava/lang/String;

    .prologue
    .line 914
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p0, p1, p2, v0}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria1"    # Ljava/lang/String;
    .param p4, "criteria2"    # Ljava/lang/String;

    .prologue
    .line 922
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p0, p1, p2, v0}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria1"    # Ljava/lang/String;
    .param p4, "criteria2"    # Ljava/lang/String;
    .param p5, "criteria3"    # Ljava/lang/String;

    .prologue
    .line 930
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p0, p1, p2, v0}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria1"    # Ljava/lang/String;
    .param p4, "criteria2"    # Ljava/lang/String;
    .param p5, "criteria3"    # Ljava/lang/String;
    .param p6, "criteria4"    # Ljava/lang/String;

    .prologue
    .line 939
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    const/4 v1, 0x3

    aput-object p6, v0, v1

    invoke-static {p0, p1, p2, v0}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria1"    # Ljava/lang/String;
    .param p4, "criteria2"    # Ljava/lang/String;
    .param p5, "criteria3"    # Ljava/lang/String;
    .param p6, "criteria4"    # Ljava/lang/String;
    .param p7, "criteria5"    # Ljava/lang/String;

    .prologue
    .line 950
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    const/4 v1, 0x3

    aput-object p6, v0, v1

    const/4 v1, 0x4

    aput-object p7, v0, v1

    invoke-static {p0, p1, p2, v0}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria1"    # Ljava/lang/String;
    .param p4, "criteria2"    # Ljava/lang/String;
    .param p5, "criteria3"    # Ljava/lang/String;
    .param p6, "criteria4"    # Ljava/lang/String;
    .param p7, "criteria5"    # Ljava/lang/String;
    .param p8, "criteria6"    # Ljava/lang/String;

    .prologue
    .line 962
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    const/4 v1, 0x3

    aput-object p6, v0, v1

    const/4 v1, 0x4

    aput-object p7, v0, v1

    const/4 v1, 0x5

    aput-object p8, v0, v1

    invoke-static {p0, p1, p2, v0}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected static contains(Ljava/lang/String;II[Ljava/lang/String;)Z
    .locals 8
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria"    # [Ljava/lang/String;

    .prologue
    .line 973
    const/4 v4, 0x0

    .line 974
    .local v4, "result":Z
    if-ltz p1, :cond_0

    add-int v6, p1, p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v6, v7, :cond_0

    .line 975
    add-int v6, p1, p2

    invoke-virtual {p0, p1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 977
    .local v5, "target":Ljava/lang/String;
    move-object v0, p3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 978
    .local v1, "element":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 979
    const/4 v4, 0x1

    .line 984
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "element":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "target":Ljava/lang/String;
    :cond_0
    return v4

    .line 977
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "element":Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v5    # "target":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private handleAEIOUY(Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 1
    .param p1, "result"    # Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;
    .param p2, "index"    # I

    .prologue
    .line 274
    if-nez p2, :cond_0

    .line 275
    const/16 v0, 0x41

    invoke-virtual {p1, v0}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 277
    :cond_0
    add-int/lit8 v0, p2, 0x1

    return v0
.end method

.method private handleC(Ljava/lang/String;Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 10
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x58

    const/16 v7, 0x4b

    const/16 v6, 0x53

    const/4 v2, 0x2

    .line 284
    invoke-direct {p0, p1, p3}, Lcom/helpshift/external/DoubleMetaphone;->conditionC0(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p2, v7}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 286
    add-int/lit8 p3, p3, 0x2

    :goto_0
    move v0, p3

    .line 329
    :goto_1
    return v0

    .line 287
    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x6

    const-string/jumbo v1, "CAESAR"

    invoke-static {p1, p3, v0, v1}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {p2, v6}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 289
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 290
    :cond_1
    const-string/jumbo v0, "CH"

    invoke-static {p1, p3, v2, v0}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    invoke-direct {p0, p1, p2, p3}, Lcom/helpshift/external/DoubleMetaphone;->handleCH(Ljava/lang/String;Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result p3

    goto :goto_0

    .line 292
    :cond_2
    const-string/jumbo v0, "CZ"

    invoke-static {p1, p3, v2, v0}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p3, -0x2

    const/4 v1, 0x4

    const-string/jumbo v3, "WICZ"

    invoke-static {p1, v0, v1, v3}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 295
    invoke-virtual {p2, v6, v8}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 296
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 297
    :cond_3
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x3

    const-string/jumbo v3, "CIA"

    invoke-static {p1, v0, v1, v3}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 299
    invoke-virtual {p2, v8}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 300
    add-int/lit8 p3, p3, 0x3

    goto :goto_0

    .line 301
    :cond_4
    const-string/jumbo v0, "CC"

    invoke-static {p1, p3, v2, v0}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-ne p3, v9, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x4d

    if-eq v0, v1, :cond_6

    .line 304
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/helpshift/external/DoubleMetaphone;->handleCC(Ljava/lang/String;Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    goto :goto_1

    .line 305
    :cond_6
    const-string/jumbo v3, "CK"

    const-string/jumbo v4, "CG"

    const-string/jumbo v5, "CQ"

    move-object v0, p1

    move v1, p3

    invoke-static/range {v0 .. v5}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 306
    invoke-virtual {p2, v7}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 307
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 308
    :cond_7
    const-string/jumbo v3, "CI"

    const-string/jumbo v4, "CE"

    const-string/jumbo v5, "CY"

    move-object v0, p1

    move v1, p3

    invoke-static/range {v0 .. v5}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 310
    const/4 v2, 0x3

    const-string/jumbo v3, "CIO"

    const-string/jumbo v4, "CIE"

    const-string/jumbo v5, "CIA"

    move-object v0, p1

    move v1, p3

    invoke-static/range {v0 .. v5}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 311
    invoke-virtual {p2, v6, v8}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 315
    :goto_2
    add-int/lit8 p3, p3, 0x2

    goto/16 :goto_0

    .line 313
    :cond_8
    invoke-virtual {p2, v6}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_2

    .line 317
    :cond_9
    invoke-virtual {p2, v7}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 318
    add-int/lit8 v1, p3, 0x1

    const-string/jumbo v3, " C"

    const-string/jumbo v4, " Q"

    const-string/jumbo v5, " G"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 320
    add-int/lit8 p3, p3, 0x3

    goto/16 :goto_0

    .line 321
    :cond_a
    add-int/lit8 v4, p3, 0x1

    const-string/jumbo v6, "C"

    const-string/jumbo v7, "K"

    const-string/jumbo v8, "Q"

    move-object v3, p1

    move v5, v9

    invoke-static/range {v3 .. v8}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    add-int/lit8 v0, p3, 0x1

    const-string/jumbo v1, "CE"

    const-string/jumbo v3, "CI"

    invoke-static {p1, v0, v2, v1, v3}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 323
    add-int/lit8 p3, p3, 0x2

    goto/16 :goto_0

    .line 325
    :cond_b
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0
.end method

.method private handleCC(Ljava/lang/String;Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .prologue
    const/4 v2, 0x1

    .line 336
    add-int/lit8 v1, p3, 0x2

    const-string/jumbo v3, "I"

    const-string/jumbo v4, "E"

    const-string/jumbo v5, "H"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p3, 0x2

    const/4 v1, 0x2

    const-string/jumbo v3, "HU"

    invoke-static {p1, v0, v1, v3}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 339
    if-ne p3, v2, :cond_0

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x41

    if-eq v0, v1, :cond_1

    :cond_0
    add-int/lit8 v0, p3, -0x1

    const/4 v1, 0x5

    const-string/jumbo v2, "UCCEE"

    const-string/jumbo v3, "UCCES"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 342
    :cond_1
    const-string/jumbo v0, "KS"

    invoke-virtual {p2, v0}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    .line 347
    :goto_0
    add-int/lit8 p3, p3, 0x3

    .line 353
    :goto_1
    return p3

    .line 345
    :cond_2
    const/16 v0, 0x58

    invoke-virtual {p2, v0}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 349
    :cond_3
    const/16 v0, 0x4b

    invoke-virtual {p2, v0}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 350
    add-int/lit8 p3, p3, 0x2

    goto :goto_1
.end method

.method private handleCH(Ljava/lang/String;Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .prologue
    const/16 v4, 0x58

    const/16 v3, 0x4b

    .line 360
    if-lez p3, :cond_0

    const/4 v0, 0x4

    const-string/jumbo v1, "CHAE"

    invoke-static {p1, p3, v0, v1}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p2, v3, v4}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 362
    add-int/lit8 v0, p3, 0x2

    .line 381
    :goto_0
    return v0

    .line 363
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/helpshift/external/DoubleMetaphone;->conditionCH0(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    invoke-virtual {p2, v3}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 366
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 367
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/helpshift/external/DoubleMetaphone;->conditionCH1(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 369
    invoke-virtual {p2, v3}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 370
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 372
    :cond_2
    if-lez p3, :cond_4

    .line 373
    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string/jumbo v2, "MC"

    invoke-static {p1, v0, v1, v2}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 374
    invoke-virtual {p2, v3}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 381
    :goto_1
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 376
    :cond_3
    invoke-virtual {p2, v4, v3}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_1

    .line 379
    :cond_4
    invoke-virtual {p2, v4}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1
.end method

.method private handleD(Ljava/lang/String;Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .prologue
    const/16 v3, 0x54

    const/4 v2, 0x2

    .line 389
    const-string/jumbo v0, "DG"

    invoke-static {p1, p3, v2, v0}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    add-int/lit8 v1, p3, 0x2

    const/4 v2, 0x1

    const-string/jumbo v3, "I"

    const-string/jumbo v4, "E"

    const-string/jumbo v5, "Y"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    const/16 v0, 0x4a

    invoke-virtual {p2, v0}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 393
    add-int/lit8 p3, p3, 0x3

    .line 406
    :goto_0
    return p3

    .line 396
    :cond_0
    const-string/jumbo v0, "TK"

    invoke-virtual {p2, v0}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    .line 397
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 399
    :cond_1
    const-string/jumbo v0, "DT"

    const-string/jumbo v1, "DD"

    invoke-static {p1, p3, v2, v0, v1}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 400
    invoke-virtual {p2, v3}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 401
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 403
    :cond_2
    invoke-virtual {p2, v3}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 404
    add-int/lit8 p3, p3, 0x1

    goto :goto_0
.end method

.method private handleG(Ljava/lang/String;Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I
    .param p4, "slavoGermanic"    # Z

    .prologue
    .line 413
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_0

    .line 414
    invoke-direct {p0, p1, p2, p3}, Lcom/helpshift/external/DoubleMetaphone;->handleGH(Ljava/lang/String;Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result p3

    .line 463
    :goto_0
    return p3

    .line 415
    :cond_0
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_3

    .line 416
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/helpshift/external/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p4, :cond_1

    .line 417
    const-string/jumbo v0, "KN"

    const-string/jumbo v1, "N"

    invoke-virtual {p2, v0, v1}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :goto_1
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 418
    :cond_1
    add-int/lit8 v0, p3, 0x2

    const/4 v1, 0x2

    const-string/jumbo v2, "EY"

    invoke-static {p1, v0, v1, v2}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x59

    if-eq v0, v1, :cond_2

    if-nez p4, :cond_2

    .line 420
    const-string/jumbo v0, "N"

    const-string/jumbo v1, "KN"

    invoke-virtual {p2, v0, v1}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 422
    :cond_2
    const-string/jumbo v0, "KN"

    invoke-virtual {p2, v0}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    goto :goto_1

    .line 425
    :cond_3
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x2

    const-string/jumbo v2, "LI"

    invoke-static {p1, v0, v1, v2}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p4, :cond_4

    .line 426
    const-string/jumbo v0, "KL"

    const-string/jumbo v1, "L"

    invoke-virtual {p2, v0, v1}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 428
    :cond_4
    if-nez p3, :cond_6

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x59

    if-eq v0, v1, :cond_5

    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x2

    sget-object v2, Lcom/helpshift/external/DoubleMetaphone;->ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 432
    :cond_5
    const/16 v0, 0x4b

    const/16 v1, 0x4a

    invoke-virtual {p2, v0, v1}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 433
    add-int/lit8 p3, p3, 0x2

    goto/16 :goto_0

    .line 434
    :cond_6
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x2

    const-string/jumbo v2, "ER"

    invoke-static {p1, v0, v1, v2}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x59

    if-ne v0, v1, :cond_8

    :cond_7
    const/4 v1, 0x0

    const/4 v2, 0x6

    const-string/jumbo v3, "DANGER"

    const-string/jumbo v4, "RANGER"

    const-string/jumbo v5, "MANGER"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    add-int/lit8 v0, p3, -0x1

    const/4 v1, 0x1

    const-string/jumbo v2, "E"

    const-string/jumbo v3, "I"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    add-int/lit8 v0, p3, -0x1

    const/4 v1, 0x3

    const-string/jumbo v2, "RGY"

    const-string/jumbo v3, "OGY"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 440
    const/16 v0, 0x4b

    const/16 v1, 0x4a

    invoke-virtual {p2, v0, v1}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 441
    add-int/lit8 p3, p3, 0x2

    goto/16 :goto_0

    .line 442
    :cond_8
    add-int/lit8 v1, p3, 0x1

    const/4 v2, 0x1

    const-string/jumbo v3, "E"

    const-string/jumbo v4, "I"

    const-string/jumbo v5, "Y"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    add-int/lit8 v0, p3, -0x1

    const/4 v1, 0x4

    const-string/jumbo v2, "AGGI"

    const-string/jumbo v3, "OGGI"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 445
    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x4

    const-string/jumbo v2, "VAN "

    const-string/jumbo v3, "VON "

    invoke-static {p1, v0, v1, v2, v3}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    const/4 v1, 0x3

    const-string/jumbo v2, "SCH"

    invoke-static {p1, v0, v1, v2}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x2

    const-string/jumbo v2, "ET"

    invoke-static {p1, v0, v1, v2}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 449
    :cond_a
    const/16 v0, 0x4b

    invoke-virtual {p2, v0}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 455
    :goto_2
    add-int/lit8 p3, p3, 0x2

    goto/16 :goto_0

    .line 450
    :cond_b
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x3

    const-string/jumbo v2, "IER"

    invoke-static {p1, v0, v1, v2}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 451
    const/16 v0, 0x4a

    invoke-virtual {p2, v0}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_2

    .line 453
    :cond_c
    const/16 v0, 0x4a

    const/16 v1, 0x4b

    invoke-virtual {p2, v0, v1}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_2

    .line 456
    :cond_d
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x47

    if-ne v0, v1, :cond_e

    .line 457
    add-int/lit8 p3, p3, 0x2

    .line 458
    const/16 v0, 0x4b

    invoke-virtual {p2, v0}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto/16 :goto_0

    .line 460
    :cond_e
    add-int/lit8 p3, p3, 0x1

    .line 461
    const/16 v0, 0x4b

    invoke-virtual {p2, v0}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto/16 :goto_0
.end method

.method private handleGH(Ljava/lang/String;Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 10
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .prologue
    const/16 v9, 0x49

    const/4 v6, 0x2

    const/16 v8, 0x4b

    const/4 v2, 0x1

    .line 470
    if-lez p3, :cond_0

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/helpshift/external/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    invoke-virtual {p2, v8}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 472
    add-int/lit8 p3, p3, 0x2

    .line 495
    :goto_0
    return p3

    .line 473
    :cond_0
    if-nez p3, :cond_2

    .line 474
    add-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    if-ne v0, v9, :cond_1

    .line 475
    const/16 v0, 0x4a

    invoke-virtual {p2, v0}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 479
    :goto_1
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 477
    :cond_1
    invoke-virtual {p2, v8}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1

    .line 480
    :cond_2
    if-le p3, v2, :cond_3

    add-int/lit8 v1, p3, -0x2

    const-string/jumbo v3, "B"

    const-string/jumbo v4, "H"

    const-string/jumbo v5, "D"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    if-le p3, v6, :cond_4

    add-int/lit8 v1, p3, -0x3

    const-string/jumbo v3, "B"

    const-string/jumbo v4, "H"

    const-string/jumbo v5, "D"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/4 v0, 0x3

    if-le p3, v0, :cond_6

    add-int/lit8 v0, p3, -0x4

    const-string/jumbo v1, "B"

    const-string/jumbo v3, "H"

    invoke-static {p1, v0, v2, v1, v3}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 484
    :cond_5
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 486
    :cond_6
    if-le p3, v6, :cond_8

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x55

    if-ne v0, v1, :cond_8

    add-int/lit8 v1, p3, -0x3

    const-string/jumbo v3, "C"

    const-string/jumbo v4, "G"

    const-string/jumbo v5, "L"

    const-string/jumbo v6, "R"

    const-string/jumbo v7, "T"

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 489
    const/16 v0, 0x46

    invoke-virtual {p2, v0}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 493
    :cond_7
    :goto_2
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 490
    :cond_8
    if-lez p3, :cond_7

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    if-eq v0, v9, :cond_7

    .line 491
    invoke-virtual {p2, v8}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_2
.end method

.method private handleH(Ljava/lang/String;Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .prologue
    .line 503
    if-eqz p3, :cond_0

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/helpshift/external/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/helpshift/external/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    const/16 v0, 0x48

    invoke-virtual {p2, v0}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 506
    add-int/lit8 p3, p3, 0x2

    .line 511
    :goto_0
    return p3

    .line 509
    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0
.end method

.method private handleJ(Ljava/lang/String;Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I
    .param p4, "slavoGermanic"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x48

    const/4 v3, 0x4

    const/16 v6, 0x4a

    .line 518
    const-string/jumbo v0, "JOSE"

    invoke-static {p1, p3, v3, v0}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "SAN "

    invoke-static {p1, v5, v3, v0}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 520
    :cond_0
    if-nez p3, :cond_1

    add-int/lit8 v0, p3, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v3, :cond_2

    const-string/jumbo v0, "SAN "

    invoke-static {p1, v5, v3, v0}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 522
    :cond_2
    invoke-virtual {p2, v4}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 526
    :goto_0
    add-int/lit8 p3, p3, 0x1

    .line 546
    :goto_1
    return p3

    .line 524
    :cond_3
    invoke-virtual {p2, v6, v4}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_0

    .line 528
    :cond_4
    if-nez p3, :cond_6

    const-string/jumbo v0, "JOSE"

    invoke-static {p1, p3, v3, v0}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 529
    const/16 v0, 0x41

    invoke-virtual {p2, v6, v0}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 540
    :cond_5
    :goto_2
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    if-ne v0, v6, :cond_a

    .line 541
    add-int/lit8 p3, p3, 0x2

    goto :goto_1

    .line 530
    :cond_6
    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/helpshift/external/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez p4, :cond_8

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x41

    if-eq v0, v1, :cond_7

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x4f

    if-ne v0, v1, :cond_8

    .line 532
    :cond_7
    invoke-virtual {p2, v6, v4}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_2

    .line 533
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_9

    .line 534
    const/16 v0, 0x20

    invoke-virtual {p2, v6, v0}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_2

    .line 535
    :cond_9
    add-int/lit8 v0, p3, 0x1

    sget-object v1, Lcom/helpshift/external/DoubleMetaphone;->L_T_K_S_N_M_B_Z:[Ljava/lang/String;

    invoke-static {p1, v0, v2, v1}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    add-int/lit8 v1, p3, -0x1

    const-string/jumbo v3, "S"

    const-string/jumbo v4, "K"

    const-string/jumbo v5, "L"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 537
    invoke-virtual {p2, v6}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_2

    .line 543
    :cond_a
    add-int/lit8 p3, p3, 0x1

    goto :goto_1
.end method

.method private handleL(Ljava/lang/String;Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .prologue
    const/16 v1, 0x4c

    .line 553
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    if-ne v0, v1, :cond_1

    .line 554
    invoke-direct {p0, p1, p3}, Lcom/helpshift/external/DoubleMetaphone;->conditionL0(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {p2, v1}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->appendPrimary(C)V

    .line 559
    :goto_0
    add-int/lit8 p3, p3, 0x2

    .line 564
    :goto_1
    return p3

    .line 557
    :cond_0
    invoke-virtual {p2, v1}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 561
    :cond_1
    add-int/lit8 p3, p3, 0x1

    .line 562
    invoke-virtual {p2, v1}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1
.end method

.method private handleP(Ljava/lang/String;Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .prologue
    .line 571
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_0

    .line 572
    const/16 v0, 0x46

    invoke-virtual {p2, v0}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 573
    add-int/lit8 p3, p3, 0x2

    .line 578
    :goto_0
    return p3

    .line 575
    :cond_0
    const/16 v0, 0x50

    invoke-virtual {p2, v0}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 576
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    const-string/jumbo v2, "P"

    const-string/jumbo v3, "B"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 p3, p3, 0x2

    :goto_1
    goto :goto_0

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_1
.end method

.method private handleR(Ljava/lang/String;Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I
    .param p4, "slavoGermanic"    # Z

    .prologue
    const/4 v4, 0x2

    const/16 v3, 0x52

    .line 585
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_0

    if-nez p4, :cond_0

    add-int/lit8 v0, p3, -0x2

    const-string/jumbo v1, "IE"

    invoke-static {p1, v0, v4, v1}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p3, -0x4

    const-string/jumbo v1, "ME"

    const-string/jumbo v2, "MA"

    invoke-static {p1, v0, v4, v1, v2}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 588
    invoke-virtual {p2, v3}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    .line 592
    :goto_0
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    if-ne v0, v3, :cond_1

    add-int/lit8 v0, p3, 0x2

    :goto_1
    return v0

    .line 590
    :cond_0
    invoke-virtual {p2, v3}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 592
    :cond_1
    add-int/lit8 v0, p3, 0x1

    goto :goto_1
.end method

.method private handleS(Ljava/lang/String;Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 10
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I
    .param p4, "slavoGermanic"    # Z

    .prologue
    const/4 v4, 0x3

    const/4 v9, 0x2

    const/16 v8, 0x58

    const/4 v2, 0x1

    const/16 v7, 0x53

    .line 599
    add-int/lit8 v0, p3, -0x1

    const-string/jumbo v1, "ISL"

    const-string/jumbo v3, "YSL"

    invoke-static {p1, v0, v4, v1, v3}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    add-int/lit8 p3, p3, 0x1

    .line 641
    :goto_0
    return p3

    .line 602
    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x5

    const-string/jumbo v1, "SUGAR"

    invoke-static {p1, p3, v0, v1}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 604
    invoke-virtual {p2, v8, v7}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 605
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 606
    :cond_1
    const-string/jumbo v0, "SH"

    invoke-static {p1, p3, v9, v0}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 607
    add-int/lit8 v1, p3, 0x1

    const/4 v2, 0x4

    const-string/jumbo v3, "HEIM"

    const-string/jumbo v4, "HOEK"

    const-string/jumbo v5, "HOLM"

    const-string/jumbo v6, "HOLZ"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 609
    invoke-virtual {p2, v7}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 613
    :goto_1
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 611
    :cond_2
    invoke-virtual {p2, v8}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1

    .line 614
    :cond_3
    const-string/jumbo v0, "SIO"

    const-string/jumbo v1, "SIA"

    invoke-static {p1, p3, v4, v0, v1}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x4

    const-string/jumbo v1, "SIAN"

    invoke-static {p1, p3, v0, v1}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 616
    :cond_4
    if-eqz p4, :cond_5

    .line 617
    invoke-virtual {p2, v7}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 621
    :goto_2
    add-int/lit8 p3, p3, 0x3

    goto :goto_0

    .line 619
    :cond_5
    invoke-virtual {p2, v7, v8}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_2

    .line 622
    :cond_6
    if-nez p3, :cond_7

    add-int/lit8 v1, p3, 0x1

    const-string/jumbo v3, "M"

    const-string/jumbo v4, "N"

    const-string/jumbo v5, "L"

    const-string/jumbo v6, "W"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    add-int/lit8 v0, p3, 0x1

    const-string/jumbo v1, "Z"

    invoke-static {p1, v0, v2, v1}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 628
    :cond_8
    invoke-virtual {p2, v7, v8}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 629
    add-int/lit8 v0, p3, 0x1

    const-string/jumbo v1, "Z"

    invoke-static {p1, v0, v2, v1}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    add-int/lit8 p3, p3, 0x2

    :goto_3
    goto/16 :goto_0

    :cond_9
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 630
    :cond_a
    const-string/jumbo v0, "SC"

    invoke-static {p1, p3, v9, v0}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 631
    invoke-direct {p0, p1, p2, p3}, Lcom/helpshift/external/DoubleMetaphone;->handleSC(Ljava/lang/String;Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result p3

    goto/16 :goto_0

    .line 633
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_c

    add-int/lit8 v0, p3, -0x2

    const-string/jumbo v1, "AI"

    const-string/jumbo v3, "OI"

    invoke-static {p1, v0, v9, v1, v3}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 635
    invoke-virtual {p2, v7}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    .line 639
    :goto_4
    add-int/lit8 v0, p3, 0x1

    const-string/jumbo v1, "S"

    const-string/jumbo v3, "Z"

    invoke-static {p1, v0, v2, v1, v3}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    add-int/lit8 p3, p3, 0x2

    :goto_5
    goto/16 :goto_0

    .line 637
    :cond_c
    invoke-virtual {p2, v7}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_4

    .line 639
    :cond_d
    add-int/lit8 p3, p3, 0x1

    goto :goto_5
.end method

.method private handleSC(Ljava/lang/String;Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 12
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .prologue
    const/16 v11, 0x58

    const/16 v10, 0x53

    const/4 v9, 0x3

    const/4 v2, 0x2

    .line 648
    add-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_3

    .line 650
    add-int/lit8 v1, p3, 0x3

    const-string/jumbo v3, "OO"

    const-string/jumbo v4, "ER"

    const-string/jumbo v5, "EN"

    const-string/jumbo v6, "UY"

    const-string/jumbo v7, "ED"

    const-string/jumbo v8, "EM"

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 652
    add-int/lit8 v0, p3, 0x3

    const-string/jumbo v1, "ER"

    const-string/jumbo v3, "EN"

    invoke-static {p1, v0, v2, v1, v3}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    const-string/jumbo v0, "X"

    const-string/jumbo v1, "SK"

    invoke-virtual {p2, v0, v1}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    :goto_0
    add-int/lit8 v0, p3, 0x3

    return v0

    .line 656
    :cond_0
    const-string/jumbo v0, "SK"

    invoke-virtual {p2, v0}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    goto :goto_0

    .line 659
    :cond_1
    if-nez p3, :cond_2

    invoke-virtual {p0, p1, v9}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/helpshift/external/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1, v9}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x57

    if-eq v0, v1, :cond_2

    .line 660
    invoke-virtual {p2, v11, v10}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_0

    .line 662
    :cond_2
    invoke-virtual {p2, v11}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 665
    :cond_3
    add-int/lit8 v1, p3, 0x2

    const/4 v2, 0x1

    const-string/jumbo v3, "I"

    const-string/jumbo v4, "E"

    const-string/jumbo v5, "Y"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 666
    invoke-virtual {p2, v10}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 668
    :cond_4
    const-string/jumbo v0, "SK"

    invoke-virtual {p2, v0}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleT(Ljava/lang/String;Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/16 v4, 0x54

    const/4 v3, 0x3

    .line 677
    const-string/jumbo v0, "TION"

    invoke-static {p1, p3, v7, v0}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    const/16 v0, 0x58

    invoke-virtual {p2, v0}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 679
    add-int/lit8 p3, p3, 0x3

    .line 697
    :goto_0
    return p3

    .line 680
    :cond_0
    const-string/jumbo v0, "TIA"

    const-string/jumbo v1, "TCH"

    invoke-static {p1, p3, v3, v0, v1}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    const/16 v0, 0x58

    invoke-virtual {p2, v0}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 682
    add-int/lit8 p3, p3, 0x3

    goto :goto_0

    .line 683
    :cond_1
    const-string/jumbo v0, "TH"

    invoke-static {p1, p3, v6, v0}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "TTH"

    invoke-static {p1, p3, v3, v0}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 684
    :cond_2
    add-int/lit8 v0, p3, 0x2

    const-string/jumbo v1, "OM"

    const-string/jumbo v2, "AM"

    invoke-static {p1, v0, v6, v1, v2}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "VAN "

    const-string/jumbo v1, "VON "

    invoke-static {p1, v5, v7, v0, v1}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "SCH"

    invoke-static {p1, v5, v3, v0}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 688
    :cond_3
    invoke-virtual {p2, v4}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 692
    :goto_1
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 690
    :cond_4
    const/16 v0, 0x30

    invoke-virtual {p2, v0, v4}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_1

    .line 694
    :cond_5
    invoke-virtual {p2, v4}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 695
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    const-string/jumbo v2, "T"

    const-string/jumbo v3, "D"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 p3, p3, 0x2

    :goto_2
    goto :goto_0

    :cond_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_2
.end method

.method private handleW(Ljava/lang/String;Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .prologue
    const/16 v7, 0x46

    const/16 v2, 0x41

    const/4 v1, 0x2

    .line 704
    const-string/jumbo v0, "WR"

    invoke-static {p1, p3, v1, v0}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    const/16 v0, 0x52

    invoke-virtual {p2, v0}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 707
    add-int/lit8 p3, p3, 0x2

    .line 733
    :goto_0
    return p3

    .line 709
    :cond_0
    if-nez p3, :cond_3

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/helpshift/external/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "WH"

    invoke-static {p1, p3, v1, v0}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 711
    :cond_1
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/helpshift/external/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 713
    invoke-virtual {p2, v2, v7}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 718
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 716
    :cond_2
    invoke-virtual {p2, v2}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1

    .line 719
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_4

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/helpshift/external/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    add-int/lit8 v1, p3, -0x1

    const/4 v2, 0x5

    const-string/jumbo v3, "EWSKI"

    const-string/jumbo v4, "EWSKY"

    const-string/jumbo v5, "OWSKI"

    const-string/jumbo v6, "OWSKY"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x3

    const-string/jumbo v2, "SCH"

    invoke-static {p1, v0, v1, v2}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 723
    :cond_5
    invoke-virtual {p2, v7}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    .line 724
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 725
    :cond_6
    const/4 v0, 0x4

    const-string/jumbo v1, "WICZ"

    const-string/jumbo v2, "WITZ"

    invoke-static {p1, p3, v0, v1, v2}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 727
    const-string/jumbo v0, "TS"

    const-string/jumbo v1, "FX"

    invoke-virtual {p2, v0, v1}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    add-int/lit8 p3, p3, 0x4

    goto/16 :goto_0

    .line 730
    :cond_7
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0
.end method

.method private handleX(Ljava/lang/String;Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .prologue
    .line 740
    if-nez p3, :cond_0

    .line 741
    const/16 v0, 0x53

    invoke-virtual {p2, v0}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 742
    add-int/lit8 p3, p3, 0x1

    .line 752
    :goto_0
    return p3

    .line 744
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_1

    add-int/lit8 v0, p3, -0x3

    const/4 v1, 0x3

    const-string/jumbo v2, "IAU"

    const-string/jumbo v3, "EAU"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v0, p3, -0x2

    const/4 v1, 0x2

    const-string/jumbo v2, "AU"

    const-string/jumbo v3, "OU"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 748
    :cond_1
    const-string/jumbo v0, "KS"

    invoke-virtual {p2, v0}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    .line 750
    :cond_2
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    const-string/jumbo v2, "C"

    const-string/jumbo v3, "X"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 p3, p3, 0x2

    :goto_1
    goto :goto_0

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1
.end method

.method private handleZ(Ljava/lang/String;Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I
    .param p4, "slavoGermanic"    # Z

    .prologue
    .line 759
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_0

    .line 761
    const/16 v0, 0x4a

    invoke-virtual {p2, v0}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 762
    add-int/lit8 p3, p3, 0x2

    .line 772
    :goto_0
    return p3

    .line 764
    :cond_0
    add-int/lit8 v1, p3, 0x1

    const/4 v2, 0x2

    const-string/jumbo v3, "ZO"

    const-string/jumbo v4, "ZI"

    const-string/jumbo v5, "ZA"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/helpshift/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_2

    if-lez p3, :cond_2

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x54

    if-eq v0, v1, :cond_2

    .line 766
    :cond_1
    const-string/jumbo v0, "S"

    const-string/jumbo v1, "TS"

    invoke-virtual {p2, v0, v1}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    :goto_1
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_3

    add-int/lit8 p3, p3, 0x2

    :goto_2
    goto :goto_0

    .line 768
    :cond_2
    const/16 v0, 0x53

    invoke-virtual {p2, v0}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1

    .line 770
    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_2
.end method

.method private isSilentStart(Ljava/lang/String;)Z
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 874
    const/4 v4, 0x0

    .line 875
    .local v4, "result":Z
    sget-object v0, Lcom/helpshift/external/DoubleMetaphone;->SILENT_START:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 876
    .local v1, "element":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 877
    const/4 v4, 0x1

    .line 881
    .end local v1    # "element":Ljava/lang/String;
    :cond_0
    return v4

    .line 875
    .restart local v1    # "element":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private isSlavoGermanic(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 857
    const/16 v0, 0x57

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gt v0, v1, :cond_0

    const/16 v0, 0x4b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string/jumbo v0, "CZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string/jumbo v0, "WITZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVowel(C)Z
    .locals 2
    .param p1, "ch"    # C

    .prologue
    .line 865
    const-string/jumbo v0, "AEIOUY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected charAt(Ljava/lang/String;I)C
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 904
    if-ltz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 905
    :cond_0
    const/4 v0, 0x0

    .line 907
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/external/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "alternate"    # Z

    .prologue
    const/16 v7, 0x4e

    const/16 v6, 0x4b

    const/16 v5, 0x46

    .line 91
    invoke-direct {p0, p1}, Lcom/helpshift/external/DoubleMetaphone;->cleanInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 92
    if-nez p1, :cond_0

    .line 93
    const/4 v3, 0x0

    .line 194
    :goto_0
    return-object v3

    .line 96
    :cond_0
    invoke-direct {p0, p1}, Lcom/helpshift/external/DoubleMetaphone;->isSlavoGermanic(Ljava/lang/String;)Z

    move-result v2

    .line 97
    .local v2, "slavoGermanic":Z
    invoke-direct {p0, p1}, Lcom/helpshift/external/DoubleMetaphone;->isSilentStart(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 99
    .local v0, "index":I
    :goto_1
    new-instance v1, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;

    invoke-virtual {p0}, Lcom/helpshift/external/DoubleMetaphone;->getMaxCodeLen()I

    move-result v3

    invoke-direct {v1, p0, v3}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;-><init>(Lcom/helpshift/external/DoubleMetaphone;I)V

    .line 101
    .local v1, "result":Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;
    :goto_2
    invoke-virtual {v1}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->isComplete()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v0, v3, :cond_9

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 189
    add-int/lit8 v0, v0, 0x1

    .line 190
    goto :goto_2

    .line 97
    .end local v0    # "index":I
    .end local v1    # "result":Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 109
    .restart local v0    # "index":I
    .restart local v1    # "result":Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;
    :sswitch_0
    invoke-direct {p0, v1, v0}, Lcom/helpshift/external/DoubleMetaphone;->handleAEIOUY(Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    .line 110
    goto :goto_2

    .line 112
    :sswitch_1
    const/16 v3, 0x50

    invoke-virtual {v1, v3}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 113
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    const/16 v4, 0x42

    if-ne v3, v4, :cond_2

    add-int/lit8 v0, v0, 0x2

    .line 114
    :goto_3
    goto :goto_2

    .line 113
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 117
    :sswitch_2
    const/16 v3, 0x53

    invoke-virtual {v1, v3}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 118
    add-int/lit8 v0, v0, 0x1

    .line 119
    goto :goto_2

    .line 121
    :sswitch_3
    invoke-direct {p0, p1, v1, v0}, Lcom/helpshift/external/DoubleMetaphone;->handleC(Ljava/lang/String;Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    .line 122
    goto :goto_2

    .line 124
    :sswitch_4
    invoke-direct {p0, p1, v1, v0}, Lcom/helpshift/external/DoubleMetaphone;->handleD(Ljava/lang/String;Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    .line 125
    goto :goto_2

    .line 127
    :sswitch_5
    invoke-virtual {v1, v5}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 128
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    if-ne v3, v5, :cond_3

    add-int/lit8 v0, v0, 0x2

    .line 129
    :goto_4
    goto :goto_2

    .line 128
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 131
    :sswitch_6
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/helpshift/external/DoubleMetaphone;->handleG(Ljava/lang/String;Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v0

    .line 132
    goto :goto_2

    .line 134
    :sswitch_7
    invoke-direct {p0, p1, v1, v0}, Lcom/helpshift/external/DoubleMetaphone;->handleH(Ljava/lang/String;Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    .line 135
    goto :goto_2

    .line 137
    :sswitch_8
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/helpshift/external/DoubleMetaphone;->handleJ(Ljava/lang/String;Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v0

    .line 138
    goto :goto_2

    .line 140
    :sswitch_9
    invoke-virtual {v1, v6}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 141
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    if-ne v3, v6, :cond_4

    add-int/lit8 v0, v0, 0x2

    .line 142
    :goto_5
    goto :goto_2

    .line 141
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 144
    :sswitch_a
    invoke-direct {p0, p1, v1, v0}, Lcom/helpshift/external/DoubleMetaphone;->handleL(Ljava/lang/String;Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    .line 145
    goto :goto_2

    .line 147
    :sswitch_b
    const/16 v3, 0x4d

    invoke-virtual {v1, v3}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 148
    invoke-direct {p0, p1, v0}, Lcom/helpshift/external/DoubleMetaphone;->conditionM0(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v0, v0, 0x2

    .line 149
    :goto_6
    goto/16 :goto_2

    .line 148
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 151
    :sswitch_c
    invoke-virtual {v1, v7}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 152
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    if-ne v3, v7, :cond_6

    add-int/lit8 v0, v0, 0x2

    .line 153
    :goto_7
    goto/16 :goto_2

    .line 152
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 156
    :sswitch_d
    invoke-virtual {v1, v7}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 157
    add-int/lit8 v0, v0, 0x1

    .line 158
    goto/16 :goto_2

    .line 160
    :sswitch_e
    invoke-direct {p0, p1, v1, v0}, Lcom/helpshift/external/DoubleMetaphone;->handleP(Ljava/lang/String;Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    .line 161
    goto/16 :goto_2

    .line 163
    :sswitch_f
    invoke-virtual {v1, v6}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 164
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    const/16 v4, 0x51

    if-ne v3, v4, :cond_7

    add-int/lit8 v0, v0, 0x2

    .line 165
    :goto_8
    goto/16 :goto_2

    .line 164
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 167
    :sswitch_10
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/helpshift/external/DoubleMetaphone;->handleR(Ljava/lang/String;Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v0

    .line 168
    goto/16 :goto_2

    .line 170
    :sswitch_11
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/helpshift/external/DoubleMetaphone;->handleS(Ljava/lang/String;Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v0

    .line 171
    goto/16 :goto_2

    .line 173
    :sswitch_12
    invoke-direct {p0, p1, v1, v0}, Lcom/helpshift/external/DoubleMetaphone;->handleT(Ljava/lang/String;Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    .line 174
    goto/16 :goto_2

    .line 176
    :sswitch_13
    invoke-virtual {v1, v5}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 177
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/helpshift/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    const/16 v4, 0x56

    if-ne v3, v4, :cond_8

    add-int/lit8 v0, v0, 0x2

    .line 178
    :goto_9
    goto/16 :goto_2

    .line 177
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 180
    :sswitch_14
    invoke-direct {p0, p1, v1, v0}, Lcom/helpshift/external/DoubleMetaphone;->handleW(Ljava/lang/String;Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    .line 181
    goto/16 :goto_2

    .line 183
    :sswitch_15
    invoke-direct {p0, p1, v1, v0}, Lcom/helpshift/external/DoubleMetaphone;->handleX(Ljava/lang/String;Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    .line 184
    goto/16 :goto_2

    .line 186
    :sswitch_16
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/helpshift/external/DoubleMetaphone;->handleZ(Ljava/lang/String;Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v0

    .line 187
    goto/16 :goto_2

    .line 194
    :cond_9
    if-eqz p2, :cond_a

    invoke-virtual {v1}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->getAlternate()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v1}, Lcom/helpshift/external/DoubleMetaphone$DoubleMetaphoneResult;->getPrimary()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 102
    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_0
        0x42 -> :sswitch_1
        0x43 -> :sswitch_3
        0x44 -> :sswitch_4
        0x45 -> :sswitch_0
        0x46 -> :sswitch_5
        0x47 -> :sswitch_6
        0x48 -> :sswitch_7
        0x49 -> :sswitch_0
        0x4a -> :sswitch_8
        0x4b -> :sswitch_9
        0x4c -> :sswitch_a
        0x4d -> :sswitch_b
        0x4e -> :sswitch_c
        0x4f -> :sswitch_0
        0x50 -> :sswitch_e
        0x51 -> :sswitch_f
        0x52 -> :sswitch_10
        0x53 -> :sswitch_11
        0x54 -> :sswitch_12
        0x55 -> :sswitch_0
        0x56 -> :sswitch_13
        0x57 -> :sswitch_14
        0x58 -> :sswitch_15
        0x59 -> :sswitch_0
        0x5a -> :sswitch_16
        0xc7 -> :sswitch_2
        0xd1 -> :sswitch_d
    .end sparse-switch
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/external/EncoderException;
        }
    .end annotation

    .prologue
    .line 207
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Lcom/helpshift/external/EncoderException;

    const-string/jumbo v1, "DoubleMetaphone encode parameter is not of type String"

    invoke-direct {v0, v1}, Lcom/helpshift/external/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_0
    check-cast p1, Ljava/lang/String;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/helpshift/external/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lcom/helpshift/external/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCodeLen()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/helpshift/external/DoubleMetaphone;->maxCodeLen:I

    return v0
.end method

.method public isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "value1"    # Ljava/lang/String;
    .param p2, "value2"    # Ljava/lang/String;

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/helpshift/external/DoubleMetaphone;->isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "value1"    # Ljava/lang/String;
    .param p2, "value2"    # Ljava/lang/String;
    .param p3, "alternate"    # Z

    .prologue
    .line 249
    invoke-virtual {p0, p1, p3}, Lcom/helpshift/external/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, p3}, Lcom/helpshift/external/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setMaxCodeLen(I)V
    .locals 0
    .param p1, "maxCodeLen"    # I

    .prologue
    .line 265
    iput p1, p0, Lcom/helpshift/external/DoubleMetaphone;->maxCodeLen:I

    .line 266
    return-void
.end method
