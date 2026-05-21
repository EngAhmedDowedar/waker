.class public Lcom/tendcloud/tenddata/TalkingDataMessageReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$1;,
        Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "com.talkingdata.notification.click"

.field public static final b:Ljava/lang/String; = "com.talkingdata.notification.cancel"

.field public static final c:Ljava/lang/String; = "com.talkingdata.message.click"

.field static d:Ljava/lang/String; = null

.field static final e:Ljava/lang/String; = "TalkingData_Push_SharedPreferences"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static a(Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "PUSH_APPID"

    sget-object v1, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$1;->a:[I

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    const-string/jumbo v0, "api_key"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "JPUSH_APPKEY"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "TD_APP_ID"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "sign"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is triggered !"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/bp;->a([Ljava/lang/String;)V

    const-string/jumbo v2, "isinapp"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x67

    iput v3, v2, Landroid/os/Message;->what:I

    new-instance v3, Lcom/tendcloud/tenddata/game/bb;

    sget-object v4, Lcom/tendcloud/tenddata/game/bb$a;->b:Lcom/tendcloud/tenddata/game/bb$a;

    const/4 v5, 0x0

    invoke-direct {v3, v1, v0, v4, v5}, Lcom/tendcloud/tenddata/game/bb;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/bb$a;I)V

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/tendcloud/tenddata/game/bc;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    const-string/jumbo v1, "talkingdata://close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x67

    iput v3, v2, Landroid/os/Message;->what:I

    new-instance v3, Lcom/tendcloud/tenddata/game/bb;

    sget-object v4, Lcom/tendcloud/tenddata/game/bb$a;->g:Lcom/tendcloud/tenddata/game/bb$a;

    const-string/jumbo v5, "showduration"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-direct {v3, v1, v0, v4, v5}, Lcom/tendcloud/tenddata/game/bb;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/bb$a;I)V

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/tendcloud/tenddata/game/bc;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/tendcloud/tenddata/game/bp;->b:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_2
    :try_start_1
    const-string/jumbo v1, "talkingdata://app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "talkingdata://app/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "talkingdata://uri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "talkingdata://uri/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-string/jumbo v1, "sign"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "sign"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x67

    iput v3, v2, Landroid/os/Message;->what:I

    new-instance v3, Lcom/tendcloud/tenddata/game/bb;

    const/4 v4, 0x0

    sget-object v5, Lcom/tendcloud/tenddata/game/bb$a;->a:Lcom/tendcloud/tenddata/game/bb$a;

    const/4 v6, 0x0

    invoke-direct {v3, v1, v4, v5, v6}, Lcom/tendcloud/tenddata/game/bb;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/bb$a;I)V

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/tendcloud/tenddata/game/bc;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v7, :cond_2

    invoke-static {p1, v0}, Lcom/tendcloud/tenddata/game/az;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eq v1, v8, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/tendcloud/tenddata/game/az;->a(Landroid/content/Context;Lorg/json/JSONObject;Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    sget-boolean v1, Lcom/tendcloud/tenddata/game/bs;->a:Z

    if-nez v1, :cond_1

    new-instance v1, Lcom/tendcloud/tenddata/game/bs;

    invoke-direct {v1, p1, v0}, Lcom/tendcloud/tenddata/game/bs;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "url"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/tdwebdata"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lcom/tendcloud/tenddata/game/bs;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;)V
    .locals 6

    const-class v1, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver;

    monitor-enter v1

    :try_start_0
    invoke-static {p2}, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver;->a(Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/aa;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;->d:Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;

    if-ne p2, v2, :cond_0

    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "td_pefercen_profile"

    const-string/jumbo v2, "appkey"

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/tendcloud/tenddata/game/t;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Lcom/tendcloud/tenddata/game/bp;->b:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "App"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/bp;->b([Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_3

    const-string/jumbo v2, "TalkingData_Push_SharedPreferences"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Lcom/tendcloud/tenddata/game/t;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x66

    iput v3, v2, Landroid/os/Message;->what:I

    new-instance v3, Lcom/tendcloud/tenddata/game/bb;

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, p1, v4}, Lcom/tendcloud/tenddata/game/bb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/tendcloud/tenddata/game/bc;->a()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-object v2, Lcom/tendcloud/tenddata/game/az;->a:Landroid/content/Context;

    const-string/jumbo v3, "TalkingData_Push_SharedPreferences"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0, p1}, Lcom/tendcloud/tenddata/game/t;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v1

    return-void

    :cond_3
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPushIdReceived()#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " appid is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->c([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    :try_start_0
    const-string/jumbo v0, "custom"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sign"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "appkey"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/tendcloud/tenddata/TalkingDataGA;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x67

    iput v3, v2, Landroid/os/Message;->what:I

    new-instance v3, Lcom/tendcloud/tenddata/game/bb;

    const/4 v4, 0x0

    sget-object v5, Lcom/tendcloud/tenddata/game/bb$a;->b:Lcom/tendcloud/tenddata/game/bb$a;

    const/4 v6, 0x0

    invoke-direct {v3, v1, v4, v5, v6}, Lcom/tendcloud/tenddata/game/bb;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/bb$a;I)V

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/tendcloud/tenddata/game/bc;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_3

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "activity"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "custom"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "activity"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "custom"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/tendcloud/tenddata/game/bp;->b:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    :try_start_0
    const-string/jumbo v0, "td_pefercen_profile"

    const-string/jumbo v1, "appkey"

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/tendcloud/tenddata/game/t;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "appkey"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    sput-object p1, Lcom/tendcloud/tenddata/TalkingDataGA;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/az;->a(Landroid/content/Context;)V

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.baidu.android.pushservice.action.MESSAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "message_string"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/tendcloud/tenddata/game/bp;->b:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string/jumbo v1, "com.baidu.android.pushservice.action.notification.CLICK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.baidu.android.pushservice.action.RECEIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v0, "content"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "content"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sget-object v1, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;->a:Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;

    invoke-static {p1, v0, v1}, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver;->d:Ljava/lang/String;

    const-string/jumbo v1, "BAIDU push id is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "cn.jpush.android.intent.REGISTRATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "cn.jpush.android.REGISTRATION_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;->c:Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;

    invoke-static {p1, v0, v1}, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "cn.jpush.android.intent.MESSAGE_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "cn.jpush.android.MESSAGE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v1, "com.talkingdata.notification.click"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v1, :cond_8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver;->b(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v1, "com.talkingdata.notification.cancel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string/jumbo v0, "sign"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x67

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v2, Lcom/tendcloud/tenddata/game/bb;

    const/4 v3, 0x0

    sget-object v4, Lcom/tendcloud/tenddata/game/bb$a;->e:Lcom/tendcloud/tenddata/game/bb$a;

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/tendcloud/tenddata/game/bb;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/bb$a;I)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/tendcloud/tenddata/game/bc;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v1, "com.talkingdata.message.click"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct {p0, p1, p2}, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v1, "com.igexin.sdk.action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string/jumbo v1, "payload"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, p1, v1}, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    const-string/jumbo v1, "clientid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;->b:Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;

    invoke-static {p1, v0, v1}, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v1, "android.talkingdata.action.media.SILENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string/jumbo v0, "mpush_message_string"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "app"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/tendcloud/tenddata/TalkingDataGA;->getGameAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tendcloud/tenddata/TalkingDataGA;->e:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "content"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :cond_d
    :try_start_3
    const-string/jumbo v1, "android.talkingdata.action.media.TD.TOKEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "mpush_token"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;->d:Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;

    invoke-static {p1, v0, v1}, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
