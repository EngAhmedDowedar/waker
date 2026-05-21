.class Lcom/anansimobile/nge/NGNotification$NotificationInfo;
.super Ljava/lang/Object;
.source "NGNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anansimobile/nge/NGNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationInfo"
.end annotation


# instance fields
.field public mCallbackClassName:Ljava/lang/String;

.field public mCallbackPackageName:Ljava/lang/String;

.field public mChannel:I

.field public mFireFromNowS:J

.field public mIcon:I

.field private mIsValid:Z

.field public mMsg:Ljava/lang/String;

.field public mNowTimeS:J

.field public mParam:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "nowTimeS"    # J
    .param p3, "fireFromNowS"    # J
    .param p5, "channel"    # I
    .param p6, "msg"    # Ljava/lang/String;
    .param p7, "param"    # Ljava/lang/String;
    .param p8, "title"    # Ljava/lang/String;
    .param p9, "icon"    # I
    .param p10, "packageName"    # Ljava/lang/String;
    .param p11, "className"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mNowTimeS:J

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mFireFromNowS:J

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mChannel:I

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mMsg:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mParam:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mTitle:Ljava/lang/String;

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mIcon:I

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mCallbackPackageName:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mCallbackClassName:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mIsValid:Z

    .line 54
    iput-wide p1, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mNowTimeS:J

    .line 55
    iput-wide p3, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mFireFromNowS:J

    .line 56
    iput p5, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mChannel:I

    .line 57
    iput-object p6, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mMsg:Ljava/lang/String;

    .line 58
    iput-object p7, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mParam:Ljava/lang/String;

    .line 59
    iput-object p8, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mTitle:Ljava/lang/String;

    .line 60
    iput p9, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mIcon:I

    .line 62
    iput-object p10, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mCallbackPackageName:Ljava/lang/String;

    .line 63
    iput-object p11, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mCallbackClassName:Ljava/lang/String;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mIsValid:Z

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide v6, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mNowTimeS:J

    .line 27
    iput-wide v6, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mFireFromNowS:J

    .line 28
    iput v4, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mChannel:I

    .line 29
    iput-object v3, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mMsg:Ljava/lang/String;

    .line 30
    iput-object v3, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mParam:Ljava/lang/String;

    .line 31
    iput-object v3, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mTitle:Ljava/lang/String;

    .line 32
    const/4 v2, -0x1

    iput v2, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mIcon:I

    .line 34
    iput-object v3, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mCallbackPackageName:Ljava/lang/String;

    .line 35
    iput-object v3, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mCallbackClassName:Ljava/lang/String;

    .line 37
    iput-boolean v4, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mIsValid:Z

    .line 70
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    .local v1, "jsonData":Lorg/json/JSONObject;
    const-string/jumbo v2, "nowTimeS"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mNowTimeS:J

    .line 72
    const-string/jumbo v2, "fireFromNowS"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mFireFromNowS:J

    .line 73
    const-string/jumbo v2, "channel"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mChannel:I

    .line 74
    const-string/jumbo v2, "msg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mMsg:Ljava/lang/String;

    .line 75
    const-string/jumbo v2, "param"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mParam:Ljava/lang/String;

    .line 76
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mTitle:Ljava/lang/String;

    .line 77
    const-string/jumbo v2, "icon"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mIcon:I

    .line 79
    const-string/jumbo v2, "callbackPakcageName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mCallbackPackageName:Ljava/lang/String;

    .line 80
    const-string/jumbo v2, "callbackClassName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mCallbackClassName:Ljava/lang/String;

    .line 82
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mIsValid:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v1    # "jsonData":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Lorg/json/JSONException;
    iput-boolean v4, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mIsValid:Z

    goto :goto_0
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mIsValid:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 92
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 94
    .local v1, "jsonData":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "nowTimeS"

    iget-wide v4, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mNowTimeS:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 95
    const-string/jumbo v2, "fireFromNowS"

    iget-wide v4, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mFireFromNowS:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 96
    const-string/jumbo v2, "channel"

    iget v3, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mChannel:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 97
    const-string/jumbo v2, "msg"

    iget-object v3, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mMsg:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string/jumbo v2, "param"

    iget-object v3, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mParam:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string/jumbo v2, "title"

    iget-object v3, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string/jumbo v2, "icon"

    iget v3, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mIcon:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 102
    const-string/jumbo v2, "callbackPakcageName"

    iget-object v3, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mCallbackPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    const-string/jumbo v2, "callbackClassName"

    iget-object v3, p0, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mCallbackClassName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    .line 104
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, ""

    goto :goto_0
.end method
