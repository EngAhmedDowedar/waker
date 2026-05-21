.class final Lcom/a/a/a/g;
.super Landroid/os/Handler;


# instance fields
.field private final a:Lcom/a/a/a/k;


# direct methods
.method constructor <init>(Lcom/a/a/a/k;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/a/a/a/g;->a:Lcom/a/a/a/k;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/g;->a:Lcom/a/a/a/k;

    invoke-virtual {v0, p1}, Lcom/a/a/a/k;->a(Landroid/os/Message;)V

    return-void
.end method
