.class public Lcom/anansimobile/nge/NGNotification;
.super Ljava/lang/Object;
.source "NGNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anansimobile/nge/NGNotification$NotificationInfo;
    }
.end annotation


# static fields
.field private static mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    sput-object v0, Lcom/anansimobile/nge/NGNotification;->mTimer:Ljava/util/Timer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendLocalNotification(JLjava/lang/String;ILjava/lang/String;)V
    .locals 16
    .param p0, "fireFromNowS"    # J
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "channel"    # I
    .param p4, "param"    # Ljava/lang/String;

    .prologue
    .line 119
    sget-object v4, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    const-string/jumbo v5, "localpushnotification"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/anansimobile/nge/RootActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 120
    .local v14, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 121
    .local v13, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 122
    .local v2, "nowTimeS":J
    const-string/jumbo v9, ""

    .line 125
    .local v9, "appTitle":Ljava/lang/String;
    :try_start_0
    sget-object v4, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v4}, Lcom/anansimobile/nge/RootActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v5}, Lcom/anansimobile/nge/RootActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 130
    :goto_0
    new-instance v1, Lcom/anansimobile/nge/NGNotification$NotificationInfo;

    sget-object v4, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    .line 136
    invoke-virtual {v4}, Lcom/anansimobile/nge/RootActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v10, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    sget-object v4, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    .line 137
    invoke-virtual {v4}, Lcom/anansimobile/nge/RootActivity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    sget-object v4, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    .line 138
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    move-wide/from16 v4, p0

    move/from16 v6, p3

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v12}, Lcom/anansimobile/nge/NGNotification$NotificationInfo;-><init>(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 140
    .local v1, "info":Lcom/anansimobile/nge/NGNotification$NotificationInfo;
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v13, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 141
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 142
    return-void

    .line 126
    .end local v1    # "info":Lcom/anansimobile/nge/NGNotification$NotificationInfo;
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v9, "Notification"

    goto :goto_0
.end method

.method static cancelLocalNotification(ILjava/lang/String;)V
    .locals 5
    .param p0, "channel"    # I
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 217
    const-string/jumbo v1, "[notification] cancel, channel: %d, param: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    sget-object v1, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Lcom/anansimobile/nge/RootActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 219
    .local v0, "manager":Landroid/app/NotificationManager;
    invoke-virtual {v0, p1, p0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 221
    sget-object v1, Lcom/anansimobile/nge/NGNotification;->mTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 222
    sget-object v1, Lcom/anansimobile/nge/NGNotification;->mTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 223
    const/4 v1, 0x0

    sput-object v1, Lcom/anansimobile/nge/NGNotification;->mTimer:Ljava/util/Timer;

    .line 225
    :cond_0
    return-void
.end method

.method public static checkLocalNotification(Landroid/content/Context;)V
    .locals 12
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v6, v8, v10

    .line 146
    .local v6, "nowTimeS":J
    const-string/jumbo v8, "localpushnotification"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 147
    .local v5, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 149
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 150
    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 151
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 152
    .local v3, "key":Ljava/lang/String;
    const-string/jumbo v8, ""

    invoke-interface {v5, v3, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, "notificationJsonStr":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 154
    new-instance v1, Lcom/anansimobile/nge/NGNotification$NotificationInfo;

    invoke-direct {v1, v4}, Lcom/anansimobile/nge/NGNotification$NotificationInfo;-><init>(Ljava/lang/String;)V

    .line 155
    .local v1, "info":Lcom/anansimobile/nge/NGNotification$NotificationInfo;
    invoke-virtual {v1}, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->isValid()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 156
    iget-wide v8, v1, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mNowTimeS:J

    iget-wide v10, v1, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mFireFromNowS:J

    add-long/2addr v8, v10

    cmp-long v8, v8, v6

    if-gez v8, :cond_0

    .line 158
    invoke-static {p0, v1}, Lcom/anansimobile/nge/NGNotification;->commitLocalNotification(Landroid/content/Context;Lcom/anansimobile/nge/NGNotification$NotificationInfo;)V

    .line 159
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 163
    :cond_1
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 168
    .end local v1    # "info":Lcom/anansimobile/nge/NGNotification$NotificationInfo;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "notificationJsonStr":Ljava/lang/String;
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 169
    return-void
.end method

.method public static commitLocalNotification(Landroid/content/Context;Lcom/anansimobile/nge/NGNotification$NotificationInfo;)V
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/anansimobile/nge/NGNotification$NotificationInfo;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 177
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 178
    .local v0, "back":Landroid/content/Intent;
    iget-object v5, p1, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mCallbackPackageName:Ljava/lang/String;

    iget-object v6, p1, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mCallbackClassName:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    invoke-static {p0, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 183
    .local v4, "pIntent":Landroid/app/PendingIntent;
    const/4 v3, 0x0

    .line 184
    .local v3, "notify":Landroid/app/Notification;
    invoke-static {}, Lcom/anansimobile/nge/NGDevice;->getDeviceSDKVersion()I

    move-result v5

    const/16 v6, 0xb

    if-lt v5, v6, :cond_1

    .line 185
    new-instance v5, Landroid/app/Notification$Builder;

    invoke-direct {v5, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v6, p1, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mTitle:Ljava/lang/String;

    .line 186
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p1, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mMsg:Ljava/lang/String;

    .line 187
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 188
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v6, p1, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mIcon:I

    .line 189
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 191
    .local v1, "builder":Landroid/app/Notification$Builder;
    invoke-static {}, Lcom/anansimobile/nge/NGDevice;->getDeviceSDKVersion()I

    move-result v5

    const/16 v6, 0x10

    if-lt v5, v6, :cond_0

    .line 192
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 201
    .end local v1    # "builder":Landroid/app/Notification$Builder;
    :goto_0
    iget-object v5, p1, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mMsg:Ljava/lang/String;

    iput-object v5, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 202
    const/4 v5, 0x1

    iput v5, v3, Landroid/app/Notification;->defaults:I

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v3, Landroid/app/Notification;->when:J

    .line 204
    iget v5, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v3, Landroid/app/Notification;->flags:I

    .line 206
    const-string/jumbo v5, "notification"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 207
    .local v2, "manager":Landroid/app/NotificationManager;
    iget-object v5, p1, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mParam:Ljava/lang/String;

    iget v6, p1, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mChannel:I

    invoke-virtual {v2, v5, v6, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 208
    return-void

    .line 194
    .end local v2    # "manager":Landroid/app/NotificationManager;
    .restart local v1    # "builder":Landroid/app/Notification$Builder;
    :cond_0
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v3

    goto :goto_0

    .line 197
    .end local v1    # "builder":Landroid/app/Notification$Builder;
    :cond_1
    new-instance v3, Landroid/app/Notification;

    .end local v3    # "notify":Landroid/app/Notification;
    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 198
    .restart local v3    # "notify":Landroid/app/Notification;
    iget v5, p1, Lcom/anansimobile/nge/NGNotification$NotificationInfo;->mIcon:I

    iput v5, v3, Landroid/app/Notification;->icon:I

    goto :goto_0
.end method

.method static pushLocalNotification(JLjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "fireFromNowS"    # J
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "channel"    # I
    .param p4, "param"    # Ljava/lang/String;

    .prologue
    .line 213
    invoke-static {p0, p1, p2, p3, p4}, Lcom/anansimobile/nge/NGNotification;->appendLocalNotification(JLjava/lang/String;ILjava/lang/String;)V

    .line 214
    return-void
.end method

.method static registerRemoteNotification(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "playerId"    # Ljava/lang/String;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 251
    return-void
.end method
