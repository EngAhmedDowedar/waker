.class public final Lcom/tendcloud/tenddata/game/ca;
.super Lcom/tendcloud/tenddata/game/bz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/ca$a;
    }
.end annotation


# instance fields
.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:D

.field private n:Ljava/lang/String;

.field private o:D

.field private p:Ljava/lang/String;

.field private q:Lcom/tendcloud/tenddata/game/ca$a;

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/tendcloud/tenddata/TDGAAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;DLjava/lang/String;Lcom/tendcloud/tenddata/game/ca$a;)V
    .locals 1

    const-string/jumbo v0, "G9"

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/bz;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ca;->g:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ca;->h:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/TDGAAccount;->getLevel()I

    move-result v0

    iput v0, p0, Lcom/tendcloud/tenddata/game/ca;->i:I

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/TDGAAccount;->getGameServer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ca;->j:Ljava/lang/String;

    iput-object p3, p0, Lcom/tendcloud/tenddata/game/ca;->r:Ljava/lang/String;

    iput-object p4, p0, Lcom/tendcloud/tenddata/game/ca;->k:Ljava/lang/String;

    iput-object p5, p0, Lcom/tendcloud/tenddata/game/ca;->l:Ljava/lang/String;

    iput-wide p6, p0, Lcom/tendcloud/tenddata/game/ca;->m:D

    iput-object p8, p0, Lcom/tendcloud/tenddata/game/ca;->n:Ljava/lang/String;

    iput-wide p9, p0, Lcom/tendcloud/tenddata/game/ca;->o:D

    iput-object p11, p0, Lcom/tendcloud/tenddata/game/ca;->p:Ljava/lang/String;

    iput-object p12, p0, Lcom/tendcloud/tenddata/game/ca;->q:Lcom/tendcloud/tenddata/game/ca$a;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    const-string/jumbo v0, "gameSessionID"

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ca;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/ca;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string/jumbo v1, "userID"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ca;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string/jumbo v1, "level"

    iget v2, p0, Lcom/tendcloud/tenddata/game/ca;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string/jumbo v1, "gameServer"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ca;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string/jumbo v1, "mission"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ca;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string/jumbo v1, "orderId"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ca;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string/jumbo v1, "iapId"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ca;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string/jumbo v1, "currencyAmount"

    iget-wide v2, p0, Lcom/tendcloud/tenddata/game/ca;->m:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string/jumbo v1, "virtualCurrencyAmount"

    iget-wide v2, p0, Lcom/tendcloud/tenddata/game/ca;->o:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string/jumbo v1, "currencyType"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ca;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string/jumbo v1, "paymentType"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ca;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string/jumbo v1, "status"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ca;->q:Lcom/tendcloud/tenddata/game/ca$a;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/ca$a;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    return-void
.end method

.method public a(Lcom/tendcloud/tenddata/game/ca$a;)V
    .locals 0

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ca;->q:Lcom/tendcloud/tenddata/game/ca$a;

    return-void
.end method
