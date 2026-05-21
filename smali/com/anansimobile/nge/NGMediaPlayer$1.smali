.class final Lcom/anansimobile/nge/NGMediaPlayer$1;
.super Ljava/lang/Object;
.source "NGMediaPlayer.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anansimobile/nge/NGMediaPlayer;->initSounds()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 10
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "sampleId"    # I
    .param p3, "status"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 62
    const-string/jumbo v0, "load sound complete: %d, %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    invoke-static {}, Lcom/anansimobile/nge/NGMediaPlayer;->access$000()Ljava/util/HashMap;

    move-result-object v9

    monitor-enter v9

    .line 64
    :try_start_0
    invoke-static {}, Lcom/anansimobile/nge/NGMediaPlayer;->access$000()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/anansimobile/nge/NGMediaPlayer$SoundPlayInfo;

    .line 65
    .local v7, "info":Lcom/anansimobile/nge/NGMediaPlayer$SoundPlayInfo;
    if-eqz v7, :cond_0

    .line 66
    iget v1, v7, Lcom/anansimobile/nge/NGMediaPlayer$SoundPlayInfo;->mStreamId:I

    .line 69
    invoke-static {}, Lcom/anansimobile/nge/NGMediaPlayer;->access$100()F

    move-result v2

    .line 70
    invoke-static {}, Lcom/anansimobile/nge/NGMediaPlayer;->access$100()F

    move-result v3

    const/4 v4, 0x1

    iget v5, v7, Lcom/anansimobile/nge/NGMediaPlayer$SoundPlayInfo;->mLoopMode:I

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p1

    .line 67
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v8

    .line 74
    .local v8, "playedStreamId":I
    if-nez v8, :cond_1

    .line 75
    const-string/jumbo v0, "play sound (%d) failed!~"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, v7, Lcom/anansimobile/nge/NGMediaPlayer$SoundPlayInfo;->mSID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    :goto_0
    invoke-static {}, Lcom/anansimobile/nge/NGMediaPlayer;->access$000()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .end local v8    # "playedStreamId":I
    :cond_0
    monitor-exit v9

    .line 82
    return-void

    .line 77
    .restart local v8    # "playedStreamId":I
    :cond_1
    invoke-static {}, Lcom/anansimobile/nge/NGMediaPlayer;->access$200()Ljava/util/HashMap;

    move-result-object v0

    iget v1, v7, Lcom/anansimobile/nge/NGMediaPlayer$SoundPlayInfo;->mSID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 81
    .end local v7    # "info":Lcom/anansimobile/nge/NGMediaPlayer$SoundPlayInfo;
    .end local v8    # "playedStreamId":I
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
