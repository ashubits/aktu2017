.class Lcom/onesignal/SyncService$2;
.super Ljava/lang/Object;
.source "SyncService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/SyncService;->doBackgroundSync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/SyncService;


# direct methods
.method constructor <init>(Lcom/onesignal/SyncService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/SyncService;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/onesignal/SyncService$2;->this$0:Lcom/onesignal/SyncService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 77
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/onesignal/SyncService$2;->this$0:Lcom/onesignal/SyncService;

    invoke-virtual {v0}, Lcom/onesignal/SyncService;->stopSelf()V

    .line 97
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getSavedAppId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    .line 83
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignalStateSynchronizer;->initUserState(Landroid/content/Context;)V

    .line 85
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Lcom/onesignal/SyncService$2$1;

    invoke-direct {v2, p0}, Lcom/onesignal/SyncService$2$1;-><init>(Lcom/onesignal/SyncService$2;)V

    invoke-static {v0, v1, v2}, Lcom/onesignal/LocationGMS;->getLocation(Landroid/content/Context;ZLcom/onesignal/LocationGMS$LocationHandler;)V

    goto :goto_0
.end method
