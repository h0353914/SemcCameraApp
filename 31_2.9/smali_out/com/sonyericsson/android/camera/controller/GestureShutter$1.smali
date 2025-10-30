.class Lcom/sonyericsson/android/camera/controller/GestureShutter$1;
.super Ljava/lang/Object;
.source "GestureShutter.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/GestureShutter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;)V
    .registers 2

    .line 165
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$1;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleConfirmingFinished()V
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$1;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    # getter for: Lcom/sonyericsson/android/camera/controller/GestureShutter;->mState:Lcom/sonyericsson/android/camera/controller/GestureShutter$State;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$000(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/controller/GestureShutter$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;->handleConfirmingFinished()V

    return-void
.end method

.method public handleProceedFinished()V
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$1;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    # getter for: Lcom/sonyericsson/android/camera/controller/GestureShutter;->mState:Lcom/sonyericsson/android/camera/controller/GestureShutter$State;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$000(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/controller/GestureShutter$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;->handleProceedFinished()V

    return-void
.end method

.method public handleRewindFinished()V
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$1;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    # getter for: Lcom/sonyericsson/android/camera/controller/GestureShutter;->mState:Lcom/sonyericsson/android/camera/controller/GestureShutter$State;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$000(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/controller/GestureShutter$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;->handleRewindFinished()V

    return-void
.end method
