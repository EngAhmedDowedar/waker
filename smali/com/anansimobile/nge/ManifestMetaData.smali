.class Lcom/anansimobile/nge/ManifestMetaData;
.super Ljava/lang/Object;
.source "RootActivity.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 887
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    .line 917
    invoke-static {p0, p1}, Lcom/anansimobile/nge/ManifestMetaData;->readKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    .line 913
    invoke-static {p0, p1}, Lcom/anansimobile/nge/ManifestMetaData;->readKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    .line 905
    invoke-static {p0, p1}, Lcom/anansimobile/nge/ManifestMetaData;->readKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    .line 909
    invoke-static {p0, p1}, Lcom/anansimobile/nge/ManifestMetaData;->readKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static readKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    .line 890
    .line 892
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 894
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    .line 893
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 896
    .local v0, "appi":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 897
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 900
    .end local v0    # "appi":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-object v3

    .line 899
    :catch_0
    move-exception v2

    .line 900
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    goto :goto_0
.end method
