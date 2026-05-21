.class Lcom/vungle/publisher/inject/ConfigurablePublisherModule;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/cg;


# annotations
.annotation runtime Ldagger/Module;
    injects = {
        Lcom/vungle/publisher/ad/AdManager;,
        Lcom/vungle/publisher/env/AndroidDevice;,
        Lcom/vungle/publisher/location/AndroidLocation;,
        Lcom/vungle/publisher/net/AndroidNetwork;,
        Lcom/vungle/publisher/FullScreenAdActivity;,
        Lcom/vungle/publisher/location/GoogleLocationClientDetailedLocationProvider;,
        Lcom/vungle/publisher/location/GoogleLocationServicesDetailedLocationProvider;,
        Lcom/vungle/publisher/display/view/PostRollFragment;,
        Lcom/vungle/publisher/display/view/VideoFragment;,
        Lcom/vungle/sdk/VungleAdvert;,
        Lcom/vungle/publisher/VunglePub;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/lang/String;

.field c:Lcom/vungle/publisher/image/BitmapFactory;

.field d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/vungle/publisher/FullScreenAdActivity;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/vungle/publisher/env/WrapperFramework;

.field f:Ljava/lang/String;

.field private g:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/vungle/publisher/env/AndroidDevice;)Lcom/vungle/publisher/bt;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 242
    return-object p0
.end method

.method static a(Lcom/vungle/publisher/ck;)Lcom/vungle/publisher/cj;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 204
    return-object p0
.end method

.method static a()Lcom/vungle/publisher/cl;
    .locals 4
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 210
    const/4 v1, 0x0

    .line 212
    :try_start_0
    new-instance v0, Lcom/vungle/publisher/location/GoogleLocationClientDetailedLocationProvider;

    invoke-direct {v0}, Lcom/vungle/publisher/location/GoogleLocationClientDetailedLocationProvider;-><init>()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :try_start_1
    invoke-static {}, Lcom/vungle/publisher/inject/Injector;->getInstance()Lcom/vungle/publisher/inject/Injector;

    move-result-object v1

    iget-object v1, v1, Lcom/vungle/publisher/inject/Injector;->a:Ldagger/ObjectGraph;

    invoke-virtual {v1, v0}, Ldagger/ObjectGraph;->inject(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    .line 220
    :goto_0
    return-object v0

    .line 217
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 218
    :goto_1
    const-string/jumbo v2, "error creating GoogleLocationClientDetailedLocationProvider"

    invoke-static {v2, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 217
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static a(Lcom/vungle/publisher/location/AndroidLocation;)Lcom/vungle/publisher/cn;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 267
    return-object p0
.end method

.method static a(Lcom/vungle/publisher/net/AndroidNetwork;)Lcom/vungle/publisher/cp;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 273
    return-object p0
.end method

.method static a(Lcom/vungle/publisher/env/AdvertisingDeviceIdStrategy;)Lcom/vungle/publisher/env/AndroidDevice$DeviceIdStrategy;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 248
    return-object p0
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/vungle/publisher/inject/annotations/AdTempDirectory;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 160
    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/vungle/publisher/cb;

    invoke-direct {v0}, Lcom/vungle/publisher/cb;-><init>()V

    throw v0

    .line 163
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    const-string/jumbo v2, ".vungle"

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/vungle/publisher/cc;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static b()Lcom/vungle/publisher/cm;
    .locals 4
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 226
    const/4 v1, 0x0

    .line 228
    :try_start_0
    new-instance v0, Lcom/vungle/publisher/location/GoogleLocationServicesDetailedLocationProvider;

    invoke-direct {v0}, Lcom/vungle/publisher/location/GoogleLocationServicesDetailedLocationProvider;-><init>()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :try_start_1
    invoke-static {}, Lcom/vungle/publisher/inject/Injector;->getInstance()Lcom/vungle/publisher/inject/Injector;

    move-result-object v1

    iget-object v1, v1, Lcom/vungle/publisher/inject/Injector;->a:Ldagger/ObjectGraph;

    invoke-virtual {v1, v0}, Ldagger/ObjectGraph;->inject(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    .line 236
    :goto_0
    return-object v0

    .line 233
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 234
    :goto_1
    const-string/jumbo v2, "error creating GoogleLocationServicesDetailedLocationProvider"

    invoke-static {v2, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 233
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/vungle/publisher/inject/annotations/OldAdTempDirectory;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 170
    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcom/vungle/publisher/cb;

    invoke-direct {v0}, Lcom/vungle/publisher/cb;-><init>()V

    throw v0

    .line 173
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    const-string/jumbo v2, ".VungleCacheDir"

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/vungle/publisher/cc;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static c(Landroid/content/Context;)Landroid/media/AudioManager;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 180
    const-string/jumbo v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 181
    if-nez v0, :cond_0

    .line 182
    const-string/jumbo v1, "VungleDevice"

    const-string/jumbo v2, "AudioManager not avaialble"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    return-object v0
.end method

.method static c()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/vungle/publisher/inject/annotations/VungleBaseUrl;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 294
    const-string/jumbo v0, "http://api.vungle.com/api/v4/"

    return-object v0
.end method

.method static d(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 195
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 196
    if-nez v0, :cond_0

    .line 197
    const-string/jumbo v1, "VungleDevice"

    const-string/jumbo v2, "ConnectivityManager not available"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_0
    return-object v0
.end method

.method static d()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/vungle/publisher/inject/annotations/IngestBaseUrl;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 300
    const-string/jumbo v0, "https://ingest.vungle.com/"

    return-object v0
.end method

.method static e(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .annotation runtime Lcom/vungle/publisher/inject/annotations/EnvSharedPreferences;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 254
    const-string/jumbo v0, "VUNGLE_PUB_APP_INFO"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static f(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 284
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 285
    if-nez v0, :cond_0

    .line 286
    const-string/jumbo v1, "VungleDevice"

    const-string/jumbo v2, "TelephonyManager not avaialble"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_0
    return-object v0
.end method

.method static g(Landroid/content/Context;)Landroid/view/WindowManager;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 305
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 306
    if-nez v0, :cond_0

    .line 307
    const-string/jumbo v1, "VungleDevice"

    const-string/jumbo v2, "WindowManager not available"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;->g:Z

    if-eqz v0, :cond_0

    .line 139
    const-string/jumbo v0, "VungleInject"

    const-string/jumbo v1, "publisher module already initialized"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :goto_0
    return-void

    .line 142
    :cond_0
    const-string/jumbo v0, "VungleInject"

    const-string/jumbo v1, "initializing publisher module"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 144
    iput-object v0, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;->a:Landroid/content/Context;

    .line 145
    iput-object p2, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;->b:Ljava/lang/String;

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;->g:Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/vungle/publisher/FullScreenAdActivity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;->g:Z

    if-eqz v0, :cond_0

    .line 106
    const-string/jumbo v0, "VungleInject"

    const-string/jumbo v1, "full screen ad activity class in publisher module NOT set - already initialized"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :goto_0
    return-void

    .line 109
    :cond_0
    const-string/jumbo v0, "VungleInject"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setting full screen ad activity class in publisher module: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iput-object p1, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;->d:Ljava/lang/Class;

    goto :goto_0
.end method

.method public setBitmapFactory(Lcom/vungle/publisher/image/BitmapFactory;)V
    .locals 3
    .param p1, "bitmapFactory"    # Lcom/vungle/publisher/image/BitmapFactory;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;->g:Z

    if-eqz v0, :cond_0

    .line 95
    const-string/jumbo v0, "VungleInject"

    const-string/jumbo v1, "BitmapFactory in publisher module NOT set - already initialized"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_0
    return-void

    .line 98
    :cond_0
    const-string/jumbo v0, "VungleInject"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setting BitmapFactory in publisher module: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iput-object p1, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;->c:Lcom/vungle/publisher/image/BitmapFactory;

    goto :goto_0
.end method

.method public setWrapperFramework(Lcom/vungle/publisher/env/WrapperFramework;)V
    .locals 3
    .param p1, "framework"    # Lcom/vungle/publisher/env/WrapperFramework;

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;->g:Z

    if-eqz v0, :cond_0

    .line 117
    const-string/jumbo v0, "VungleInject"

    const-string/jumbo v1, "wrapper framework in publisher module NOT set - already initialized"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :goto_0
    return-void

    .line 120
    :cond_0
    const-string/jumbo v0, "VungleInject"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setting framework in publisher module: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iput-object p1, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;->e:Lcom/vungle/publisher/env/WrapperFramework;

    goto :goto_0
.end method

.method public setWrapperFrameworkVersion(Ljava/lang/String;)V
    .locals 3
    .param p1, "wrapperFrameworkVersion"    # Ljava/lang/String;

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;->g:Z

    if-eqz v0, :cond_0

    .line 128
    const-string/jumbo v0, "VungleInject"

    const-string/jumbo v1, "wrapper framework version in publisher module NOT set - already initialized"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :goto_0
    return-void

    .line 131
    :cond_0
    const-string/jumbo v0, "VungleInject"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setting framework in publisher module: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iput-object p1, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;->f:Ljava/lang/String;

    goto :goto_0
.end method
