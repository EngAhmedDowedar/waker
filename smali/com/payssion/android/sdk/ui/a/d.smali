.class public final Lcom/payssion/android/sdk/ui/a/d;
.super Lcom/payssion/android/sdk/ui/a/t;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/payssion/android/sdk/ui/a/t;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/EditText;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v4, v1

    move v5, v1

    :goto_0
    if-gez v3, :cond_1

    rem-int/lit8 v0, v5, 0xa

    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    :goto_1
    return v1

    :cond_1
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v6, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v4, :cond_2

    shl-int/lit8 v0, v0, 0x1

    const/16 v7, 0x9

    if-le v0, v7, :cond_2

    add-int/lit8 v0, v0, -0x9

    :cond_2
    add-int/2addr v5, v0

    if-eqz v4, :cond_3

    move v0, v1

    :goto_2
    add-int/lit8 v3, v3, -0x1

    move v4, v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1
.end method
