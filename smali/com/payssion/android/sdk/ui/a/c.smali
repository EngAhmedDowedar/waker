.class public final Lcom/payssion/android/sdk/ui/a/c;
.super Lcom/payssion/android/sdk/ui/a/t;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/payssion/android/sdk/ui/a/t;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 9

    const/16 v1, 0x30

    const/16 v8, 0x9

    const/16 v4, 0xb

    const/16 v7, 0xa

    const/4 v2, 0x0

    if-nez p0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "00000000000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "11111111111"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "22222222222"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "33333333333"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "44444444444"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "55555555555"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "66666666666"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "77777777777"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "88888888888"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "99999999999"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v4, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v7

    move v3, v2

    move v5, v2

    :goto_1
    if-lt v3, v8, :cond_5

    :try_start_0
    rem-int/lit8 v0, v5, 0xb

    rsub-int/lit8 v0, v0, 0xb

    if-eq v0, v7, :cond_3

    if-ne v0, v4, :cond_6

    :cond_3
    move v0, v1

    :goto_2
    move v3, v4

    move v5, v2

    move v6, v2

    :goto_3
    if-lt v5, v7, :cond_7

    rem-int/lit8 v3, v6, 0xb

    rsub-int/lit8 v3, v3, 0xb

    if-eq v3, v7, :cond_4

    if-ne v3, v4, :cond_8

    :cond_4
    :goto_4
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v0, v3, :cond_9

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v1, v0, :cond_9

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x30

    mul-int/2addr v6, v0

    add-int/2addr v5, v6

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    add-int/lit8 v8, v8, -0x30

    mul-int/2addr v8, v3

    add-int/2addr v6, v8

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    add-int/lit8 v1, v3, 0x30

    int-to-char v1, v1

    goto :goto_4

    :cond_9
    move v0, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Landroid/widget/EditText;)Z
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/payssion/android/sdk/ui/widget/FormEdit;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/payssion/android/sdk/ui/widget/FormEdit;

    invoke-virtual {p1}, Lcom/payssion/android/sdk/ui/widget/FormEdit;->c()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/payssion/android/sdk/ui/a/c;->a(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
