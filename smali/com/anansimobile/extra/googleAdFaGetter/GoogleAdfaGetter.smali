.class public Lcom/anansimobile/extra/googleAdFaGetter/GoogleAdfaGetter;
.super Ljava/lang/Object;
.source "GoogleAdfaGetter.java"


# static fields
.field public static appCtx:Landroid/content/Context;

.field public static sSavedAdfa:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/anansimobile/extra/googleAdFaGetter/GoogleAdfaGetter;->appCtx:Landroid/content/Context;

    .line 14
    const-string/jumbo v0, " "

    sput-object v0, Lcom/anansimobile/extra/googleAdFaGetter/GoogleAdfaGetter;->sSavedAdfa:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdfa()Ljava/lang/String;
    .locals 3

    .prologue
    .line 22
    :try_start_0
    sget-object v2, Lcom/anansimobile/extra/googleAdFaGetter/GoogleAdfaGetter;->appCtx:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 23
    sget-object v2, Lcom/anansimobile/extra/googleAdFaGetter/GoogleAdfaGetter;->appCtx:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    .line 24
    .local v1, "newInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/anansimobile/extra/googleAdFaGetter/GoogleAdfaGetter;->sSavedAdfa:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_3

    .line 39
    :cond_0
    :goto_0
    sget-object v2, Lcom/anansimobile/extra/googleAdFaGetter/GoogleAdfaGetter;->sSavedAdfa:Ljava/lang/String;

    return-object v2

    .line 26
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 29
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 31
    .local v0, "e":Lcom/google/android/gms/common/GooglePlayServicesRepairableException;
    invoke-virtual {v0}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->printStackTrace()V

    goto :goto_0

    .line 32
    .end local v0    # "e":Lcom/google/android/gms/common/GooglePlayServicesRepairableException;
    :catch_2
    move-exception v0

    .line 34
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 35
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 37
    .local v0, "e":Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
    invoke-virtual {v0}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->printStackTrace()V

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 17
    sput-object p0, Lcom/anansimobile/extra/googleAdFaGetter/GoogleAdfaGetter;->appCtx:Landroid/content/Context;

    .line 18
    return-void
.end method
