.class final Lcom/onesignal/ActivityLifecycleListenerCompat$1;
.super Ljava/lang/Object;
.source "ActivityLifecycleListenerCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/ActivityLifecycleListenerCompat;->startMonitorThread(Ljava/lang/Class;Ljava/lang/Object;Landroid/app/Instrumentation$ActivityMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activityThread:Ljava/lang/Object;

.field final synthetic val$activityThreadClass:Ljava/lang/Class;

.field final synthetic val$allActivitiesMonitor:Landroid/app/Instrumentation$ActivityMonitor;


# direct methods
.method constructor <init>(Ljava/lang/Class;Landroid/app/Instrumentation$ActivityMonitor;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/onesignal/ActivityLifecycleListenerCompat$1;->val$activityThreadClass:Ljava/lang/Class;

    iput-object p2, p0, Lcom/onesignal/ActivityLifecycleListenerCompat$1;->val$allActivitiesMonitor:Landroid/app/Instrumentation$ActivityMonitor;

    iput-object p3, p0, Lcom/onesignal/ActivityLifecycleListenerCompat$1;->val$activityThread:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 61
    :try_start_0
    new-instance v1, Lcom/onesignal/ActivityLifecycleListenerCompat$1$1;

    invoke-direct {v1, p0}, Lcom/onesignal/ActivityLifecycleListenerCompat$1$1;-><init>(Lcom/onesignal/ActivityLifecycleListenerCompat$1;)V

    .line 67
    .local v1, "pausedListener":Landroid/app/OnActivityPausedListener;
    iget-object v4, p0, Lcom/onesignal/ActivityLifecycleListenerCompat$1;->val$activityThreadClass:Ljava/lang/Class;

    const-string v5, "registerOnActivityPausedListener"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/app/Activity;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Landroid/app/OnActivityPausedListener;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 72
    .local v2, "registerOnActivityPausedListener":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/onesignal/ActivityLifecycleListenerCompat$1;->val$allActivitiesMonitor:Landroid/app/Instrumentation$ActivityMonitor;

    invoke-virtual {v4}, Landroid/app/Instrumentation$ActivityMonitor;->waitForActivity()Landroid/app/Activity;

    move-result-object v0

    .line 74
    .local v0, "currentActivity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 75
    invoke-static {v0}, Lcom/onesignal/ActivityLifecycleHandler;->onActivityResumed(Landroid/app/Activity;)V

    .line 76
    iget-object v4, p0, Lcom/onesignal/ActivityLifecycleListenerCompat$1;->val$activityThread:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    .end local v0    # "currentActivity":Landroid/app/Activity;
    .end local v1    # "pausedListener":Landroid/app/OnActivityPausedListener;
    .end local v2    # "registerOnActivityPausedListener":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    .line 80
    .local v3, "t":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 82
    return-void
.end method
