.class public Lcom/tendcloud/tenddata/game/ck;
.super Lcom/tendcloud/tenddata/game/bz;


# instance fields
.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "G16"

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/bz;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tendcloud/tenddata/game/ck;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/tendcloud/tenddata/game/ck;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/tendcloud/tenddata/game/ck;->i:Ljava/lang/String;

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ck;->i:Ljava/lang/String;

    iput-object p2, p0, Lcom/tendcloud/tenddata/game/ck;->h:Ljava/lang/String;

    iput-object p3, p0, Lcom/tendcloud/tenddata/game/ck;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "dt"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ck;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v1, "channel"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ck;->g:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/tendcloud/tenddata/game/ck;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v1

    const-string/jumbo v2, "appId"

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ck;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v1

    const-string/jumbo v2, "deviceToken"

    invoke-virtual {v1, v2, v0}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v1, "TDGA EventPushToken"

    const-string/jumbo v2, "deviceToken error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ck;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ck;->i:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ck;->g:Ljava/lang/String;

    return-object v0
.end method
