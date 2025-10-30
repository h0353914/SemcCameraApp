.class Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$RefreshTrackedObjectRectangleTask;
.super Ljava/lang/Object;
.source "FocusRectangles.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RefreshTrackedObjectRectangleTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V
    .registers 2

    .line 2186
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$RefreshTrackedObjectRectangleTask;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2189
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "RefreshTrackedObjectRectangleTask.run():[IN]"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2192
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$RefreshTrackedObjectRectangleTask;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusEventListener:Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$3900(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$RefreshTrackedObjectRectangleTask;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$1500(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    move-result-object v0

    if-nez v0, :cond_1e

    goto :goto_2e

    .line 2198
    :cond_1e
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$RefreshTrackedObjectRectangleTask;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$1500(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    .line 2201
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$RefreshTrackedObjectRectangleTask;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->onObjectRemoved()V

    return-void

    :cond_2e
    :goto_2e
    return-void
.end method
