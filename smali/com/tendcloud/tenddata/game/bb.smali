.class public final Lcom/tendcloud/tenddata/game/bb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/bb$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/tendcloud/tenddata/game/bb$a;

.field private g:I


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bb;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bb;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bb;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/bb$a;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bb;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bb;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bb;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/bb;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/tendcloud/tenddata/game/bb;->f:Lcom/tendcloud/tenddata/game/bb$a;

    iput-object p2, p0, Lcom/tendcloud/tenddata/game/bb;->d:Ljava/lang/String;

    iput p4, p0, Lcom/tendcloud/tenddata/game/bb;->g:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bb;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bb;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bb;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/bb;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/tendcloud/tenddata/game/bb;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/tendcloud/tenddata/game/bb;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bb;->b:Ljava/lang/String;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bb;->c:Ljava/lang/String;

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bb;->a:Ljava/lang/String;

    return-object v0
.end method

.method d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bb;->e:Ljava/lang/String;

    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bb;->d:Ljava/lang/String;

    return-object v0
.end method

.method f()Lcom/tendcloud/tenddata/game/bb$a;
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bb;->f:Lcom/tendcloud/tenddata/game/bb$a;

    return-object v0
.end method

.method g()I
    .locals 1

    iget v0, p0, Lcom/tendcloud/tenddata/game/bb;->g:I

    return v0
.end method
