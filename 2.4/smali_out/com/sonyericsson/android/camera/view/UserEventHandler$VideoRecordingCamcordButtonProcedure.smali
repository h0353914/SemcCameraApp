.class Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoRecordingCamcordButtonProcedure;
.super Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoRecordingButtonProcedure;
.source "UserEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoRecordingCamcordButtonProcedure"
.end annotation


# instance fields
.field private final mIsPauseButton:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Z)V
    .registers 4

    .line 1357
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoRecordingCamcordButtonProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoRecordingButtonProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V

    .line 1358
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoRecordingCamcordButtonProcedure;->mIsPauseButton:Z

    return-void
.end method


# virtual methods
.method public doCancel()V
    .registers 1

    return-void
.end method

.method public doTouchDown()V
    .registers 1

    return-void
.end method

.method public doTouchUp(Landroid/graphics/Point;)V
    .registers 4

    .line 1368
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoRecordingCamcordButtonProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3800(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p1

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoRecordingCamcordButtonProcedure;->mIsPauseButton:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_PAUSE_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    goto :goto_f

    :cond_d
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_RESUME_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    :goto_f
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method
