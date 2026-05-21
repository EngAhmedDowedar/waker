.class public Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;
.super Ljava/lang/Object;
.source "TalkingDataStatistics.java"


# static fields
.field public static m_UseUMeng:Z

.field public static m_purchasePreCoin:D

.field public static m_purchasePreMoney:D

.field private static sAccount:Lcom/tendcloud/tenddata/TDGAAccount;

.field private static sContext:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    .line 16
    sput-object v0, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->sContext:Landroid/app/Activity;

    .line 18
    sput-object v0, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->sAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->m_UseUMeng:Z

    .line 21
    sput-wide v2, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->m_purchasePreMoney:D

    .line 22
    sput-wide v2, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->m_purchasePreCoin:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SetUseUMeng()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->m_UseUMeng:Z

    .line 35
    return-void
.end method

.method protected static appendProperty(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 262
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    return-void
.end method

.method public static beginCharge(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;DLjava/lang/String;)V
    .locals 1
    .param p0, "orderId"    # Ljava/lang/String;
    .param p1, "iapId"    # Ljava/lang/String;
    .param p2, "cost"    # D
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "size"    # D
    .param p7, "paymentType"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-static/range {p0 .. p7}, Lcom/tendcloud/tenddata/TDGAVirtualCurrency;->onChargeRequest(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;DLjava/lang/String;)V

    .line 188
    sget-boolean v0, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->m_UseUMeng:Z

    if-eqz v0, :cond_0

    .line 189
    sput-wide p2, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->m_purchasePreMoney:D

    .line 190
    sput-wide p5, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->m_purchasePreCoin:D

    .line 192
    :cond_0
    return-void
.end method

.method public static endCharge(Ljava/lang/String;)V
    .locals 5
    .param p0, "orderId"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-static {p0}, Lcom/tendcloud/tenddata/TDGAVirtualCurrency;->onChargeSuccess(Ljava/lang/String;)V

    .line 197
    sget-boolean v0, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->m_UseUMeng:Z

    if-eqz v0, :cond_0

    .line 201
    sget-wide v0, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->m_purchasePreMoney:D

    sget-wide v2, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->m_purchasePreCoin:D

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/umeng/analytics/game/UMGameAgent;->pay(DDI)V

    .line 203
    :cond_0
    return-void
.end method

.method public static init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "ctx"    # Landroid/app/Activity;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;

    .prologue
    .line 25
    sput-object p0, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->sContext:Landroid/app/Activity;

    .line 26
    invoke-static {p0, p1, p2}, Lcom/tendcloud/tenddata/TalkingDataGA;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    sget-boolean v0, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->m_UseUMeng:Z

    if-eqz v0, :cond_0

    .line 28
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->init(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/umeng/analytics/game/UMGameAgent;->setDebugMode(Z)V

    .line 31
    :cond_0
    return-void
.end method

.method public static onEvent(Ljava/lang/String;)V
    .locals 2
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    .line 231
    sget-object v0, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->sContext:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/tendcloud/tenddata/TalkingDataGA;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 232
    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .param p0, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->sContext:Landroid/app/Activity;

    invoke-static {v0, p0, p1}, Lcom/tendcloud/tenddata/TalkingDataGA;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 236
    return-void
.end method

.method public static onKillProcess(Landroid/content/Context;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 283
    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->onKill()V

    .line 285
    sget-boolean v0, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->m_UseUMeng:Z

    if-eqz v0, :cond_0

    .line 286
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->onKillProcess(Landroid/content/Context;)V

    .line 288
    :cond_0
    return-void
.end method

.method public static onMissionEnd(I)V
    .locals 1
    .param p0, "mid"    # I

    .prologue
    .line 219
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/TDGAMission;->onCompleted(Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public static onMissionFailed(ILjava/lang/String;)V
    .locals 1
    .param p0, "mid"    # I
    .param p1, "reson"    # Ljava/lang/String;

    .prologue
    .line 223
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/TDGAMission;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public static onMissionStart(I)V
    .locals 1
    .param p0, "mid"    # I

    .prologue
    .line 214
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/TDGAMission;->onBegin(Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 1
    .param p0, "ctx"    # Landroid/app/Activity;

    .prologue
    .line 240
    invoke-static {p0}, Lcom/tendcloud/tenddata/TalkingDataGA;->onPause(Landroid/app/Activity;)V

    .line 242
    sget-boolean v0, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->m_UseUMeng:Z

    if-eqz v0, :cond_0

    .line 243
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->onPause(Landroid/content/Context;)V

    .line 245
    :cond_0
    return-void
.end method

.method public static onPurchaseItem(Ljava/lang/String;ID)V
    .locals 0
    .param p0, "item"    # Ljava/lang/String;
    .param p1, "num"    # I
    .param p2, "price"    # D

    .prologue
    .line 208
    invoke-static {p0, p1, p2, p3}, Lcom/tendcloud/tenddata/TDGAItem;->onPurchase(Ljava/lang/String;ID)V

    .line 209
    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 1
    .param p0, "ctx"    # Landroid/app/Activity;

    .prologue
    .line 248
    invoke-static {p0}, Lcom/tendcloud/tenddata/TalkingDataGA;->onResume(Landroid/app/Activity;)V

    .line 250
    sget-boolean v0, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->m_UseUMeng:Z

    if-eqz v0, :cond_0

    .line 251
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->onResume(Landroid/content/Context;)V

    .line 253
    :cond_0
    return-void
.end method

.method public static setAccount(Ljava/lang/String;)V
    .locals 1
    .param p0, "account"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->setAccount(Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAAccount;

    move-result-object v0

    sput-object v0, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->sAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    .line 46
    return-void
.end method

.method public static setAccountAge(I)V
    .locals 1
    .param p0, "age"    # I

    .prologue
    .line 158
    sget-object v0, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->sAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    if-nez v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 159
    :cond_0
    sget-object v0, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->sAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-virtual {v0, p0}, Lcom/tendcloud/tenddata/TDGAAccount;->setAge(I)V

    goto :goto_0
.end method

.method public static setAccountGender(I)V
    .locals 2
    .param p0, "gender"    # I

    .prologue
    .line 138
    sget-object v0, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->sAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    if-nez v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 140
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 148
    sget-object v0, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->sAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    sget-object v1, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->UNKNOW:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/TDGAAccount;->setGender(Lcom/tendcloud/tenddata/TDGAAccount$Gender;)V

    goto :goto_0

    .line 142
    :pswitch_0
    sget-object v0, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->sAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    sget-object v1, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->MALE:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/TDGAAccount;->setGender(Lcom/tendcloud/tenddata/TDGAAccount$Gender;)V

    goto :goto_0

    .line 145
    :pswitch_1
    sget-object v0, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->sAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    sget-object v1, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->FEMALE:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/TDGAAccount;->setGender(Lcom/tendcloud/tenddata/TDGAAccount$Gender;)V

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setAccountLevel(I)V
    .locals 1
    .param p0, "lv"    # I

    .prologue
    .line 125
    sget-object v0, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->sAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 126
    :cond_0
    sget-object v0, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->sAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-virtual {v0, p0}, Lcom/tendcloud/tenddata/TDGAAccount;->setLevel(I)V

    goto :goto_0
.end method

.method public static setAccountName(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 116
    sget-object v0, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->sAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    if-nez v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 117
    :cond_0
    sget-object v0, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->sAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-virtual {v0, p0}, Lcom/tendcloud/tenddata/TDGAAccount;->setAccountName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setAccountServerId(Ljava/lang/String;)V
    .locals 1
    .param p0, "gameServer"    # Ljava/lang/String;

    .prologue
    .line 167
    sget-object v0, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->sAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    if-nez v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 168
    :cond_0
    sget-object v0, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->sAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-virtual {v0, p0}, Lcom/tendcloud/tenddata/TDGAAccount;->setGameServer(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setAccountType(I)V
    .locals 4
    .param p0, "type"    # I

    .prologue
    .line 71
    sget-object v2, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->sAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    if-nez v2, :cond_0

    .line 109
    :goto_0
    return-void

    .line 73
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 94
    const/4 v0, 0x0

    .line 96
    .local v0, "atype":Lcom/tendcloud/tenddata/TDGAAccount$AccountType;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "TYPE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p0, -0x5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAAccount$AccountType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 100
    :goto_1
    if-eqz v0, :cond_1

    .line 101
    sget-object v2, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->sAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-virtual {v2, v0}, Lcom/tendcloud/tenddata/TDGAAccount;->setAccountType(Lcom/tendcloud/tenddata/TDGAAccount$AccountType;)V

    goto :goto_0

    .line 75
    .end local v0    # "atype":Lcom/tendcloud/tenddata/TDGAAccount$AccountType;
    :pswitch_0
    sget-object v2, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->sAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    sget-object v3, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->ANONYMOUS:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    invoke-virtual {v2, v3}, Lcom/tendcloud/tenddata/TDGAAccount;->setAccountType(Lcom/tendcloud/tenddata/TDGAAccount$AccountType;)V

    goto :goto_0

    .line 78
    :pswitch_1
    sget-object v2, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->sAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    sget-object v3, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->REGISTERED:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    invoke-virtual {v2, v3}, Lcom/tendcloud/tenddata/TDGAAccount;->setAccountType(Lcom/tendcloud/tenddata/TDGAAccount$AccountType;)V

    goto :goto_0

    .line 81
    :pswitch_2
    sget-object v2, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->sAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    sget-object v3, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->SINA_WEIBO:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    invoke-virtual {v2, v3}, Lcom/tendcloud/tenddata/TDGAAccount;->setAccountType(Lcom/tendcloud/tenddata/TDGAAccount$AccountType;)V

    goto :goto_0

    .line 84
    :pswitch_3
    sget-object v2, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->sAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    sget-object v3, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->QQ:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    invoke-virtual {v2, v3}, Lcom/tendcloud/tenddata/TDGAAccount;->setAccountType(Lcom/tendcloud/tenddata/TDGAAccount$AccountType;)V

    goto :goto_0

    .line 87
    :pswitch_4
    sget-object v2, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->sAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    sget-object v3, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->QQ_WEIBO:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    invoke-virtual {v2, v3}, Lcom/tendcloud/tenddata/TDGAAccount;->setAccountType(Lcom/tendcloud/tenddata/TDGAAccount$AccountType;)V

    goto :goto_0

    .line 90
    :pswitch_5
    sget-object v2, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->sAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    sget-object v3, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->ND91:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    invoke-virtual {v2, v3}, Lcom/tendcloud/tenddata/TDGAAccount;->setAccountType(Lcom/tendcloud/tenddata/TDGAAccount$AccountType;)V

    goto :goto_0

    .line 97
    .restart local v0    # "atype":Lcom/tendcloud/tenddata/TDGAAccount$AccountType;
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_1

    .line 104
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v2, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->sAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    sget-object v3, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->ANONYMOUS:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    invoke-virtual {v2, v3}, Lcom/tendcloud/tenddata/TDGAAccount;->setAccountType(Lcom/tendcloud/tenddata/TDGAAccount$AccountType;)V

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static setAccountWithDevice(Ljava/lang/String;)V
    .locals 1
    .param p0, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 53
    if-nez p0, :cond_0

    .line 54
    sget-object v0, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->sContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/tendcloud/tenddata/TalkingDataGA;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/TDGAAccount;->setAccount(Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAAccount;

    move-result-object v0

    sput-object v0, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->sAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->setAccount(Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAAccount;

    move-result-object v0

    sput-object v0, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->sAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    goto :goto_0
.end method

.method protected static startProperties()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method
