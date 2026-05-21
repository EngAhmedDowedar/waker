.class public final Lcom/payssion/android/sdk/ui/a/e;
.super Lcom/payssion/android/sdk/ui/a/t;


# instance fields
.field private a:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/payssion/android/sdk/ui/a/t;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "DefaultDate"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "DefaultTime"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "DefaultDateTime"

    aput-object v2, v0, v1

    :goto_0
    iput-object v0, p0, Lcom/payssion/android/sdk/ui/a/e;->a:[Ljava/lang/String;

    return-void

    :cond_0
    const-string/jumbo v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/widget/EditText;)Z
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/payssion/android/sdk/ui/a/e;->a:[Ljava/lang/String;

    array-length v6, v5

    move v3, v1

    :goto_1
    if-lt v3, v6, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    aget-object v7, v5, v3

    const-string/jumbo v2, "DefaultDate"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v2

    :goto_2
    :try_start_0
    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_0

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "DefaultTime"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Ljava/text/SimpleDateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v2

    goto :goto_2

    :cond_4
    const-string/jumbo v2, "DefaultDateTime"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v2

    goto :goto_2

    :cond_5
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method
