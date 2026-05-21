.class public Lcom/tendcloud/tenddata/game/ch;
.super Lcom/tendcloud/tenddata/game/bz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/ch$a;
    }
.end annotation


# instance fields
.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcom/tendcloud/tenddata/game/ch$a;

.field private m:Ljava/lang/String;

.field private n:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/tendcloud/tenddata/TDGAAccount;Ljava/lang/String;Ljava/lang/String;JLcom/tendcloud/tenddata/game/ch$a;)V
    .locals 1

    const-string/jumbo v0, "G6"

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/bz;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ch;->g:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ch;->h:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/TDGAAccount;->getLevel()I

    move-result v0

    iput v0, p0, Lcom/tendcloud/tenddata/game/ch;->i:I

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/TDGAAccount;->getGameServer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ch;->k:Ljava/lang/String;

    iput-object p3, p0, Lcom/tendcloud/tenddata/game/ch;->j:Ljava/lang/String;

    iput-object p4, p0, Lcom/tendcloud/tenddata/game/ch;->m:Ljava/lang/String;

    iput-object p7, p0, Lcom/tendcloud/tenddata/game/ch;->l:Lcom/tendcloud/tenddata/game/ch$a;

    iput-wide p5, p0, Lcom/tendcloud/tenddata/game/ch;->n:J

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 6

    const-string/jumbo v0, "gameSessionID"

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ch;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/ch;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string/jumbo v1, "userID"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ch;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string/jumbo v1, "level"

    iget v2, p0, Lcom/tendcloud/tenddata/game/ch;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string/jumbo v1, "gameServer"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ch;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string/jumbo v1, "mission"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ch;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string/jumbo v1, "cause"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ch;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string/jumbo v1, "status"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ch;->l:Lcom/tendcloud/tenddata/game/ch$a;

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/ch$a;->a(Lcom/tendcloud/tenddata/game/ch$a;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string/jumbo v1, "timeConsuming"

    iget-wide v2, p0, Lcom/tendcloud/tenddata/game/ch;->n:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    return-void
.end method
