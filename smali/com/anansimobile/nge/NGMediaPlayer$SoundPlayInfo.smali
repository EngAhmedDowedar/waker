.class Lcom/anansimobile/nge/NGMediaPlayer$SoundPlayInfo;
.super Ljava/lang/Object;
.source "NGMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anansimobile/nge/NGMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SoundPlayInfo"
.end annotation


# instance fields
.field public mLoopMode:I

.field public mSID:I

.field public mStreamId:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
