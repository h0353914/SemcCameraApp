.class Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;
.super Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;
.source "FeatureListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/FeatureListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenOffReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/FeatureListActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/FeatureListActivity;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/FeatureListActivity;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/FeatureListActivity;Lcom/sonyericsson/android/camera/FeatureListActivity$1;)V
    .registers 3

    .line 94
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;-><init>(Lcom/sonyericsson/android/camera/FeatureListActivity;)V

    return-void
.end method


# virtual methods
.method public onScreenOff()V
    .registers 3

    .line 97
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "invoked"

    .line 98
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 101
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/FeatureListActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/FeatureListActivity;->setShowWhenLocked(Z)V

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/FeatureListActivity;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/FeatureListActivity;->setTurnScreenOn(Z)V

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/FeatureListActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/FeatureListActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_37

    .line 110
    :cond_29
    iget-object v0, p0, Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/FeatureListActivity;

    # getter for: Lcom/sonyericsson/android/camera/FeatureListActivity;->mIsFinishWhenScreenOff:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->access$100(Lcom/sonyericsson/android/camera/FeatureListActivity;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/FeatureListActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->finish()V

    :cond_36
    return-void

    :cond_37
    :goto_37
    return-void
.end method
