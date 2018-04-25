.class Lcom/onesignal/NotificationBundleProcessor;
.super Ljava/lang/Object;
.source "NotificationBundleProcessor.java"


# static fields
.field static final DEFAULT_ACTION:Ljava/lang/String; = "__DEFAULT__"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static OSNotificationPayloadFrom(Lorg/json/JSONObject;)Lcom/onesignal/OSNotificationPayload;
    .locals 7
    .param p0, "currentJsonPayload"    # Lorg/json/JSONObject;

    .prologue
    .line 246
    new-instance v2, Lcom/onesignal/OSNotificationPayload;

    invoke-direct {v2}, Lcom/onesignal/OSNotificationPayload;-><init>()V

    .line 248
    .local v2, "notification":Lcom/onesignal/OSNotificationPayload;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string v5, "custom"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 249
    .local v1, "customJson":Lorg/json/JSONObject;
    const-string v5, "i"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/onesignal/OSNotificationPayload;->notificationID:Ljava/lang/String;

    .line 250
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/onesignal/OSNotificationPayload;->rawPayload:Ljava/lang/String;

    .line 251
    const-string v5, "a"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iput-object v5, v2, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    .line 252
    const-string v5, "u"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/onesignal/OSNotificationPayload;->launchURL:Ljava/lang/String;

    .line 254
    const-string v5, "alert"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/onesignal/OSNotificationPayload;->body:Ljava/lang/String;

    .line 255
    const-string v5, "title"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/onesignal/OSNotificationPayload;->title:Ljava/lang/String;

    .line 256
    const-string v5, "sicon"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/onesignal/OSNotificationPayload;->smallIcon:Ljava/lang/String;

    .line 257
    const-string v5, "bicon"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/onesignal/OSNotificationPayload;->bigPicture:Ljava/lang/String;

    .line 258
    const-string v5, "licon"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/onesignal/OSNotificationPayload;->largeIcon:Ljava/lang/String;

    .line 259
    const-string v5, "sound"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/onesignal/OSNotificationPayload;->sound:Ljava/lang/String;

    .line 260
    const-string v5, "grp"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/onesignal/OSNotificationPayload;->groupKey:Ljava/lang/String;

    .line 261
    const-string v5, "grp_msg"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/onesignal/OSNotificationPayload;->groupMessage:Ljava/lang/String;

    .line 262
    const-string v5, "bgac"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/onesignal/OSNotificationPayload;->smallIconAccentColor:Ljava/lang/String;

    .line 263
    const-string v5, "ledc"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/onesignal/OSNotificationPayload;->ledColor:Ljava/lang/String;

    .line 264
    const-string v5, "vis"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 265
    .local v4, "visibility":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 266
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/onesignal/OSNotificationPayload;->lockScreenVisibility:I

    .line 267
    :cond_0
    const-string v5, "from"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/onesignal/OSNotificationPayload;->fromProjectNumber:Ljava/lang/String;

    .line 268
    const-string v5, "pri"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v2, Lcom/onesignal/OSNotificationPayload;->priority:I

    .line 269
    const-string v5, "collapse_key"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "collapseKey":Ljava/lang/String;
    const-string v5, "do_not_collapse"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 271
    iput-object v0, v2, Lcom/onesignal/OSNotificationPayload;->collapseId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 274
    :cond_1
    :try_start_1
    invoke-static {v2}, Lcom/onesignal/NotificationBundleProcessor;->setActionButtons(Lcom/onesignal/OSNotificationPayload;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 280
    :goto_0
    :try_start_2
    invoke-static {v2, p0}, Lcom/onesignal/NotificationBundleProcessor;->setBackgroundImageLayout(Lcom/onesignal/OSNotificationPayload;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 288
    .end local v0    # "collapseKey":Ljava/lang/String;
    .end local v1    # "customJson":Lorg/json/JSONObject;
    .end local v4    # "visibility":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 275
    .restart local v0    # "collapseKey":Ljava/lang/String;
    .restart local v1    # "customJson":Lorg/json/JSONObject;
    .restart local v4    # "visibility":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 276
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_3
    sget-object v5, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v6, "Error assigning OSNotificationPayload.actionButtons values!"

    invoke-static {v5, v6, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 284
    .end local v0    # "collapseKey":Ljava/lang/String;
    .end local v1    # "customJson":Lorg/json/JSONObject;
    .end local v3    # "t":Ljava/lang/Throwable;
    .end local v4    # "visibility":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 285
    .restart local v3    # "t":Ljava/lang/Throwable;
    sget-object v5, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v6, "Error assigning OSNotificationPayload values!"

    invoke-static {v5, v6, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 281
    .end local v3    # "t":Ljava/lang/Throwable;
    .restart local v0    # "collapseKey":Ljava/lang/String;
    .restart local v1    # "customJson":Lorg/json/JSONObject;
    .restart local v4    # "visibility":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 282
    .restart local v3    # "t":Ljava/lang/Throwable;
    :try_start_4
    sget-object v5, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v6, "Error assigning OSNotificationPayload.backgroundImageLayout values!"

    invoke-static {v5, v6, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1
.end method

.method static Process(Lcom/onesignal/NotificationGenerationJob;)I
    .locals 5
    .param p0, "notifJob"    # Lcom/onesignal/NotificationGenerationJob;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppAlertNotificationEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/onesignal/OneSignal;->isAppActive()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/onesignal/NotificationGenerationJob;->showAsAlert:Z

    .line 83
    invoke-static {p0}, Lcom/onesignal/NotificationBundleProcessor;->processCollapseKey(Lcom/onesignal/NotificationGenerationJob;)V

    .line 85
    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->fromJsonPayload(Lcom/onesignal/NotificationGenerationJob;)V

    .line 87
    iget-boolean v1, p0, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    if-nez v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/onesignal/NotificationGenerationJob;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v1, v3, v2, v4}, Lcom/onesignal/NotificationBundleProcessor;->saveNotification(Landroid/content/Context;Lorg/json/JSONObject;ZI)V

    .line 90
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "notificationId"

    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    invoke-static {v0}, Lcom/onesignal/NotificationBundleProcessor;->newJsonArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/onesignal/NotificationGenerationJob;->showAsAlert:Z

    invoke-static {v1, v2, v3}, Lcom/onesignal/OneSignal;->handleNotificationReceived(Lorg/json/JSONArray;ZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_1
    move v1, v2

    .line 82
    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method static ProcessFromGCMIntentService(Landroid/content/Context;Landroid/os/Bundle;Lcom/onesignal/NotificationExtenderService$OverrideSettings;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "overrideSettings"    # Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    .prologue
    .line 54
    :try_start_0
    const-string v4, "json_payload"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "jsonStrPayload":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 56
    sget-object v4, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "json_payload key is nonexistent from bundle passed to ProcessFromGCMIntentService: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 79
    .end local v1    # "jsonStrPayload":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 60
    .restart local v1    # "jsonStrPayload":Ljava/lang/String;
    :cond_1
    new-instance v2, Lcom/onesignal/NotificationGenerationJob;

    invoke-direct {v2, p0}, Lcom/onesignal/NotificationGenerationJob;-><init>(Landroid/content/Context;)V

    .line 61
    .local v2, "notifJob":Lcom/onesignal/NotificationGenerationJob;
    const-string v4, "restoring"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v2, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    .line 62
    const-string v4, "timestamp"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v2, Lcom/onesignal/NotificationGenerationJob;->shownTimeStamp:Ljava/lang/Long;

    .line 63
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v4, v2, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 65
    iget-boolean v4, v2, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    if-nez v4, :cond_2

    iget-object v4, v2, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    invoke-static {p0, v4}, Lcom/onesignal/OneSignal;->notValidOrDuplicated(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 68
    :cond_2
    const-string v4, "android_notif_id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 69
    if-nez p2, :cond_3

    .line 70
    new-instance v3, Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    invoke-direct {v3}, Lcom/onesignal/NotificationExtenderService$OverrideSettings;-><init>()V

    .end local p2    # "overrideSettings":Lcom/onesignal/NotificationExtenderService$OverrideSettings;
    .local v3, "overrideSettings":Lcom/onesignal/NotificationExtenderService$OverrideSettings;
    move-object p2, v3

    .line 71
    .end local v3    # "overrideSettings":Lcom/onesignal/NotificationExtenderService$OverrideSettings;
    .restart local p2    # "overrideSettings":Lcom/onesignal/NotificationExtenderService$OverrideSettings;
    :cond_3
    const-string v4, "android_notif_id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p2, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    .line 74
    :cond_4
    iput-object p2, v2, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    .line 75
    invoke-static {v2}, Lcom/onesignal/NotificationBundleProcessor;->Process(Lcom/onesignal/NotificationGenerationJob;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    .end local v1    # "jsonStrPayload":Ljava/lang/String;
    .end local v2    # "notifJob":Lcom/onesignal/NotificationGenerationJob;
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method static bundleAsJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 8
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 184
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 185
    .local v1, "json":Lorg/json/JSONObject;
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 187
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 189
    .local v2, "key":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Lorg/json/JSONException;
    sget-object v5, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bundleAsJSONObject error for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 195
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method static bundleAsJsonArray(Landroid/os/Bundle;)Lorg/json/JSONArray;
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 100
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 101
    .local v0, "jsonArray":Lorg/json/JSONArray;
    invoke-static {p0}, Lcom/onesignal/NotificationBundleProcessor;->bundleAsJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 102
    return-object v0
.end method

.method static deleteOldNotifications(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p0, "writableDb"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 178
    const-string v0, "notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "created_time < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/32 v4, 0x24ea00

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 178
    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 181
    return-void
.end method

.method static newJsonArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 1
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 401
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 402
    .local v0, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 403
    return-object v0
.end method

.method static prepareBundle(Landroid/os/Bundle;)V
    .locals 10
    .param p0, "gcmBundle"    # Landroid/os/Bundle;

    .prologue
    .line 200
    const-string v8, "o"

    invoke-virtual {p0, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 202
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    const-string v8, "custom"

    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 205
    .local v5, "customJSON":Lorg/json/JSONObject;
    const-string v8, "a"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 206
    const-string v8, "a"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 210
    .local v0, "additionalDataJSON":Lorg/json/JSONObject;
    :goto_0
    new-instance v4, Lorg/json/JSONArray;

    const-string v8, "o"

    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 211
    .local v4, "buttons":Lorg/json/JSONArray;
    const-string v8, "o"

    invoke-virtual {p0, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 212
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 213
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 215
    .local v1, "button":Lorg/json/JSONObject;
    const-string v8, "n"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "buttonText":Ljava/lang/String;
    const-string v8, "n"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 218
    const-string v8, "i"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 219
    const-string v8, "i"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "buttonId":Ljava/lang/String;
    const-string v8, "i"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 224
    :goto_2
    const-string v8, "id"

    invoke-virtual {v1, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    const-string v8, "text"

    invoke-virtual {v1, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    const-string v8, "p"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 228
    const-string v8, "icon"

    const-string v9, "p"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    const-string v8, "p"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 212
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 208
    .end local v0    # "additionalDataJSON":Lorg/json/JSONObject;
    .end local v1    # "button":Lorg/json/JSONObject;
    .end local v2    # "buttonId":Ljava/lang/String;
    .end local v3    # "buttonText":Ljava/lang/String;
    .end local v4    # "buttons":Lorg/json/JSONArray;
    .end local v7    # "i":I
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .restart local v0    # "additionalDataJSON":Lorg/json/JSONObject;
    goto :goto_0

    .line 222
    .restart local v1    # "button":Lorg/json/JSONObject;
    .restart local v3    # "buttonText":Ljava/lang/String;
    .restart local v4    # "buttons":Lorg/json/JSONArray;
    .restart local v7    # "i":I
    :cond_2
    move-object v2, v3

    .restart local v2    # "buttonId":Ljava/lang/String;
    goto :goto_2

    .line 233
    .end local v1    # "button":Lorg/json/JSONObject;
    .end local v2    # "buttonId":Ljava/lang/String;
    .end local v3    # "buttonText":Ljava/lang/String;
    :cond_3
    const-string v8, "actionButtons"

    invoke-virtual {v0, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    const-string v8, "actionSelected"

    const-string v9, "__DEFAULT__"

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    const-string v8, "a"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 236
    const-string v8, "a"

    invoke-virtual {v5, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    :cond_4
    const-string v8, "custom"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .end local v0    # "additionalDataJSON":Lorg/json/JSONObject;
    .end local v4    # "buttons":Lorg/json/JSONArray;
    .end local v5    # "customJSON":Lorg/json/JSONObject;
    .end local v7    # "i":I
    :cond_5
    :goto_3
    return-void

    .line 239
    :catch_0
    move-exception v6

    .line 240
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3
.end method

.method static processBundle(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 359
    invoke-static {p1}, Lcom/onesignal/OneSignal;->getNotificationIdFromGCMBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 388
    :cond_0
    :goto_0
    return v3

    .line 362
    :cond_1
    invoke-static {p1}, Lcom/onesignal/NotificationBundleProcessor;->prepareBundle(Landroid/os/Bundle;)V

    .line 364
    invoke-static {p0}, Lcom/onesignal/NotificationExtenderService;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 365
    .local v1, "overrideIntent":Landroid/content/Intent;
    if-eqz v1, :cond_2

    .line 366
    const-string v2, "json_payload"

    invoke-static {p1}, Lcom/onesignal/NotificationBundleProcessor;->bundleAsJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    invoke-static {p0, v1}, Landroid/support/v4/content/WakefulBroadcastReceiver;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 371
    :cond_2
    const-string v2, "alert"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, ""

    const-string v5, "alert"

    .line 372
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    .line 371
    :goto_1
    invoke-static {v2}, Lcom/onesignal/NotificationBundleProcessor;->shouldDisplay(Z)Z

    move-result v0

    .line 375
    .local v0, "display":Z
    if-nez v0, :cond_3

    .line 376
    invoke-static {p1}, Lcom/onesignal/NotificationBundleProcessor;->bundleAsJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/onesignal/OneSignal;->notValidOrDuplicated(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 378
    const/4 v2, -0x1

    invoke-static {p0, p1, v3, v2}, Lcom/onesignal/NotificationBundleProcessor;->saveNotification(Landroid/content/Context;Landroid/os/Bundle;ZI)V

    .line 381
    new-instance v2, Ljava/lang/Thread;

    new-instance v5, Lcom/onesignal/NotificationBundleProcessor$1;

    invoke-direct {v5, p1}, Lcom/onesignal/NotificationBundleProcessor$1;-><init>(Landroid/os/Bundle;)V

    const-string v6, "OS_PROC_BUNDLE"

    invoke-direct {v2, v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 385
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 388
    :cond_3
    if-eqz v0, :cond_0

    move v3, v4

    goto :goto_0

    .end local v0    # "display":Z
    :cond_4
    move v2, v4

    .line 372
    goto :goto_1
.end method

.method private static processCollapseKey(Lcom/onesignal/NotificationGenerationJob;)V
    .locals 13
    .param p0, "notifJob"    # Lcom/onesignal/NotificationGenerationJob;

    .prologue
    .line 322
    iget-boolean v1, p0, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    if-eqz v1, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    iget-object v1, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    const-string v2, "collapse_key"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "do_not_collapse"

    iget-object v2, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    const-string v3, "collapse_key"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    const-string v2, "collapse_key"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 329
    .local v9, "collapse_id":Ljava/lang/String;
    iget-object v1, p0, Lcom/onesignal/NotificationGenerationJob;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v11

    .line 330
    .local v11, "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    const/4 v10, 0x0

    .line 333
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v11}, Lcom/onesignal/OneSignalDbHelper;->getReadableDbWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 334
    .local v0, "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "notification"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android_notification_id"

    aput-object v4, v2, v3

    const-string v3, "collapse_id = ? AND dismissed = 0 AND opened = 0 "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 343
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 344
    const-string v1, "android_notification_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 345
    .local v8, "androidNotificationId":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onesignal/NotificationGenerationJob;->setAndroidIdWithOutOverriding(Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    .end local v8    # "androidNotificationId":I
    :cond_2
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 352
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 347
    .end local v0    # "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v12

    .line 348
    .local v12, "t":Ljava/lang/Throwable;
    :try_start_1
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Could not read DB to find existing collapse_key!"

    invoke-static {v1, v2, v12}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 352
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 351
    .end local v12    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 352
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method static saveNotification(Landroid/content/Context;Landroid/os/Bundle;ZI)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "opened"    # Z
    .param p3, "notificationId"    # I

    .prologue
    .line 107
    invoke-static {p1}, Lcom/onesignal/NotificationBundleProcessor;->bundleAsJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/onesignal/NotificationBundleProcessor;->saveNotification(Landroid/content/Context;Lorg/json/JSONObject;ZI)V

    .line 108
    return-void
.end method

.method static saveNotification(Landroid/content/Context;Lorg/json/JSONObject;ZI)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jsonPayload"    # Lorg/json/JSONObject;
    .param p2, "opened"    # Z
    .param p3, "notificationId"    # I

    .prologue
    const/4 v6, 0x1

    .line 118
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v7, "custom"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, "customJSON":Lorg/json/JSONObject;
    invoke-static {p0}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 121
    .local v1, "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    const/4 v5, 0x0

    .line 124
    .local v5, "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {v1}, Lcom/onesignal/OneSignalDbHelper;->getWritableDbWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 126
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 128
    invoke-static {v5}, Lcom/onesignal/NotificationBundleProcessor;->deleteOldNotifications(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 132
    const/4 v7, -0x1

    if-eq p3, v7, :cond_0

    .line 133
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android_notification_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, "whereStr":Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 136
    .local v3, "values":Landroid/content/ContentValues;
    const-string v7, "dismissed"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    const-string v7, "notification"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v3, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 139
    invoke-static {v5, p0}, Lcom/onesignal/BadgeCountUpdater;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    .line 143
    .end local v3    # "values":Landroid/content/ContentValues;
    .end local v4    # "whereStr":Ljava/lang/String;
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 144
    .restart local v3    # "values":Landroid/content/ContentValues;
    const-string v7, "notification_id"

    const-string v8, "i"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v7, "grp"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 146
    const-string v7, "group_id"

    const-string v8, "grp"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_1
    const-string v7, "collapse_key"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "do_not_collapse"

    const-string v8, "collapse_key"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 148
    const-string v7, "collapse_id"

    const-string v8, "collapse_key"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_2
    const-string v7, "opened"

    if-eqz p2, :cond_7

    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 151
    if-nez p2, :cond_3

    .line 152
    const-string v6, "android_notification_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    :cond_3
    const-string v6, "title"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 155
    const-string v6, "title"

    const-string v7, "title"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_4
    const-string v6, "message"

    const-string v7, "alert"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v6, "full_data"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v6, "notification"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 162
    if-nez p2, :cond_5

    .line 163
    invoke-static {v5, p0}, Lcom/onesignal/BadgeCountUpdater;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    .line 164
    :cond_5
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    if-eqz v5, :cond_6

    .line 169
    :try_start_2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 174
    .end local v0    # "customJSON":Lorg/json/JSONObject;
    .end local v1    # "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    .end local v3    # "values":Landroid/content/ContentValues;
    .end local v5    # "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :cond_6
    :goto_1
    return-void

    .line 150
    .restart local v0    # "customJSON":Lorg/json/JSONObject;
    .restart local v1    # "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    .restart local v3    # "values":Landroid/content/ContentValues;
    .restart local v5    # "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :cond_7
    const/4 v6, 0x0

    goto :goto_0

    .line 165
    .end local v3    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 166
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v6, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v7, "Error saving notification record! "

    invoke-static {v6, v7, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 168
    if-eqz v5, :cond_6

    .line 169
    :try_start_4
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 171
    .end local v0    # "customJSON":Lorg/json/JSONObject;
    .end local v1    # "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :catch_1
    move-exception v2

    .line 172
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 168
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v0    # "customJSON":Lorg/json/JSONObject;
    .restart local v1    # "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    .restart local v5    # "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_8

    .line 169
    :try_start_5
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_8
    throw v6
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
.end method

.method private static setActionButtons(Lcom/onesignal/OSNotificationPayload;)V
    .locals 7
    .param p0, "notification"    # Lcom/onesignal/OSNotificationPayload;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 293
    iget-object v4, p0, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    const-string v5, "actionButtons"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 294
    iget-object v4, p0, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    const-string v5, "actionButtons"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 295
    .local v3, "jsonActionButtons":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/onesignal/OSNotificationPayload;->actionButtons:Ljava/util/List;

    .line 297
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 298
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 299
    .local v2, "jsonActionButton":Lorg/json/JSONObject;
    new-instance v0, Lcom/onesignal/OSNotificationPayload$ActionButton;

    invoke-direct {v0}, Lcom/onesignal/OSNotificationPayload$ActionButton;-><init>()V

    .line 300
    .local v0, "actionButton":Lcom/onesignal/OSNotificationPayload$ActionButton;
    const-string v4, "id"

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/onesignal/OSNotificationPayload$ActionButton;->id:Ljava/lang/String;

    .line 301
    const-string v4, "text"

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/onesignal/OSNotificationPayload$ActionButton;->text:Ljava/lang/String;

    .line 302
    const-string v4, "icon"

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/onesignal/OSNotificationPayload$ActionButton;->icon:Ljava/lang/String;

    .line 303
    iget-object v4, p0, Lcom/onesignal/OSNotificationPayload;->actionButtons:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 305
    .end local v0    # "actionButton":Lcom/onesignal/OSNotificationPayload$ActionButton;
    .end local v2    # "jsonActionButton":Lorg/json/JSONObject;
    :cond_0
    iget-object v4, p0, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    const-string v5, "actionSelected"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 306
    iget-object v4, p0, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    const-string v5, "actionButtons"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 308
    .end local v1    # "i":I
    .end local v3    # "jsonActionButtons":Lorg/json/JSONArray;
    :cond_1
    return-void
.end method

.method private static setBackgroundImageLayout(Lcom/onesignal/OSNotificationPayload;Lorg/json/JSONObject;)V
    .locals 4
    .param p0, "notification"    # Lcom/onesignal/OSNotificationPayload;
    .param p1, "currentJsonPayload"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 311
    const-string v2, "bg_img"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "jsonStrBgImage":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 313
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 314
    .local v0, "jsonBgImage":Lorg/json/JSONObject;
    new-instance v2, Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;

    invoke-direct {v2}, Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;-><init>()V

    iput-object v2, p0, Lcom/onesignal/OSNotificationPayload;->backgroundImageLayout:Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;

    .line 315
    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->backgroundImageLayout:Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;

    const-string v3, "img"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;->image:Ljava/lang/String;

    .line 316
    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->backgroundImageLayout:Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;

    const-string v3, "tc"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;->titleTextColor:Ljava/lang/String;

    .line 317
    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->backgroundImageLayout:Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;

    const-string v3, "bc"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;->bodyTextColor:Ljava/lang/String;

    .line 319
    .end local v0    # "jsonBgImage":Lorg/json/JSONObject;
    :cond_0
    return-void
.end method

.method static shouldDisplay(Z)Z
    .locals 3
    .param p0, "hasBody"    # Z

    .prologue
    .line 392
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppAlertNotificationEnabled()Z

    move-result v1

    .line 393
    .local v1, "showAsAlert":Z
    invoke-static {}, Lcom/onesignal/OneSignal;->isAppActive()Z

    move-result v0

    .line 394
    .local v0, "isActive":Z
    if-eqz p0, :cond_1

    .line 395
    invoke-static {}, Lcom/onesignal/OneSignal;->getNotificationsWhenActiveEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 394
    :goto_0
    return v2

    .line 395
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
