.class public Lcom/payssion/android/sdk/ui/a/r;
.super Lcom/payssion/android/sdk/ui/a/n;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "[a-zA-Z0-9 \\./-]*"

    invoke-direct {p0, p1, v0}, Lcom/payssion/android/sdk/ui/a/r;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/payssion/android/sdk/ui/a/n;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    return-void
.end method
