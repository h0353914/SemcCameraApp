.class Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady$1;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;->handleOnFaceDetected([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;)V
    .registers 2

    .line 3171
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 3174
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->requestPhotoSmileCapture()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$8900(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method
