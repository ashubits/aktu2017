.class final Lcom/onesignal/OneSignal$5;
.super Lcom/onesignal/OneSignalRestClient$ResponseHandler;
.source "OneSignal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->sendOnFocus(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 675
    invoke-direct {p0}, Lcom/onesignal/OneSignalRestClient$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 678
    const-string v0, "sending on_focus Failed"

    # invokes: Lcom/onesignal/OneSignal;->logHttpError(Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;)V
    invoke-static {v0, p1, p3, p2}, Lcom/onesignal/OneSignal;->access$1800(Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;)V

    .line 679
    return-void
.end method

.method onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 683
    const-wide/16 v0, 0x0

    # invokes: Lcom/onesignal/OneSignal;->SaveUnsentActiveTime(J)V
    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->access$1900(J)V

    .line 684
    return-void
.end method
