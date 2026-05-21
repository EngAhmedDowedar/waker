.class public Lorg/jivesoftware/smack/XMPPConnection;
.super Lorg/jivesoftware/smack/Connection;
.source "XMPPConnection.java"


# instance fields
.field private anonymous:Z

.field private authenticated:Z

.field private compressionMethods:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private connected:Z

.field connectionID:Ljava/lang/String;

.field packetReader:Lorg/jivesoftware/smack/PacketReader;

.field packetWriter:Lorg/jivesoftware/smack/PacketWriter;

.field roster:Lorg/jivesoftware/smack/Roster;

.field protected socket:Ljava/net/Socket;

.field private user:Ljava/lang/String;

.field private usingCompression:Z

.field private usingTLS:Z

.field private wasAuthenticated:Z


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/ConnectionConfiguration;)V
    .locals 2
    .param p1, "config"    # Lorg/jivesoftware/smack/ConnectionConfiguration;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Connection;-><init>(Lorg/jivesoftware/smack/ConnectionConfiguration;)V

    .line 62
    iput-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->connectionID:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->user:Ljava/lang/String;

    .line 64
    iput-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->connected:Z

    .line 68
    iput-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->authenticated:Z

    .line 73
    iput-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->wasAuthenticated:Z

    .line 74
    iput-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->anonymous:Z

    .line 75
    iput-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->usingTLS:Z

    .line 80
    iput-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->roster:Lorg/jivesoftware/smack/Roster;

    .line 102
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/ConnectionConfiguration;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)V
    .locals 2
    .param p1, "config"    # Lorg/jivesoftware/smack/ConnectionConfiguration;
    .param p2, "callbackHandler"    # Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Connection;-><init>(Lorg/jivesoftware/smack/ConnectionConfiguration;)V

    .line 62
    iput-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->connectionID:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->user:Ljava/lang/String;

    .line 64
    iput-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->connected:Z

    .line 68
    iput-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->authenticated:Z

    .line 73
    iput-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->wasAuthenticated:Z

    .line 74
    iput-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->anonymous:Z

    .line 75
    iput-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->usingTLS:Z

    .line 80
    iput-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->roster:Lorg/jivesoftware/smack/Roster;

    .line 124
    invoke-virtual {p1, p2}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setCallbackHandler(Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)V

    .line 125
    return-void
.end method

.method private connectUsingConfiguration(Lorg/jivesoftware/smack/ConnectionConfiguration;)V
    .locals 8
    .param p1, "config"    # Lorg/jivesoftware/smack/ConnectionConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 481
    invoke-virtual {p1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 482
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getPort()I

    move-result v3

    .line 484
    .local v3, "port":I
    :try_start_0
    invoke-virtual {p1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v5

    if-nez v5, :cond_0

    .line 485
    new-instance v5, Ljava/net/Socket;

    invoke-direct {v5, v1, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v5, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 503
    :goto_0
    invoke-direct {p0}, Lorg/jivesoftware/smack/XMPPConnection;->initConnection()V

    .line 504
    return-void

    .line 488
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v5

    invoke-virtual {v5, v1, v3}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v5

    iput-object v5, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 491
    :catch_0
    move-exception v4

    .line 492
    .local v4, "uhe":Ljava/net/UnknownHostException;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Could not connect to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "errorMessage":Ljava/lang/String;
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    new-instance v6, Lorg/jivesoftware/smack/packet/XMPPError;

    .line 494
    sget-object v7, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->remote_server_timeout:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    invoke-direct {v6, v7, v0}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Ljava/lang/String;)V

    .line 493
    invoke-direct {v5, v0, v6, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;Ljava/lang/Throwable;)V

    throw v5

    .line 497
    .end local v0    # "errorMessage":Ljava/lang/String;
    .end local v4    # "uhe":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v2

    .line 498
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "XMPPError connecting to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 499
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 498
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 500
    .restart local v0    # "errorMessage":Ljava/lang/String;
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    new-instance v6, Lorg/jivesoftware/smack/packet/XMPPError;

    .line 501
    sget-object v7, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->remote_server_error:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    invoke-direct {v6, v7, v0}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Ljava/lang/String;)V

    .line 500
    invoke-direct {v5, v0, v6, v2}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private hasAvailableCompressionMethod(Ljava/lang/String;)Z
    .locals 1
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 805
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->compressionMethods:Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->compressionMethods:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initConnection()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 513
    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    if-eqz v4, :cond_0

    move v1, v3

    .line 514
    .local v1, "isFirstInitialization":Z
    :cond_0
    if-nez v1, :cond_1

    .line 515
    iput-boolean v3, p0, Lorg/jivesoftware/smack/XMPPConnection;->usingCompression:Z

    .line 519
    :cond_1
    invoke-direct {p0}, Lorg/jivesoftware/smack/XMPPConnection;->initReaderAndWriter()V

    .line 522
    if-eqz v1, :cond_3

    .line 523
    :try_start_0
    new-instance v4, Lorg/jivesoftware/smack/PacketWriter;

    invoke-direct {v4, p0}, Lorg/jivesoftware/smack/PacketWriter;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    iput-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    .line 524
    new-instance v4, Lorg/jivesoftware/smack/PacketReader;

    invoke-direct {v4, p0}, Lorg/jivesoftware/smack/PacketReader;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    iput-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    .line 532
    :goto_0
    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/PacketWriter;->startup()V

    .line 535
    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/PacketReader;->startup()V

    .line 538
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->connected:Z

    .line 541
    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/PacketWriter;->startKeepAliveProcess()V

    .line 544
    if-eqz v1, :cond_a

    .line 546
    invoke-static {}, Lorg/jivesoftware/smack/XMPPConnection;->getConnectionCreationListeners()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_9

    .line 600
    :cond_2
    :goto_2
    return-void

    .line 527
    :cond_3
    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/PacketWriter;->init()V

    .line 528
    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/PacketReader;->init()V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 555
    :catch_0
    move-exception v0

    .line 559
    .local v0, "ex":Lorg/jivesoftware/smack/XMPPException;
    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    if-eqz v4, :cond_4

    .line 561
    :try_start_1
    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/PacketWriter;->shutdown()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5

    .line 564
    :goto_3
    iput-object v6, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    .line 566
    :cond_4
    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    if-eqz v4, :cond_5

    .line 568
    :try_start_2
    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/PacketReader;->shutdown()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    .line 571
    :goto_4
    iput-object v6, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    .line 573
    :cond_5
    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/Reader;

    if-eqz v4, :cond_6

    .line 575
    :try_start_3
    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/Reader;

    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 578
    :goto_5
    iput-object v6, p0, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/Reader;

    .line 580
    :cond_6
    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/Writer;

    if-eqz v4, :cond_7

    .line 582
    :try_start_4
    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/Writer;

    invoke-virtual {v4}, Ljava/io/Writer;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 585
    :goto_6
    iput-object v6, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/Writer;

    .line 587
    :cond_7
    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    if-eqz v4, :cond_8

    .line 589
    :try_start_5
    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 592
    :goto_7
    iput-object v6, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    .line 594
    :cond_8
    iget-boolean v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->authenticated:Z

    invoke-direct {p0, v4}, Lorg/jivesoftware/smack/XMPPConnection;->setWasAuthenticated(Z)V

    .line 595
    iput-boolean v3, p0, Lorg/jivesoftware/smack/XMPPConnection;->authenticated:Z

    .line 596
    iput-boolean v3, p0, Lorg/jivesoftware/smack/XMPPConnection;->connected:Z

    .line 598
    throw v0

    .line 546
    .end local v0    # "ex":Lorg/jivesoftware/smack/XMPPException;
    :cond_9
    :try_start_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/ConnectionCreationListener;

    .line 547
    .local v2, "listener":Lorg/jivesoftware/smack/ConnectionCreationListener;
    invoke-interface {v2, p0}, Lorg/jivesoftware/smack/ConnectionCreationListener;->connectionCreated(Lorg/jivesoftware/smack/Connection;)V

    goto :goto_1

    .line 550
    .end local v2    # "listener":Lorg/jivesoftware/smack/ConnectionCreationListener;
    :cond_a
    iget-boolean v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->wasAuthenticated:Z

    if-nez v4, :cond_2

    .line 551
    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/PacketReader;->notifyReconnection()V
    :try_end_6
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 591
    .restart local v0    # "ex":Lorg/jivesoftware/smack/XMPPException;
    :catch_1
    move-exception v4

    goto :goto_7

    .line 584
    :catch_2
    move-exception v4

    goto :goto_6

    .line 577
    :catch_3
    move-exception v4

    goto :goto_5

    .line 570
    :catch_4
    move-exception v4

    goto :goto_4

    .line 563
    :catch_5
    move-exception v4

    goto :goto_3
.end method

.method private initReaderAndWriter()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 604
    :try_start_0
    iget-boolean v8, p0, Lorg/jivesoftware/smack/XMPPConnection;->usingCompression:Z

    if-nez v8, :cond_0

    .line 606
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    iget-object v10, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    const-string/jumbo v11, "UTF-8"

    invoke-direct {v9, v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 605
    iput-object v8, p0, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/Reader;

    .line 607
    new-instance v8, Ljava/io/BufferedWriter;

    .line 608
    new-instance v9, Ljava/io/OutputStreamWriter;

    iget-object v10, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    const-string/jumbo v11, "UTF-8"

    invoke-direct {v9, v10, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 607
    iput-object v8, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 644
    :goto_0
    return-void

    .line 612
    :cond_0
    :try_start_1
    const-string/jumbo v8, "com.jcraft.jzlib.ZOutputStream"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 614
    .local v7, "zoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/io/OutputStream;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 615
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/16 v10, 0x9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 616
    .local v5, "out":Ljava/lang/Object;
    const-string/jumbo v8, "setFlushMode"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 617
    .local v4, "method":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v4, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    check-cast v5, Ljava/io/OutputStream;

    .end local v5    # "out":Ljava/lang/Object;
    const-string/jumbo v10, "UTF-8"

    invoke-direct {v9, v5, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 618
    iput-object v8, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/Writer;

    .line 621
    const-string/jumbo v8, "com.jcraft.jzlib.ZInputStream"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 622
    .local v6, "ziClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/io/InputStream;

    aput-object v10, v8, v9

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 623
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 624
    .local v2, "in":Ljava/lang/Object;
    const-string/jumbo v8, "setFlushMode"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 625
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v4, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    check-cast v2, Ljava/io/InputStream;

    .end local v2    # "in":Ljava/lang/Object;
    const-string/jumbo v10, "UTF-8"

    invoke-direct {v9, v2, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v8, p0, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/Reader;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 628
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "ziClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "zoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 629
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 630
    new-instance v8, Ljava/io/BufferedReader;

    .line 631
    new-instance v9, Ljava/io/InputStreamReader;

    iget-object v10, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    const-string/jumbo v11, "UTF-8"

    invoke-direct {v9, v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 630
    iput-object v8, p0, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/Reader;

    .line 632
    new-instance v8, Ljava/io/BufferedWriter;

    .line 633
    new-instance v9, Ljava/io/OutputStreamWriter;

    iget-object v10, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    const-string/jumbo v11, "UTF-8"

    invoke-direct {v9, v10, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 632
    iput-object v8, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/Writer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 637
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 638
    .local v3, "ioe":Ljava/io/IOException;
    new-instance v8, Lorg/jivesoftware/smack/XMPPException;

    .line 639
    const-string/jumbo v9, "XMPPError establishing connection with server."

    .line 640
    new-instance v10, Lorg/jivesoftware/smack/packet/XMPPError;

    sget-object v11, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->remote_server_error:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 641
    const-string/jumbo v12, "XMPPError establishing connection with server."

    .line 640
    invoke-direct {v10, v11, v12}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Ljava/lang/String;)V

    .line 638
    invoke-direct {v8, v9, v10, v3}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;Ljava/lang/Throwable;)V

    throw v8
.end method

.method private requestStreamCompression()V
    .locals 3

    .prologue
    .line 861
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/Writer;

    const-string/jumbo v2, "<compress xmlns=\'http://jabber.org/protocol/compress\'>"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 862
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/Writer;

    const-string/jumbo v2, "<method>zlib</method></compress>"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 863
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    :goto_0
    return-void

    .line 865
    :catch_0
    move-exception v0

    .line 866
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private setWasAuthenticated(Z)V
    .locals 1
    .param p1, "wasAuthenticated"    # Z

    .prologue
    .line 945
    iget-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->wasAuthenticated:Z

    if-nez v0, :cond_0

    .line 946
    iput-boolean p1, p0, Lorg/jivesoftware/smack/XMPPConnection;->wasAuthenticated:Z

    .line 948
    :cond_0
    return-void
.end method

.method private useCompression()Z
    .locals 4

    .prologue
    .line 829
    iget-boolean v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->authenticated:Z

    if-eqz v1, :cond_0

    .line 830
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Compression should be negotiated before authentication."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 833
    :cond_0
    :try_start_0
    const-string/jumbo v1, "com.jcraft.jzlib.ZOutputStream"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    const-string/jumbo v1, "zlib"

    invoke-direct {p0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->hasAvailableCompressionMethod(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 839
    invoke-direct {p0}, Lorg/jivesoftware/smack/XMPPConnection;->requestStreamCompression()V

    .line 841
    monitor-enter p0

    .line 843
    :try_start_1
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 841
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 849
    iget-boolean v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->usingCompression:Z

    .line 851
    :goto_1
    return v1

    .line 835
    :catch_0
    move-exception v0

    .line 836
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Cannot use compression. Add smackx.jar to the classpath"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 841
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 851
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 845
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public addPacketWriterInterceptor(Lorg/jivesoftware/smack/PacketInterceptor;Lorg/jivesoftware/smack/filter/PacketFilter;)V
    .locals 0
    .param p1, "packetInterceptor"    # Lorg/jivesoftware/smack/PacketInterceptor;
    .param p2, "packetFilter"    # Lorg/jivesoftware/smack/filter/PacketFilter;

    .prologue
    .line 441
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketInterceptor(Lorg/jivesoftware/smack/PacketInterceptor;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 442
    return-void
.end method

.method public addPacketWriterListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V
    .locals 0
    .param p1, "packetListener"    # Lorg/jivesoftware/smack/PacketListener;
    .param p2, "packetFilter"    # Lorg/jivesoftware/smack/filter/PacketFilter;

    .prologue
    .line 467
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketSendingListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 468
    return-void
.end method

.method public connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 917
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-direct {p0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->connectUsingConfiguration(Lorg/jivesoftware/smack/ConnectionConfiguration;)V

    .line 920
    iget-boolean v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->connected:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->wasAuthenticated:Z

    if-eqz v1, :cond_0

    .line 923
    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->isAnonymous()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 925
    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->loginAnonymously()V

    .line 931
    :goto_0
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketReader;->notifyReconnection()V

    .line 937
    :cond_0
    :goto_1
    return-void

    .line 928
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getUsername()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getPassword()Ljava/lang/String;

    move-result-object v2

    .line 929
    iget-object v3, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getResource()Ljava/lang/String;

    move-result-object v3

    .line 928
    invoke-virtual {p0, v1, v2, v3}, Lorg/jivesoftware/smack/XMPPConnection;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 933
    :catch_0
    move-exception v0

    .line 934
    .local v0, "e":Lorg/jivesoftware/smack/XMPPException;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException;->printStackTrace()V

    goto :goto_1
.end method

.method public disconnect(Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 2
    .param p1, "unavailablePresence"    # Lorg/jivesoftware/smack/packet/Presence;

    .prologue
    const/4 v1, 0x0

    .line 400
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    if-nez v0, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/XMPPConnection;->shutdown(Lorg/jivesoftware/smack/packet/Presence;)V

    .line 406
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->roster:Lorg/jivesoftware/smack/Roster;

    if-eqz v0, :cond_2

    .line 407
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->roster:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/Roster;->cleanup()V

    .line 408
    iput-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->roster:Lorg/jivesoftware/smack/Roster;

    .line 411
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->wasAuthenticated:Z

    .line 413
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketWriter;->cleanup()V

    .line 414
    iput-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    .line 415
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketReader;->cleanup()V

    .line 416
    iput-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    goto :goto_0
.end method

.method public getConnectionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    const/4 v0, 0x0

    .line 131
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->connectionID:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRoster()Lorg/jivesoftware/smack/Roster;
    .locals 10

    .prologue
    .line 290
    iget-object v6, p0, Lorg/jivesoftware/smack/XMPPConnection;->roster:Lorg/jivesoftware/smack/Roster;

    if-nez v6, :cond_0

    .line 291
    const/4 v6, 0x0

    .line 320
    :goto_0
    return-object v6

    .line 300
    :cond_0
    iget-object v6, p0, Lorg/jivesoftware/smack/XMPPConnection;->roster:Lorg/jivesoftware/smack/Roster;

    iget-boolean v6, v6, Lorg/jivesoftware/smack/Roster;->rosterInitialized:Z

    if-nez v6, :cond_2

    .line 302
    :try_start_0
    iget-object v7, p0, Lorg/jivesoftware/smack/XMPPConnection;->roster:Lorg/jivesoftware/smack/Roster;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :try_start_1
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v6

    int-to-long v4, v6

    .line 304
    .local v4, "waitTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 305
    .local v2, "start":J
    :goto_1
    iget-object v6, p0, Lorg/jivesoftware/smack/XMPPConnection;->roster:Lorg/jivesoftware/smack/Roster;

    iget-boolean v6, v6, Lorg/jivesoftware/smack/Roster;->rosterInitialized:Z

    if-eqz v6, :cond_3

    .line 302
    :cond_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    .end local v2    # "start":J
    .end local v4    # "waitTime":J
    :cond_2
    :goto_2
    iget-object v6, p0, Lorg/jivesoftware/smack/XMPPConnection;->roster:Lorg/jivesoftware/smack/Roster;

    goto :goto_0

    .line 306
    .restart local v2    # "start":J
    .restart local v4    # "waitTime":J
    :cond_3
    const-wide/16 v8, 0x0

    cmp-long v6, v4, v8

    if-lez v6, :cond_1

    .line 309
    :try_start_2
    iget-object v6, p0, Lorg/jivesoftware/smack/XMPPConnection;->roster:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v6, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 311
    .local v0, "now":J
    sub-long v8, v0, v2

    sub-long/2addr v4, v8

    .line 312
    move-wide v2, v0

    goto :goto_1

    .line 302
    .end local v0    # "now":J
    .end local v2    # "start":J
    .end local v4    # "waitTime":J
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v6
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 316
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    const/4 v0, 0x0

    .line 138
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->user:Ljava/lang/String;

    goto :goto_0
.end method

.method public isAnonymous()Z
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->anonymous:Z

    return v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->authenticated:Z

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->connected:Z

    return v0
.end method

.method public isSecureConnection()Z
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->isUsingTLS()Z

    move-result v0

    return v0
.end method

.method public isUsingCompression()Z
    .locals 1

    .prologue
    .line 809
    iget-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->usingCompression:Z

    return v0
.end method

.method public isUsingTLS()Z
    .locals 1

    .prologue
    .line 657
    iget-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->usingTLS:Z

    return v0
.end method

.method public declared-synchronized login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "resource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Not connected to server."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 173
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->authenticated:Z

    if-eqz v1, :cond_1

    .line 174
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Already logged in to server."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 180
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isSASLAuthenticationEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 181
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/SASLAuthentication;->hasNonAnonymousAuthentication()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 183
    if-eqz p2, :cond_7

    .line 184
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    invoke-virtual {v1, p1, p2, p3}, Lorg/jivesoftware/smack/SASLAuthentication;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "response":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_9

    .line 198
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->user:Ljava/lang/String;

    .line 200
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setServiceName(Ljava/lang/String;)V

    .line 210
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isCompressionEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 211
    invoke-direct {p0}, Lorg/jivesoftware/smack/XMPPConnection;->useCompression()Z

    .line 215
    :cond_3
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->roster:Lorg/jivesoftware/smack/Roster;

    if-nez v1, :cond_4

    .line 216
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->rosterStorage:Lorg/jivesoftware/smack/RosterStorage;

    if-nez v1, :cond_a

    .line 217
    new-instance v1, Lorg/jivesoftware/smack/Roster;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smack/Roster;-><init>(Lorg/jivesoftware/smack/Connection;)V

    iput-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->roster:Lorg/jivesoftware/smack/Roster;

    .line 223
    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isRosterLoadedAtLogin()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 224
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->roster:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/Roster;->reload()V

    .line 228
    :cond_5
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isSendPresence()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 229
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    new-instance v2, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v3, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/PacketWriter;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 233
    :cond_6
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->authenticated:Z

    .line 234
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->anonymous:Z

    .line 237
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v1, p1, p2, p3}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setLoginInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    monitor-exit p0

    return-void

    .line 187
    .end local v0    # "response":Ljava/lang/String;
    :cond_7
    :try_start_2
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    .line 188
    iget-object v2, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getCallbackHandler()Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    move-result-object v2

    invoke-virtual {v1, p1, p3, v2}, Lorg/jivesoftware/smack/SASLAuthentication;->authenticate(Ljava/lang/String;Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .restart local v0    # "response":Ljava/lang/String;
    goto :goto_0

    .line 193
    .end local v0    # "response":Ljava/lang/String;
    :cond_8
    new-instance v1, Lorg/jivesoftware/smack/NonSASLAuthentication;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smack/NonSASLAuthentication;-><init>(Lorg/jivesoftware/smack/Connection;)V

    invoke-virtual {v1, p1, p2, p3}, Lorg/jivesoftware/smack/NonSASLAuthentication;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "response":Ljava/lang/String;
    goto :goto_0

    .line 203
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->user:Ljava/lang/String;

    .line 204
    if-eqz p3, :cond_2

    .line 205
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->user:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->user:Ljava/lang/String;

    goto/16 :goto_1

    .line 220
    :cond_a
    new-instance v1, Lorg/jivesoftware/smack/Roster;

    iget-object v2, p0, Lorg/jivesoftware/smack/XMPPConnection;->rosterStorage:Lorg/jivesoftware/smack/RosterStorage;

    invoke-direct {v1, p0, v2}, Lorg/jivesoftware/smack/Roster;-><init>(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/RosterStorage;)V

    iput-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->roster:Lorg/jivesoftware/smack/Roster;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method public declared-synchronized loginAnonymously()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 251
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Not connected to server."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 254
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->authenticated:Z

    if-eqz v1, :cond_1

    .line 255
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Already logged in to server."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 259
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isSASLAuthenticationEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 260
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/SASLAuthentication;->hasAnonymousAuthentication()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 261
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/SASLAuthentication;->authenticateAnonymously()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "response":Ljava/lang/String;
    :goto_0
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->user:Ljava/lang/String;

    .line 271
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setServiceName(Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isCompressionEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 275
    invoke-direct {p0}, Lorg/jivesoftware/smack/XMPPConnection;->useCompression()Z

    .line 279
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->roster:Lorg/jivesoftware/smack/Roster;

    .line 282
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    new-instance v2, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v3, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/PacketWriter;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 285
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->authenticated:Z

    .line 286
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->anonymous:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    monitor-exit p0

    return-void

    .line 265
    .end local v0    # "response":Ljava/lang/String;
    :cond_3
    :try_start_2
    new-instance v1, Lorg/jivesoftware/smack/NonSASLAuthentication;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smack/NonSASLAuthentication;-><init>(Lorg/jivesoftware/smack/Connection;)V

    invoke-virtual {v1}, Lorg/jivesoftware/smack/NonSASLAuthentication;->authenticateAnonymously()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .restart local v0    # "response":Ljava/lang/String;
    goto :goto_0
.end method

.method proceedTLSReceived()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 695
    const-string/jumbo v18, "TLS"

    invoke-static/range {v18 .. v18}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v7

    .line 696
    .local v7, "context":Ljavax/net/ssl/SSLContext;
    const/4 v11, 0x0

    .line 697
    .local v11, "ks":Ljava/security/KeyStore;
    const/4 v10, 0x0

    check-cast v10, [Ljavax/net/ssl/KeyManager;

    .line 698
    .local v10, "kms":[Ljavax/net/ssl/KeyManager;
    const/4 v14, 0x0

    .line 700
    .local v14, "pcb":Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getCallbackHandler()Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    move-result-object v18

    if-nez v18, :cond_0

    .line 701
    const/4 v11, 0x0

    .line 759
    :goto_0
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Lorg/jivesoftware/smack/ServerTrustManager;

    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smack/XMPPConnection;->getServiceName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    move-object/from16 v22, v0

    invoke-direct/range {v20 .. v22}, Lorg/jivesoftware/smack/ServerTrustManager;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/ConnectionConfiguration;)V

    aput-object v20, v18, v19

    .line 760
    new-instance v19, Ljava/security/SecureRandom;

    invoke-direct/range {v19 .. v19}, Ljava/security/SecureRandom;-><init>()V

    .line 758
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v10, v0, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    move-object/from16 v17, v0

    .line 763
    .local v17, "plain":Ljava/net/Socket;
    invoke-virtual {v7}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v18

    .line 764
    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->getPort()I

    move-result v20

    const/16 v21, 0x1

    .line 763
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 768
    invoke-direct/range {p0 .. p0}, Lorg/jivesoftware/smack/XMPPConnection;->initReaderAndWriter()V

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    move-object/from16 v18, v0

    check-cast v18, Ljavax/net/ssl/SSLSocket;

    invoke-virtual/range {v18 .. v18}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 781
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/jivesoftware/smack/XMPPConnection;->usingTLS:Z

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/Writer;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/jivesoftware/smack/PacketWriter;->setWriter(Ljava/io/Writer;)V

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/jivesoftware/smack/PacketWriter;->openStream()V

    .line 787
    return-void

    .line 704
    .end local v17    # "plain":Ljava/net/Socket;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getKeystoreType()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "NONE"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 705
    const/4 v11, 0x0

    .line 706
    const/4 v14, 0x0

    .line 743
    :goto_1
    const-string/jumbo v18, "SunX509"

    invoke-static/range {v18 .. v18}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v9

    .line 745
    .local v9, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    if-nez v14, :cond_4

    .line 746
    const/16 v18, 0x0

    :try_start_0
    move-object/from16 v0, v18

    invoke-virtual {v9, v11, v0}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 751
    :goto_2
    invoke-virtual {v9}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v10

    goto/16 :goto_0

    .line 708
    .end local v9    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getKeystoreType()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "PKCS11"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 710
    :try_start_1
    const-string/jumbo v18, "sun.security.pkcs11.SunPKCS11"

    invoke-static/range {v18 .. v18}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-class v21, Ljava/io/InputStream;

    aput-object v21, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 711
    .local v5, "c":Ljava/lang/reflect/Constructor;
    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "name = SmartCard\nlibrary = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getPKCS11Library()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 712
    .local v16, "pkcs11Config":Ljava/lang/String;
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 713
    .local v6, "config":Ljava/io/ByteArrayInputStream;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v6, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/security/Provider;

    .line 714
    .local v13, "p":Ljava/security/Provider;
    invoke-static {v13}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 715
    const-string/jumbo v18, "PKCS11"

    move-object/from16 v0, v18

    invoke-static {v0, v13}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;

    move-result-object v11

    .line 716
    new-instance v15, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;

    const-string/jumbo v18, "PKCS11 Password: "

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v15, v0, v1}, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 717
    .end local v14    # "pcb":Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;
    .local v15, "pcb":Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getCallbackHandler()Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Lorg/apache/harmony/javax/security/auth/callback/Callback;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v15, v19, v20

    invoke-interface/range {v18 .. v19}, Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;->handle([Lorg/apache/harmony/javax/security/auth/callback/Callback;)V

    .line 718
    const/16 v18, 0x0

    invoke-virtual {v15}, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;->getPassword()[C

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-object v14, v15

    .end local v15    # "pcb":Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;
    .restart local v14    # "pcb":Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;
    goto/16 :goto_1

    .line 720
    .end local v5    # "c":Ljava/lang/reflect/Constructor;
    .end local v6    # "config":Ljava/io/ByteArrayInputStream;
    .end local v13    # "p":Ljava/security/Provider;
    .end local v16    # "pkcs11Config":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 721
    .local v8, "e":Ljava/lang/Exception;
    :goto_3
    const/4 v11, 0x0

    .line 722
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 725
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getKeystoreType()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "Apple"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 726
    const-string/jumbo v18, "KeychainStore"

    const-string/jumbo v19, "Apple"

    invoke-static/range {v18 .. v19}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v11

    .line 727
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    goto/16 :goto_1

    .line 732
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getKeystoreType()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v11

    .line 734
    :try_start_3
    new-instance v15, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;

    const-string/jumbo v18, "Keystore Password: "

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v15, v0, v1}, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;-><init>(Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 735
    .end local v14    # "pcb":Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;
    .restart local v15    # "pcb":Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getCallbackHandler()Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Lorg/apache/harmony/javax/security/auth/callback/Callback;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v15, v19, v20

    invoke-interface/range {v18 .. v19}, Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;->handle([Lorg/apache/harmony/javax/security/auth/callback/Callback;)V

    .line 736
    new-instance v18, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getKeystorePath()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;->getPassword()[C

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object v14, v15

    .end local v15    # "pcb":Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;
    .restart local v14    # "pcb":Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;
    goto/16 :goto_1

    .line 738
    :catch_1
    move-exception v8

    .line 739
    .restart local v8    # "e":Ljava/lang/Exception;
    :goto_4
    const/4 v11, 0x0

    .line 740
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 748
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v9    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    :cond_4
    :try_start_5
    invoke-virtual {v14}, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;->getPassword()[C

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v11, v0}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 749
    invoke-virtual {v14}, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;->clearPassword()V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 752
    :catch_2
    move-exception v12

    .line 753
    .local v12, "npe":Ljava/lang/NullPointerException;
    const/4 v10, 0x0

    check-cast v10, [Ljavax/net/ssl/KeyManager;

    goto/16 :goto_0

    .line 738
    .end local v9    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .end local v12    # "npe":Ljava/lang/NullPointerException;
    .end local v14    # "pcb":Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;
    .restart local v15    # "pcb":Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;
    :catch_3
    move-exception v8

    move-object v14, v15

    .end local v15    # "pcb":Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;
    .restart local v14    # "pcb":Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;
    goto :goto_4

    .line 720
    .end local v14    # "pcb":Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;
    .restart local v5    # "c":Ljava/lang/reflect/Constructor;
    .restart local v6    # "config":Ljava/io/ByteArrayInputStream;
    .restart local v13    # "p":Ljava/security/Provider;
    .restart local v15    # "pcb":Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;
    .restart local v16    # "pkcs11Config":Ljava/lang/String;
    :catch_4
    move-exception v8

    move-object v14, v15

    .end local v15    # "pcb":Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;
    .restart local v14    # "pcb":Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;
    goto/16 :goto_3
.end method

.method public removePacketWriterInterceptor(Lorg/jivesoftware/smack/PacketInterceptor;)V
    .locals 0
    .param p1, "packetInterceptor"    # Lorg/jivesoftware/smack/PacketInterceptor;

    .prologue
    .line 451
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/XMPPConnection;->removePacketInterceptor(Lorg/jivesoftware/smack/PacketInterceptor;)V

    .line 452
    return-void
.end method

.method public removePacketWriterListener(Lorg/jivesoftware/smack/PacketListener;)V
    .locals 0
    .param p1, "packetListener"    # Lorg/jivesoftware/smack/PacketListener;

    .prologue
    .line 477
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/XMPPConnection;->removePacketSendingListener(Lorg/jivesoftware/smack/PacketListener;)V

    .line 478
    return-void
.end method

.method public sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 2
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Packet;

    .prologue
    .line 420
    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not connected to server."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_0
    if-nez p1, :cond_1

    .line 424
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Packet is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/PacketWriter;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 427
    return-void
.end method

.method setAvailableCompressionMethods(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 795
    .local p1, "methods":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/jivesoftware/smack/XMPPConnection;->compressionMethods:Ljava/util/Collection;

    .line 796
    return-void
.end method

.method public setRosterStorage(Lorg/jivesoftware/smack/RosterStorage;)V
    .locals 2
    .param p1, "storage"    # Lorg/jivesoftware/smack/RosterStorage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 953
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->roster:Lorg/jivesoftware/smack/Roster;

    if-eqz v0, :cond_0

    .line 954
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Roster is already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 956
    :cond_0
    iput-object p1, p0, Lorg/jivesoftware/smack/XMPPConnection;->rosterStorage:Lorg/jivesoftware/smack/RosterStorage;

    .line 957
    return-void
.end method

.method protected shutdown(Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 3
    .param p1, "unavailablePresence"    # Lorg/jivesoftware/smack/packet/Presence;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 350
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/PacketWriter;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 354
    :cond_0
    iget-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->authenticated:Z

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/XMPPConnection;->setWasAuthenticated(Z)V

    .line 355
    iput-boolean v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->authenticated:Z

    .line 356
    iput-boolean v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->connected:Z

    .line 358
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketReader;->shutdown()V

    .line 361
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    if-eqz v0, :cond_2

    .line 362
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketWriter;->shutdown()V

    .line 366
    :cond_2
    const-wide/16 v0, 0x96

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :goto_0
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/Reader;

    if-eqz v0, :cond_3

    .line 375
    :try_start_1
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 378
    :goto_1
    iput-object v2, p0, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/Reader;

    .line 380
    :cond_3
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_4

    .line 382
    :try_start_2
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 385
    :goto_2
    iput-object v2, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/Writer;

    .line 389
    :cond_4
    :try_start_3
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 395
    :goto_3
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/SASLAuthentication;->init()V

    .line 396
    return-void

    .line 368
    :catch_0
    move-exception v0

    goto :goto_0

    .line 391
    :catch_1
    move-exception v0

    goto :goto_3

    .line 384
    :catch_2
    move-exception v0

    goto :goto_2

    .line 377
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method startStreamCompression()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 877
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->usingCompression:Z

    .line 879
    invoke-direct {p0}, Lorg/jivesoftware/smack/XMPPConnection;->initReaderAndWriter()V

    .line 882
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/PacketWriter;->setWriter(Ljava/io/Writer;)V

    .line 884
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketWriter;->openStream()V

    .line 886
    monitor-enter p0

    .line 887
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 886
    monitor-exit p0

    .line 889
    return-void

    .line 886
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method startTLSReceived(Z)V
    .locals 4
    .param p1, "required"    # Z

    .prologue
    .line 667
    if-eqz p1, :cond_1

    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getSecurityMode()Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    move-result-object v1

    .line 668
    sget-object v2, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;->disabled:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    if-ne v1, v2, :cond_1

    .line 669
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    new-instance v2, Ljava/lang/IllegalStateException;

    .line 670
    const-string/jumbo v3, "TLS required by server but not allowed by connection configuration"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 669
    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getSecurityMode()Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;->disabled:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    if-eq v1, v2, :cond_0

    .line 679
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/Writer;

    const-string/jumbo v2, "<starttls xmlns=\"urn:ietf:params:xml:ns:xmpp-tls\"/>"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 680
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 682
    :catch_0
    move-exception v0

    .line 683
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method streamCompressionDenied()V
    .locals 1

    .prologue
    .line 896
    monitor-enter p0

    .line 897
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 896
    monitor-exit p0

    .line 899
    return-void

    .line 896
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
