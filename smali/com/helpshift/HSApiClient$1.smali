.class Lcom/helpshift/HSApiClient$1;
.super Ljava/lang/Object;
.source "HSApiClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/HSApiClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/HSApiClient;

.field final synthetic val$data:Ljava/util/HashMap;

.field final synthetic val$failure:Landroid/os/Handler;

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$route:Ljava/lang/String;

.field final synthetic val$success:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/helpshift/HSApiClient;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/helpshift/HSApiClient$1;->this$0:Lcom/helpshift/HSApiClient;

    iput-object p2, p0, Lcom/helpshift/HSApiClient$1;->val$data:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/helpshift/HSApiClient$1;->val$route:Ljava/lang/String;

    iput-object p4, p0, Lcom/helpshift/HSApiClient$1;->val$method:Ljava/lang/String;

    iput-object p5, p0, Lcom/helpshift/HSApiClient$1;->val$success:Landroid/os/Handler;

    iput-object p6, p0, Lcom/helpshift/HSApiClient$1;->val$failure:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 32

    .prologue
    .line 223
    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSApiClient$1;->val$data:Ljava/util/HashMap;

    invoke-direct {v5, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 224
    .local v5, "dataCopy":Ljava/util/HashMap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSApiClient$1;->this$0:Lcom/helpshift/HSApiClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/helpshift/HSApiClient$1;->val$route:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/helpshift/HSApiClient;->access$000(Lcom/helpshift/HSApiClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 226
    .local v29, "url":Ljava/lang/String;
    const/4 v8, 0x0

    .line 228
    .local v8, "connection":Ljava/net/HttpURLConnection;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSApiClient$1;->val$method:Ljava/lang/String;

    const-string/jumbo v3, "GET"

    if-ne v2, v3, :cond_2

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSApiClient$1;->this$0:Lcom/helpshift/HSApiClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/helpshift/HSApiClient$1;->this$0:Lcom/helpshift/HSApiClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/helpshift/HSApiClient$1;->val$data:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/helpshift/HSApiClient$1;->val$route:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/helpshift/HSApiClient$1;->val$method:Ljava/lang/String;

    invoke-static {v3, v4, v6, v7}, Lcom/helpshift/HSApiClient;->access$100(Lcom/helpshift/HSApiClient;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/helpshift/HSApiClient;->access$200(Lcom/helpshift/HSApiClient;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v23

    .line 230
    .local v23, "requestStr":Ljava/lang/String;
    new-instance v30, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 231
    .local v30, "urlObj":Ljava/net/URL;
    invoke-virtual/range {v30 .. v30}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    .end local v8    # "connection":Ljava/net/HttpURLConnection;
    check-cast v8, Ljava/net/HttpURLConnection;

    .line 232
    .restart local v8    # "connection":Ljava/net/HttpURLConnection;
    const-string/jumbo v2, "GET"

    invoke-virtual {v8, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 233
    invoke-static {v8}, Lcom/helpshift/HSApiClient;->access$300(Ljava/net/HttpURLConnection;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSApiClient$1;->this$0:Lcom/helpshift/HSApiClient;

    invoke-static {v2}, Lcom/helpshift/HSApiClient;->access$400(Lcom/helpshift/HSApiClient;)Lcom/helpshift/HSStorage;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/helpshift/HSApiClient$1;->val$route:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/helpshift/HSStorage;->getEtag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 236
    .local v12, "etag":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 237
    const-string/jumbo v2, "If-None-Match"

    invoke-virtual {v8, v2, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c

    .line 258
    .end local v12    # "etag":Ljava/lang/String;
    .end local v23    # "requestStr":Ljava/lang/String;
    .end local v30    # "urlObj":Ljava/net/URL;
    :cond_0
    :goto_0
    if-eqz v8, :cond_c

    .line 259
    :try_start_1
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v28

    .line 260
    .local v28, "status":I
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    .line 262
    .local v15, "headers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 263
    .local v14, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "ETag"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSApiClient$1;->this$0:Lcom/helpshift/HSApiClient;

    invoke-static {v2}, Lcom/helpshift/HSApiClient;->access$400(Lcom/helpshift/HSApiClient;)Lcom/helpshift/HSStorage;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/helpshift/HSApiClient$1;->val$route:Ljava/lang/String;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/helpshift/HSStorage;->setEtag(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_8

    goto :goto_1

    .line 342
    .end local v14    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v15    # "headers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v28    # "status":I
    :catch_0
    move-exception v9

    .line 343
    .local v9, "e":Lorg/json/JSONException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSApiClient$1;->this$0:Lcom/helpshift/HSApiClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/helpshift/HSApiClient$1;->val$failure:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/helpshift/HSApiClient;->access$900(Lcom/helpshift/HSApiClient;Landroid/os/Handler;I)V

    .line 344
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "Exception JSON"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 383
    .end local v5    # "dataCopy":Ljava/util/HashMap;
    .end local v8    # "connection":Ljava/net/HttpURLConnection;
    .end local v9    # "e":Lorg/json/JSONException;
    .end local v29    # "url":Ljava/lang/String;
    :goto_2
    return-void

    .line 239
    .restart local v5    # "dataCopy":Ljava/util/HashMap;
    .restart local v8    # "connection":Ljava/net/HttpURLConnection;
    .restart local v29    # "url":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSApiClient$1;->val$method:Ljava/lang/String;

    const-string/jumbo v3, "POST"

    if-ne v2, v3, :cond_0

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSApiClient$1;->this$0:Lcom/helpshift/HSApiClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/helpshift/HSApiClient$1;->this$0:Lcom/helpshift/HSApiClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/helpshift/HSApiClient$1;->val$data:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/helpshift/HSApiClient$1;->val$route:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/helpshift/HSApiClient$1;->val$method:Ljava/lang/String;

    invoke-static {v3, v4, v6, v7}, Lcom/helpshift/HSApiClient;->access$100(Lcom/helpshift/HSApiClient;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/helpshift/HSApiClient;->access$500(Lcom/helpshift/HSApiClient;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v21

    .line 241
    .local v21, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v30, Ljava/net/URL;

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 242
    .restart local v30    # "urlObj":Ljava/net/URL;
    invoke-virtual/range {v30 .. v30}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    .end local v8    # "connection":Ljava/net/HttpURLConnection;
    check-cast v8, Ljava/net/HttpURLConnection;

    .line 243
    .restart local v8    # "connection":Ljava/net/HttpURLConnection;
    const-string/jumbo v2, "POST"

    invoke-virtual {v8, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 244
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 245
    const-string/jumbo v2, "Content-type"

    const-string/jumbo v3, "application/x-www-form-urlencoded"

    invoke-virtual {v8, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-static {v8}, Lcom/helpshift/HSApiClient;->access$300(Ljava/net/HttpURLConnection;)V

    .line 249
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v20

    .line 250
    .local v20, "outputStream":Ljava/io/OutputStream;
    new-instance v31, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string/jumbo v3, "UTF-8"

    move-object/from16 v0, v20

    invoke-direct {v2, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 251
    .local v31, "writer":Ljava/io/BufferedWriter;
    invoke-static/range {v21 .. v21}, Lcom/helpshift/HSApiClient;->access$600(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {v31 .. v31}, Ljava/io/BufferedWriter;->flush()V

    .line 253
    invoke-virtual/range {v31 .. v31}, Ljava/io/BufferedWriter;->close()V

    .line 254
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c

    goto/16 :goto_0

    .line 367
    .end local v5    # "dataCopy":Ljava/util/HashMap;
    .end local v8    # "connection":Ljava/net/HttpURLConnection;
    .end local v20    # "outputStream":Ljava/io/OutputStream;
    .end local v21    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v29    # "url":Ljava/lang/String;
    .end local v30    # "urlObj":Ljava/net/URL;
    .end local v31    # "writer":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v9

    .line 368
    .local v9, "e":Lcom/helpshift/exceptions/InstallException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "install() not called"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSApiClient$1;->this$0:Lcom/helpshift/HSApiClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/helpshift/HSApiClient$1;->val$failure:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/helpshift/HSApiClient;->access$900(Lcom/helpshift/HSApiClient;Landroid/os/Handler;I)V

    goto/16 :goto_2

    .line 268
    .end local v9    # "e":Lcom/helpshift/exceptions/InstallException;
    .restart local v5    # "dataCopy":Ljava/util/HashMap;
    .restart local v8    # "connection":Ljava/net/HttpURLConnection;
    .restart local v15    # "headers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .restart local v16    # "i$":Ljava/util/Iterator;
    .restart local v28    # "status":I
    .restart local v29    # "url":Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string/jumbo v18, ""

    .line 269
    .local v18, "line":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .local v26, "responseStr":Ljava/lang/StringBuilder;
    const/16 v2, 0xc8

    move/from16 v0, v28

    if-lt v0, v2, :cond_5

    const/16 v2, 0x12c

    move/from16 v0, v28

    if-ge v0, v2, :cond_5

    .line 272
    new-instance v24, Ljava/io/BufferedInputStream;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 274
    .local v24, "response":Ljava/io/InputStream;
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move-object/from16 v25, v24

    .end local v24    # "response":Ljava/io/InputStream;
    .local v25, "response":Ljava/io/InputStream;
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 275
    .restart local v14    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "Content-Encoding"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "gzip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 278
    new-instance v24, Ljava/util/zip/GZIPInputStream;

    invoke-direct/range {v24 .. v25}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v25    # "response":Ljava/io/InputStream;
    .restart local v24    # "response":Ljava/io/InputStream;
    :goto_4
    move-object/from16 v25, v24

    .line 280
    .end local v24    # "response":Ljava/io/InputStream;
    .restart local v25    # "response":Ljava/io/InputStream;
    goto :goto_3

    .line 282
    .end local v14    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_4
    new-instance v17, Ljava/io/InputStreamReader;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 283
    .local v17, "inputStream":Ljava/io/InputStreamReader;
    new-instance v22, Ljava/io/BufferedReader;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_8

    .line 286
    .local v22, "rd":Ljava/io/BufferedReader;
    :goto_5
    :try_start_4
    invoke-virtual/range {v22 .. v22}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_5

    .line 287
    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_8

    goto :goto_5

    .line 289
    :catch_2
    move-exception v13

    .line 290
    .local v13, "ex":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "IO Exception ex"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    .end local v13    # "ex":Ljava/io/IOException;
    .end local v17    # "inputStream":Ljava/io/InputStreamReader;
    .end local v22    # "rd":Ljava/io/BufferedReader;
    .end local v25    # "response":Ljava/io/InputStream;
    :cond_5
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 295
    .local v19, "messageResponse":Ljava/util/HashMap;
    const-string/jumbo v2, "status"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const/16 v2, 0xc8

    move/from16 v0, v28

    if-lt v0, v2, :cond_7

    const/16 v2, 0x12c

    move/from16 v0, v28

    if-ge v0, v2, :cond_7

    .line 297
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/helpshift/HSApiClient;->access$702(I)I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_5 .. :try_end_5} :catch_8

    .line 299
    :try_start_6
    const-string/jumbo v2, "response"

    new-instance v3, Lorg/json/JSONArray;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_6 .. :try_end_6} :catch_e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_6 .. :try_end_6} :catch_8

    .line 309
    :goto_6
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSApiClient$1;->val$success:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v27

    .line 310
    .local v27, "result":Landroid/os/Message;
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSApiClient$1;->val$success:Landroid/os/Handler;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 338
    .end local v27    # "result":Landroid/os/Message;
    :cond_6
    :goto_7
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_7 .. :try_end_7} :catch_8

    goto/16 :goto_2

    .line 345
    .end local v15    # "headers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v18    # "line":Ljava/lang/String;
    .end local v19    # "messageResponse":Ljava/util/HashMap;
    .end local v26    # "responseStr":Ljava/lang/StringBuilder;
    .end local v28    # "status":I
    :catch_3
    move-exception v9

    .line 346
    .local v9, "e":Ljava/net/UnknownHostException;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSApiClient$1;->this$0:Lcom/helpshift/HSApiClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/helpshift/HSApiClient$1;->val$failure:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Lcom/helpshift/HSApiClient;->access$900(Lcom/helpshift/HSApiClient;Landroid/os/Handler;I)V

    .line 347
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "Exception Unknown Host"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c

    goto/16 :goto_2

    .line 370
    .end local v5    # "dataCopy":Ljava/util/HashMap;
    .end local v8    # "connection":Ljava/net/HttpURLConnection;
    .end local v9    # "e":Ljava/net/UnknownHostException;
    .end local v29    # "url":Ljava/lang/String;
    :catch_4
    move-exception v9

    .line 371
    .local v9, "e":Ljava/net/MalformedURLException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "Exception Malformed URL"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSApiClient$1;->this$0:Lcom/helpshift/HSApiClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/helpshift/HSApiClient$1;->val$failure:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/helpshift/HSApiClient;->access$900(Lcom/helpshift/HSApiClient;Landroid/os/Handler;I)V

    goto/16 :goto_2

    .line 301
    .end local v9    # "e":Ljava/net/MalformedURLException;
    .restart local v5    # "dataCopy":Ljava/util/HashMap;
    .restart local v8    # "connection":Ljava/net/HttpURLConnection;
    .restart local v15    # "headers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .restart local v16    # "i$":Ljava/util/Iterator;
    .restart local v18    # "line":Ljava/lang/String;
    .restart local v19    # "messageResponse":Ljava/util/HashMap;
    .restart local v26    # "responseStr":Ljava/lang/StringBuilder;
    .restart local v28    # "status":I
    .restart local v29    # "url":Ljava/lang/String;
    :catch_5
    move-exception v10

    .line 303
    .local v10, "earr":Lorg/json/JSONException;
    :try_start_9
    const-string/jumbo v2, "response"

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_9 .. :try_end_9} :catch_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_6

    .line 305
    :catch_6
    move-exception v11

    .line 306
    .local v11, "eobj":Lorg/json/JSONException;
    :try_start_a
    throw v11
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_a .. :try_end_a} :catch_b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_f
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_a .. :try_end_a} :catch_8

    .line 348
    .end local v10    # "earr":Lorg/json/JSONException;
    .end local v11    # "eobj":Lorg/json/JSONException;
    .end local v15    # "headers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v18    # "line":Ljava/lang/String;
    .end local v19    # "messageResponse":Ljava/util/HashMap;
    .end local v26    # "responseStr":Ljava/lang/StringBuilder;
    .end local v28    # "status":I
    :catch_7
    move-exception v9

    .line 349
    .local v9, "e":Lorg/apache/http/conn/HttpHostConnectException;
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSApiClient$1;->this$0:Lcom/helpshift/HSApiClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/helpshift/HSApiClient$1;->val$failure:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/helpshift/HSApiClient;->access$900(Lcom/helpshift/HSApiClient;Landroid/os/Handler;I)V

    .line 350
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "Exception cannot connect Host"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c

    goto/16 :goto_2

    .line 373
    .end local v5    # "dataCopy":Ljava/util/HashMap;
    .end local v8    # "connection":Ljava/net/HttpURLConnection;
    .end local v9    # "e":Lorg/apache/http/conn/HttpHostConnectException;
    .end local v29    # "url":Ljava/lang/String;
    :catch_8
    move-exception v9

    .line 374
    .local v9, "e":Ljava/net/ProtocolException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "Exception Protocol"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSApiClient$1;->this$0:Lcom/helpshift/HSApiClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/helpshift/HSApiClient$1;->val$failure:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/helpshift/HSApiClient;->access$900(Lcom/helpshift/HSApiClient;Landroid/os/Handler;I)V

    goto/16 :goto_2

    .line 312
    .end local v9    # "e":Ljava/net/ProtocolException;
    .restart local v5    # "dataCopy":Ljava/util/HashMap;
    .restart local v8    # "connection":Ljava/net/HttpURLConnection;
    .restart local v15    # "headers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .restart local v16    # "i$":Ljava/util/Iterator;
    .restart local v18    # "line":Ljava/lang/String;
    .restart local v19    # "messageResponse":Ljava/util/HashMap;
    .restart local v26    # "responseStr":Ljava/lang/StringBuilder;
    .restart local v28    # "status":I
    .restart local v29    # "url":Ljava/lang/String;
    :cond_7
    const/16 v2, 0x130

    move/from16 v0, v28

    if-ne v0, v2, :cond_8

    .line 313
    :try_start_c
    invoke-static {}, Lcom/helpshift/HSApiClient;->access$708()I

    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSApiClient$1;->val$success:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v27

    .line 315
    .restart local v27    # "result":Landroid/os/Message;
    const/4 v2, 0x0

    move-object/from16 v0, v27

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSApiClient$1;->val$success:Landroid/os/Handler;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_c} :catch_3
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_c .. :try_end_c} :catch_b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_c .. :try_end_c} :catch_d
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_c .. :try_end_c} :catch_e
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_f
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_c .. :try_end_c} :catch_8

    goto/16 :goto_7

    .line 351
    .end local v15    # "headers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v18    # "line":Ljava/lang/String;
    .end local v19    # "messageResponse":Ljava/util/HashMap;
    .end local v26    # "responseStr":Ljava/lang/StringBuilder;
    .end local v27    # "result":Landroid/os/Message;
    .end local v28    # "status":I
    :catch_9
    move-exception v9

    .line 352
    .local v9, "e":Ljava/net/SocketTimeoutException;
    :try_start_d
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "Exception Socket timeout"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/net/UnknownHostException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    goto/16 :goto_2

    .line 376
    .end local v5    # "dataCopy":Ljava/util/HashMap;
    .end local v8    # "connection":Ljava/net/HttpURLConnection;
    .end local v9    # "e":Ljava/net/SocketTimeoutException;
    .end local v29    # "url":Ljava/lang/String;
    :catch_a
    move-exception v9

    .line 377
    .local v9, "e":Ljava/net/UnknownHostException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "Exception Unknown Host"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSApiClient$1;->this$0:Lcom/helpshift/HSApiClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/helpshift/HSApiClient$1;->val$failure:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Lcom/helpshift/HSApiClient;->access$900(Lcom/helpshift/HSApiClient;Landroid/os/Handler;I)V

    goto/16 :goto_2

    .line 317
    .end local v9    # "e":Ljava/net/UnknownHostException;
    .restart local v5    # "dataCopy":Ljava/util/HashMap;
    .restart local v8    # "connection":Ljava/net/HttpURLConnection;
    .restart local v15    # "headers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .restart local v16    # "i$":Ljava/util/Iterator;
    .restart local v18    # "line":Ljava/lang/String;
    .restart local v19    # "messageResponse":Ljava/util/HashMap;
    .restart local v26    # "responseStr":Ljava/lang/StringBuilder;
    .restart local v28    # "status":I
    .restart local v29    # "url":Ljava/lang/String;
    :cond_8
    const/16 v2, 0x1a6

    move/from16 v0, v28

    if-ne v0, v2, :cond_b

    .line 318
    :try_start_e
    invoke-static {}, Lcom/helpshift/HSApiClient;->access$708()I

    .line 319
    invoke-static {}, Lcom/helpshift/HSApiClient;->access$700()I

    move-result v2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_a

    .line 320
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_9
    :goto_8
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 321
    .restart local v14    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "HS-UEpoch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSApiClient$1;->this$0:Lcom/helpshift/HSApiClient;

    invoke-static {v2}, Lcom/helpshift/HSApiClient;->access$400(Lcom/helpshift/HSApiClient;)Lcom/helpshift/HSStorage;

    move-result-object v3

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/helpshift/util/HSTimeUtil;->calculateTimeAdjustment(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/helpshift/HSStorage;->setServerTimeDelta(Ljava/lang/Float;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSApiClient$1;->this$0:Lcom/helpshift/HSApiClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/helpshift/HSApiClient$1;->val$method:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/helpshift/HSApiClient$1;->val$route:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/helpshift/HSApiClient$1;->val$success:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/helpshift/HSApiClient$1;->val$failure:Landroid/os/Handler;

    invoke-static/range {v2 .. v7}, Lcom/helpshift/HSApiClient;->access$800(Lcom/helpshift/HSApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_e .. :try_end_e} :catch_3
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_e} :catch_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_e .. :try_end_e} :catch_b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_e .. :try_end_e} :catch_d
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_e .. :try_end_e} :catch_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_f
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_8

    .line 353
    .end local v14    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v15    # "headers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v18    # "line":Ljava/lang/String;
    .end local v19    # "messageResponse":Ljava/util/HashMap;
    .end local v26    # "responseStr":Ljava/lang/StringBuilder;
    .end local v28    # "status":I
    :catch_b
    move-exception v9

    .line 354
    .local v9, "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSApiClient$1;->this$0:Lcom/helpshift/HSApiClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/helpshift/HSApiClient$1;->val$failure:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/helpshift/HSApiClient;->access$900(Lcom/helpshift/HSApiClient;Landroid/os/Handler;I)V

    .line 355
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "Exception Socket timeout"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/net/UnknownHostException; {:try_start_f .. :try_end_f} :catch_a
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    goto/16 :goto_2

    .line 379
    .end local v5    # "dataCopy":Ljava/util/HashMap;
    .end local v8    # "connection":Ljava/net/HttpURLConnection;
    .end local v9    # "e":Lorg/apache/http/conn/ConnectTimeoutException;
    .end local v29    # "url":Ljava/lang/String;
    :catch_c
    move-exception v9

    .line 380
    .local v9, "e":Ljava/io/IOException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "Exception IO"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSApiClient$1;->this$0:Lcom/helpshift/HSApiClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/helpshift/HSApiClient$1;->val$failure:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/helpshift/HSApiClient;->access$900(Lcom/helpshift/HSApiClient;Landroid/os/Handler;I)V

    goto/16 :goto_2

    .line 327
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v5    # "dataCopy":Ljava/util/HashMap;
    .restart local v8    # "connection":Ljava/net/HttpURLConnection;
    .restart local v15    # "headers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .restart local v16    # "i$":Ljava/util/Iterator;
    .restart local v18    # "line":Ljava/lang/String;
    .restart local v19    # "messageResponse":Ljava/util/HashMap;
    .restart local v26    # "responseStr":Ljava/lang/StringBuilder;
    .restart local v28    # "status":I
    .restart local v29    # "url":Ljava/lang/String;
    :cond_a
    const/4 v2, 0x0

    :try_start_10
    invoke-static {v2}, Lcom/helpshift/HSApiClient;->access$702(I)I

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSApiClient$1;->val$failure:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v27

    .line 329
    .restart local v27    # "result":Landroid/os/Message;
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSApiClient$1;->val$failure:Landroid/os/Handler;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_10 .. :try_end_10} :catch_b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_10 .. :try_end_10} :catch_d
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_10 .. :try_end_10} :catch_e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_10 .. :try_end_10} :catch_8

    goto/16 :goto_7

    .line 356
    .end local v15    # "headers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v18    # "line":Ljava/lang/String;
    .end local v19    # "messageResponse":Ljava/util/HashMap;
    .end local v26    # "responseStr":Ljava/lang/StringBuilder;
    .end local v27    # "result":Landroid/os/Message;
    .end local v28    # "status":I
    :catch_d
    move-exception v9

    .line 357
    .local v9, "e":Lorg/apache/http/client/ClientProtocolException;
    :try_start_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSApiClient$1;->this$0:Lcom/helpshift/HSApiClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/helpshift/HSApiClient$1;->val$failure:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/helpshift/HSApiClient;->access$900(Lcom/helpshift/HSApiClient;Landroid/os/Handler;I)V

    .line 359
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "Exception Client Protocol"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_11 .. :try_end_11} :catch_8
    .catch Ljava/net/UnknownHostException; {:try_start_11 .. :try_end_11} :catch_a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c

    goto/16 :goto_2

    .line 333
    .end local v9    # "e":Lorg/apache/http/client/ClientProtocolException;
    .restart local v15    # "headers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .restart local v16    # "i$":Ljava/util/Iterator;
    .restart local v18    # "line":Ljava/lang/String;
    .restart local v19    # "messageResponse":Ljava/util/HashMap;
    .restart local v26    # "responseStr":Ljava/lang/StringBuilder;
    .restart local v28    # "status":I
    :cond_b
    const/4 v2, 0x0

    :try_start_12
    invoke-static {v2}, Lcom/helpshift/HSApiClient;->access$702(I)I

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSApiClient$1;->val$failure:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v27

    .line 335
    .restart local v27    # "result":Landroid/os/Message;
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSApiClient$1;->val$failure:Landroid/os/Handler;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_12 .. :try_end_12} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_12 .. :try_end_12} :catch_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_12 .. :try_end_12} :catch_b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_12 .. :try_end_12} :catch_d
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_12 .. :try_end_12} :catch_e
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_f
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_12 .. :try_end_12} :catch_8

    goto/16 :goto_7

    .line 360
    .end local v15    # "headers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v18    # "line":Ljava/lang/String;
    .end local v19    # "messageResponse":Ljava/util/HashMap;
    .end local v26    # "responseStr":Ljava/lang/StringBuilder;
    .end local v27    # "result":Landroid/os/Message;
    .end local v28    # "status":I
    :catch_e
    move-exception v9

    .line 361
    .local v9, "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    :try_start_13
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "Exception SSL Peer Unverified"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_13 .. :try_end_13} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_13 .. :try_end_13} :catch_8
    .catch Ljava/net/UnknownHostException; {:try_start_13 .. :try_end_13} :catch_a
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    goto/16 :goto_2

    .line 340
    .end local v9    # "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    :cond_c
    :try_start_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSApiClient$1;->this$0:Lcom/helpshift/HSApiClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/helpshift/HSApiClient$1;->val$failure:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Lcom/helpshift/HSApiClient;->access$900(Lcom/helpshift/HSApiClient;Landroid/os/Handler;I)V
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_14 .. :try_end_14} :catch_3
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_14 .. :try_end_14} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_14 .. :try_end_14} :catch_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_14 .. :try_end_14} :catch_b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_14 .. :try_end_14} :catch_d
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_14 .. :try_end_14} :catch_e
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_f
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_14 .. :try_end_14} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_14 .. :try_end_14} :catch_8

    goto/16 :goto_2

    .line 362
    :catch_f
    move-exception v9

    .line 363
    .local v9, "e":Ljava/io/IOException;
    :try_start_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSApiClient$1;->this$0:Lcom/helpshift/HSApiClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/helpshift/HSApiClient$1;->val$failure:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/helpshift/HSApiClient;->access$900(Lcom/helpshift/HSApiClient;Landroid/os/Handler;I)V

    .line 365
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "Exception IO"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_15 .. :try_end_15} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_15 .. :try_end_15} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_15 .. :try_end_15} :catch_8
    .catch Ljava/net/UnknownHostException; {:try_start_15 .. :try_end_15} :catch_a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_c

    goto/16 :goto_2

    .end local v9    # "e":Ljava/io/IOException;
    .restart local v14    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v15    # "headers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .restart local v16    # "i$":Ljava/util/Iterator;
    .restart local v18    # "line":Ljava/lang/String;
    .restart local v25    # "response":Ljava/io/InputStream;
    .restart local v26    # "responseStr":Ljava/lang/StringBuilder;
    .restart local v28    # "status":I
    :cond_d
    move-object/from16 v24, v25

    .end local v25    # "response":Ljava/io/InputStream;
    .restart local v24    # "response":Ljava/io/InputStream;
    goto/16 :goto_4
.end method
