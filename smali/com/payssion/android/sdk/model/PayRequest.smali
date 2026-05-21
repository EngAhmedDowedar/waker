.class public Lcom/payssion/android/sdk/model/PayRequest;
.super Lcom/payssion/android/sdk/model/d;


# instance fields
.field protected a:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:D

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/payssion/android/sdk/model/d;-><init>()V

    const-string/jumbo v0, "payment/create"

    invoke-virtual {p0, v0}, Lcom/payssion/android/sdk/model/PayRequest;->setMethod(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/payssion/android/sdk/model/PayRequest;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/payssion/android/sdk/model/d;-><init>(Lcom/payssion/android/sdk/model/d;)V

    const-string/jumbo v0, "payment/create"

    invoke-virtual {p0, v0}, Lcom/payssion/android/sdk/model/PayRequest;->setMethod(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/payssion/android/sdk/model/PayRequest;->getPMId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payssion/android/sdk/model/PayRequest;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/payssion/android/sdk/model/PayRequest;->getAmount()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/payssion/android/sdk/model/PayRequest;->f:D

    invoke-virtual {p1}, Lcom/payssion/android/sdk/model/PayRequest;->getCurrency()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payssion/android/sdk/model/PayRequest;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/payssion/android/sdk/model/PayRequest;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payssion/android/sdk/model/PayRequest;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/payssion/android/sdk/model/PayRequest;->getTrackId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payssion/android/sdk/model/PayRequest;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/payssion/android/sdk/model/PayRequest;->getSubTrackId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payssion/android/sdk/model/PayRequest;->j:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/payssion/android/sdk/model/PayRequest;->getPayerName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payssion/android/sdk/model/PayRequest;->k:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/payssion/android/sdk/model/PayRequest;->getPayerEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payssion/android/sdk/model/PayRequest;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/payssion/android/sdk/model/PayRequest;->getPayerRef()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payssion/android/sdk/model/PayRequest;->l:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/payssion/android/sdk/model/PayRequest;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payssion/android/sdk/model/PayRequest;->m:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/payssion/android/sdk/model/PayRequest;->isLiveMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/payssion/android/sdk/model/PayRequest;->d:Z

    return-void
.end method


# virtual methods
.method public getAmount()D
    .locals 2

    iget-wide v0, p0, Lcom/payssion/android/sdk/model/PayRequest;->f:D

    return-wide v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/model/PayRequest;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/model/PayRequest;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/model/PayRequest;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getPMId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/model/PayRequest;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getPayerEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/model/PayRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPayerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/model/PayRequest;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getPayerRef()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/model/PayRequest;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTrackId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/model/PayRequest;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/model/PayRequest;->i:Ljava/lang/String;

    return-object v0
.end method

.method public isLiveMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/payssion/android/sdk/model/PayRequest;->d:Z

    return v0
.end method

.method public moreInfoNeeded()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    iget-object v3, p0, Lcom/payssion/android/sdk/model/PayRequest;->a:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/payssion/android/sdk/a/a;->a([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-array v2, v0, [Ljava/lang/String;

    iget-object v3, p0, Lcom/payssion/android/sdk/model/PayRequest;->l:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/payssion/android/sdk/a/a;->a([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/payssion/android/sdk/model/PayRequest;->e:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/payssion/android/sdk/model/PayRequest;->e:Ljava/lang/String;

    const-string/jumbo v3, "_br"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public prepareParams(Lcom/a/a/a/i;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/payssion/android/sdk/model/d;->prepareParams(Lcom/a/a/a/i;)V

    const-string/jumbo v0, "api_key"

    iget-object v1, p0, Lcom/payssion/android/sdk/model/PayRequest;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pm_id"

    iget-object v1, p0, Lcom/payssion/android/sdk/model/PayRequest;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "amount"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/payssion/android/sdk/model/PayRequest;->f:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "currency"

    iget-object v1, p0, Lcom/payssion/android/sdk/model/PayRequest;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "language"

    iget-object v1, p0, Lcom/payssion/android/sdk/model/PayRequest;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "track_id"

    iget-object v1, p0, Lcom/payssion/android/sdk/model/PayRequest;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sub_track_id"

    iget-object v1, p0, Lcom/payssion/android/sdk/model/PayRequest;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "payer_ref"

    iget-object v1, p0, Lcom/payssion/android/sdk/model/PayRequest;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "payer_name"

    iget-object v1, p0, Lcom/payssion/android/sdk/model/PayRequest;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "payer_email"

    invoke-virtual {p0}, Lcom/payssion/android/sdk/model/PayRequest;->getPayerEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "description"

    iget-object v1, p0, Lcom/payssion/android/sdk/model/PayRequest;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "|"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/payssion/android/sdk/model/PayRequest;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/payssion/android/sdk/model/PayRequest;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/payssion/android/sdk/model/PayRequest;->f:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/payssion/android/sdk/model/PayRequest;->g:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/payssion/android/sdk/model/PayRequest;->i:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/payssion/android/sdk/model/PayRequest;->j:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/payssion/android/sdk/model/PayRequest;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/payssion/android/sdk/a/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payssion/android/sdk/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "api_sig"

    invoke-virtual {p1, v2, v1}, Lcom/a/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "Pay"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "str="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", api_sig="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "payer_email"

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/payssion/android/sdk/model/PayRequest;->setPayerEmail(Ljava/lang/String;)Lcom/payssion/android/sdk/model/PayRequest;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "payer_ref"

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/payssion/android/sdk/model/PayRequest;->setPayerRef(Ljava/lang/String;)Lcom/payssion/android/sdk/model/PayRequest;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "payer_name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/payssion/android/sdk/model/PayRequest;->setPayerName(Ljava/lang/String;)Lcom/payssion/android/sdk/model/PayRequest;

    goto :goto_0
.end method

.method public setAPIKey(Ljava/lang/String;)Lcom/payssion/android/sdk/model/PayRequest;
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/model/PayRequest;->b:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setAPIKey(Ljava/lang/String;)Lcom/payssion/android/sdk/model/d;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/payssion/android/sdk/model/PayRequest;->setAPIKey(Ljava/lang/String;)Lcom/payssion/android/sdk/model/PayRequest;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(D)Lcom/payssion/android/sdk/model/PayRequest;
    .locals 1

    iput-wide p1, p0, Lcom/payssion/android/sdk/model/PayRequest;->f:D

    return-object p0
.end method

.method public setCurrency(Ljava/lang/String;)Lcom/payssion/android/sdk/model/PayRequest;
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/model/PayRequest;->g:Ljava/lang/String;

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/payssion/android/sdk/model/PayRequest;
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/model/PayRequest;->m:Ljava/lang/String;

    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/payssion/android/sdk/model/PayRequest;
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/model/PayRequest;->h:Ljava/lang/String;

    return-object p0
.end method

.method public setLiveMode(Z)Lcom/payssion/android/sdk/model/PayRequest;
    .locals 0

    iput-boolean p1, p0, Lcom/payssion/android/sdk/model/PayRequest;->d:Z

    return-object p0
.end method

.method public bridge synthetic setLiveMode(Z)Lcom/payssion/android/sdk/model/d;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/payssion/android/sdk/model/PayRequest;->setLiveMode(Z)Lcom/payssion/android/sdk/model/PayRequest;

    move-result-object v0

    return-object v0
.end method

.method public setPMId(Ljava/lang/String;)Lcom/payssion/android/sdk/model/PayRequest;
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/model/PayRequest;->e:Ljava/lang/String;

    return-object p0
.end method

.method public setPayerEmail(Ljava/lang/String;)Lcom/payssion/android/sdk/model/PayRequest;
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/model/PayRequest;->a:Ljava/lang/String;

    return-object p0
.end method

.method public setPayerName(Ljava/lang/String;)Lcom/payssion/android/sdk/model/PayRequest;
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/model/PayRequest;->k:Ljava/lang/String;

    return-object p0
.end method

.method public setPayerRef(Ljava/lang/String;)Lcom/payssion/android/sdk/model/PayRequest;
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/model/PayRequest;->l:Ljava/lang/String;

    return-object p0
.end method

.method public setSecretKey(Ljava/lang/String;)Lcom/payssion/android/sdk/model/PayRequest;
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/model/PayRequest;->c:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setSecretKey(Ljava/lang/String;)Lcom/payssion/android/sdk/model/d;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/payssion/android/sdk/model/PayRequest;->setSecretKey(Ljava/lang/String;)Lcom/payssion/android/sdk/model/PayRequest;

    move-result-object v0

    return-object v0
.end method

.method public setSubTrackId(Ljava/lang/String;)Lcom/payssion/android/sdk/model/PayRequest;
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/model/PayRequest;->j:Ljava/lang/String;

    return-object p0
.end method

.method public setTrackId(Ljava/lang/String;)Lcom/payssion/android/sdk/model/PayRequest;
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/model/PayRequest;->i:Ljava/lang/String;

    return-object p0
.end method

.method public validate(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-array v2, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/payssion/android/sdk/model/PayRequest;->a:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {v2}, Lcom/payssion/android/sdk/a/a;->a([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/payssion/android/sdk/model/e;->a(Landroid/content/Context;)Lcom/payssion/android/sdk/model/e;

    move-result-object v2

    const-string/jumbo v3, "PAYSSION_EMAIL"

    invoke-virtual {v2, v3}, Lcom/payssion/android/sdk/model/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/payssion/android/sdk/model/PayRequest;->a:Ljava/lang/String;

    :cond_0
    new-array v2, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/payssion/android/sdk/model/PayRequest;->l:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {v2}, Lcom/payssion/android/sdk/a/a;->a([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/payssion/android/sdk/model/PayRequest;->e:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/payssion/android/sdk/model/PayRequest;->e:Ljava/lang/String;

    const-string/jumbo v3, "_br"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/payssion/android/sdk/model/e;->a(Landroid/content/Context;)Lcom/payssion/android/sdk/model/e;

    move-result-object v2

    const-string/jumbo v3, "PAYSSION_CPF"

    invoke-virtual {v2, v3}, Lcom/payssion/android/sdk/model/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/payssion/android/sdk/model/PayRequest;->l:Ljava/lang/String;

    :cond_1
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/payssion/android/sdk/model/PayRequest;->b:Ljava/lang/String;

    aput-object v3, v2, v0

    iget-object v3, p0, Lcom/payssion/android/sdk/model/PayRequest;->e:Ljava/lang/String;

    aput-object v3, v2, v1

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/payssion/android/sdk/model/PayRequest;->f:D

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/payssion/android/sdk/model/PayRequest;->g:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/payssion/android/sdk/model/PayRequest;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/payssion/android/sdk/model/PayRequest;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/payssion/android/sdk/model/PayRequest;->k:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/payssion/android/sdk/a/a;->a([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
