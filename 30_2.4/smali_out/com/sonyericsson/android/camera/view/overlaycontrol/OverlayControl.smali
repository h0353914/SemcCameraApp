.class public abstract Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;
.super Ljava/lang/Object;
.source "OverlayControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;
    }
.end annotation


# instance fields
.field private mIsAllowedToShow:Z

.field private mIsEnabled:Z

.field private mStateListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_10

    const-string v0, "init"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 33
    :cond_10
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->mStateListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;

    return-void
.end method


# virtual methods
.method public disable()V
    .registers 3

    .line 46
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "Invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 47
    :cond_d
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    .line 48
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->mIsEnabled:Z

    .line 49
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->isVisible()Z

    move-result v1

    if-eq v0, v1, :cond_1d

    .line 50
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->onVisibilityUpdated()V

    :cond_1d
    return-void
.end method

.method public enable()V
    .registers 3

    .line 37
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "Invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 38
    :cond_d
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    .line 39
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->mIsEnabled:Z

    .line 40
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->isVisible()Z

    move-result v1

    if-eq v0, v1, :cond_1d

    .line 41
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->onVisibilityUpdated()V

    :cond_1d
    return-void
.end method

.method public hide()V
    .registers 3

    .line 64
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "Invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 65
    :cond_d
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    .line 66
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->mIsAllowedToShow:Z

    .line 67
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->isVisible()Z

    move-result v1

    if-eq v0, v1, :cond_1d

    .line 68
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->onVisibilityUpdated()V

    :cond_1d
    return-void
.end method

.method public isEnabled()Z
    .registers 2

    .line 80
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->mIsEnabled:Z

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .line 89
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->mIsEnabled:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->mIsAllowedToShow:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method protected notifyValueUpdateEnd()V
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->mStateListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;

    if-eqz v0, :cond_7

    .line 100
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;->onValueUpdateEnd()V

    :cond_7
    return-void
.end method

.method protected notifyValueUpdateStart()V
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->mStateListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;

    if-eqz v0, :cond_7

    .line 94
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;->onValueUpdateStart()V

    :cond_7
    return-void
.end method

.method protected abstract onOrientationChanged(I)V
.end method

.method protected abstract onVisibilityUpdated()V
.end method

.method public abstract refresh()V
.end method

.method public abstract release()V
.end method

.method public setOrientation(I)V
    .registers 2

    .line 76
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->onOrientationChanged(I)V

    return-void
.end method

.method public show()V
    .registers 3

    .line 55
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "Invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 56
    :cond_d
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    .line 57
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->mIsAllowedToShow:Z

    .line 58
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->isVisible()Z

    move-result v1

    if-eq v0, v1, :cond_1d

    .line 59
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->onVisibilityUpdated()V

    :cond_1d
    return-void
.end method
