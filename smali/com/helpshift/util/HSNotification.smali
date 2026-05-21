.class public final Lcom/helpshift/util/HSNotification;
.super Ljava/lang/Object;
.source "HSNotification.java"


# static fields
.field private static final APP_NAME:Ljava/lang/String; = "app_name"

.field private static TAG:Ljava/lang/String;

.field private static data:Lcom/helpshift/HSApiData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string/jumbo v0, "HelpShiftDebug"

    sput-object v0, Lcom/helpshift/util/HSNotification;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/helpshift/util/HSNotification;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getApplicationName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v1, 0x0

    .line 65
    .local v1, "appName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 66
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 67
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 72
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    if-nez v1, :cond_0

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/helpshift/D$string;->hs__default_notification_content_title:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 76
    :cond_0
    return-object v1

    .line 68
    :catch_0
    move-exception v2

    .line 69
    .local v2, "e":Ljava/lang/NullPointerException;
    sget-object v4, Lcom/helpshift/util/HSNotification;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getApplicationName"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getNotifHandler(Landroid/content/Context;Lcom/helpshift/util/HSPolling;)Landroid/os/Handler;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "notifCountPoller"    # Lcom/helpshift/util/HSPolling;

    .prologue
    .line 170
    new-instance v0, Lcom/helpshift/HSApiData;

    invoke-direct {v0, p0}, Lcom/helpshift/HSApiData;-><init>(Landroid/content/Context;)V

    .line 172
    .local v0, "data":Lcom/helpshift/HSApiData;
    new-instance v1, Lcom/helpshift/util/HSNotification$1;

    invoke-direct {v1, p1, v0, p0}, Lcom/helpshift/util/HSNotification$1;-><init>(Lcom/helpshift/util/HSPolling;Lcom/helpshift/HSApiData;Landroid/content/Context;)V

    .line 216
    .local v1, "notifHandler":Landroid/os/Handler;
    return-object v1
.end method

.method private static hasVibratePermission(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 157
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v3, "android.permission.VIBRATE"

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 160
    .local v2, "permissionStatus":I
    if-nez v2, :cond_0

    .line 161
    const/4 v3, 0x1

    .line 163
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static showNotif(Landroid/content/Context;Lcom/helpshift/models/Issue;ILjava/lang/String;Landroid/content/Intent;)V
    .locals 8
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "issue"    # Lcom/helpshift/models/Issue;
    .param p2, "messCnt"    # I
    .param p3, "chatLaunchSource"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 42
    .local v7, "extras":Landroid/os/Bundle;
    if-eqz v7, :cond_0

    const-string/jumbo v0, "app_name"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const-string/jumbo v0, "app_name"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 49
    .local v5, "appName":Ljava/lang/String;
    :goto_0
    :try_start_0
    sget-object v0, Lcom/helpshift/util/HSFormat;->issueTsFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/helpshift/models/Issue;->getCreatedAt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    long-to-int v2, v0

    .line 50
    .local v2, "ts":I
    invoke-virtual {p1}, Lcom/helpshift/models/Issue;->getIssueId()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/helpshift/util/HSNotification;->showNotif(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v2    # "ts":I
    :goto_1
    return-void

    .line 45
    .end local v5    # "appName":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/helpshift/util/HSNotification;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "appName":Ljava/lang/String;
    goto :goto_0

    .line 56
    :catch_0
    move-exception v6

    .line 57
    .local v6, "e":Ljava/text/ParseException;
    sget-object v0, Lcom/helpshift/util/HSNotification;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showNotif ParseException"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static showNotif(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 23
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "issueId"    # Ljava/lang/String;
    .param p2, "ts"    # I
    .param p3, "newMessCnt"    # I
    .param p4, "chatLaunchSource"    # Ljava/lang/String;
    .param p5, "contentTitle"    # Ljava/lang/String;

    .prologue
    .line 81
    sget-object v3, Lcom/helpshift/util/HSNotification;->data:Lcom/helpshift/HSApiData;

    if-nez v3, :cond_0

    .line 82
    new-instance v3, Lcom/helpshift/HSApiData;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/helpshift/HSApiData;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/helpshift/util/HSNotification;->data:Lcom/helpshift/HSApiData;

    .line 84
    :cond_0
    sget-object v3, Lcom/helpshift/util/HSNotification;->data:Lcom/helpshift/HSApiData;

    iget-object v3, v3, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/helpshift/HSStorage;->saveNotification(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static/range {p1 .. p1}, Lcom/helpshift/models/Issue;->getProfileId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 87
    .local v13, "issueProfileId":Ljava/lang/String;
    sget-object v3, Lcom/helpshift/util/HSNotification;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v3}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 153
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-static {}, Lcom/helpshift/Helpshift;->getDelegate()Lcom/helpshift/Helpshift$HelpshiftDelegate;

    move-result-object v11

    .line 92
    .local v11, "delegate":Lcom/helpshift/Helpshift$HelpshiftDelegate;
    if-eqz v11, :cond_2

    .line 93
    move/from16 v0, p3

    invoke-interface {v11, v0}, Lcom/helpshift/Helpshift$HelpshiftDelegate;->didReceiveNotification(I)V

    .line 96
    :cond_2
    const-string/jumbo v3, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/NotificationManager;

    .line 99
    .local v18, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/helpshift/D$plurals;->hs__notification_content_title:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move/from16 v0, p3

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 101
    .local v14, "notifText":Ljava/lang/CharSequence;
    invoke-static/range {p0 .. p0}, Lcom/helpshift/util/Xml;->getLogoResourceValue(Landroid/content/Context;)I

    move-result v16

    .line 102
    .local v16, "notificationIcon":I
    const/16 v20, 0x0

    .line 104
    .local v20, "soundUri":Landroid/net/Uri;
    new-instance v22, Lcom/helpshift/HSStorage;

    invoke-direct/range {v22 .. v23}, Lcom/helpshift/HSStorage;-><init>(Landroid/content/Context;)V

    .line 106
    .local v22, "storage":Lcom/helpshift/HSStorage;
    :try_start_0
    invoke-virtual/range {v22 .. v22}, Lcom/helpshift/HSStorage;->getAppConfig()Lorg/json/JSONObject;

    move-result-object v9

    .line 107
    .local v9, "config":Lorg/json/JSONObject;
    const-string/jumbo v3, "notificationSound"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 108
    const-string/jumbo v3, "notificationSound"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    .line 110
    .local v19, "sound":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "android.resource://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 111
    .local v21, "soundUriString":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 114
    .end local v19    # "sound":I
    .end local v21    # "soundUriString":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "notificationIcon"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 115
    const-string/jumbo v3, "notificationIcon"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    .line 121
    .end local v9    # "config":Lorg/json/JSONObject;
    :cond_4
    :goto_1
    new-instance v17, Landroid/content/Intent;

    const-class v3, Lcom/helpshift/HSConversation;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v17, "notificationIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 123
    const-string/jumbo v3, "issueId"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string/jumbo v3, "chatLaunchSource"

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string/jumbo v3, "isRoot"

    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 126
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 128
    .local v10, "contentIntent":Landroid/app/PendingIntent;
    new-instance v15, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 129
    .local v15, "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual/range {v15 .. v16}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 130
    move-object/from16 v0, p5

    invoke-virtual {v15, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 131
    invoke-virtual {v15, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 132
    invoke-virtual {v15, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 133
    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 135
    if-nez v20, :cond_6

    .line 136
    invoke-static/range {p0 .. p0}, Lcom/helpshift/util/HSNotification;->hasVibratePermission(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 137
    const/4 v3, -0x1

    invoke-virtual {v15, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 152
    :goto_2
    const/4 v3, 0x1

    invoke-virtual {v15}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 117
    .end local v10    # "contentIntent":Landroid/app/PendingIntent;
    .end local v15    # "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v17    # "notificationIntent":Landroid/content/Intent;
    :catch_0
    move-exception v12

    .line 118
    .local v12, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/helpshift/util/HSNotification;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getAppConfig"

    invoke-static {v3, v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 139
    .end local v12    # "e":Lorg/json/JSONException;
    .restart local v10    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v15    # "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .restart local v17    # "notificationIntent":Landroid/content/Intent;
    :cond_5
    const/4 v3, 0x5

    invoke-virtual {v15, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_2

    .line 143
    :cond_6
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 144
    invoke-static/range {p0 .. p0}, Lcom/helpshift/util/HSNotification;->hasVibratePermission(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 145
    const/4 v3, 0x6

    invoke-virtual {v15, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_2

    .line 148
    :cond_7
    const/4 v3, 0x4

    invoke-virtual {v15, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_2
.end method
