.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11$1;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;->switchCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;)V
    .registers 2

    .line 2865
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2868
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->onToggleCameraSwitch()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$6100(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    .line 2869
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 2870
    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isFront()Z
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$6200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result v1

    .line 2869
    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setFrontAngleSwitchButtonClickable(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$6000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Z)V

    return-void
.end method
