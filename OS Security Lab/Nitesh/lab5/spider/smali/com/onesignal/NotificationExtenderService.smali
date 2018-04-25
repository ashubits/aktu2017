.class public abstract Lcom/onesignal/NotificationExtenderService;
.super Landroid/app/IntentService;
.source "NotificationExtenderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/NotificationExtenderService$OverrideSettings;
    }
.end annotation


# instance fields
.field private currentBaseOverrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

.field private currentJsonPayload:Lorg/json/JSONObject;

.field private currentlyRestoring:Z

.field private osNotificationDisplayedResult:Lcom/onesignal/OSNotificationDisplayedResult;

.field private restoreTimestamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    const-string v0, "NotificationExtenderService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onesignal/NotificationExtenderService;->currentBaseOverrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onesignal/NotificationExtenderService;->setIntentRedelivery(Z)V

    .line 79
    return-void
.end method

.method private createNotifJobFromCurrent()Lcom/onesignal/NotificationGenerationJob;
    .locals 2

    .prologue
    .line 196
    new-instance v0, Lcom/onesignal/NotificationGenerationJob;

    invoke-direct {v0, p0}, Lcom/onesignal/NotificationGenerationJob;-><init>(Landroid/content/Context;)V

    .line 197
    .local v0, "notifJob":Lcom/onesignal/NotificationGenerationJob;
    iget-boolean v1, p0, Lcom/onesignal/NotificationExtenderService;->currentlyRestoring:Z

    iput-boolean v1, v0, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    .line 198
    iget-object v1, p0, Lcom/onesignal/NotificationExtenderService;->currentJsonPayload:Lorg/json/JSONObject;

    iput-object v1, v0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 199
    iget-object v1, p0, Lcom/onesignal/NotificationExtenderService;->restoreTimestamp:Ljava/lang/Long;

    iput-object v1, v0, Lcom/onesignal/NotificationGenerationJob;->shownTimeStamp:Ljava/lang/Long;

    .line 200
    iget-object v1, p0, Lcom/onesignal/NotificationExtenderService;->currentBaseOverrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    iput-object v1, v0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    .line 202
    return-object v0
.end method

.method static getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 187
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.onesignal.NotificationExtender"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 188
    .local v0, "intent":Landroid/content/Intent;
    const/16 v3, 0x80

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 189
    .local v2, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 190
    const/4 v0, 0x0

    .line 192
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-object v0
.end method

.method private processIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 119
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 120
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No extras sent to NotificationExtenderService in its Intent!\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    const-string v3, "json_payload"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "jsonStrPayload":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 126
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "json_payload key is nonexistent from bundle passed to NotificationExtenderService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_2
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/onesignal/NotificationExtenderService;->currentJsonPayload:Lorg/json/JSONObject;

    .line 132
    const-string v3, "restoring"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/onesignal/NotificationExtenderService;->currentlyRestoring:Z

    .line 133
    const-string v3, "android_notif_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 134
    new-instance v3, Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    invoke-direct {v3}, Lcom/onesignal/NotificationExtenderService$OverrideSettings;-><init>()V

    iput-object v3, p0, Lcom/onesignal/NotificationExtenderService;->currentBaseOverrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    .line 135
    iget-object v3, p0, Lcom/onesignal/NotificationExtenderService;->currentBaseOverrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    const-string v4, "android_notif_id"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    .line 138
    :cond_3
    iget-boolean v3, p0, Lcom/onesignal/NotificationExtenderService;->currentlyRestoring:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/onesignal/NotificationExtenderService;->currentJsonPayload:Lorg/json/JSONObject;

    invoke-static {p0, v3}, Lcom/onesignal/OneSignal;->notValidOrDuplicated(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 141
    :cond_4
    const-string v3, "timestamp"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/onesignal/NotificationExtenderService;->restoreTimestamp:Ljava/lang/Long;

    .line 142
    iget-object v3, p0, Lcom/onesignal/NotificationExtenderService;->currentJsonPayload:Lorg/json/JSONObject;

    iget-boolean v4, p0, Lcom/onesignal/NotificationExtenderService;->currentlyRestoring:Z

    invoke-virtual {p0, v3, v4}, Lcom/onesignal/NotificationExtenderService;->processJsonObject(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected final displayNotification(Lcom/onesignal/NotificationExtenderService$OverrideSettings;)Lcom/onesignal/OSNotificationDisplayedResult;
    .locals 3
    .param p1, "overrideSettings"    # Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    .prologue
    .line 91
    iget-object v1, p0, Lcom/onesignal/NotificationExtenderService;->osNotificationDisplayedResult:Lcom/onesignal/OSNotificationDisplayedResult;

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 92
    :cond_0
    const/4 v1, 0x0

    .line 101
    :goto_0
    return-object v1

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/onesignal/NotificationExtenderService;->currentBaseOverrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    invoke-virtual {p1, v1}, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->override(Lcom/onesignal/NotificationExtenderService$OverrideSettings;)V

    .line 95
    new-instance v1, Lcom/onesignal/OSNotificationDisplayedResult;

    invoke-direct {v1}, Lcom/onesignal/OSNotificationDisplayedResult;-><init>()V

    iput-object v1, p0, Lcom/onesignal/NotificationExtenderService;->osNotificationDisplayedResult:Lcom/onesignal/OSNotificationDisplayedResult;

    .line 97
    invoke-direct {p0}, Lcom/onesignal/NotificationExtenderService;->createNotifJobFromCurrent()Lcom/onesignal/NotificationGenerationJob;

    move-result-object v0

    .line 98
    .local v0, "notifJob":Lcom/onesignal/NotificationGenerationJob;
    iput-object p1, v0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    .line 100
    iget-object v1, p0, Lcom/onesignal/NotificationExtenderService;->osNotificationDisplayedResult:Lcom/onesignal/OSNotificationDisplayedResult;

    invoke-static {v0}, Lcom/onesignal/NotificationBundleProcessor;->Process(Lcom/onesignal/NotificationGenerationJob;)I

    move-result v2

    iput v2, v1, Lcom/onesignal/OSNotificationDisplayedResult;->androidNotificationId:I

    .line 101
    iget-object v1, p0, Lcom/onesignal/NotificationExtenderService;->osNotificationDisplayedResult:Lcom/onesignal/OSNotificationDisplayedResult;

    goto :goto_0
.end method

.method protected final onHandleIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/onesignal/NotificationExtenderService;->processIntent(Landroid/content/Intent;)V

    .line 111
    invoke-static {p1}, Lcom/onesignal/GcmBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 112
    return-void
.end method

.method protected abstract onNotificationProcessing(Lcom/onesignal/OSNotificationReceivedResult;)Z
.end method

.method processJsonObject(Lorg/json/JSONObject;Z)V
    .locals 8
    .param p1, "currentJsonPayload"    # Lorg/json/JSONObject;
    .param p2, "restoring"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 149
    new-instance v2, Lcom/onesignal/OSNotificationReceivedResult;

    invoke-direct {v2}, Lcom/onesignal/OSNotificationReceivedResult;-><init>()V

    .line 150
    .local v2, "receivedResult":Lcom/onesignal/OSNotificationReceivedResult;
    invoke-static {p1}, Lcom/onesignal/NotificationBundleProcessor;->OSNotificationPayloadFrom(Lorg/json/JSONObject;)Lcom/onesignal/OSNotificationPayload;

    move-result-object v4

    iput-object v4, v2, Lcom/onesignal/OSNotificationReceivedResult;->payload:Lcom/onesignal/OSNotificationPayload;

    .line 151
    iput-boolean p2, v2, Lcom/onesignal/OSNotificationReceivedResult;->restoring:Z

    .line 152
    invoke-static {}, Lcom/onesignal/OneSignal;->isAppActive()Z

    move-result v4

    iput-boolean v4, v2, Lcom/onesignal/OSNotificationReceivedResult;->isAppInFocus:Z

    .line 154
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/onesignal/NotificationExtenderService;->osNotificationDisplayedResult:Lcom/onesignal/OSNotificationDisplayedResult;

    .line 155
    const/4 v0, 0x0

    .line 157
    .local v0, "developerProcessed":Z
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/onesignal/NotificationExtenderService;->onNotificationProcessing(Lcom/onesignal/OSNotificationReceivedResult;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 168
    :goto_0
    iget-object v4, p0, Lcom/onesignal/NotificationExtenderService;->osNotificationDisplayedResult:Lcom/onesignal/OSNotificationDisplayedResult;

    if-nez v4, :cond_0

    .line 171
    if-nez v0, :cond_3

    const-string v4, ""

    const-string v7, "alert"

    .line 172
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v5

    :goto_1
    invoke-static {v4}, Lcom/onesignal/NotificationBundleProcessor;->shouldDisplay(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v5

    .line 174
    .local v1, "display":Z
    :goto_2
    if-nez v1, :cond_4

    .line 175
    if-nez p2, :cond_0

    .line 176
    const/4 v4, -0x1

    invoke-static {p0, p1, v5, v4}, Lcom/onesignal/NotificationBundleProcessor;->saveNotification(Landroid/content/Context;Lorg/json/JSONObject;ZI)V

    .line 177
    invoke-static {p1}, Lcom/onesignal/NotificationBundleProcessor;->newJsonArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4, v6, v6}, Lcom/onesignal/OneSignal;->handleNotificationReceived(Lorg/json/JSONArray;ZZ)V

    .line 183
    .end local v1    # "display":Z
    :cond_0
    :goto_3
    return-void

    .line 159
    :catch_0
    move-exception v3

    .line 161
    .local v3, "t":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/onesignal/NotificationExtenderService;->osNotificationDisplayedResult:Lcom/onesignal/OSNotificationDisplayedResult;

    if-nez v4, :cond_1

    .line 162
    sget-object v4, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v7, "onNotificationProcessing throw an exception. Displaying normal OneSignal notification."

    invoke-static {v4, v7, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 164
    :cond_1
    sget-object v4, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v7, "onNotificationProcessing throw an exception. Extended notification displayed but custom processing did not finish."

    invoke-static {v4, v7, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_2
    move v4, v6

    .line 172
    goto :goto_1

    :cond_3
    move v1, v6

    goto :goto_2

    .line 181
    .restart local v1    # "display":Z
    :cond_4
    invoke-direct {p0}, Lcom/onesignal/NotificationExtenderService;->createNotifJobFromCurrent()Lcom/onesignal/NotificationGenerationJob;

    move-result-object v4

    invoke-static {v4}, Lcom/onesignal/NotificationBundleProcessor;->Process(Lcom/onesignal/NotificationGenerationJob;)I

    goto :goto_3
.end method
