.class public Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;
.super Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;
.source "UserEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZoomEventDispatcher"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 478
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic attach(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V
    .registers 2

    .line 478
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;->attach(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    return-void
.end method

.method public bridge synthetic start()V
    .registers 1

    .line 478
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;->start()V

    return-void
.end method

.method public bridge synthetic stop()V
    .registers 1

    .line 478
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;->stop()V

    return-void
.end method

.method public zoomChangeEvent(F)Z
    .registers 6

    .line 491
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 492
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1a

    const-string v0, "ZoomEventDispatcher#zoomChangeEvent()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 493
    :cond_1a
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;->CHANGE:Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v3, v1

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchZoomEvent(Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;[Ljava/lang/Object;)Z
    invoke-static {v0, v2, v3}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$1800(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2e
    const-string p1, "ZoomEventDispatcher#zoomChangeEvent() event is rejected."

    .line 495
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return v1
.end method

.method public zoomEndEvent()Z
    .registers 4

    .line 501
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 502
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1a

    const-string v0, "ZoomEventDispatcher#zoomEndEvent()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 503
    :cond_1a
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;->END:Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;

    new-array v1, v1, [Ljava/lang/Object;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchZoomEvent(Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;[Ljava/lang/Object;)Z
    invoke-static {v0, v2, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$1800(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;[Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_27
    const-string v0, "ZoomEventDispatcher#zoomEndEvent() event is rejected."

    .line 505
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return v1
.end method

.method public zoomRatioDesignation(F)Z
    .registers 6

    .line 511
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 512
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1a

    const-string v0, "ZoomEventDispatcher#zoomRatioDesignation()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 513
    :cond_1a
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;->DESIGNATION:Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v3, v1

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchZoomEvent(Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;[Ljava/lang/Object;)Z
    invoke-static {v0, v2, v3}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$1800(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2e
    const-string p1, "ZoomEventDispatcher#zoomRatioDesignation() event is rejected."

    .line 515
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return v1
.end method

.method public zoomStartEvent()Z
    .registers 4

    .line 481
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 482
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1a

    const-string v0, "ZoomEventDispatcher#zoomStartEvent()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 483
    :cond_1a
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;->getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;->START:Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;

    new-array v1, v1, [Ljava/lang/Object;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchZoomEvent(Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;[Ljava/lang/Object;)Z
    invoke-static {v0, v2, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$1800(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;[Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_27
    const-string v0, "ZoomEventDispatcher#zoomStartEvent() event is rejected."

    .line 485
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return v1
.end method
