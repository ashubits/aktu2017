.class Lcom/onesignal/ActivityLifecycleListenerCompat;
.super Ljava/lang/Object;
.source "ActivityLifecycleListenerCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static startListener()V
    .locals 9

    .prologue
    .line 42
    :try_start_0
    const-string v6, "android.app.ActivityThread"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 43
    .local v1, "activityThreadClass":Ljava/lang/Class;
    const-string v6, "currentActivityThread"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 45
    .local v0, "activityThread":Ljava/lang/Object;
    const-string v6, "mInstrumentation"

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 46
    .local v4, "instrumentationField":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 47
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Instrumentation;

    .line 48
    .local v3, "instrumentation":Landroid/app/Instrumentation;
    const/4 v6, 0x0

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/app/Instrumentation;->addMonitor(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;

    move-result-object v2

    .line 50
    .local v2, "allActivitiesMonitor":Landroid/app/Instrumentation$ActivityMonitor;
    invoke-static {v1, v0, v2}, Lcom/onesignal/ActivityLifecycleListenerCompat;->startMonitorThread(Ljava/lang/Class;Ljava/lang/Object;Landroid/app/Instrumentation$ActivityMonitor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v0    # "activityThread":Ljava/lang/Object;
    .end local v2    # "allActivitiesMonitor":Landroid/app/Instrumentation$ActivityMonitor;
    .end local v3    # "instrumentation":Landroid/app/Instrumentation;
    .end local v4    # "instrumentationField":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v5

    .line 52
    .local v5, "t":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static startMonitorThread(Ljava/lang/Class;Ljava/lang/Object;Landroid/app/Instrumentation$ActivityMonitor;)V
    .locals 3
    .param p0, "activityThreadClass"    # Ljava/lang/Class;
    .param p1, "activityThread"    # Ljava/lang/Object;
    .param p2, "allActivitiesMonitor"    # Landroid/app/Instrumentation$ActivityMonitor;

    .prologue
    .line 57
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/ActivityLifecycleListenerCompat$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/onesignal/ActivityLifecycleListenerCompat$1;-><init>(Ljava/lang/Class;Landroid/app/Instrumentation$ActivityMonitor;Ljava/lang/Object;)V

    const-string v2, "OS_LIFECYCLE_COMPAT"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 84
    return-void
.end method
