.class Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask$1;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;)V
    .registers 2

    .line 10068
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 10071
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->access$16500(Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v1

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->requestStorePicture(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4300(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    return-void
.end method
