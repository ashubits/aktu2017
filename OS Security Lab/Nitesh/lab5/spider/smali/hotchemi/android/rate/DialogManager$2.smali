.class final Lhotchemi/android/rate/DialogManager$2;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhotchemi/android/rate/DialogManager;->create(Landroid/content/Context;Lhotchemi/android/rate/DialogOptions;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lhotchemi/android/rate/OnClickButtonListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lhotchemi/android/rate/OnClickButtonListener;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lhotchemi/android/rate/DialogManager$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lhotchemi/android/rate/DialogManager$2;->val$listener:Lhotchemi/android/rate/OnClickButtonListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lhotchemi/android/rate/DialogManager$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lhotchemi/android/rate/PreferenceHelper;->setRemindInterval(Landroid/content/Context;)V

    .line 50
    iget-object v0, p0, Lhotchemi/android/rate/DialogManager$2;->val$listener:Lhotchemi/android/rate/OnClickButtonListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhotchemi/android/rate/DialogManager$2;->val$listener:Lhotchemi/android/rate/OnClickButtonListener;

    invoke-interface {v0, p2}, Lhotchemi/android/rate/OnClickButtonListener;->onClickButton(I)V

    .line 51
    :cond_0
    return-void
.end method
