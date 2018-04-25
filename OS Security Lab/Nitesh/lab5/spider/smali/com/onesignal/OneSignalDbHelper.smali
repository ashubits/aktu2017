.class public Lcom/onesignal/OneSignalDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "OneSignalDbHelper.java"


# static fields
.field private static final COMMA_SEP:Ljava/lang/String; = ","

.field private static final DATABASE_NAME:Ljava/lang/String; = "OneSignal.db"

.field private static final DATABASE_VERSION:I = 0x2

.field private static final DB_OPEN_RETRY_BACKOFF:I = 0x190

.field private static final DB_OPEN_RETRY_MAX:I = 0x5

.field private static final INT_TYPE:Ljava/lang/String; = " INTEGER"

.field private static final SQL_CREATE_ENTRIES:Ljava/lang/String; = "CREATE TABLE notification (_id INTEGER PRIMARY KEY,notification_id TEXT,android_notification_id INTEGER,group_id TEXT,collapse_id TEXT,is_summary INTEGER DEFAULT 0,opened INTEGER DEFAULT 0,dismissed INTEGER DEFAULT 0,title TEXT,message TEXT,full_data TEXT,created_time TIMESTAMP DEFAULT (strftime(\'%s\', \'now\')));"

.field private static final SQL_INDEX_ENTRIES:Ljava/lang/String; = "CREATE INDEX notification_notification_id_idx ON notification(notification_id); CREATE INDEX notification_android_notification_id_idx ON notification(android_notification_id); CREATE INDEX notification_group_id_idx ON notification(group_id); CREATE INDEX notification_collapse_id_idx ON notification(collapse_id); CREATE INDEX notification_created_time_idx ON notification(created_time); "

.field private static final TEXT_TYPE:Ljava/lang/String; = " TEXT"

.field private static sInstance:Lcom/onesignal/OneSignalDbHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    const-string v0, "OneSignal.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 75
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const-class v1, Lcom/onesignal/OneSignalDbHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/onesignal/OneSignalDbHelper;->sInstance:Lcom/onesignal/OneSignalDbHelper;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/onesignal/OneSignalDbHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/onesignal/OneSignalDbHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/onesignal/OneSignalDbHelper;->sInstance:Lcom/onesignal/OneSignalDbHelper;

    .line 80
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalDbHelper;->sInstance:Lcom/onesignal/OneSignalDbHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method declared-synchronized getReadableDbWithRetries()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    .prologue
    .line 99
    monitor-enter p0

    const/4 v0, 0x0

    .line 102
    .local v0, "count":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/onesignal/OneSignalDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, "t":Ljava/lang/Throwable;
    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    .line 105
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 106
    .restart local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    mul-int/lit16 v2, v0, 0x190

    int-to-long v2, v2

    :try_start_2
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized getWritableDbWithRetries()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    .prologue
    .line 86
    monitor-enter p0

    const/4 v0, 0x0

    .line 89
    .local v0, "count":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/onesignal/OneSignalDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, "t":Ljava/lang/Throwable;
    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    .line 92
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 93
    .restart local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    mul-int/lit16 v2, v0, 0x190

    int-to-long v2, v2

    :try_start_2
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 113
    const-string v0, "CREATE TABLE notification (_id INTEGER PRIMARY KEY,notification_id TEXT,android_notification_id INTEGER,group_id TEXT,collapse_id TEXT,is_summary INTEGER DEFAULT 0,opened INTEGER DEFAULT 0,dismissed INTEGER DEFAULT 0,title TEXT,message TEXT,full_data TEXT,created_time TIMESTAMP DEFAULT (strftime(\'%s\', \'now\')));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 114
    const-string v0, "CREATE INDEX notification_notification_id_idx ON notification(notification_id); CREATE INDEX notification_android_notification_id_idx ON notification(android_notification_id); CREATE INDEX notification_group_id_idx ON notification(group_id); CREATE INDEX notification_collapse_id_idx ON notification(collapse_id); CREATE INDEX notification_created_time_idx ON notification(created_time); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 120
    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    .line 121
    const-string v0, "ALTER TABLE notification ADD COLUMN collapse_id TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 123
    const-string v0, "CREATE INDEX notification_group_id_idx ON notification(group_id); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 125
    :cond_0
    return-void
.end method
