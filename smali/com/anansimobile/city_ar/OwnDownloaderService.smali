.class public Lcom/anansimobile/city_ar/OwnDownloaderService;
.super Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;
.source "OwnDownloaderService.java"


# static fields
.field private static final BASE64_PUBLIC_KEY:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAgd8SYj+8N+tMCVElpVMDKTTUZONwDK4LBG3a1IuUqAj0Q+6ashOfugRlZtT6Z3C0HO5AbW55eVsQV7vGrjEz4TEsZ2fMCwLy1AETU3ufAf1RT4f+yqd3GeWjnfAxoesL0zrnwkyGSYim3WdFo/X32V63XiFca9MDW1oTDAmCoZmy3W/XsxYHgQ2IWwq1UIJy1Z7L8nAr9pEXed0MBu5NoZ7B8R5Rn905fBVr3708eDyVGFlO8qKOZJo8A8j6lbecuGR2WSNshYpTCPIY08r8SyEsRxMsqQwVSeh73kunuoemOBl4emhro/PA2t4nzF6bLPXlhkgYbXM0kzkJ6KLbeQIDAQAB"

.field private static final SALT:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/anansimobile/city_ar/OwnDownloaderService;->SALT:[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0x2bt
        -0xct
        -0x1t
        0x36t
        0x62t
        -0x64t
        -0xct
        0x2bt
        0x2t
        -0x8t
        -0x4t
        0x9t
        0x5t
        -0x6at
        -0x6ct
        -0x21t
        0x2dt
        -0x1t
        0x54t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlarmReceiverClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/anansimobile/city_ar/AlarmReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string/jumbo v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAgd8SYj+8N+tMCVElpVMDKTTUZONwDK4LBG3a1IuUqAj0Q+6ashOfugRlZtT6Z3C0HO5AbW55eVsQV7vGrjEz4TEsZ2fMCwLy1AETU3ufAf1RT4f+yqd3GeWjnfAxoesL0zrnwkyGSYim3WdFo/X32V63XiFca9MDW1oTDAmCoZmy3W/XsxYHgQ2IWwq1UIJy1Z7L8nAr9pEXed0MBu5NoZ7B8R5Rn905fBVr3708eDyVGFlO8qKOZJo8A8j6lbecuGR2WSNshYpTCPIY08r8SyEsRxMsqQwVSeh73kunuoemOBl4emhro/PA2t4nzF6bLPXlhkgYbXM0kzkJ6KLbeQIDAQAB"

    return-object v0
.end method

.method public getSALT()[B
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/anansimobile/city_ar/OwnDownloaderService;->SALT:[B

    return-object v0
.end method
