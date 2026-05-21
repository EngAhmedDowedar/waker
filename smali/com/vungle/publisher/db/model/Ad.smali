.class public abstract Lcom/vungle/publisher/db/model/Ad;
.super Lcom/vungle/publisher/bi;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/db/model/Ad$Factory;,
        Lcom/vungle/publisher/db/model/Ad$b;,
        Lcom/vungle/publisher/db/model/Ad$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/db/model/Ad",
        "<TA;TV;TR;>;V:",
        "Lcom/vungle/publisher/db/model/Video",
        "<TA;TV;TR;>;R:",
        "Lcom/vungle/publisher/protocol/message/RequestAdResponse;",
        ">",
        "Lcom/vungle/publisher/bi",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field protected static final a:Ljava/lang/String;

.field protected static final b:Ljava/lang/String;

.field protected static final c:Ljava/lang/String;


# instance fields
.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/vungle/publisher/db/model/EventTracking$a;",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/db/model/EventTracking;",
            ">;>;"
        }
    .end annotation
.end field

.field protected i:J

.field protected j:Lcom/vungle/publisher/db/model/Ad$a;

.field protected k:Lcom/vungle/publisher/db/model/Ad$b;

.field protected l:J

.field protected m:J

.field protected n:Lcom/vungle/publisher/db/model/Video;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field o:Ljava/lang/String;

.field protected p:Z

.field protected q:Z

.field r:Lcom/vungle/publisher/event/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "(SELECT DISTINCT ad_id FROM ad_report WHERE status IN (\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/vungle/publisher/db/model/AdReport$a;->d:Lcom/vungle/publisher/db/model/AdReport$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\', \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vungle/publisher/db/model/AdReport$a;->c:Lcom/vungle/publisher/db/model/AdReport$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/publisher/db/model/Ad;->a:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "id NOT IN "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/vungle/publisher/db/model/Ad;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/publisher/db/model/Ad;->b:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "id IN "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/vungle/publisher/db/model/Ad;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/publisher/db/model/Ad;->c:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/vungle/publisher/bi;-><init>()V

    .line 83
    const-class v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/vungle/publisher/bi;->s:Ljava/lang/Class;

    .line 84
    return-void
.end method

.method private t()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/vungle/publisher/db/model/EventTracking$a;",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/db/model/EventTracking;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/vungle/publisher/db/model/Ad;->a()Lcom/vungle/publisher/db/model/Ad$Factory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vungle/publisher/db/model/Ad$Factory;->b(Lcom/vungle/publisher/db/model/Ad;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Z)Landroid/content/ContentValues;
    .locals 5

    .prologue
    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vungle/publisher/db/model/Ad;->l:J

    .line 224
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 225
    if-eqz p1, :cond_0

    .line 226
    const-string/jumbo v4, "id"

    iget-object v0, p0, Lcom/vungle/publisher/db/model/Ad;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string/jumbo v0, "insert_timestamp_millis"

    iput-wide v2, p0, Lcom/vungle/publisher/db/model/Ad;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 228
    const-string/jumbo v0, "type"

    iget-object v4, p0, Lcom/vungle/publisher/db/model/Ad;->k:Lcom/vungle/publisher/db/model/Ad$b;

    invoke-virtual {v4}, Lcom/vungle/publisher/db/model/Ad$b;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_0
    const-string/jumbo v0, "advertising_app_vungle_id"

    iget-object v4, p0, Lcom/vungle/publisher/db/model/Ad;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string/jumbo v0, "call_to_action_final_url"

    iget-object v4, p0, Lcom/vungle/publisher/db/model/Ad;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string/jumbo v0, "call_to_action_url"

    iget-object v4, p0, Lcom/vungle/publisher/db/model/Ad;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string/jumbo v0, "delivery_id"

    iget-object v4, p0, Lcom/vungle/publisher/db/model/Ad;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string/jumbo v0, "status"

    iget-object v4, p0, Lcom/vungle/publisher/db/model/Ad;->j:Lcom/vungle/publisher/db/model/Ad$a;

    invoke-virtual {v4}, Lcom/vungle/publisher/db/model/Ad$a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string/jumbo v0, "update_timestamp_millis"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 236
    const-string/jumbo v0, "failed_timestamp_millis"

    iget-wide v2, p0, Lcom/vungle/publisher/db/model/Ad;->m:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 237
    return-object v1
.end method

.method public a(Lcom/vungle/publisher/bj$b;)Lcom/vungle/publisher/bj;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<W::",
            "Lcom/vungle/publisher/bj",
            "<TA;TV;TR;>;>(",
            "Lcom/vungle/publisher/bj$b;",
            ")TW;"
        }
    .end annotation

    .prologue
    .line 184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unknown viewable type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract a()Lcom/vungle/publisher/db/model/Ad$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/db/model/Ad$Factory",
            "<TA;TV;TR;>;"
        }
    .end annotation
.end method

.method public a(Lcom/vungle/publisher/db/model/Ad$a;)V
    .locals 4

    .prologue
    .line 153
    iget-object v0, p0, Lcom/vungle/publisher/db/model/Ad;->j:Lcom/vungle/publisher/db/model/Ad$a;

    .line 154
    const-string/jumbo v1, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setting status from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vungle/publisher/db/model/Ad;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iput-object p1, p0, Lcom/vungle/publisher/db/model/Ad;->j:Lcom/vungle/publisher/db/model/Ad$a;

    .line 156
    sget-object v0, Lcom/vungle/publisher/db/model/Ad$a;->b:Lcom/vungle/publisher/db/model/Ad$a;

    if-ne p1, v0, :cond_0

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vungle/publisher/db/model/Ad;->m:J

    .line 159
    :cond_0
    return-void
.end method

.method public final a(Lcom/vungle/publisher/db/model/Ad;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/db/model/Ad",
            "<***>;)Z"
        }
    .end annotation

    .prologue
    .line 268
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/vungle/publisher/db/model/Ad;->t:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/vungle/publisher/db/model/Ad;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vungle/publisher/db/model/Ad;->t:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/vungle/publisher/db/model/EventTracking$a;)[Ljava/lang/String;
    .locals 5

    .prologue
    .line 120
    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Lcom/vungle/publisher/db/model/Ad;->t()Ljava/util/Map;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_1

    .line 123
    invoke-direct {p0}, Lcom/vungle/publisher/db/model/Ad;->t()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 124
    if-eqz v0, :cond_1

    .line 125
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 126
    if-lez v2, :cond_1

    .line 127
    new-array v3, v2, [Ljava/lang/String;

    .line 128
    const/4 v1, 0x0

    .line 129
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/EventTracking;

    .line 130
    add-int/lit8 v2, v1, 0x1

    iget-object v0, v0, Lcom/vungle/publisher/db/model/EventTracking;->c:Ljava/lang/String;

    aput-object v0, v3, v1

    move v1, v2

    .line 131
    goto :goto_0

    :cond_0
    move-object v0, v3

    .line 135
    :goto_1
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string/jumbo v0, "ad"

    return-object v0
.end method

.method public final b(Lcom/vungle/publisher/db/model/Ad$a;)V
    .locals 3

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/vungle/publisher/db/model/Ad;->a()Lcom/vungle/publisher/db/model/Ad$Factory;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/vungle/publisher/db/model/Ad;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/vungle/publisher/db/model/Ad$Factory;->a(Ljava/util/List;Lcom/vungle/publisher/db/model/Ad$a;)I

    .line 165
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/vungle/publisher/db/model/Ad;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/vungle/publisher/db/model/Ad;->d:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "ad"    # Ljava/lang/Object;

    .prologue
    .line 264
    .local p0, "this":Lcom/vungle/publisher/db/model/Ad;, "Lcom/vungle/publisher/db/model/Ad<TA;TV;TR;>;"
    instance-of v0, p1, Lcom/vungle/publisher/db/model/Ad;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/vungle/publisher/db/model/Ad;

    .end local p1    # "ad":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/db/model/Ad;->a(Lcom/vungle/publisher/db/model/Ad;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/vungle/publisher/db/model/Ad;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected final f_()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/vungle/publisher/db/model/Ad;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/vungle/publisher/db/model/Ad;->g:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/vungle/publisher/db/model/Ad;->t:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/db/model/Ad;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final i()Lcom/vungle/publisher/db/model/Ad$a;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/vungle/publisher/db/model/Ad;->j:Lcom/vungle/publisher/db/model/Ad$a;

    return-object v0
.end method

.method public final j()J
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/vungle/publisher/db/model/Ad;->m:J

    return-wide v0
.end method

.method public final k()Lcom/vungle/publisher/db/model/Video;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/vungle/publisher/db/model/Ad;->a()Lcom/vungle/publisher/db/model/Ad$Factory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/vungle/publisher/db/model/Ad$Factory;->a(Lcom/vungle/publisher/db/model/Ad;Z)Lcom/vungle/publisher/db/model/Video;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-super {p0}, Lcom/vungle/publisher/bi;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 192
    iget-object v1, p0, Lcom/vungle/publisher/db/model/Ad;->h:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 193
    iget-object v1, p0, Lcom/vungle/publisher/db/model/Ad;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 194
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/db/model/EventTracking;

    .line 195
    invoke-virtual {v1}, Lcom/vungle/publisher/db/model/EventTracking;->r()Ljava/lang/Object;

    goto :goto_0

    .line 199
    :cond_1
    iget-object v1, p0, Lcom/vungle/publisher/db/model/Ad;->n:Lcom/vungle/publisher/db/model/Video;

    if-eqz v1, :cond_2

    .line 200
    iget-object v1, p0, Lcom/vungle/publisher/db/model/Ad;->n:Lcom/vungle/publisher/db/model/Video;

    invoke-virtual {v1}, Lcom/vungle/publisher/db/model/Video;->r()Ljava/lang/Object;

    .line 202
    :cond_2
    return-object v0
.end method

.method public m()I
    .locals 2

    .prologue
    .line 207
    invoke-super {p0}, Lcom/vungle/publisher/bi;->m()I

    move-result v0

    .line 208
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/vungle/publisher/db/model/Ad;->n:Lcom/vungle/publisher/db/model/Video;

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/vungle/publisher/db/model/Ad;->n:Lcom/vungle/publisher/db/model/Video;

    invoke-virtual {v1}, Lcom/vungle/publisher/db/model/Video;->m()I

    .line 213
    :cond_0
    return v0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 218
    invoke-super {p0}, Lcom/vungle/publisher/bi;->n()I

    move-result v0

    return v0
.end method

.method protected final o()Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    .line 242
    invoke-super {p0}, Lcom/vungle/publisher/bi;->o()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 243
    const-string/jumbo v1, "type"

    iget-object v2, p0, Lcom/vungle/publisher/db/model/Ad;->k:Lcom/vungle/publisher/db/model/Ad$b;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/publisher/bi;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 244
    return-object v0
.end method

.method protected p()Ljava/lang/StringBuilder;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 249
    invoke-super {p0}, Lcom/vungle/publisher/bi;->p()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 250
    const-string/jumbo v0, "advertising_app_vungle_id"

    iget-object v2, p0, Lcom/vungle/publisher/db/model/Ad;->d:Ljava/lang/String;

    invoke-static {v1, v0, v2, v4}, Lcom/vungle/publisher/bi;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 251
    const-string/jumbo v0, "call_to_action_final_url"

    iget-object v2, p0, Lcom/vungle/publisher/db/model/Ad;->e:Ljava/lang/String;

    invoke-static {v1, v0, v2, v4}, Lcom/vungle/publisher/bi;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 252
    const-string/jumbo v0, "call_to_action_url"

    iget-object v2, p0, Lcom/vungle/publisher/db/model/Ad;->f:Ljava/lang/String;

    invoke-static {v1, v0, v2, v4}, Lcom/vungle/publisher/bi;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 253
    const-string/jumbo v0, "delivery_id"

    iget-object v2, p0, Lcom/vungle/publisher/db/model/Ad;->g:Ljava/lang/String;

    invoke-static {v1, v0, v2, v4}, Lcom/vungle/publisher/bi;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 254
    const-string/jumbo v0, "insert_timestamp_millis"

    iget-wide v2, p0, Lcom/vungle/publisher/db/model/Ad;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v0, v2, v4}, Lcom/vungle/publisher/bi;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 255
    const-string/jumbo v0, "status"

    iget-object v2, p0, Lcom/vungle/publisher/db/model/Ad;->j:Lcom/vungle/publisher/db/model/Ad$a;

    invoke-static {v1, v0, v2, v4}, Lcom/vungle/publisher/bi;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 256
    const-string/jumbo v0, "update_timestamp_millis"

    iget-wide v2, p0, Lcom/vungle/publisher/db/model/Ad;->l:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v0, v2, v4}, Lcom/vungle/publisher/bi;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 257
    const-string/jumbo v0, "failed_timestamp_millis"

    iget-wide v2, p0, Lcom/vungle/publisher/db/model/Ad;->m:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v0, v2, v4}, Lcom/vungle/publisher/bi;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 258
    const-string/jumbo v2, "eventTrackings"

    iget-object v0, p0, Lcom/vungle/publisher/db/model/Ad;->h:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v2, v0, v4}, Lcom/vungle/publisher/bi;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 259
    return-object v1

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/db/model/Ad;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/vungle/publisher/db/model/Ad;->a()Lcom/vungle/publisher/db/model/Ad$Factory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vungle/publisher/db/model/Ad$Factory;->a(Lcom/vungle/publisher/db/model/Ad;)Z

    move-result v0

    return v0
.end method

.method public synthetic r()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/vungle/publisher/db/model/Ad;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic s()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vungle/publisher/db/model/Ad;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
