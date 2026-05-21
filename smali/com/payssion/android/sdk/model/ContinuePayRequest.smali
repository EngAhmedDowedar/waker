.class public Lcom/payssion/android/sdk/model/ContinuePayRequest;
.super Lcom/payssion/android/sdk/model/PayRequest;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/payssion/android/sdk/model/PayRequest;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/payssion/android/sdk/model/PayRequest;-><init>(Lcom/payssion/android/sdk/model/PayRequest;)V

    const-string/jumbo v0, "pay/"

    invoke-virtual {p0, v0}, Lcom/payssion/android/sdk/model/ContinuePayRequest;->setMethod(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "Pay"

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/model/ContinuePayRequest;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/payssion/android/sdk/model/ContinuePayRequest;->isLiveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "https://www.payssion.com/"

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/payssion/android/sdk/model/ContinuePayRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "http://sandbox.payssion.com/"

    goto :goto_0
.end method

.method public prepareParams(Lcom/a/a/a/i;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/payssion/android/sdk/model/PayRequest;->prepareParams(Lcom/a/a/a/i;)V

    const-string/jumbo v0, "api_key"

    iget-object v1, p0, Lcom/payssion/android/sdk/model/ContinuePayRequest;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pm_id"

    invoke-virtual {p0}, Lcom/payssion/android/sdk/model/ContinuePayRequest;->getPMId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "payer_ref"

    invoke-virtual {p0}, Lcom/payssion/android/sdk/model/ContinuePayRequest;->getPayerRef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "payer_name"

    invoke-virtual {p0}, Lcom/payssion/android/sdk/model/ContinuePayRequest;->getPayerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "payer_email"

    invoke-virtual {p0}, Lcom/payssion/android/sdk/model/ContinuePayRequest;->getPayerEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "|"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/payssion/android/sdk/model/ContinuePayRequest;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/payssion/android/sdk/model/ContinuePayRequest;->getPMId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/payssion/android/sdk/model/ContinuePayRequest;->c:Ljava/lang/String;

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

    invoke-virtual {p0, p2}, Lcom/payssion/android/sdk/model/ContinuePayRequest;->setPayerEmail(Ljava/lang/String;)Lcom/payssion/android/sdk/model/PayRequest;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "payer_ref"

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/payssion/android/sdk/model/ContinuePayRequest;->setPayerRef(Ljava/lang/String;)Lcom/payssion/android/sdk/model/PayRequest;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "payer_name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/payssion/android/sdk/model/ContinuePayRequest;->setPayerName(Ljava/lang/String;)Lcom/payssion/android/sdk/model/PayRequest;

    goto :goto_0
.end method

.method public setTransactionId(Ljava/lang/String;)Lcom/payssion/android/sdk/model/ContinuePayRequest;
    .locals 2

    iput-object p1, p0, Lcom/payssion/android/sdk/model/ContinuePayRequest;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/payssion/android/sdk/model/ContinuePayRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/payssion/android/sdk/model/ContinuePayRequest;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/payssion/android/sdk/model/ContinuePayRequest;->setMethod(Ljava/lang/String;)V

    return-object p0
.end method

.method public validate(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/payssion/android/sdk/model/ContinuePayRequest;->b:Ljava/lang/String;

    aput-object v3, v2, v0

    iget-object v3, p0, Lcom/payssion/android/sdk/model/ContinuePayRequest;->a:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/payssion/android/sdk/a/a;->a([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
