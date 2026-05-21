.class Lcom/helpshift/HSApiClient$2;
.super Ljava/lang/Object;
.source "HSApiClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/HSApiClient;->uploadImage(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/HSApiClient;

.field final synthetic val$failure:Landroid/os/Handler;

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$plainData:Ljava/util/HashMap;

.field final synthetic val$route:Ljava/lang/String;

.field final synthetic val$success:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/helpshift/HSApiClient;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/helpshift/HSApiClient$2;->this$0:Lcom/helpshift/HSApiClient;

    iput-object p2, p0, Lcom/helpshift/HSApiClient$2;->val$plainData:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/helpshift/HSApiClient$2;->val$route:Ljava/lang/String;

    iput-object p4, p0, Lcom/helpshift/HSApiClient$2;->val$method:Ljava/lang/String;

    iput-object p5, p0, Lcom/helpshift/HSApiClient$2;->val$success:Landroid/os/Handler;

    iput-object p6, p0, Lcom/helpshift/HSApiClient$2;->val$failure:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 44

    .prologue
    .line 408
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSApiClient$2;->this$0:Lcom/helpshift/HSApiClient;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSApiClient$2;->val$plainData:Ljava/util/HashMap;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSApiClient$2;->val$route:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSApiClient$2;->val$method:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-static/range {v40 .. v43}, Lcom/helpshift/HSApiClient;->access$100(Lcom/helpshift/HSApiClient;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v11

    .line 409
    .local v11, "data":Ljava/util/HashMap;
    new-instance v34, Ljava/io/File;

    const-string/jumbo v40, "screenshot"

    move-object/from16 v0, v40

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 410
    .local v34, "screenshotFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSApiClient$2;->this$0:Lcom/helpshift/HSApiClient;

    move-object/from16 v40, v0

    invoke-virtual/range {v34 .. v34}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/helpshift/HSApiClient;->access$1000(Lcom/helpshift/HSApiClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 411
    .local v35, "screenshotMimeType":Ljava/lang/String;
    const/16 v40, 0x7

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v40, 0x0

    const-string/jumbo v41, "image/jpeg"

    aput-object v41, v19, v40

    const/16 v40, 0x1

    const-string/jumbo v41, "image/png"

    aput-object v41, v19, v40

    const/16 v40, 0x2

    const-string/jumbo v41, "image/gif"

    aput-object v41, v19, v40

    const/16 v40, 0x3

    const-string/jumbo v41, "image/x-png"

    aput-object v41, v19, v40

    const/16 v40, 0x4

    const-string/jumbo v41, "image/x-citrix-pjpeg"

    aput-object v41, v19, v40

    const/16 v40, 0x5

    const-string/jumbo v41, "image/x-citrix-gif"

    aput-object v41, v19, v40

    const/16 v40, 0x6

    const-string/jumbo v41, "image/pjpeg"

    aput-object v41, v19, v40

    .line 418
    .local v19, "includeExts":[Ljava/lang/String;
    new-instance v4, Ljava/util/HashSet;

    invoke-static/range {v19 .. v19}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 419
    .local v4, "allowedMimeTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, v35

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_0

    .line 420
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 421
    .local v26, "messageResponse":Ljava/util/HashMap;
    const-string/jumbo v40, "status"

    const/16 v41, -0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v26

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSApiClient$2;->val$success:Landroid/os/Handler;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v33

    .line 423
    .local v33, "result":Landroid/os/Message;
    move-object/from16 v0, v26

    move-object/from16 v1, v33

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSApiClient$2;->val$failure:Landroid/os/Handler;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_0 .. :try_end_0} :catch_1

    .line 568
    .end local v4    # "allowedMimeTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "data":Ljava/util/HashMap;
    .end local v19    # "includeExts":[Ljava/lang/String;
    .end local v26    # "messageResponse":Ljava/util/HashMap;
    .end local v33    # "result":Landroid/os/Message;
    .end local v34    # "screenshotFile":Ljava/io/File;
    .end local v35    # "screenshotMimeType":Ljava/lang/String;
    :goto_0
    return-void

    .line 428
    .restart local v4    # "allowedMimeTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v11    # "data":Ljava/util/HashMap;
    .restart local v19    # "includeExts":[Ljava/lang/String;
    .restart local v34    # "screenshotFile":Ljava/io/File;
    .restart local v35    # "screenshotMimeType":Ljava/lang/String;
    :cond_0
    const/16 v27, 0x0

    .line 430
    .local v27, "postUrl":Ljava/net/URL;
    :try_start_1
    new-instance v28, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSApiClient$2;->this$0:Lcom/helpshift/HSApiClient;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSApiClient$2;->val$route:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-static/range {v40 .. v41}, Lcom/helpshift/HSApiClient;->access$000(Lcom/helpshift/HSApiClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v27    # "postUrl":Ljava/net/URL;
    .local v28, "postUrl":Ljava/net/URL;
    move-object/from16 v27, v28

    .line 435
    .end local v28    # "postUrl":Ljava/net/URL;
    .restart local v27    # "postUrl":Ljava/net/URL;
    :goto_1
    :try_start_2
    const-string/jumbo v23, "\r\n"

    .line 436
    .local v23, "lineEnd":Ljava/lang/String;
    const-string/jumbo v38, "--"

    .line 437
    .local v38, "twoHyphens":Ljava/lang/String;
    const-string/jumbo v5, "*****"
    :try_end_2
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_2 .. :try_end_2} :catch_1

    .line 440
    .local v5, "boundary":Ljava/lang/String;
    const/4 v10, 0x0

    .line 448
    .local v10, "conn":Ljava/net/HttpURLConnection;
    if-eqz v27, :cond_6

    .line 449
    :try_start_3
    invoke-virtual/range {v27 .. v27}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v40

    move-object/from16 v0, v40

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v10, v0

    .line 451
    const/16 v40, 0x1

    move/from16 v0, v40

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 453
    const/16 v40, 0x1

    move/from16 v0, v40

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 455
    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 457
    const-string/jumbo v40, "POST"

    move-object/from16 v0, v40

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 458
    const/16 v40, 0x7530

    move/from16 v0, v40

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 459
    const/16 v40, 0x7530

    move/from16 v0, v40

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 461
    const-string/jumbo v40, "Connection"

    const-string/jumbo v41, "Keep-Alive"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v10, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string/jumbo v40, "Content-Type"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "multipart/form-data;boundary="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v10, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    new-instance v12, Ljava/io/DataOutputStream;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-direct {v12, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 465
    .local v12, "dos":Ljava/io/DataOutputStream;
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v12, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 466
    new-instance v24, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v40

    move-object/from16 v0, v24

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 467
    .local v24, "mapKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 468
    .local v21, "key":Ljava/lang/String;
    const-string/jumbo v40, "screenshot"

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_1

    .line 469
    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    .line 470
    .local v39, "value":Ljava/lang/String;
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Content-Disposition: form-data; name=\""

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, "\"; "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v12, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 472
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Content-Type: text/plain;charset=UTF-8"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v12, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 473
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Content-Length: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v12, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 474
    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 475
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v12, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 476
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v12, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 560
    .end local v12    # "dos":Ljava/io/DataOutputStream;
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v21    # "key":Ljava/lang/String;
    .end local v24    # "mapKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v39    # "value":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 561
    .local v13, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v40, "HelpShiftDebug"

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-static {v0, v1, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSApiClient$2;->this$0:Lcom/helpshift/HSApiClient;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSApiClient$2;->val$failure:Landroid/os/Handler;

    move-object/from16 v41, v0

    const/16 v42, 0x2

    invoke-static/range {v40 .. v42}, Lcom/helpshift/HSApiClient;->access$900(Lcom/helpshift/HSApiClient;Landroid/os/Handler;I)V
    :try_end_4
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 564
    .end local v4    # "allowedMimeTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "boundary":Ljava/lang/String;
    .end local v10    # "conn":Ljava/net/HttpURLConnection;
    .end local v11    # "data":Ljava/util/HashMap;
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v19    # "includeExts":[Ljava/lang/String;
    .end local v23    # "lineEnd":Ljava/lang/String;
    .end local v27    # "postUrl":Ljava/net/URL;
    .end local v34    # "screenshotFile":Ljava/io/File;
    .end local v35    # "screenshotMimeType":Ljava/lang/String;
    .end local v38    # "twoHyphens":Ljava/lang/String;
    :catch_1
    move-exception v13

    .line 565
    .local v13, "e":Lcom/helpshift/exceptions/InstallException;
    const-string/jumbo v40, "HelpShiftDebug"

    const-string/jumbo v41, "Error : "

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSApiClient$2;->this$0:Lcom/helpshift/HSApiClient;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSApiClient$2;->val$failure:Landroid/os/Handler;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    invoke-static/range {v40 .. v42}, Lcom/helpshift/HSApiClient;->access$900(Lcom/helpshift/HSApiClient;Landroid/os/Handler;I)V

    goto/16 :goto_0

    .line 431
    .end local v13    # "e":Lcom/helpshift/exceptions/InstallException;
    .restart local v4    # "allowedMimeTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v11    # "data":Ljava/util/HashMap;
    .restart local v19    # "includeExts":[Ljava/lang/String;
    .restart local v27    # "postUrl":Ljava/net/URL;
    .restart local v34    # "screenshotFile":Ljava/io/File;
    .restart local v35    # "screenshotMimeType":Ljava/lang/String;
    :catch_2
    move-exception v13

    .line 432
    .local v13, "e":Ljava/net/MalformedURLException;
    :try_start_5
    const-string/jumbo v40, "HelpShiftDebug"

    invoke-virtual {v13}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-static {v0, v1, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSApiClient$2;->this$0:Lcom/helpshift/HSApiClient;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSApiClient$2;->val$failure:Landroid/os/Handler;

    move-object/from16 v41, v0

    const/16 v42, 0x2

    invoke-static/range {v40 .. v42}, Lcom/helpshift/HSApiClient;->access$900(Lcom/helpshift/HSApiClient;Landroid/os/Handler;I)V
    :try_end_5
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 480
    .end local v13    # "e":Ljava/net/MalformedURLException;
    .restart local v5    # "boundary":Ljava/lang/String;
    .restart local v10    # "conn":Ljava/net/HttpURLConnection;
    .restart local v12    # "dos":Ljava/io/DataOutputStream;
    .restart local v18    # "i$":Ljava/util/Iterator;
    .restart local v23    # "lineEnd":Ljava/lang/String;
    .restart local v24    # "mapKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v38    # "twoHyphens":Ljava/lang/String;
    :cond_2
    :try_start_6
    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 481
    .local v17, "fileInputStream":Ljava/io/FileInputStream;
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v12, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 482
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Content-Disposition: form-data; name=\"screenshot\"; filename=\""

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v34 .. v34}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, "\""

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v12, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 484
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Content-Type: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v12, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 485
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Content-Length: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v34 .. v34}, Ljava/io/File;->length()J

    move-result-wide v42

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v12, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 486
    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 490
    const/high16 v25, 0x100000

    .line 492
    .local v25, "maxBufferSize":I
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->available()I

    move-result v8

    .line 494
    .local v8, "bytesAvailable":I
    move/from16 v0, v25

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 495
    .local v7, "bufferSize":I
    new-array v6, v7, [B

    .line 498
    .local v6, "buffer":[B
    const/16 v40, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v40

    invoke-virtual {v0, v6, v1, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v9

    .line 500
    .local v9, "bytesRead":I
    :goto_3
    if-lez v9, :cond_3

    .line 501
    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-virtual {v12, v6, v0, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 502
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->available()I

    move-result v8

    .line 503
    move/from16 v0, v25

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 504
    const/16 v40, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v40

    invoke-virtual {v0, v6, v1, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v9

    goto :goto_3

    .line 507
    :cond_3
    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 508
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v12, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 509
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V

    .line 512
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v37

    .line 513
    .local v37, "status":I
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v36

    .line 515
    .local v36, "serverResponseMessage":Ljava/lang/String;
    const-string/jumbo v22, ""

    .line 516
    .local v22, "line":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    .line 517
    .local v31, "responseStr":Ljava/lang/StringBuilder;
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v32

    .line 518
    .local v32, "responseStream":Ljava/io/InputStream;
    new-instance v20, Ljava/io/InputStreamReader;

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 519
    .local v20, "inputStream":Ljava/io/InputStreamReader;
    new-instance v29, Ljava/io/BufferedReader;

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_6 .. :try_end_6} :catch_1

    .line 522
    .local v29, "rd":Ljava/io/BufferedReader;
    :goto_4
    :try_start_7
    invoke-virtual/range {v29 .. v29}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_4

    .line 523
    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    .line 525
    :catch_3
    move-exception v16

    .line 526
    .local v16, "ex":Ljava/io/IOException;
    :try_start_8
    const-string/jumbo v40, "HelpShiftDebug"

    const-string/jumbo v41, "IO Exception ex"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSApiClient$2;->this$0:Lcom/helpshift/HSApiClient;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSApiClient$2;->val$failure:Landroid/os/Handler;

    move-object/from16 v41, v0

    const/16 v42, 0x2

    invoke-static/range {v40 .. v42}, Lcom/helpshift/HSApiClient;->access$900(Lcom/helpshift/HSApiClient;Landroid/os/Handler;I)V

    .line 529
    .end local v16    # "ex":Ljava/io/IOException;
    :cond_4
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 531
    .local v30, "response":Ljava/lang/String;
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 532
    .restart local v26    # "messageResponse":Ljava/util/HashMap;
    const-string/jumbo v40, "status"

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v26

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_8 .. :try_end_8} :catch_1

    .line 534
    const/16 v40, 0xc8

    move/from16 v0, v37

    move/from16 v1, v40

    if-lt v0, v1, :cond_5

    const/16 v40, 0x12c

    move/from16 v0, v37

    move/from16 v1, v40

    if-ge v0, v1, :cond_5

    .line 536
    :try_start_9
    const-string/jumbo v40, "response"

    new-instance v41, Lorg/json/JSONArray;

    move-object/from16 v0, v41

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_9 .. :try_end_9} :catch_1

    .line 546
    :goto_5
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSApiClient$2;->val$success:Landroid/os/Handler;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v33

    .line 547
    .restart local v33    # "result":Landroid/os/Message;
    move-object/from16 v0, v26

    move-object/from16 v1, v33

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSApiClient$2;->val$success:Landroid/os/Handler;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 554
    :goto_6
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 555
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->flush()V

    .line 556
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_0

    .line 538
    .end local v33    # "result":Landroid/os/Message;
    :catch_4
    move-exception v14

    .line 540
    .local v14, "earr":Lorg/json/JSONException;
    :try_start_b
    const-string/jumbo v40, "response"

    new-instance v41, Lorg/json/JSONObject;

    move-object/from16 v0, v41

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_5

    .line 542
    :catch_5
    move-exception v15

    .line 543
    .local v15, "eobj":Lorg/json/JSONException;
    :try_start_c
    throw v15

    .line 550
    .end local v14    # "earr":Lorg/json/JSONException;
    .end local v15    # "eobj":Lorg/json/JSONException;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSApiClient$2;->val$failure:Landroid/os/Handler;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v33

    .line 551
    .restart local v33    # "result":Landroid/os/Message;
    move-object/from16 v0, v26

    move-object/from16 v1, v33

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSApiClient$2;->val$failure:Landroid/os/Handler;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    .line 558
    .end local v6    # "buffer":[B
    .end local v7    # "bufferSize":I
    .end local v8    # "bytesAvailable":I
    .end local v9    # "bytesRead":I
    .end local v12    # "dos":Ljava/io/DataOutputStream;
    .end local v17    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v20    # "inputStream":Ljava/io/InputStreamReader;
    .end local v22    # "line":Ljava/lang/String;
    .end local v24    # "mapKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "maxBufferSize":I
    .end local v26    # "messageResponse":Ljava/util/HashMap;
    .end local v29    # "rd":Ljava/io/BufferedReader;
    .end local v30    # "response":Ljava/lang/String;
    .end local v31    # "responseStr":Ljava/lang/StringBuilder;
    .end local v32    # "responseStream":Ljava/io/InputStream;
    .end local v33    # "result":Landroid/os/Message;
    .end local v36    # "serverResponseMessage":Ljava/lang/String;
    .end local v37    # "status":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSApiClient$2;->this$0:Lcom/helpshift/HSApiClient;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSApiClient$2;->val$failure:Landroid/os/Handler;

    move-object/from16 v41, v0

    const/16 v42, 0x2

    invoke-static/range {v40 .. v42}, Lcom/helpshift/HSApiClient;->access$900(Lcom/helpshift/HSApiClient;Landroid/os/Handler;I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_0
.end method
