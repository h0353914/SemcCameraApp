.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$9;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .registers 2

    .line 2634
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$9;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 13

    .line 2637
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$9;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mZoomSwitchButton:Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$5700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->getCurrentZoomValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-lez p1, :cond_48

    .line 2638
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$9;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p1

    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ZOOM_PERFORM:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v10, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    const/16 v5, 0xa1

    const/4 v6, 0x0

    const/16 v7, 0x1c

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$9;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 2642
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getZoomUiProxy()Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->getBaseStateNumber()F

    move-result v8

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$9;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 2643
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getZoomUiProxy()Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->getZoomMagnificationCoefficient()F

    move-result v9

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;-><init>(IIIFF)V

    aput-object v10, v1, v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v2

    .line 2638
    invoke-virtual {p1, v3, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_7c

    .line 2645
    :cond_48
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$9;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p1

    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ZOOM_PERFORM:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v10, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    const/16 v5, 0xa1

    const/4 v6, 0x0

    const/16 v7, 0x43

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$9;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 2649
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getZoomUiProxy()Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->getBaseStateNumber()F

    move-result v8

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$9;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 2650
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getZoomUiProxy()Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->getZoomMagnificationCoefficient()F

    move-result v9

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;-><init>(IIIFF)V

    aput-object v10, v1, v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v2

    .line 2645
    invoke-virtual {p1, v3, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :goto_7c
    return-void
.end method
