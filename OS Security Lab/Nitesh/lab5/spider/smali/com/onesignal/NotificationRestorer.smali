.class Lcom/onesignal/NotificationRestorer;
.super Ljava/lang/Object;
.source "NotificationRestorer.java"


# static fields
.field static final COLUMNS_FOR_RESTORE:[Ljava/lang/String;

.field public static restored:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android_notification_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "full_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "created_time"

    aput-object v2, v0, v1

    sput-object v0, Lcom/onesignal/NotificationRestorer;->COLUMNS_FOR_RESTORE:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static asyncRestore(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/NotificationRestorer$1;

    invoke-direct {v1, p0}, Lcom/onesignal/NotificationRestorer$1;-><init>(Landroid/content/Context;)V

    const-string v2, "OS_RESTORE_NOTIFS"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 55
    return-void
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    sget-boolean v1, Lcom/onesignal/NotificationRestorer;->restored:Z

    if-eqz v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/onesignal/NotificationRestorer;->restored:Z

    .line 62
    invoke-static {p0}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v9

    .line 63
    .local v9, "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    const/4 v11, 0x0

    .line 66
    .local v11, "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v9}, Lcom/onesignal/OneSignalDbHelper;->getWritableDbWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 68
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 70
    invoke-static {v11}, Lcom/onesignal/NotificationBundleProcessor;->deleteOldNotifications(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 71
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    if-eqz v11, :cond_2

    .line 76
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 79
    :cond_2
    :goto_1
    const/4 v8, 0x0

    .line 81
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-virtual {v9}, Lcom/onesignal/OneSignalDbHelper;->getReadableDbWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 82
    .local v0, "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "notification"

    sget-object v2, Lcom/onesignal/NotificationRestorer;->COLUMNS_FOR_RESTORE:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "created_time > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/32 v6, 0x93a80

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "dismissed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = 0 AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "opened"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = 0 AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is_summary"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id ASC"

    .line 82
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 96
    invoke-static {p0, v8}, Lcom/onesignal/NotificationRestorer;->showNotifications(Landroid/content/Context;Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 72
    .end local v0    # "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 73
    .local v10, "t":Ljava/lang/Throwable;
    :try_start_2
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Error deleting old notification records! "

    invoke-static {v1, v2, v10}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    if-eqz v11, :cond_2

    .line 76
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .line 75
    .end local v10    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    if-eqz v11, :cond_3

    .line 76
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_3
    throw v1

    .line 98
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v10

    .line 99
    .restart local v10    # "t":Ljava/lang/Throwable;
    :try_start_3
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Error restoring notification records! "

    invoke-static {v1, v2, v10}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 101
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 101
    .end local v10    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v1

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 102
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method static showNotifications(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, 0x1

    .line 107
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 108
    invoke-static {p0}, Lcom/onesignal/NotificationExtenderService;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_2

    move v4, v5

    .line 111
    .local v4, "useExtender":Z
    :cond_0
    :goto_0
    const-string v6, "android_notification_id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 112
    .local v1, "existingId":I
    const-string v6, "full_data"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "fullData":Ljava/lang/String;
    const-string v6, "created_time"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 117
    .local v0, "datetime":Ljava/lang/Long;
    if-eqz v4, :cond_3

    .line 118
    invoke-static {p0}, Lcom/onesignal/NotificationExtenderService;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    .line 122
    .local v3, "serviceIntent":Landroid/content/Intent;
    :goto_1
    const-string v6, "json_payload"

    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v6, "android_notif_id"

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    const-string v6, "restoring"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 125
    const-string v6, "timestamp"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 127
    invoke-static {p0, v3}, Lcom/onesignal/NotificationRestorer;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 128
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 130
    .end local v0    # "datetime":Ljava/lang/Long;
    .end local v1    # "existingId":I
    .end local v2    # "fullData":Ljava/lang/String;
    .end local v3    # "serviceIntent":Landroid/content/Intent;
    .end local v4    # "useExtender":Z
    :cond_1
    return-void

    .line 108
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 120
    .restart local v0    # "datetime":Ljava/lang/Long;
    .restart local v1    # "existingId":I
    .restart local v2    # "fullData":Ljava/lang/String;
    .restart local v4    # "useExtender":Z
    :cond_3
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    new-instance v7, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/onesignal/GcmIntentService;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .restart local v3    # "serviceIntent":Landroid/content/Intent;
    goto :goto_1
.end method

.method private static startService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 134
    return-void
.end method
