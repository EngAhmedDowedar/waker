.class public Lcom/vungle/publisher/FullScreenAdActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/FullScreenAdActivity$2;,
        Lcom/vungle/publisher/FullScreenAdActivity$AdEventListener;
    }
.end annotation


# static fields
.field public static final AD_CONFIG_EXTRA_KEY:Ljava/lang/String; = "adConfig"

.field public static final AD_ID_EXTRA_KEY:Ljava/lang/String; = "adId"


# instance fields
.field a:Lcom/vungle/publisher/db/model/Ad;

.field b:Lcom/vungle/publisher/reporting/AdReportEventListener;

.field c:Lcom/vungle/publisher/FullScreenAdActivity$AdEventListener$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/ad/AdManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/reporting/AdReportEventListener$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/bt;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcom/vungle/publisher/event/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Lcom/vungle/publisher/display/view/VideoFragment$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field i:Lcom/vungle/publisher/display/view/PostRollFragment$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field j:Lcom/vungle/publisher/env/SdkState;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field k:Lcom/vungle/publisher/util/IntentFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field l:Lcom/vungle/publisher/db/model/LoggedException$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private m:Lcom/vungle/publisher/display/view/AdFragment;

.field private n:Lcom/vungle/publisher/display/view/PostRollFragment;

.field private o:Landroid/view/View;

.field private p:Lcom/vungle/publisher/display/view/VideoFragment;

.field private q:Lcom/vungle/publisher/FullScreenAdActivity$AdEventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 344
    return-void
.end method

.method private a(Lcom/vungle/publisher/display/view/AdFragment;)V
    .locals 3

    .prologue
    .line 324
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->m:Lcom/vungle/publisher/display/view/AdFragment;

    if-eq p1, v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/vungle/publisher/FullScreenAdActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 327
    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    .line 328
    const v1, 0x1020002

    iput-object p1, p0, Lcom/vungle/publisher/FullScreenAdActivity;->m:Lcom/vungle/publisher/display/view/AdFragment;

    invoke-virtual {p1}, Lcom/vungle/publisher/display/view/AdFragment;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 329
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 331
    :cond_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->n:Lcom/vungle/publisher/display/view/PostRollFragment;

    if-nez v0, :cond_0

    .line 261
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vungle/publisher/FullScreenAdActivity;->a(ZZ)V

    .line 267
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->g:Lcom/vungle/publisher/event/EventBus;

    new-instance v1, Lcom/vungle/publisher/z;

    invoke-direct {v1}, Lcom/vungle/publisher/z;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/event/EventBus;->a(Ljava/lang/Object;)V

    .line 265
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->n:Lcom/vungle/publisher/display/view/PostRollFragment;

    invoke-direct {p0, v0}, Lcom/vungle/publisher/FullScreenAdActivity;->a(Lcom/vungle/publisher/display/view/AdFragment;)V

    goto :goto_0
.end method

.method final a(Lcom/vungle/publisher/a;)V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->f:Lcom/vungle/publisher/bt;

    sget-object v1, Lcom/vungle/publisher/br;->b:Lcom/vungle/publisher/br;

    invoke-interface {v0, v1}, Lcom/vungle/publisher/bt;->a(Lcom/vungle/publisher/br;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/vungle/publisher/a;->isImmersiveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->o:Landroid/view/View;

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->o:Landroid/view/View;

    new-instance v1, Lcom/vungle/publisher/FullScreenAdActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/vungle/publisher/FullScreenAdActivity$1;-><init>(Lcom/vungle/publisher/FullScreenAdActivity;Lcom/vungle/publisher/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 217
    :cond_0
    return-void
.end method

.method final a(ZZ)V
    .locals 4

    .prologue
    .line 310
    :try_start_0
    iget-object v1, p0, Lcom/vungle/publisher/FullScreenAdActivity;->g:Lcom/vungle/publisher/event/EventBus;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/vungle/publisher/be;

    iget-object v2, p0, Lcom/vungle/publisher/FullScreenAdActivity;->a:Lcom/vungle/publisher/db/model/Ad;

    invoke-direct {v0, v2, p2}, Lcom/vungle/publisher/be;-><init>(Lcom/vungle/publisher/db/model/Ad;Z)V

    :goto_0
    invoke-virtual {v1, v0}, Lcom/vungle/publisher/event/EventBus;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    invoke-virtual {p0}, Lcom/vungle/publisher/FullScreenAdActivity;->finish()V

    .line 320
    :goto_1
    return-void

    .line 310
    :cond_0
    :try_start_1
    new-instance v0, Lcom/vungle/publisher/bd;

    iget-object v2, p0, Lcom/vungle/publisher/FullScreenAdActivity;->a:Lcom/vungle/publisher/db/model/Ad;

    invoke-direct {v0, v2, p2}, Lcom/vungle/publisher/bd;-><init>(Lcom/vungle/publisher/db/model/Ad;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    :try_start_2
    iget-object v1, p0, Lcom/vungle/publisher/FullScreenAdActivity;->l:Lcom/vungle/publisher/db/model/LoggedException$Factory;

    const-string/jumbo v2, "VungleAd"

    const-string/jumbo v3, "error exiting ad"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/db/model/LoggedException$Factory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 319
    invoke-virtual {p0}, Lcom/vungle/publisher/FullScreenAdActivity;->finish()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/vungle/publisher/FullScreenAdActivity;->finish()V

    throw v0
.end method

.method final b()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->p:Lcom/vungle/publisher/display/view/VideoFragment;

    if-nez v0, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/vungle/publisher/FullScreenAdActivity;->a()V

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->p:Lcom/vungle/publisher/display/view/VideoFragment;

    invoke-direct {p0, v0}, Lcom/vungle/publisher/FullScreenAdActivity;->a(Lcom/vungle/publisher/display/view/AdFragment;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 244
    :try_start_0
    const-string/jumbo v0, "VungleAd"

    const-string/jumbo v1, "back button pressed"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->g:Lcom/vungle/publisher/event/EventBus;

    new-instance v1, Lcom/vungle/publisher/d;

    invoke-direct {v1}, Lcom/vungle/publisher/d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/event/EventBus;->a(Ljava/lang/Object;)V

    .line 246
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->m:Lcom/vungle/publisher/display/view/AdFragment;

    invoke-virtual {v0}, Lcom/vungle/publisher/display/view/AdFragment;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 249
    iget-object v1, p0, Lcom/vungle/publisher/FullScreenAdActivity;->l:Lcom/vungle/publisher/db/model/LoggedException$Factory;

    const-string/jumbo v2, "VungleAd"

    const-string/jumbo v3, "error in onBackPressed"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/db/model/LoggedException$Factory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0xa

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 107
    :try_start_0
    const-string/jumbo v1, "VungleAd"

    const-string/jumbo v2, "interstital ad"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-static {}, Lcom/vungle/publisher/inject/Injector;->getInstance()Lcom/vungle/publisher/inject/Injector;

    move-result-object v1

    iget-object v1, v1, Lcom/vungle/publisher/inject/Injector;->a:Ldagger/ObjectGraph;

    .line 111
    invoke-virtual {v1, p0}, Ldagger/ObjectGraph;->inject(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-virtual {p0}, Lcom/vungle/publisher/FullScreenAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 114
    const-string/jumbo v1, "adConfig"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/a;

    .line 115
    const-string/jumbo v3, "adId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    iget-object v7, p0, Lcom/vungle/publisher/FullScreenAdActivity;->d:Lcom/vungle/publisher/ad/AdManager;

    iget-object v3, v7, Lcom/vungle/publisher/ad/AdManager;->g:Lcom/vungle/publisher/db/model/LocalAd$Factory;

    invoke-virtual {v3, v2}, Lcom/vungle/publisher/db/model/LocalAd$Factory;->a(Ljava/lang/String;)Lcom/vungle/publisher/db/model/LocalAd;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, v7, Lcom/vungle/publisher/ad/AdManager;->n:Lcom/vungle/publisher/db/model/StreamingAd$Factory;

    invoke-virtual {v3, v2}, Lcom/vungle/publisher/db/model/StreamingAd$Factory;->a(Ljava/lang/String;)Lcom/vungle/publisher/db/model/StreamingAd;

    move-result-object v3

    :cond_0
    iput-object v3, p0, Lcom/vungle/publisher/FullScreenAdActivity;->a:Lcom/vungle/publisher/db/model/Ad;

    .line 118
    if-nez v3, :cond_1

    .line 119
    const-string/jumbo v1, "VungleAd"

    const-string/jumbo v2, "no ad in activity"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/vungle/publisher/FullScreenAdActivity;->g:Lcom/vungle/publisher/event/EventBus;

    new-instance v2, Lcom/vungle/publisher/az;

    invoke-direct {v2}, Lcom/vungle/publisher/az;-><init>()V

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/event/EventBus;->a(Ljava/lang/Object;)V

    .line 121
    invoke-virtual {p0}, Lcom/vungle/publisher/FullScreenAdActivity;->finish()V

    .line 159
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/vungle/publisher/FullScreenAdActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/vungle/publisher/FullScreenAdActivity;->o:Landroid/view/View;

    .line 125
    invoke-virtual {v3}, Lcom/vungle/publisher/db/model/Ad;->k()Lcom/vungle/publisher/db/model/Video;

    move-result-object v8

    .line 126
    iget-object v2, p0, Lcom/vungle/publisher/FullScreenAdActivity;->c:Lcom/vungle/publisher/FullScreenAdActivity$AdEventListener$Factory;

    invoke-virtual {v2, p0}, Lcom/vungle/publisher/FullScreenAdActivity$AdEventListener$Factory;->getInstance(Lcom/vungle/publisher/FullScreenAdActivity;)Lcom/vungle/publisher/FullScreenAdActivity$AdEventListener;

    move-result-object v2

    iput-object v2, p0, Lcom/vungle/publisher/FullScreenAdActivity;->q:Lcom/vungle/publisher/FullScreenAdActivity$AdEventListener;

    .line 127
    iget-object v2, p0, Lcom/vungle/publisher/FullScreenAdActivity;->e:Lcom/vungle/publisher/reporting/AdReportEventListener$Factory;

    iget-object v7, v2, Lcom/vungle/publisher/reporting/AdReportEventListener$Factory;->a:Lcom/vungle/publisher/reporting/AdReportEventListener;

    invoke-virtual {v7, v3}, Lcom/vungle/publisher/reporting/AdReportEventListener;->a(Lcom/vungle/publisher/db/model/Ad;)V

    iget-object v2, v2, Lcom/vungle/publisher/reporting/AdReportEventListener$Factory;->a:Lcom/vungle/publisher/reporting/AdReportEventListener;

    iput-object v2, p0, Lcom/vungle/publisher/FullScreenAdActivity;->b:Lcom/vungle/publisher/reporting/AdReportEventListener;

    .line 128
    iget-object v2, p0, Lcom/vungle/publisher/FullScreenAdActivity;->q:Lcom/vungle/publisher/FullScreenAdActivity$AdEventListener;

    invoke-virtual {v2}, Lcom/vungle/publisher/FullScreenAdActivity$AdEventListener;->registerOnce()V

    .line 129
    iget-object v2, p0, Lcom/vungle/publisher/FullScreenAdActivity;->b:Lcom/vungle/publisher/reporting/AdReportEventListener;

    invoke-virtual {v2}, Lcom/vungle/publisher/reporting/AdReportEventListener;->registerOnce()V

    .line 131
    if-eqz p1, :cond_6

    move v7, v5

    .line 132
    :goto_1
    if-nez v7, :cond_2

    .line 133
    iget-object v2, p0, Lcom/vungle/publisher/FullScreenAdActivity;->g:Lcom/vungle/publisher/event/EventBus;

    new-instance v9, Lcom/vungle/publisher/ag;

    invoke-direct {v9, v3, v1}, Lcom/vungle/publisher/ag;-><init>(Lcom/vungle/publisher/db/model/Ad;Lcom/vungle/publisher/a;)V

    invoke-virtual {v2, v9}, Lcom/vungle/publisher/event/EventBus;->a(Ljava/lang/Object;)V

    .line 136
    :cond_2
    iget-object v9, p0, Lcom/vungle/publisher/FullScreenAdActivity;->h:Lcom/vungle/publisher/display/view/VideoFragment$Factory;

    invoke-static {p0}, Lcom/vungle/publisher/display/view/VideoFragment$Factory;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/vungle/publisher/display/view/VideoFragment;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, v9, Lcom/vungle/publisher/display/view/VideoFragment$Factory;->a:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/publisher/display/view/VideoFragment;

    :cond_3
    invoke-static {v2, v3, v1}, Lcom/vungle/publisher/display/view/VideoFragment$Factory;->a(Lcom/vungle/publisher/display/view/VideoFragment;Lcom/vungle/publisher/db/model/Ad;Lcom/vungle/publisher/a;)Lcom/vungle/publisher/display/view/VideoFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/vungle/publisher/FullScreenAdActivity;->p:Lcom/vungle/publisher/display/view/VideoFragment;

    .line 137
    instance-of v2, v3, Lcom/vungle/publisher/db/model/LocalAd;

    if-eqz v2, :cond_5

    .line 138
    move-object v0, v3

    check-cast v0, Lcom/vungle/publisher/db/model/LocalAd;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/vungle/publisher/db/model/LocalAd;->u()Lcom/vungle/publisher/db/model/LocalArchive;

    move-result-object v2

    .line 139
    if-eqz v2, :cond_5

    .line 140
    new-instance v3, Ljava/io/File;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v2}, Lcom/vungle/publisher/db/model/LocalArchive;->j()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v10

    const/4 v2, 0x1

    const-string/jumbo v10, "index.html"

    aput-object v10, v9, v2

    invoke-static {v9}, Lcom/vungle/publisher/cc;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    .line 141
    iget-object v9, p0, Lcom/vungle/publisher/FullScreenAdActivity;->i:Lcom/vungle/publisher/display/view/PostRollFragment$Factory;

    invoke-static {p0}, Lcom/vungle/publisher/display/view/PostRollFragment$Factory;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/vungle/publisher/display/view/PostRollFragment;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object v2, v9, Lcom/vungle/publisher/display/view/PostRollFragment$Factory;->a:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/publisher/display/view/PostRollFragment;

    :cond_4
    invoke-static {v2, v3}, Lcom/vungle/publisher/display/view/PostRollFragment$Factory;->a(Lcom/vungle/publisher/display/view/PostRollFragment;Ljava/lang/String;)Lcom/vungle/publisher/display/view/PostRollFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/vungle/publisher/FullScreenAdActivity;->n:Lcom/vungle/publisher/display/view/PostRollFragment;

    .line 145
    :cond_5
    invoke-virtual {p0, v1}, Lcom/vungle/publisher/FullScreenAdActivity;->a(Lcom/vungle/publisher/a;)V

    .line 146
    invoke-interface {v1}, Lcom/vungle/publisher/a;->getOrientation()Lcom/vungle/publisher/Orientation;

    move-result-object v2

    sget-object v1, Lcom/vungle/publisher/FullScreenAdActivity$2;->a:[I

    invoke-virtual {v2}, Lcom/vungle/publisher/Orientation;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    iget-object v1, v8, Lcom/vungle/publisher/db/model/Video;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    iget-object v1, v8, Lcom/vungle/publisher/db/model/Video;->n:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    iget-object v1, v8, Lcom/vungle/publisher/db/model/Video;->n:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, v8, Lcom/vungle/publisher/db/model/Video;->g:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v1, v3, :cond_7

    move v1, v5

    :goto_2
    if-eqz v1, :cond_8

    const-string/jumbo v1, "VungleAd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ad orientation "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (landscape)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    :goto_3
    invoke-virtual {p0, v1}, Lcom/vungle/publisher/FullScreenAdActivity;->setRequestedOrientation(I)V

    .line 147
    if-eqz v7, :cond_b

    const-string/jumbo v1, "currentFragment"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    :goto_4
    const-string/jumbo v2, "postRollFragment"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 149
    invoke-virtual {p0}, Lcom/vungle/publisher/FullScreenAdActivity;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 155
    :catch_0
    move-exception v1

    .line 156
    iget-object v2, p0, Lcom/vungle/publisher/FullScreenAdActivity;->l:Lcom/vungle/publisher/db/model/LoggedException$Factory;

    const-string/jumbo v3, "VungleAd"

    const-string/jumbo v4, "error playing ad"

    invoke-virtual {v2, v3, v4, v1}, Lcom/vungle/publisher/db/model/LoggedException$Factory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    invoke-virtual {p0, v6, v6}, Lcom/vungle/publisher/FullScreenAdActivity;->a(ZZ)V

    goto/16 :goto_0

    :cond_6
    move v7, v6

    .line 131
    goto/16 :goto_1

    .line 146
    :pswitch_0
    :try_start_1
    const-string/jumbo v1, "VungleAd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ad orientation "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    goto :goto_3

    :cond_7
    move v1, v6

    goto :goto_2

    :cond_8
    iget-object v1, v8, Lcom/vungle/publisher/db/model/Video;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    iget-object v1, v8, Lcom/vungle/publisher/db/model/Video;->n:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    iget-object v1, v8, Lcom/vungle/publisher/db/model/Video;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, v8, Lcom/vungle/publisher/db/model/Video;->n:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v1, v3, :cond_9

    move v1, v5

    :goto_5
    if-eqz v1, :cond_a

    const-string/jumbo v1, "VungleAd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ad orientation "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (portrait)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x7

    goto :goto_3

    :cond_9
    move v1, v6

    goto :goto_5

    :cond_a
    const-string/jumbo v1, "VungleAd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ad orientation "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (unknown) --> auto-rotate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    goto/16 :goto_3

    .line 147
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 152
    :cond_c
    invoke-virtual {p0}, Lcom/vungle/publisher/FullScreenAdActivity;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->m:Lcom/vungle/publisher/display/view/AdFragment;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/display/view/AdFragment;->a(I)Z

    .line 256
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 233
    :try_start_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 234
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->j:Lcom/vungle/publisher/env/SdkState;

    const-string/jumbo v1, "VungleAd"

    const-string/jumbo v2, "onAdActivityPause()"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vungle/publisher/env/SdkState;->f()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/vungle/publisher/env/SdkState;->m:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 237
    iget-object v1, p0, Lcom/vungle/publisher/FullScreenAdActivity;->l:Lcom/vungle/publisher/db/model/LoggedException$Factory;

    const-string/jumbo v2, "VungleAd"

    const-string/jumbo v3, "error in onPause()"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/db/model/LoggedException$Factory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 222
    :try_start_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 223
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->j:Lcom/vungle/publisher/env/SdkState;

    const-string/jumbo v1, "VungleAd"

    const-string/jumbo v2, "onAdActivityResume()"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/env/SdkState;->a(Z)V

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/vungle/publisher/env/SdkState;->m:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    iget-object v1, p0, Lcom/vungle/publisher/FullScreenAdActivity;->l:Lcom/vungle/publisher/db/model/LoggedException$Factory;

    const-string/jumbo v2, "VungleAd"

    const-string/jumbo v3, "error in onResume()"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/db/model/LoggedException$Factory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 164
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 165
    const-string/jumbo v0, "currentFragment"

    iget-object v1, p0, Lcom/vungle/publisher/FullScreenAdActivity;->m:Lcom/vungle/publisher/display/view/AdFragment;

    invoke-virtual {v1}, Lcom/vungle/publisher/display/view/AdFragment;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    iget-object v1, p0, Lcom/vungle/publisher/FullScreenAdActivity;->l:Lcom/vungle/publisher/db/model/LoggedException$Factory;

    const-string/jumbo v2, "VungleAd"

    const-string/jumbo v3, "error in onSaveInstanceState"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/db/model/LoggedException$Factory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    .prologue
    .line 336
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onWindowFocusChanged(Z)V

    .line 337
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->m:Lcom/vungle/publisher/display/view/AdFragment;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/display/view/AdFragment;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :goto_0
    return-void

    .line 339
    :catch_0
    move-exception v0

    .line 340
    iget-object v1, p0, Lcom/vungle/publisher/FullScreenAdActivity;->l:Lcom/vungle/publisher/db/model/LoggedException$Factory;

    const-string/jumbo v2, "VungleAd"

    const-string/jumbo v3, "error in onWindowFocusChanged"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/db/model/LoggedException$Factory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
