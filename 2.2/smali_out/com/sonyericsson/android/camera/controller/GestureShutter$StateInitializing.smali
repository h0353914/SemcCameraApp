.class Lcom/sonyericsson/android/camera/controller/GestureShutter$StateInitializing;
.super Lcom/sonyericsson/android/camera/controller/GestureShutter$State;
.source "GestureShutter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/GestureShutter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateInitializing"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;)V
    .registers 3

    .line 408
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateInitializing;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    const/4 v0, 0x0

    .line 409
    invoke-direct {p0, p1, v0, v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;-><init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;ZZ)V

    return-void
.end method


# virtual methods
.method entry()V
    .registers 4

    .line 421
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateInitializing;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    # getter for: Lcom/sonyericsson/android/camera/controller/GestureShutter;->mControllerHost:Lcom/sonyericsson/android/camera/controller/GestureShutter$ControllerHost;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$700(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/controller/GestureShutter$ControllerHost;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateInitializing;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    # getter for: Lcom/sonyericsson/android/camera/controller/GestureShutter;->mOrientationListener:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientationChangedListener;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$600(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientationChangedListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/controller/GestureShutter$ControllerHost;->addOrientationListener(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientationChangedListener;)V

    .line 424
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateInitializing;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    # getter for: Lcom/sonyericsson/android/camera/controller/GestureShutter;->mWindowHost:Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$500(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 425
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateInitializing;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateInitializing;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;-><init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;Z)V

    # invokes: Lcom/sonyericsson/android/camera/controller/GestureShutter;->changeState(Lcom/sonyericsson/android/camera/controller/GestureShutter$State;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$400(Lcom/sonyericsson/android/camera/controller/GestureShutter;Lcom/sonyericsson/android/camera/controller/GestureShutter$State;)V

    :cond_24
    return-void
.end method

.method setWindowHost(Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;)V
    .registers 4

    .line 414
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateInitializing;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    # setter for: Lcom/sonyericsson/android/camera/controller/GestureShutter;->mWindowHost:Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$502(Lcom/sonyericsson/android/camera/controller/GestureShutter;Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;)Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;

    .line 416
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateInitializing;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateInitializing;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;-><init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;Z)V

    # invokes: Lcom/sonyericsson/android/camera/controller/GestureShutter;->changeState(Lcom/sonyericsson/android/camera/controller/GestureShutter$State;)V
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$400(Lcom/sonyericsson/android/camera/controller/GestureShutter;Lcom/sonyericsson/android/camera/controller/GestureShutter$State;)V

    return-void
.end method
