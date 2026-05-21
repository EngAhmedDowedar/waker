.class public Lcom/tendcloud/tenddata/game/cj;
.super Lcom/tendcloud/tenddata/game/bz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/cj$a;
    }
.end annotation


# instance fields
.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/tendcloud/tenddata/game/cj$a;

.field private j:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/tendcloud/tenddata/game/cj$a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/tendcloud/tenddata/game/cj;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/cj$a;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/cj$a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tendcloud/tenddata/game/cj;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/cj$a;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/cj$a;I)V
    .locals 1

    const-string/jumbo v0, "G17"

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/bz;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cj;->h:Ljava/lang/String;

    iput-object p3, p0, Lcom/tendcloud/tenddata/game/cj;->i:Lcom/tendcloud/tenddata/game/cj$a;

    iput-object p2, p0, Lcom/tendcloud/tenddata/game/cj;->g:Ljava/lang/String;

    iput p4, p0, Lcom/tendcloud/tenddata/game/cj;->j:I

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cj;->g:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, "msgSign"

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/cj;->h:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string/jumbo v1, "action"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cj;->i:Lcom/tendcloud/tenddata/game/cj$a;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/cj$a;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    :goto_0
    iget v0, p0, Lcom/tendcloud/tenddata/game/cj;->j:I

    if-lez v0, :cond_0

    const-string/jumbo v0, "duration"

    iget v1, p0, Lcom/tendcloud/tenddata/game/cj;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "msgSign"

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/cj;->h:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string/jumbo v1, "action"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cj;->i:Lcom/tendcloud/tenddata/game/cj$a;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/cj$a;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string/jumbo v1, "url"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cj;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    goto :goto_0
.end method
