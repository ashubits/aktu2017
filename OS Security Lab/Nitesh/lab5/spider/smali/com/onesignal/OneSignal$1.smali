.class final Lcom/onesignal/OneSignal$1;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Lcom/onesignal/LocationGMS$LocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->startLocationUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/onesignal/LocationGMS$LocationPoint;)V
    .locals 1
    .param p1, "point"    # Lcom/onesignal/LocationGMS$LocationPoint;

    .prologue
    .line 436
    # setter for: Lcom/onesignal/OneSignal;->lastLocationPoint:Lcom/onesignal/LocationGMS$LocationPoint;
    invoke-static {p1}, Lcom/onesignal/OneSignal;->access$402(Lcom/onesignal/LocationGMS$LocationPoint;)Lcom/onesignal/LocationGMS$LocationPoint;

    .line 437
    const/4 v0, 0x1

    # setter for: Lcom/onesignal/OneSignal;->locationFired:Z
    invoke-static {v0}, Lcom/onesignal/OneSignal;->access$502(Z)Z

    .line 438
    # invokes: Lcom/onesignal/OneSignal;->registerUser()V
    invoke-static {}, Lcom/onesignal/OneSignal;->access$600()V

    .line 439
    return-void
.end method
