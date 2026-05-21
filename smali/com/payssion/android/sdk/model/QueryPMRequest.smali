.class public Lcom/payssion/android/sdk/model/QueryPMRequest;
.super Lcom/payssion/android/sdk/model/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/payssion/android/sdk/model/d;-><init>()V

    const-string/jumbo v0, "pm/query"

    invoke-virtual {p0, v0}, Lcom/payssion/android/sdk/model/QueryPMRequest;->setMethod(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected prepareParams(Lcom/a/a/a/i;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/payssion/android/sdk/model/d;->prepareParams(Lcom/a/a/a/i;)V

    const-string/jumbo v0, "api_key"

    invoke-virtual {p1, v0, v3}, Lcom/a/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "country"

    invoke-virtual {p1, v0, v3}, Lcom/a/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pm_type"

    invoke-virtual {p1, v0, v3}, Lcom/a/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "|"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/payssion/android/sdk/a/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payssion/android/sdk/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "api_sig"

    invoke-virtual {p1, v1, v0}, Lcom/a/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public validate(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    aput-object v4, v2, v0

    aput-object v4, v2, v1

    const/4 v3, 0x2

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/payssion/android/sdk/a/a;->a([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
