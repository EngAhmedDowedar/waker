.class public Lcom/anansimobile/nge/NGMediaPlayer;
.super Ljava/lang/Object;
.source "NGMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anansimobile/nge/NGMediaPlayer$SoundPlayInfo;
    }
.end annotation


# static fields
.field private static final INVALID_SOUND_STREAM_ID:I = 0x0

.field private static final MAX_SOUND_STREAM_NUM:I = 0xa

.field private static final SOUND_PRIORITY:I = 0x1

.field private static final SOUND_QUALITY:I = 0x64

.field private static sCurBackgroundMuisc:Landroid/media/MediaPlayer;

.field private static soundPool:Landroid/media/SoundPool;

.field private static soundPoolMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static soundPoolPlayFailedList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/anansimobile/nge/NGMediaPlayer$SoundPlayInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static soundPoolPlayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static soundStreamVolume:F

.field private static streamVolume:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 30
    sput v1, Lcom/anansimobile/nge/NGMediaPlayer;->streamVolume:F

    .line 31
    sput v1, Lcom/anansimobile/nge/NGMediaPlayer;->soundStreamVolume:F

    .line 33
    sput-object v0, Lcom/anansimobile/nge/NGMediaPlayer;->soundPool:Landroid/media/SoundPool;

    .line 34
    sput-object v0, Lcom/anansimobile/nge/NGMediaPlayer;->soundPoolMap:Ljava/util/HashMap;

    .line 35
    sput-object v0, Lcom/anansimobile/nge/NGMediaPlayer;->soundPoolPlayMap:Ljava/util/HashMap;

    .line 42
    sput-object v0, Lcom/anansimobile/nge/NGMediaPlayer;->soundPoolPlayFailedList:Ljava/util/HashMap;

    .line 356
    sput-object v0, Lcom/anansimobile/nge/NGMediaPlayer;->sCurBackgroundMuisc:Landroid/media/MediaPlayer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/anansimobile/nge/NGMediaPlayer;->soundPoolPlayFailedList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100()F
    .locals 1

    .prologue
    .line 17
    sget v0, Lcom/anansimobile/nge/NGMediaPlayer;->soundStreamVolume:F

    return v0
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/anansimobile/nge/NGMediaPlayer;->soundPoolPlayMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static clearSoundPool()V
    .locals 1

    .prologue
    .line 227
    sget-object v0, Lcom/anansimobile/nge/NGMediaPlayer;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 228
    sget-object v0, Lcom/anansimobile/nge/NGMediaPlayer;->soundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 229
    sget-object v0, Lcom/anansimobile/nge/NGMediaPlayer;->soundPoolPlayMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 230
    sget-object v0, Lcom/anansimobile/nge/NGMediaPlayer;->soundPoolPlayFailedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 231
    return-void
.end method

.method public static createBackgroundMusic()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 305
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    return-object v0
.end method

.method private static getSoundPlayStreamId(I)I
    .locals 3
    .param p0, "sid"    # I

    .prologue
    .line 288
    sget-object v1, Lcom/anansimobile/nge/NGMediaPlayer;->soundPoolPlayMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 289
    .local v0, "streamId":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 293
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getSoundStreamId(I)I
    .locals 3
    .param p0, "sid"    # I

    .prologue
    .line 279
    sget-object v1, Lcom/anansimobile/nge/NGMediaPlayer;->soundPoolMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 280
    .local v0, "streamId":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 284
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static initSounds()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 47
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/anansimobile/nge/NGMediaPlayer;->soundPoolMap:Ljava/util/HashMap;

    .line 48
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/anansimobile/nge/NGMediaPlayer;->soundPoolPlayMap:Ljava/util/HashMap;

    .line 49
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/anansimobile/nge/NGMediaPlayer;->soundPoolPlayFailedList:Ljava/util/HashMap;

    .line 51
    new-instance v1, Landroid/media/SoundPool;

    const/16 v2, 0xa

    const/16 v3, 0x64

    invoke-direct {v1, v2, v4, v3}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v1, Lcom/anansimobile/nge/NGMediaPlayer;->soundPool:Landroid/media/SoundPool;

    .line 58
    sget-object v1, Lcom/anansimobile/nge/NGMediaPlayer;->soundPool:Landroid/media/SoundPool;

    new-instance v2, Lcom/anansimobile/nge/NGMediaPlayer$1;

    invoke-direct {v2}, Lcom/anansimobile/nge/NGMediaPlayer$1;-><init>()V

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 86
    sget-object v1, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Lcom/anansimobile/nge/RootActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 87
    .local v0, "mgr":Landroid/media/AudioManager;
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/anansimobile/nge/NGMediaPlayer;->streamVolume:F

    .line 88
    return-void
.end method

.method public static loadBackgroundMusic(Landroid/media/MediaPlayer;Ljava/lang/String;)V
    .locals 10
    .param p0, "bgMusicPlayer"    # Landroid/media/MediaPlayer;
    .param p1, "musicName"    # Ljava/lang/String;

    .prologue
    .line 311
    invoke-static {}, Lcom/anansimobile/nge/NGDevice;->getDocumentRoot()Ljava/io/File;

    move-result-object v7

    .line 312
    .local v7, "docRoot":Ljava/io/File;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 315
    .local v9, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 324
    :goto_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepare()V

    .line 330
    :goto_1
    return-void

    .line 320
    :cond_0
    sget-object v0, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v0}, Lcom/anansimobile/nge/RootActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 321
    .local v6, "assetFD":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 326
    .end local v6    # "assetFD":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v8

    .line 328
    .local v8, "e":Ljava/io/IOException;
    const-string/jumbo v0, "load asset (%s) failed!~ msg: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static loadBackgroundMusicInPackage(Landroid/media/MediaPlayer;Ljava/lang/String;II)V
    .locals 12
    .param p0, "bgMusicPlayer"    # Landroid/media/MediaPlayer;
    .param p1, "packagePath"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 340
    const/4 v7, 0x0

    .line 343
    .local v7, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 344
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .local v8, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    int-to-long v2, p2

    int-to-long v4, p3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 345
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 347
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v7, v8

    .line 354
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :goto_0
    return-void

    .line 349
    :catch_0
    move-exception v6

    .line 350
    .local v6, "e":Ljava/io/FileNotFoundException;
    :goto_1
    const-string/jumbo v0, "load package (%s) failed!~ msg: %s"

    new-array v1, v11, [Ljava/lang/Object;

    aput-object p1, v1, v9

    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-static {v0, v1}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 351
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v6

    .line 352
    .local v6, "e":Ljava/io/IOException;
    :goto_2
    const-string/jumbo v0, "load package (%s) failed!~ msg: %s"

    new-array v1, v11, [Ljava/lang/Object;

    aput-object p1, v1, v9

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-static {v0, v1}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 351
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v6

    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 349
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v6

    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static loadSound(ILjava/lang/String;)V
    .locals 9
    .param p0, "sid"    # I
    .param p1, "soundFile"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 97
    const/4 v4, 0x0

    .line 100
    .local v4, "streamId":I
    invoke-static {}, Lcom/anansimobile/nge/NGDevice;->getDocumentRoot()Ljava/io/File;

    move-result-object v1

    .line 101
    .local v1, "docRoot":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 103
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 105
    sget-object v5, Lcom/anansimobile/nge/NGMediaPlayer;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v8}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v4

    .line 120
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 121
    sget-object v5, Lcom/anansimobile/nge/NGMediaPlayer;->soundPoolMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_1
    return-void

    .line 108
    :cond_2
    const/4 v0, 0x0

    .line 110
    .local v0, "assetFD":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    sget-object v5, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v5}, Lcom/anansimobile/nge/RootActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 115
    :goto_1
    if-eqz v0, :cond_0

    .line 116
    sget-object v5, Lcom/anansimobile/nge/NGMediaPlayer;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v5, v0, v8}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v4

    goto :goto_0

    .line 111
    :catch_0
    move-exception v2

    .line 113
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v5, "load asset (%s) failed!~ msg: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static loadSoundInPackage(ILjava/lang/String;II)V
    .locals 10
    .param p0, "sid"    # I
    .param p1, "packagePath"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 134
    const/4 v8, 0x0

    .line 136
    .local v8, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 137
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .local v9, "fis":Ljava/io/FileInputStream;
    :try_start_1
    sget-object v0, Lcom/anansimobile/nge/NGMediaPlayer;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v9}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    int-to-long v2, p2

    int-to-long v4, p3

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->load(Ljava/io/FileDescriptor;JJI)I

    .line 138
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v8, v9

    .line 144
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v7

    .line 140
    .local v7, "e":Ljava/io/FileNotFoundException;
    :goto_1
    const-string/jumbo v0, "load package (%s) failed!~ msg: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 141
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v7

    .line 142
    .local v7, "e":Ljava/io/IOException;
    :goto_2
    const-string/jumbo v0, "load package (%s) failed!~ msg: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 141
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v7

    move-object v8, v9

    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 139
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v7

    move-object v8, v9

    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static pauseBackgroundMusic()V
    .locals 1

    .prologue
    .line 400
    sget-object v0, Lcom/anansimobile/nge/NGMediaPlayer;->sCurBackgroundMuisc:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 401
    sget-object v0, Lcom/anansimobile/nge/NGMediaPlayer;->sCurBackgroundMuisc:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 403
    :cond_0
    return-void
.end method

.method public static pauseBackgroundMusic(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p0, "player"    # Landroid/media/MediaPlayer;

    .prologue
    .line 379
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V

    .line 380
    return-void
.end method

.method public static pauseSound(I)V
    .locals 2
    .param p0, "sid"    # I

    .prologue
    .line 206
    invoke-static {p0}, Lcom/anansimobile/nge/NGMediaPlayer;->getSoundPlayStreamId(I)I

    move-result v0

    .line 207
    .local v0, "streamId":I
    if-eqz v0, :cond_0

    .line 208
    sget-object v1, Lcom/anansimobile/nge/NGMediaPlayer;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->pause(I)V

    .line 210
    :cond_0
    return-void
.end method

.method public static playBackgroundMusic(Landroid/media/MediaPlayer;Z)V
    .locals 1
    .param p0, "player"    # Landroid/media/MediaPlayer;
    .param p1, "loop"    # Z

    .prologue
    .line 363
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 365
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    .line 368
    sput-object p0, Lcom/anansimobile/nge/NGMediaPlayer;->sCurBackgroundMuisc:Landroid/media/MediaPlayer;

    .line 370
    :cond_0
    return-void
.end method

.method public static playSound(IZ)V
    .locals 10
    .param p0, "sid"    # I
    .param p1, "loop"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 163
    if-eqz p1, :cond_1

    const/4 v5, -0x1

    .line 164
    .local v5, "loopMode":I
    :goto_0
    invoke-static {p0}, Lcom/anansimobile/nge/NGMediaPlayer;->getSoundStreamId(I)I

    move-result v1

    .line 165
    .local v1, "streamId":I
    if-eqz v1, :cond_0

    .line 166
    sget-object v0, Lcom/anansimobile/nge/NGMediaPlayer;->soundPool:Landroid/media/SoundPool;

    sget v2, Lcom/anansimobile/nge/NGMediaPlayer;->soundStreamVolume:F

    sget v3, Lcom/anansimobile/nge/NGMediaPlayer;->soundStreamVolume:F

    const/high16 v6, 0x3f800000    # 1.0f

    .line 167
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v8

    .line 174
    .local v8, "playedStreamId":I
    if-nez v8, :cond_2

    .line 175
    const-string/jumbo v0, "play sound (%d) failed!~"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v0, v2}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    sget-object v2, Lcom/anansimobile/nge/NGMediaPlayer;->soundPoolPlayFailedList:Ljava/util/HashMap;

    monitor-enter v2

    .line 177
    :try_start_0
    new-instance v7, Lcom/anansimobile/nge/NGMediaPlayer$SoundPlayInfo;

    invoke-direct {v7}, Lcom/anansimobile/nge/NGMediaPlayer$SoundPlayInfo;-><init>()V

    .line 178
    .local v7, "info":Lcom/anansimobile/nge/NGMediaPlayer$SoundPlayInfo;
    iput p0, v7, Lcom/anansimobile/nge/NGMediaPlayer$SoundPlayInfo;->mSID:I

    .line 179
    iput v1, v7, Lcom/anansimobile/nge/NGMediaPlayer$SoundPlayInfo;->mStreamId:I

    .line 180
    iput v5, v7, Lcom/anansimobile/nge/NGMediaPlayer$SoundPlayInfo;->mLoopMode:I

    .line 181
    sget-object v0, Lcom/anansimobile/nge/NGMediaPlayer;->soundPoolPlayFailedList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    monitor-exit v2

    .line 188
    .end local v7    # "info":Lcom/anansimobile/nge/NGMediaPlayer$SoundPlayInfo;
    .end local v8    # "playedStreamId":I
    :cond_0
    :goto_1
    return-void

    .end local v1    # "streamId":I
    .end local v5    # "loopMode":I
    :cond_1
    move v5, v9

    .line 163
    goto :goto_0

    .line 182
    .restart local v1    # "streamId":I
    .restart local v5    # "loopMode":I
    .restart local v8    # "playedStreamId":I
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 185
    :cond_2
    sget-object v0, Lcom/anansimobile/nge/NGMediaPlayer;->soundPoolPlayMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static releaseBackgroundMusic(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p0, "player"    # Landroid/media/MediaPlayer;

    .prologue
    .line 387
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V

    .line 389
    sget-object v0, Lcom/anansimobile/nge/NGMediaPlayer;->sCurBackgroundMuisc:Landroid/media/MediaPlayer;

    if-ne v0, p0, :cond_0

    .line 390
    const/4 v0, 0x0

    sput-object v0, Lcom/anansimobile/nge/NGMediaPlayer;->sCurBackgroundMuisc:Landroid/media/MediaPlayer;

    .line 392
    :cond_0
    return-void
.end method

.method public static resumeBackgroundMuisc()V
    .locals 1

    .prologue
    .line 406
    sget-object v0, Lcom/anansimobile/nge/NGMediaPlayer;->sCurBackgroundMuisc:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 407
    sget-object v0, Lcom/anansimobile/nge/NGMediaPlayer;->sCurBackgroundMuisc:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 409
    :cond_0
    return-void
.end method

.method public static resumeBackgroundMusic(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p0, "player"    # Landroid/media/MediaPlayer;

    .prologue
    .line 383
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    .line 384
    return-void
.end method

.method public static resumeSound(I)V
    .locals 2
    .param p0, "sid"    # I

    .prologue
    .line 217
    invoke-static {p0}, Lcom/anansimobile/nge/NGMediaPlayer;->getSoundPlayStreamId(I)I

    move-result v0

    .line 218
    .local v0, "streamId":I
    if-eqz v0, :cond_0

    .line 219
    sget-object v1, Lcom/anansimobile/nge/NGMediaPlayer;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->resume(I)V

    .line 221
    :cond_0
    return-void
.end method

.method public static setBackgroundMusicVolume(Landroid/media/MediaPlayer;I)V
    .locals 3
    .param p0, "player"    # Landroid/media/MediaPlayer;
    .param p1, "volume"    # I

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    .line 395
    int-to-float v0, p1

    div-float/2addr v0, v2

    int-to-float v1, p1

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 396
    return-void
.end method

.method public static setSoundVolume(I)V
    .locals 6
    .param p0, "volume"    # I

    .prologue
    const/high16 v5, 0x42c80000    # 100.0f

    .line 255
    sget-object v2, Lcom/anansimobile/nge/NGMediaPlayer;->soundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 256
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 257
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 258
    .local v1, "streamId":I
    if-eqz v1, :cond_0

    .line 259
    int-to-float v2, p0

    div-float/2addr v2, v5

    sput v2, Lcom/anansimobile/nge/NGMediaPlayer;->soundStreamVolume:F

    .line 260
    sget-object v2, Lcom/anansimobile/nge/NGMediaPlayer;->soundPool:Landroid/media/SoundPool;

    sget v3, Lcom/anansimobile/nge/NGMediaPlayer;->soundStreamVolume:F

    sget v4, Lcom/anansimobile/nge/NGMediaPlayer;->soundStreamVolume:F

    invoke-virtual {v2, v1, v3, v4}, Landroid/media/SoundPool;->setVolume(IFF)V

    goto :goto_0

    .line 266
    .end local v1    # "streamId":I
    :cond_1
    sget-object v2, Lcom/anansimobile/nge/NGMediaPlayer;->soundPoolPlayMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 267
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 268
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 269
    .restart local v1    # "streamId":I
    if-eqz v1, :cond_2

    .line 270
    int-to-float v2, p0

    div-float/2addr v2, v5

    sput v2, Lcom/anansimobile/nge/NGMediaPlayer;->soundStreamVolume:F

    .line 271
    sget-object v2, Lcom/anansimobile/nge/NGMediaPlayer;->soundPool:Landroid/media/SoundPool;

    sget v3, Lcom/anansimobile/nge/NGMediaPlayer;->soundStreamVolume:F

    sget v4, Lcom/anansimobile/nge/NGMediaPlayer;->soundStreamVolume:F

    invoke-virtual {v2, v1, v3, v4}, Landroid/media/SoundPool;->setVolume(IFF)V

    goto :goto_1

    .line 276
    .end local v1    # "streamId":I
    :cond_3
    return-void
.end method

.method public static setSoundVolume(II)V
    .locals 5
    .param p0, "sid"    # I
    .param p1, "volume"    # I

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    .line 235
    invoke-static {p0}, Lcom/anansimobile/nge/NGMediaPlayer;->getSoundStreamId(I)I

    move-result v0

    .line 236
    .local v0, "streamId":I
    if-eqz v0, :cond_0

    .line 237
    int-to-float v1, p1

    div-float/2addr v1, v4

    sput v1, Lcom/anansimobile/nge/NGMediaPlayer;->soundStreamVolume:F

    .line 238
    sget-object v1, Lcom/anansimobile/nge/NGMediaPlayer;->soundPool:Landroid/media/SoundPool;

    sget v2, Lcom/anansimobile/nge/NGMediaPlayer;->soundStreamVolume:F

    sget v3, Lcom/anansimobile/nge/NGMediaPlayer;->soundStreamVolume:F

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 244
    :cond_0
    invoke-static {p0}, Lcom/anansimobile/nge/NGMediaPlayer;->getSoundPlayStreamId(I)I

    move-result v0

    .line 245
    if-eqz v0, :cond_1

    .line 246
    int-to-float v1, p1

    div-float/2addr v1, v4

    sput v1, Lcom/anansimobile/nge/NGMediaPlayer;->soundStreamVolume:F

    .line 247
    sget-object v1, Lcom/anansimobile/nge/NGMediaPlayer;->soundPool:Landroid/media/SoundPool;

    sget v2, Lcom/anansimobile/nge/NGMediaPlayer;->soundStreamVolume:F

    sget v3, Lcom/anansimobile/nge/NGMediaPlayer;->soundStreamVolume:F

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 251
    :cond_1
    return-void
.end method

.method public static stopBackgroundMusic(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p0, "player"    # Landroid/media/MediaPlayer;

    .prologue
    .line 374
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V

    .line 375
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 376
    return-void
.end method

.method public static stopSound(I)V
    .locals 2
    .param p0, "sid"    # I

    .prologue
    .line 195
    invoke-static {p0}, Lcom/anansimobile/nge/NGMediaPlayer;->getSoundPlayStreamId(I)I

    move-result v0

    .line 196
    .local v0, "streamId":I
    if-eqz v0, :cond_0

    .line 197
    sget-object v1, Lcom/anansimobile/nge/NGMediaPlayer;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    .line 199
    :cond_0
    return-void
.end method

.method public static unloadBackgroundMusic(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p0, "bgMusicPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 359
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->reset()V

    .line 360
    return-void
.end method

.method public static unloadSound(I)V
    .locals 2
    .param p0, "sid"    # I

    .prologue
    .line 151
    invoke-static {p0}, Lcom/anansimobile/nge/NGMediaPlayer;->getSoundStreamId(I)I

    move-result v0

    .line 152
    .local v0, "streamId":I
    if-eqz v0, :cond_0

    .line 153
    sget-object v1, Lcom/anansimobile/nge/NGMediaPlayer;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->unload(I)Z

    .line 155
    :cond_0
    return-void
.end method
