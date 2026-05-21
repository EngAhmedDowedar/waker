.class public Lcom/payssion/android/sdk/model/PayResponse;
.super Lcom/payssion/android/sdk/model/PayssionResponse;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/List;

.field private k:Ljava/util/List;

.field private l:I

.field private m:I

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/payssion/android/sdk/model/PayssionResponse;-><init>(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "pending"

    iput-object v0, p0, Lcom/payssion/android/sdk/model/PayResponse;->a:Ljava/lang/String;

    const-string/jumbo v0, "transaction"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "app_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/payssion/android/sdk/model/PayResponse;->b:Ljava/lang/String;

    const-string/jumbo v1, "transaction_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/payssion/android/sdk/model/PayResponse;->c:Ljava/lang/String;

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/payssion/android/sdk/model/PayResponse;->a:Ljava/lang/String;

    const-string/jumbo v1, "amount"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/payssion/android/sdk/model/PayResponse;->d:Ljava/lang/String;

    const-string/jumbo v1, "track_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/payssion/android/sdk/model/PayResponse;->e:Ljava/lang/String;

    const-string/jumbo v1, "sub_track_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payssion/android/sdk/model/PayResponse;->f:Ljava/lang/String;

    :cond_0
    const-string/jumbo v0, "device_support"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/payssion/android/sdk/model/PayResponse;->parseDeviceSupport(Ljava/lang/String;)V

    const-string/jumbo v0, "todo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/payssion/android/sdk/model/PayResponse;->parseTodo(Ljava/lang/String;)V

    iget v0, p0, Lcom/payssion/android/sdk/model/PayResponse;->l:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/a/a/a/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "bankaccount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/payssion/android/sdk/model/PayResponse;->parseBankAccount(Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    const-string/jumbo v0, "redirect_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payssion/android/sdk/model/PayResponse;->i:Ljava/lang/String;

    return-void

    :cond_2
    const-string/jumbo v0, "response"

    const-string/jumbo v1, "bank account is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/payssion/android/sdk/model/PayResponse;->l:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/a/a/a/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "form"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v0}, Lcom/payssion/android/sdk/model/PayResponse;->parseForm(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "response"

    const-string/jumbo v1, "form is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseBankAccount(Lorg/json/JSONObject;)V
    .locals 7

    const/4 v1, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/payssion/android/sdk/model/PayResponse;->j:Ljava/util/List;

    const-string/jumbo v0, "show_order"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_1

    :cond_0
    return-void

    :cond_1
    aget-object v4, v2, v0

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    aput-object v5, v6, v1

    invoke-static {v6}, Lcom/payssion/android/sdk/a/a;->a([Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Lcom/payssion/android/sdk/model/a;

    invoke-direct {v6}, Lcom/payssion/android/sdk/model/a;-><init>()V

    iput-object v4, v6, Lcom/payssion/android/sdk/model/a;->g:Ljava/lang/String;

    iput-object v5, v6, Lcom/payssion/android/sdk/model/a;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/payssion/android/sdk/model/PayResponse;->j:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private parseForm(Lorg/json/JSONObject;)V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/payssion/android/sdk/model/PayResponse;->k:Ljava/util/List;

    const-string/jumbo v0, "show_order"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    :cond_0
    return-void

    :cond_1
    aget-object v0, v2, v1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v4, Lcom/payssion/android/sdk/model/b;

    invoke-direct {v4}, Lcom/payssion/android/sdk/model/b;-><init>()V

    const-string/jumbo v5, "key"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/payssion/android/sdk/model/b;->g:Ljava/lang/String;

    const-string/jumbo v5, "type"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "edit"

    invoke-virtual {v6, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5

    const/4 v5, 0x1

    iput v5, v4, Lcom/payssion/android/sdk/model/b;->a:I

    :cond_2
    :goto_1
    const-string/jumbo v5, "tips"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/payssion/android/sdk/model/b;->b:Ljava/lang/String;

    const-string/jumbo v5, "errmsg"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/payssion/android/sdk/model/b;->c:Ljava/lang/String;

    const-string/jumbo v5, "regex"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/payssion/android/sdk/model/b;->d:Ljava/lang/String;

    const-string/jumbo v5, "mask"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/payssion/android/sdk/model/b;->e:Ljava/lang/String;

    const-string/jumbo v5, "value"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    iput-object v7, v4, Lcom/payssion/android/sdk/model/b;->f:Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Lcom/payssion/android/sdk/model/PayResponse;->k:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_5
    const-string/jumbo v6, "checkbox"

    invoke-virtual {v6, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_6

    const/4 v5, 0x2

    iput v5, v4, Lcom/payssion/android/sdk/model/b;->a:I

    goto :goto_1

    :cond_6
    const-string/jumbo v6, "select"

    invoke-virtual {v6, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_7

    const/4 v5, 0x3

    iput v5, v4, Lcom/payssion/android/sdk/model/b;->a:I

    goto :goto_1

    :cond_7
    const-string/jumbo v6, "cpf"

    invoke-virtual {v6, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_8

    const/4 v5, 0x4

    iput v5, v4, Lcom/payssion/android/sdk/model/b;->a:I

    goto :goto_1

    :cond_8
    const-string/jumbo v6, "date"

    invoke-virtual {v6, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_9

    const/4 v5, 0x5

    iput v5, v4, Lcom/payssion/android/sdk/model/b;->a:I

    goto :goto_1

    :cond_9
    const-string/jumbo v6, "number"

    invoke-virtual {v6, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_a

    const/4 v5, 0x6

    iput v5, v4, Lcom/payssion/android/sdk/model/b;->a:I

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v6, "email"

    invoke-virtual {v6, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x7

    iput v5, v4, Lcom/payssion/android/sdk/model/b;->a:I

    goto/16 :goto_1

    :cond_b
    new-instance v8, Lcom/payssion/android/sdk/model/c;

    invoke-direct {v8}, Lcom/payssion/android/sdk/model/c;-><init>()V

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v8, Lcom/payssion/android/sdk/model/c;->g:Ljava/lang/String;

    iget-object v0, v8, Lcom/payssion/android/sdk/model/c;->g:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/payssion/android/sdk/model/c;->h:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method


# virtual methods
.method public addBankAccountInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/payssion/android/sdk/model/PayResponse;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/payssion/android/sdk/model/a;

    invoke-direct {v0}, Lcom/payssion/android/sdk/model/a;-><init>()V

    iput-object p1, v0, Lcom/payssion/android/sdk/model/a;->g:Ljava/lang/String;

    iput-object p2, v0, Lcom/payssion/android/sdk/model/a;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/payssion/android/sdk/model/PayResponse;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public checkDevice(I)Z
    .locals 1

    iget v0, p0, Lcom/payssion/android/sdk/model/PayResponse;->m:I

    invoke-static {v0, p1}, Lcom/a/a/a/a;->a(II)Z

    move-result v0

    return v0
.end method

.method public checkTodo(I)Z
    .locals 1

    iget v0, p0, Lcom/payssion/android/sdk/model/PayResponse;->l:I

    invoke-static {v0, p1}, Lcom/a/a/a/a;->a(II)Z

    move-result v0

    return v0
.end method

.method public getAmount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/model/PayResponse;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/model/PayResponse;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getBankAccount()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/model/PayResponse;->j:Ljava/util/List;

    return-object v0
.end method

.method public getFirstTodoStr()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/payssion/android/sdk/model/PayResponse;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "instruct"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/payssion/android/sdk/model/PayResponse;->n:Ljava/lang/String;

    goto :goto_0
.end method

.method public getForm()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/model/PayResponse;->k:Ljava/util/List;

    return-object v0
.end method

.method public getPMId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/model/PayResponse;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getPayerEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/model/PayResponse;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/model/PayResponse;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/model/PayResponse;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/payssion/android/sdk/model/PayssionResponse;->translateState(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getStateStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/model/PayResponse;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTrackId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/model/PayResponse;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getTodo()I
    .locals 1

    iget v0, p0, Lcom/payssion/android/sdk/model/PayResponse;->l:I

    return v0
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/model/PayResponse;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/model/PayResponse;->c:Ljava/lang/String;

    return-object v0
.end method

.method public isBankTransferAvailable()Z
    .locals 3

    iget-object v0, p0, Lcom/payssion/android/sdk/model/PayResponse;->j:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payssion/android/sdk/model/PayResponse;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payssion/android/sdk/model/a;

    const-string/jumbo v2, "Referencia"

    iget-object v0, v0, Lcom/payssion/android/sdk/model/a;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public parseDeviceSupport(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v0, v1

    if-lez v0, :cond_0

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    aget-object v3, v1, v0

    const-string/jumbo v4, "PC"

    invoke-virtual {v4, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    iget v3, p0, Lcom/payssion/android/sdk/model/PayResponse;->m:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/payssion/android/sdk/model/PayResponse;->m:I

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "MOBILE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    iget v3, p0, Lcom/payssion/android/sdk/model/PayResponse;->m:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/payssion/android/sdk/model/PayResponse;->m:I

    goto :goto_1

    :cond_4
    const-string/jumbo v4, "TABLET"

    invoke-virtual {v4, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/payssion/android/sdk/model/PayResponse;->m:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/payssion/android/sdk/model/PayResponse;->m:I

    goto :goto_1
.end method

.method public parseTodo(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const-string/jumbo v1, "\\|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    aget-object v2, v1, v0

    iput-object v2, p0, Lcom/payssion/android/sdk/model/PayResponse;->n:Ljava/lang/String;

    array-length v2, v1

    :goto_0
    if-lt v0, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    aget-object v3, v1, v0

    const-string/jumbo v4, "redirect"

    invoke-virtual {v4, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    iget v3, p0, Lcom/payssion/android/sdk/model/PayResponse;->l:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/payssion/android/sdk/model/PayResponse;->l:I

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "fillform"

    invoke-virtual {v4, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    iget v3, p0, Lcom/payssion/android/sdk/model/PayResponse;->l:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/payssion/android/sdk/model/PayResponse;->l:I

    goto :goto_1

    :cond_4
    const-string/jumbo v4, "calltp"

    invoke-virtual {v4, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_5

    iget v3, p0, Lcom/payssion/android/sdk/model/PayResponse;->l:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/payssion/android/sdk/model/PayResponse;->l:I

    goto :goto_1

    :cond_5
    const-string/jumbo v4, "instruct"

    invoke-virtual {v4, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/payssion/android/sdk/model/PayResponse;->l:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/payssion/android/sdk/model/PayResponse;->l:I

    goto :goto_1
.end method

.method public setPMId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/model/PayResponse;->g:Ljava/lang/String;

    return-void
.end method

.method public setPayerEmail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/model/PayResponse;->h:Ljava/lang/String;

    return-void
.end method
