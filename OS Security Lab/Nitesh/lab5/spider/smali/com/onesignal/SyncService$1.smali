.class Lcom/onesignal/SyncService$1;
.super Ljava/lang/Object;
.source "SyncService.java"

# interfaces
.implements Lcom/onesignal/LocationGMS$LocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/SyncService;->doForegroundSync()V
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
    .line 64
    iput-object p1, p0, Lcom/onesignal/SyncService$1;->this$0:Lcom/onesignal/SyncService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/onesignal/LocationGMS$LocationPoint;)V
    .locals 0
    .param p1, "point"    # Lcom/onesignal/LocationGMS$LocationPoint;

    .prologue
    .line 66
    if-eqz p1, :cond_0

    .line 67
    invoke-static {p1}, Lcom/onesignal/OneSignalStateSynchronizer;->updateLocation(Lcom/onesignal/LocationGMS$LocationPoint;)V

    .line 68
    :cond_0
    return-void
.end method
