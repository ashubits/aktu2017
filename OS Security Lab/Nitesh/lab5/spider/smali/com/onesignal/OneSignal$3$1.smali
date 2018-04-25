.class Lcom/onesignal/OneSignal$3$1;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal$3;->onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/OneSignal$3;


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignal$3;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/OneSignal$3;

    .prologue
    .line 486
    iput-object p1, p0, Lcom/onesignal/OneSignal$3$1;->this$0:Lcom/onesignal/OneSignal$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 489
    :try_start_0
    # getter for: Lcom/onesignal/OneSignal;->androidParamsReties:I
    invoke-static {}, Lcom/onesignal/OneSignal;->access$1100()I

    move-result v1

    mul-int/lit16 v1, v1, 0x2710

    add-int/lit16 v0, v1, 0x7530

    .line 491
    .local v0, "sleepTime":I
    const v1, 0x15f90

    if-le v0, v1, :cond_0

    .line 492
    const v0, 0x15f90

    .line 494
    :cond_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get Android parameters, trying again in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-int/lit16 v3, v0, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 495
    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    .end local v0    # "sleepTime":I
    :goto_0
    # operator++ for: Lcom/onesignal/OneSignal;->androidParamsReties:I
    invoke-static {}, Lcom/onesignal/OneSignal;->access$1108()I

    .line 498
    # invokes: Lcom/onesignal/OneSignal;->makeAndroidParamsRequest()V
    invoke-static {}, Lcom/onesignal/OneSignal;->access$1200()V

    .line 499
    return-void

    .line 496
    :catch_0
    move-exception v1

    goto :goto_0
.end method
