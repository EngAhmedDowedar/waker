.class Lcom/vungle/publisher/db/model/LocalArchive$Factory;
.super Lcom/vungle/publisher/db/model/Viewable$BaseFactory;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/db/model/LocalArchive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/db/model/Viewable$BaseFactory",
        "<",
        "Lcom/vungle/publisher/db/model/LocalAd;",
        "Lcom/vungle/publisher/db/model/LocalArchive;",
        "Lcom/vungle/publisher/db/model/LocalVideo;",
        "Lcom/vungle/publisher/protocol/message/RequestLocalAdResponse;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/db/model/LocalArchive;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/db/model/LocalViewableDelegate$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/vungle/publisher/db/model/Viewable$BaseFactory;-><init>()V

    return-void
.end method

.method private a(Lcom/vungle/publisher/db/model/LocalArchive;Landroid/database/Cursor;Z)Lcom/vungle/publisher/db/model/LocalArchive;
    .locals 1

    .prologue
    .line 315
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/db/model/Viewable$BaseFactory;->a(Lcom/vungle/publisher/db/model/Viewable;Landroid/database/Cursor;Z)Lcom/vungle/publisher/db/model/Viewable;

    .line 316
    iget-object v0, p1, Lcom/vungle/publisher/db/model/LocalArchive;->i:Lcom/vungle/publisher/db/model/LocalViewableDelegate;

    invoke-virtual {v0, p2}, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->a(Landroid/database/Cursor;)V

    .line 317
    if-eqz p3, :cond_0

    .line 318
    invoke-virtual {p1}, Lcom/vungle/publisher/db/model/LocalArchive;->i()[Lcom/vungle/publisher/db/model/ArchiveEntry;

    .line 320
    :cond_0
    return-object p1
.end method


# virtual methods
.method protected final bridge synthetic a(Lcom/vungle/publisher/bi;Landroid/database/Cursor;)Lcom/vungle/publisher/bi;
    .locals 1

    .prologue
    .line 276
    check-cast p1, Lcom/vungle/publisher/db/model/LocalArchive;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vungle/publisher/db/model/LocalArchive$Factory;->a(Lcom/vungle/publisher/db/model/LocalArchive;Landroid/database/Cursor;Z)Lcom/vungle/publisher/db/model/LocalArchive;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/vungle/publisher/db/model/LocalAd;Lcom/vungle/publisher/protocol/message/RequestLocalAdResponse;Lcom/vungle/publisher/bj$b;)Lcom/vungle/publisher/db/model/LocalArchive;
    .locals 3

    .prologue
    .line 287
    const/4 v0, 0x0

    .line 288
    if-eqz p2, :cond_0

    .line 289
    sget-object v1, Lcom/vungle/publisher/db/model/LocalArchive$2;->a:[I

    invoke-virtual {p3}, Lcom/vungle/publisher/bj$b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 307
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "cannot create archive of type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :pswitch_0
    iget-object v1, p2, Lcom/vungle/publisher/protocol/message/RequestLocalAdResponse;->t:Ljava/lang/String;

    .line 292
    if-eqz v1, :cond_0

    .line 293
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/db/model/Viewable$BaseFactory;->b(Lcom/vungle/publisher/db/model/Ad;Lcom/vungle/publisher/protocol/message/RequestAdResponse;)Lcom/vungle/publisher/db/model/Viewable;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/LocalArchive;

    .line 294
    iput-object p3, v0, Lcom/vungle/publisher/db/model/LocalArchive;->q:Lcom/vungle/publisher/bj$b;

    .line 295
    invoke-virtual {v0, v1}, Lcom/vungle/publisher/db/model/LocalArchive;->a(Ljava/lang/String;)V

    .line 310
    :cond_0
    :goto_0
    return-object v0

    .line 299
    :pswitch_1
    iget-object v1, p2, Lcom/vungle/publisher/protocol/message/RequestLocalAdResponse;->u:Ljava/lang/String;

    .line 300
    if-eqz v1, :cond_0

    .line 301
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/db/model/Viewable$BaseFactory;->b(Lcom/vungle/publisher/db/model/Ad;Lcom/vungle/publisher/protocol/message/RequestAdResponse;)Lcom/vungle/publisher/db/model/Viewable;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/LocalArchive;

    .line 302
    iput-object p3, v0, Lcom/vungle/publisher/db/model/LocalArchive;->q:Lcom/vungle/publisher/bj$b;

    .line 303
    invoke-virtual {v0, v1}, Lcom/vungle/publisher/db/model/LocalArchive;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/db/model/Viewable;Landroid/database/Cursor;Z)Lcom/vungle/publisher/db/model/Viewable;
    .locals 1

    .prologue
    .line 276
    check-cast p1, Lcom/vungle/publisher/db/model/LocalArchive;

    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/publisher/db/model/LocalArchive$Factory;->a(Lcom/vungle/publisher/db/model/LocalArchive;Landroid/database/Cursor;Z)Lcom/vungle/publisher/db/model/LocalArchive;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic b(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 276
    new-array v0, p1, [Ljava/lang/Integer;

    return-object v0
.end method

.method protected final bridge synthetic c(I)[Lcom/vungle/publisher/bi;
    .locals 1

    .prologue
    .line 276
    new-array v0, p1, [Lcom/vungle/publisher/db/model/LocalArchive;

    return-object v0
.end method

.method protected final synthetic c_()Lcom/vungle/publisher/bi;
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalArchive$Factory;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/LocalArchive;

    iget-object v1, p0, Lcom/vungle/publisher/db/model/LocalArchive$Factory;->b:Lcom/vungle/publisher/db/model/LocalViewableDelegate$Factory;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/db/model/LocalViewableDelegate$Factory;->a(Lcom/vungle/publisher/db/model/LocalViewableDelegate$a;)Lcom/vungle/publisher/db/model/LocalViewableDelegate;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/db/model/LocalArchive;->i:Lcom/vungle/publisher/db/model/LocalViewableDelegate;

    return-object v0
.end method
