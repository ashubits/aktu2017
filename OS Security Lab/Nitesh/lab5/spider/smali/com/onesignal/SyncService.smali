.class public Lcom/onesignal/SyncService;
.super Landroid/app/Service;
.source "SyncService.java"


# static fields
.field static final TASK_APP_STARTUP:I = 0x0

.field static final TASK_SYNC:I = 0x1

.field private static startedFromActivity:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 42
    invoke-static {}, Lcom/onesignal/SyncService;->checkOnFocusSync()V

    return-void
.end method

.method private static checkOnFocusSync()V
    .locals 4

    .prologue
    .line 49
    invoke-static {}, Lcom/onesignal/OneSignal;->GetUnsentActiveTime()J

    move-result-wide v0

    .line 50
    .local v0, "unsentTime":J
    const-wide/16 v2, 0x3c

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_0
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignal;->sendOnFocus(JZ)V

    goto :goto_0
.end method

.method private doBackgroundSync()V
    .locals 3

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/onesignal/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    .line 74
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/SyncService$2;

    invoke-direct {v1, p0}, Lcom/onesignal/SyncService$2;-><init>(Lcom/onesignal/SyncService;)V

    const-string v2, "OS_SYNCSRV_BG_SYNC"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 99
    return-void
.end method

.method private doForegroundSync()V
    .locals 2

    .prologue
    .line 64
    const/4 v0, 0x0

    new-instance v1, Lcom/onesignal/SyncService$1;

    invoke-direct {v1, p0}, Lcom/onesignal/SyncService$1;-><init>(Lcom/onesignal/SyncService;)V

    invoke-static {p0, v0, v1}, Lcom/onesignal/LocationGMS;->getLocation(Landroid/content/Context;ZLcom/onesignal/LocationGMS$LocationHandler;)V

    .line 70
    return-void
.end method

.method private doSync()V
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/onesignal/SyncService;->startedFromActivity:Z

    if-eqz v0, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/onesignal/SyncService;->doForegroundSync()V

    .line 61
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/onesignal/SyncService;->doBackgroundSync()V

    goto :goto_0
.end method

.method static onTaskRemoved(Landroid/app/Service;)V
    .locals 6
    .param p0, "service"    # Landroid/app/Service;

    .prologue
    const/4 v1, 0x1

    .line 147
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "Starting SyncService:onTaskRemoved."

    invoke-static {v2, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 149
    sget-object v2, Lcom/onesignal/ActivityLifecycleHandler;->focusHandlerThread:Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;

    invoke-virtual {v2}, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->stopScheduledRunnable()V

    .line 153
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->stopAndPersist()Z

    move-result v0

    .line 154
    .local v0, "scheduleServerRestart":Z
    invoke-static {v1}, Lcom/onesignal/OneSignal;->onAppLostFocus(Z)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 156
    :goto_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Completed SyncService:onTaskRemoved."

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 162
    if-eqz v0, :cond_2

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    invoke-static {p0, v2, v3}, Lcom/onesignal/SyncService;->scheduleServiceSyncTask(Landroid/content/Context;J)V

    .line 166
    :goto_1
    return-void

    .line 154
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 165
    :cond_2
    invoke-static {p0}, Lcom/onesignal/LocationGMS;->scheduleUpdate(Landroid/content/Context;)V

    goto :goto_1
.end method

.method static scheduleServiceSyncTask(Landroid/content/Context;J)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "atTime"    # J

    .prologue
    const/4 v6, 0x0

    .line 169
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scheduleServiceSyncTask:atTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 171
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/onesignal/SyncService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "task"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    const/high16 v3, 0x8000000

    invoke-static {p0, v6, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 179
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 180
    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v0, v6, p1, p2, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 181
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v1, 0x1

    .line 108
    if-eqz p1, :cond_1

    .line 109
    const-string v2, "task"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 113
    .local v0, "task":I
    :goto_0
    if-nez v0, :cond_2

    .line 114
    sput-boolean v1, Lcom/onesignal/SyncService;->startedFromActivity:Z

    .line 119
    :cond_0
    :goto_1
    sget-boolean v2, Lcom/onesignal/SyncService;->startedFromActivity:Z

    if-eqz v2, :cond_3

    :goto_2
    return v1

    .line 111
    .end local v0    # "task":I
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "task":I
    goto :goto_0

    .line 115
    :cond_2
    if-ne v0, v1, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/onesignal/SyncService;->doSync()V

    goto :goto_1

    .line 119
    :cond_3
    const/4 v1, 0x2

    goto :goto_2
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 0
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 136
    invoke-static {p0}, Lcom/onesignal/SyncService;->onTaskRemoved(Landroid/app/Service;)V

    .line 137
    return-void
.end method
