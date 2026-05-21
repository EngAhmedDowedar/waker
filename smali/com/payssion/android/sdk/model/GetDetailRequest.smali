.class public Lcom/payssion/android/sdk/model/GetDetailRequest;
.super Lcom/payssion/android/sdk/model/d;


# instance fields
.field private a:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/payssion/android/sdk/model/d;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/payssion/android/sdk/model/GetDetailRequest;->a:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/payssion/android/sdk/model/GetDetailRequest;->e:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/payssion/android/sdk/model/GetDetailRequest;->f:Ljava/lang/String;

    const-string/jumbo v0, "payment/getDetail"

    invoke-virtual {p0, v0}, Lcom/payssion/android/sdk/model/GetDetailRequest;->setMethod(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public prepareParams(Lcom/a/a/a/i;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/payssion/android/sdk/model/d;->prepareParams(Lcom/a/a/a/i;)V

    const-string/jumbo v0, "api_key"

    iget-object v1, p0, Lcom/payssion/android/sdk/model/GetDetailRequest;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "transaction_id"

    iget-object v1, p0, Lcom/payssion/android/sdk/model/GetDetailRequest;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "track_id"

    iget-object v1, p0, Lcom/payssion/android/sdk/model/GetDetailRequest;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sub_track_id"

    iget-object v1, p0, Lcom/payssion/android/sdk/model/GetDetailRequest;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "|"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/payssion/android/sdk/model/GetDetailRequest;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/payssion/android/sdk/model/GetDetailRequest;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/payssion/android/sdk/model/GetDetailRequest;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/payssion/android/sdk/model/GetDetailRequest;->f:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/payssion/android/sdk/model/GetDetailRequest;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/payssion/android/sdk/a/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payssion/android/sdk/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "api_sig"

    invoke-virtual {p1, v2, v1}, Lcom/a/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "GetDetail"

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

.method public setAPIKey(Ljava/lang/String;)Lcom/payssion/android/sdk/model/GetDetailRequest;
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/model/GetDetailRequest;->b:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setAPIKey(Ljava/lang/String;)Lcom/payssion/android/sdk/model/d;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/payssion/android/sdk/model/GetDetailRequest;->setAPIKey(Ljava/lang/String;)Lcom/payssion/android/sdk/model/GetDetailRequest;

    move-result-object v0

    return-object v0
.end method

.method public setLiveMode(Z)Lcom/payssion/android/sdk/model/GetDetailRequest;
    .locals 0

    iput-boolean p1, p0, Lcom/payssion/android/sdk/model/GetDetailRequest;->d:Z

    return-object p0
.end method

.method public bridge synthetic setLiveMode(Z)Lcom/payssion/android/sdk/model/d;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/payssion/android/sdk/model/GetDetailRequest;->setLiveMode(Z)Lcom/payssion/android/sdk/model/GetDetailRequest;

    move-result-object v0

    return-object v0
.end method

.method public setSecretKey(Ljava/lang/String;)Lcom/payssion/android/sdk/model/GetDetailRequest;
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/model/GetDetailRequest;->c:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setSecretKey(Ljava/lang/String;)Lcom/payssion/android/sdk/model/d;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/payssion/android/sdk/model/GetDetailRequest;->setSecretKey(Ljava/lang/String;)Lcom/payssion/android/sdk/model/GetDetailRequest;

    move-result-object v0

    return-object v0
.end method

.method public setSubTrackId(Ljava/lang/String;)Lcom/payssion/android/sdk/model/GetDetailRequest;
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/model/GetDetailRequest;->f:Ljava/lang/String;

    return-object p0
.end method

.method public setTrackId(Ljava/lang/String;)Lcom/payssion/android/sdk/model/GetDetailRequest;
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/model/GetDetailRequest;->e:Ljava/lang/String;

    return-object p0
.end method

.method public setTransactionId(Ljava/lang/String;)Lcom/payssion/android/sdk/model/GetDetailRequest;
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/model/GetDetailRequest;->a:Ljava/lang/String;

    return-object p0
.end method
