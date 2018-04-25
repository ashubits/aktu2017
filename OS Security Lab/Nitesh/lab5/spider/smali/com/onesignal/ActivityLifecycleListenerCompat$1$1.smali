.class Lcom/onesignal/ActivityLifecycleListenerCompat$1$1;
.super Ljava/lang/Object;
.source "ActivityLifecycleListenerCompat.java"

# interfaces
.implements Landroid/app/OnActivityPausedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/ActivityLifecycleListenerCompat$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/ActivityLifecycleListenerCompat$1;


# direct methods
.method constructor <init>(Lcom/onesignal/ActivityLifecycleListenerCompat$1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/ActivityLifecycleListenerCompat$1;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/onesignal/ActivityLifecycleListenerCompat$1$1;->this$0:Lcom/onesignal/ActivityLifecycleListenerCompat$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 64
    invoke-static {p1}, Lcom/onesignal/ActivityLifecycleHandler;->onActivityPaused(Landroid/app/Activity;)V

    .line 65
    return-void
.end method
