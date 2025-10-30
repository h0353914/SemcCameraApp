.class public Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;
.super Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;
.source "UserEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SideTouchEventDispatcher"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 410
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic attach(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V
    .registers 2

    .line 410
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;->attach(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    return-void
.end method

.method protected reset()V
    .registers 2

    .line 414
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object v0

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler;->resetSideTouchEventHandling()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$1500(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    return-void
.end method

.method public send(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 429
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 430
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;->isRunning()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_29

    .line 431
    :cond_13
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_20

    const-string v0, "SideTouchEventDispatcher#send()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 432
    :cond_20
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object v0

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchSideTouchEvent(Landroid/view/MotionEvent;)Z
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$1600(Lcom/sonyericsson/android/camera/view/UserEventHandler;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_29
    const-string p1, "SideTouchEventDispatcher#send() event is rejected."

    .line 434
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic start()V
    .registers 1

    .line 410
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;->start()V

    return-void
.end method

.method public bridge synthetic stop()V
    .registers 1

    .line 410
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;->stop()V

    return-void
.end method
