.class public Lcom/vungle/publisher/db/model/LocalVideo;
.super Lcom/vungle/publisher/db/model/Video;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/db/model/LocalViewableDelegate$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/db/model/LocalVideo$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/db/model/Video",
        "<",
        "Lcom/vungle/publisher/db/model/LocalAd;",
        "Lcom/vungle/publisher/db/model/LocalVideo;",
        "Lcom/vungle/publisher/protocol/message/RequestLocalAdResponse;",
        ">;",
        "Lcom/vungle/publisher/db/model/LocalViewableDelegate$a;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field public b:Lcom/vungle/publisher/db/model/LocalViewableDelegate;

.field c:Lcom/vungle/publisher/db/model/LocalAd$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/db/model/LocalVideo$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/vungle/publisher/db/model/Video;-><init>()V

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalVideo;->b:Lcom/vungle/publisher/db/model/LocalViewableDelegate;

    invoke-virtual {v0}, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->h()Z

    move-result v0

    return v0
.end method

.method public final B()I
    .locals 1

    .prologue
    .line 168
    invoke-super {p0}, Lcom/vungle/publisher/db/model/Video;->n()I

    move-result v0

    return v0
.end method

.method protected final bridge synthetic C()Lcom/vungle/publisher/db/model/Ad$Factory;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalVideo;->c:Lcom/vungle/publisher/db/model/LocalAd$Factory;

    return-object v0
.end method

.method protected final a(Z)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/vungle/publisher/db/model/Video;->a(Z)Landroid/content/ContentValues;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/vungle/publisher/db/model/LocalVideo;->b:Lcom/vungle/publisher/db/model/LocalViewableDelegate;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->a(Landroid/content/ContentValues;)V

    .line 175
    const-string/jumbo v1, "checksum"

    iget-object v2, p0, Lcom/vungle/publisher/db/model/LocalVideo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-object v0
.end method

.method public final a(Lcom/vungle/publisher/cw;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalVideo;->b:Lcom/vungle/publisher/db/model/LocalViewableDelegate;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->a(Lcom/vungle/publisher/cw;)V

    .line 98
    return-void
.end method

.method public final a(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalVideo;->b:Lcom/vungle/publisher/db/model/LocalViewableDelegate;

    iput-object p1, v0, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->c:Ljava/lang/Integer;

    .line 71
    return-void
.end method

.method protected final bridge synthetic a_()Lcom/vungle/publisher/bi$a;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalVideo;->d:Lcom/vungle/publisher/db/model/LocalVideo$Factory;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalVideo;->b:Lcom/vungle/publisher/db/model/LocalViewableDelegate;

    iget-object v0, v0, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string/jumbo v0, "mp4"

    return-object v0
.end method

.method public final i()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/vungle/publisher/db/model/LocalVideo;->b:Lcom/vungle/publisher/db/model/LocalViewableDelegate;

    invoke-virtual {v1}, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalVideo;->b:Lcom/vungle/publisher/db/model/LocalViewableDelegate;

    invoke-virtual {v0}, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalVideo;->b:Lcom/vungle/publisher/db/model/LocalViewableDelegate;

    invoke-virtual {v0}, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->e()Z

    move-result v0

    return v0
.end method

.method public final n()I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalVideo;->b:Lcom/vungle/publisher/db/model/LocalViewableDelegate;

    invoke-virtual {v0}, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->d()I

    move-result v0

    return v0
.end method

.method protected final p()Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    .line 183
    invoke-super {p0}, Lcom/vungle/publisher/db/model/Video;->p()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/vungle/publisher/db/model/LocalVideo;->b:Lcom/vungle/publisher/db/model/LocalViewableDelegate;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->a(Ljava/lang/StringBuilder;)V

    .line 185
    const-string/jumbo v1, "checksum"

    iget-object v2, p0, Lcom/vungle/publisher/db/model/LocalVideo;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/publisher/bi;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 186
    return-object v0
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalVideo;->b:Lcom/vungle/publisher/db/model/LocalViewableDelegate;

    invoke-virtual {v0}, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->f()Z

    move-result v0

    return v0
.end method

.method public final t()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalVideo;->b:Lcom/vungle/publisher/db/model/LocalViewableDelegate;

    invoke-virtual {v0}, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->f()Z

    move-result v0

    return v0
.end method

.method public final u()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalVideo;->b:Lcom/vungle/publisher/db/model/LocalViewableDelegate;

    invoke-virtual {v0}, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
