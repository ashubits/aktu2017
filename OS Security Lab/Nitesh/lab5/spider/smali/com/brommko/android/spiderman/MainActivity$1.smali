.class Lcom/brommko/android/spiderman/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brommko/android/spiderman/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brommko/android/spiderman/MainActivity;


# direct methods
.method constructor <init>(Lcom/brommko/android/spiderman/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/brommko/android/spiderman/MainActivity;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/brommko/android/spiderman/MainActivity$1;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity$1;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    invoke-virtual {v0}, Lcom/brommko/android/spiderman/MainActivity;->showContent()V

    .line 112
    return-void
.end method
