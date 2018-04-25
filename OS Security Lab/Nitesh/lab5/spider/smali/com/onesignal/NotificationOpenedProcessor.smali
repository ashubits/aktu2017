.class Lcom/onesignal/NotificationOpenedProcessor;
.super Ljava/lang/Object;
.source "NotificationOpenedProcessor.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addChildNotifications(Lorg/json/JSONArray;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12
    .param p0, "dataArray"    # Lorg/json/JSONArray;
    .param p1, "summaryGroup"    # Ljava/lang/String;
    .param p2, "writableDb"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x1

    .line 115
    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "full_data"

    aput-object v0, v2, v1

    .line 116
    .local v2, "retColumn":[Ljava/lang/String;
    new-array v4, v11, [Ljava/lang/String;

    aput-object p1, v4, v1

    .line 118
    .local v4, "whereArgs":[Ljava/lang/String;
    const-string v1, "notification"

    const-string v3, "group_id = ? AND dismissed = 0 AND opened = 0 AND is_summary = 0"

    move-object v0, p2

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 128
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, v11, :cond_1

    .line 129
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 132
    :cond_0
    :try_start_0
    const-string v0, "full_data"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 133
    .local v9, "jsonStr":Ljava/lang/String;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v9    # "jsonStr":Ljava/lang/String;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 141
    return-void

    .line 134
    :catch_0
    move-exception v10

    .line 135
    .local v10, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse JSON of sub notification in group: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static handleDismissFromActionButtonPress(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 60
    const-string v0, "action_button"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {p0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v0

    const-string v1, "notificationId"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationManagerCompat;->cancel(I)V

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 64
    :cond_0
    return-void
.end method

.method private static isOneSignalIntent(Landroid/content/Intent;)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    const-string v0, "onesignal_data"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "summary"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "notificationId"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static markNotificationsConsumed(Landroid/content/Context;Landroid/content/Intent;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "writableDb"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v5, 0x0

    .line 144
    const-string v3, "summary"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "group":Ljava/lang/String;
    const/4 v1, 0x0

    .line 148
    .local v1, "whereArgs":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 149
    const-string v2, "group_id = ?"

    .line 150
    .local v2, "whereStr":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    .end local v1    # "whereArgs":[Ljava/lang/String;
    aput-object v0, v1, v5

    .line 155
    .restart local v1    # "whereArgs":[Ljava/lang/String;
    :goto_0
    const-string v3, "notification"

    invoke-static {p1}, Lcom/onesignal/NotificationOpenedProcessor;->newContentValuesWithConsumed(Landroid/content/Intent;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {p2, v3, v4, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 156
    invoke-static {p2, p0}, Lcom/onesignal/BadgeCountUpdater;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    .line 157
    return-void

    .line 153
    .end local v2    # "whereStr":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android_notification_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "notificationId"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "whereStr":Ljava/lang/String;
    goto :goto_0
.end method

.method private static newContentValuesWithConsumed(Landroid/content/Intent;)Landroid/content/ContentValues;
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 160
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 162
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "dismissed"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 164
    .local v0, "dismissed":Z
    if-eqz v0, :cond_0

    .line 165
    const-string v2, "dismissed"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    :goto_0
    return-object v1

    .line 167
    :cond_0
    const-string v2, "opened"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method static processFromContext(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-static {p1}, Lcom/onesignal/NotificationOpenedProcessor;->isOneSignalIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-static {p0, p1}, Lcom/onesignal/NotificationOpenedProcessor;->handleDismissFromActionButtonPress(Landroid/content/Context;Landroid/content/Intent;)V

    .line 51
    invoke-static {p0, p1}, Lcom/onesignal/NotificationOpenedProcessor;->processIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static processIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    .line 67
    const-string v9, "summary"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 69
    .local v6, "summaryGroup":Ljava/lang/String;
    const-string v9, "dismissed"

    invoke-virtual {p1, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 71
    .local v2, "dismissed":Z
    const/4 v0, 0x0

    .line 72
    .local v0, "dataArray":Lorg/json/JSONArray;
    if-nez v2, :cond_0

    .line 74
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    const-string v9, "onesignal_data"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 75
    .local v5, "jsonData":Lorg/json/JSONObject;
    const-string v9, "notificationId"

    const-string v10, "notificationId"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 76
    const-string v9, "onesignal_data"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    new-instance v9, Lorg/json/JSONObject;

    const-string v10, "onesignal_data"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/onesignal/NotificationBundleProcessor;->newJsonArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 83
    .end local v5    # "jsonData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v1

    .line 84
    .local v1, "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    const/4 v8, 0x0

    .line 87
    .local v8, "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {v1}, Lcom/onesignal/OneSignalDbHelper;->getWritableDbWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 88
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 91
    if-nez v2, :cond_1

    if-eqz v6, :cond_1

    .line 92
    invoke-static {v0, v6, v8}, Lcom/onesignal/NotificationOpenedProcessor;->addChildNotifications(Lorg/json/JSONArray;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 94
    :cond_1
    invoke-static {p0, p1, v8}, Lcom/onesignal/NotificationOpenedProcessor;->markNotificationsConsumed(Landroid/content/Context;Landroid/content/Intent;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 97
    if-nez v6, :cond_2

    .line 98
    const-string v9, "grp"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, "group":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 100
    invoke-static {p0, v8, v4, v2}, Lcom/onesignal/NotificationSummaryManager;->updateSummaryNotificationAfterChildRemoved(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)V

    .line 102
    .end local v4    # "group":Ljava/lang/String;
    :cond_2
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    if-eqz v8, :cond_3

    .line 107
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 110
    :cond_3
    :goto_1
    if-nez v2, :cond_4

    .line 111
    const-string v9, "from_alert"

    invoke-virtual {p1, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {p0, v0, v9}, Lcom/onesignal/OneSignal;->handleNotificationOpen(Landroid/content/Context;Lorg/json/JSONArray;Z)V

    .line 112
    :cond_4
    return-void

    .line 78
    .end local v1    # "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    .end local v8    # "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v7

    .line 79
    .local v7, "t":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 103
    .end local v7    # "t":Ljava/lang/Throwable;
    .restart local v1    # "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    .restart local v8    # "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :catch_1
    move-exception v3

    .line 104
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v9, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v10, "Error processing notification open or dismiss record! "

    invoke-static {v9, v10, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    if-eqz v8, :cond_3

    .line 107
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .line 106
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    if-eqz v8, :cond_5

    .line 107
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_5
    throw v9
.end method
