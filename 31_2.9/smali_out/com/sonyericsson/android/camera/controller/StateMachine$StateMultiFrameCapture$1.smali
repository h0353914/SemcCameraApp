.class Lcom/sonyericsson/android/camera/controller/StateMachine$StateMultiFrameCapture$1;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine$StateMultiFrameCapture;->handleOnTakePictureDone([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateMultiFrameCapture;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StateMultiFrameCapture;)V
    .registers 2

    .line 6139
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateMultiFrameCapture$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateMultiFrameCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 6142
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateMultiFrameCapture$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateMultiFrameCapture;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateMultiFrameCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x0

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->cancelAutoFocus(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4200(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method
