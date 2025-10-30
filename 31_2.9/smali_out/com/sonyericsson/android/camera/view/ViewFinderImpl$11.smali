.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .registers 2

    .line 2827
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isFacingShortcutClickable()Z
    .registers 2

    .line 2845
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mIsSettingChangeAcceptable:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$600(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isTutorialOpened()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 2846
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isUserOperable()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method private switchCamera()V
    .registers 3

    .line 2853
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isRestartPreviewSessionState()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$5900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2854
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_17

    const-string v0, "ViewFinderImpl"

    const-string v1, "switchCamera return because of isRestartPreviewSessionState"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_17
    return-void

    .line 2858
    :cond_18
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    const/4 v1, 0x0

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setFrontAngleSwitchButtonClickable(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$6000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Z)V

    .line 2860
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->hideAutoReview()V

    .line 2862
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setIsCameraSwitching(Z)V

    .line 2863
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->hideSurface()V

    .line 2865
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11$1;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 2831
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;->isFacingShortcutClickable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 2836
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2837
    sget-object p1, Lcom/sonyericsson/android/camera/util/PerfLog;->FACING_BUTTON_TAP:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    .line 2838
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;->switchCamera()V

    return-void
.end method
