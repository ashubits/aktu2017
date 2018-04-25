.class Lcom/onesignal/NotificationSummaryManager;
.super Ljava/lang/Object;
.source "NotificationSummaryManager.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSummaryNotificationId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 13
    .param p0, "writableDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "group"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 159
    const/4 v8, 0x0

    .line 160
    .local v8, "androidNotifId":Ljava/lang/Integer;
    const/4 v9, 0x0

    .line 163
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "notification"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "android_notification_id"

    aput-object v3, v2, v0

    const-string v3, "group_id = ? AND dismissed = 0 AND opened = 0 AND is_summary = 1"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 173
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    .line 174
    .local v10, "hasRecord":Z
    if-nez v10, :cond_1

    .line 175
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v12

    .line 187
    .end local v10    # "hasRecord":Z
    :goto_0
    return-object v0

    .line 178
    .restart local v10    # "hasRecord":Z
    :cond_1
    :try_start_1
    const-string v0, "android_notification_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 179
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 184
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .end local v10    # "hasRecord":Z
    :cond_2
    :goto_1
    move-object v0, v8

    .line 187
    goto :goto_0

    .line 180
    :catch_0
    move-exception v11

    .line 181
    .local v11, "t":Ljava/lang/Throwable;
    :try_start_2
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error getting android notification id for summary notification group: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v11}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 184
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 183
    .end local v11    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 184
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private static internalUpdateSummaryNotificationAfterChildRemoved(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "writableDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "group"    # Ljava/lang/String;
    .param p3, "dismissed"    # Z

    .prologue
    .line 50
    const-string v3, "notification"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "android_notification_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "created_time"

    aput-object v5, v4, v2

    const-string v5, "group_id = ? AND dismissed = 0 AND opened = 0 AND is_summary = 0"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "_id DESC"

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 62
    .local v11, "cursor":Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 67
    .local v15, "notifsInGroup":I
    if-nez v15, :cond_3

    .line 68
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 70
    invoke-static/range {p1 .. p2}, Lcom/onesignal/NotificationSummaryManager;->getSummaryNotificationId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .line 71
    .local v10, "androidNotifId":Ljava/lang/Integer;
    if-nez v10, :cond_1

    .line 124
    .end local v10    # "androidNotifId":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-object v11

    .line 75
    .restart local v10    # "androidNotifId":Ljava/lang/Integer;
    :cond_1
    const-string v2, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/NotificationManager;

    .line 76
    .local v14, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 79
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 80
    .local v17, "values":Landroid/content/ContentValues;
    if-eqz p3, :cond_2

    const-string v2, "dismissed"

    :goto_1
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 81
    const-string v2, "notification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android_notification_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 80
    :cond_2
    const-string v2, "opened"

    goto :goto_1

    .line 91
    .end local v10    # "androidNotifId":Ljava/lang/Integer;
    .end local v14    # "notificationManager":Landroid/app/NotificationManager;
    .end local v17    # "values":Landroid/content/ContentValues;
    :cond_3
    const/4 v2, 0x1

    if-ne v15, v2, :cond_4

    .line 92
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 93
    invoke-static/range {p1 .. p2}, Lcom/onesignal/NotificationSummaryManager;->getSummaryNotificationId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .line 94
    .restart local v10    # "androidNotifId":Ljava/lang/Integer;
    if-eqz v10, :cond_0

    .line 96
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/onesignal/NotificationSummaryManager;->restoreSummary(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    .end local v10    # "androidNotifId":Ljava/lang/Integer;
    :cond_4
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 106
    const-string v2, "created_time"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 107
    .local v12, "datetime":Ljava/lang/Long;
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 109
    invoke-static/range {p1 .. p2}, Lcom/onesignal/NotificationSummaryManager;->getSummaryNotificationId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .line 110
    .restart local v10    # "androidNotifId":Ljava/lang/Integer;
    if-eqz v10, :cond_0

    .line 113
    new-instance v13, Lcom/onesignal/NotificationGenerationJob;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/onesignal/NotificationGenerationJob;-><init>(Landroid/content/Context;)V

    .line 114
    .local v13, "notifJob":Lcom/onesignal/NotificationGenerationJob;
    const/4 v2, 0x1

    iput-boolean v2, v13, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    .line 115
    iput-object v12, v13, Lcom/onesignal/NotificationGenerationJob;->shownTimeStamp:Ljava/lang/Long;

    .line 117
    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONObject;-><init>()V

    .line 118
    .local v16, "payload":Lorg/json/JSONObject;
    const-string v2, "grp"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    move-object/from16 v0, v16

    iput-object v0, v13, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 121
    invoke-static {v13}, Lcom/onesignal/GenerateNotification;->updateSummaryNotification(Lcom/onesignal/NotificationGenerationJob;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 122
    .end local v10    # "androidNotifId":Ljava/lang/Integer;
    .end local v12    # "datetime":Ljava/lang/Long;
    .end local v13    # "notifJob":Lcom/onesignal/NotificationGenerationJob;
    .end local v16    # "payload":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method private static restoreSummary(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "group"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-static {p0}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v9

    .line 130
    .local v9, "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    const/4 v8, 0x0

    .line 132
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    .line 135
    .local v4, "whereArgs":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {v9}, Lcom/onesignal/OneSignalDbHelper;->getReadableDbWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 136
    .local v0, "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "notification"

    sget-object v2, Lcom/onesignal/NotificationRestorer;->COLUMNS_FOR_RESTORE:[Ljava/lang/String;

    const-string v3, "group_id = ? AND dismissed = 0 AND opened = 0 AND is_summary = 0"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 149
    invoke-static {p0, v8}, Lcom/onesignal/NotificationRestorer;->showNotifications(Landroid/content/Context;Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 156
    .end local v0    # "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v10

    .line 151
    .local v10, "t":Ljava/lang/Throwable;
    :try_start_1
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Error restoring notification records! "

    invoke-static {v1, v2, v10}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 153
    .end local v10    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 154
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v1
.end method

.method static updatePossibleDependentSummaryOnDismiss(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "writableDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "androidNotificationId"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 19
    const-string v1, "notification"

    new-array v2, v10, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "group_id"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android_notification_id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 25
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    const-string v0, "group_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 27
    .local v9, "group":Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 29
    if-eqz v9, :cond_0

    .line 30
    invoke-static {p0, p1, v9, v10}, Lcom/onesignal/NotificationSummaryManager;->updateSummaryNotificationAfterChildRemoved(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)V

    .line 34
    .end local v9    # "group":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method static updateSummaryNotificationAfterChildRemoved(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "writableDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "group"    # Ljava/lang/String;
    .param p3, "dismissed"    # Z

    .prologue
    .line 38
    const/4 v0, 0x0

    .line 40
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/onesignal/NotificationSummaryManager;->internalUpdateSummaryNotificationAfterChildRemoved(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v1

    .line 42
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_1
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "Error running updateSummaryNotificationAfterChildRemoved!"

    invoke-static {v2, v3, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 44
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 45
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v2
.end method
