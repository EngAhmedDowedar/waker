.class public Lcom/payssion/android/sdk/model/GetDetailResponse;
.super Lcom/payssion/android/sdk/model/PayssionResponse;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/payssion/android/sdk/model/PayssionResponse;-><init>(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "transaction"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "transaction_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/payssion/android/sdk/model/GetDetailResponse;->b:Ljava/lang/String;

    const-string/jumbo v1, "pm_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/payssion/android/sdk/model/GetDetailResponse;->f:Ljava/lang/String;

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/payssion/android/sdk/model/GetDetailResponse;->a:Ljava/lang/String;

    const-string/jumbo v1, "amount"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/payssion/android/sdk/model/GetDetailResponse;->c:Ljava/lang/String;

    const-string/jumbo v1, "track_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/payssion/android/sdk/model/GetDetailResponse;->d:Ljava/lang/String;

    const-string/jumbo v1, "sub_track_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/payssion/android/sdk/model/GetDetailResponse;->e:Ljava/lang/String;

    const-string/jumbo v1, "sub_track_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/payssion/android/sdk/model/GetDetailResponse;->g:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getAmount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/model/GetDetailResponse;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()I
    .locals 1

    iget v0, p0, Lcom/payssion/android/sdk/model/GetDetailResponse;->g:I

    return v0
.end method

.method public getPMId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/model/GetDetailResponse;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/model/GetDetailResponse;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/payssion/android/sdk/model/PayssionResponse;->translateState(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getStateStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/model/GetDetailResponse;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTrackId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/model/GetDetailResponse;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/model/GetDetailResponse;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/model/GetDetailResponse;->b:Ljava/lang/String;

    return-object v0
.end method
