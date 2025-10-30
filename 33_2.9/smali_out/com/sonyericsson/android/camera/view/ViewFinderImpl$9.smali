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

    .line 2652
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$9;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 14

    .line 2655
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$9;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mZoomSwitchButton:Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$5800(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->getCurrentZoomValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 2668
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-lez p1, :cond_48

    .line 2656
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$9;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p1

    sget-object v4, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ZOOM_PERFORM:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v11, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    const/16 v6, 0x3c6

    const/4 v7, 0x0

    const/16 v8, 0xa8

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$9;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 2660
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getZoomUiProxy()Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->getBaseStateNumber()F

    move-result v9

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$9;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 2661
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getZoomUiProxy()Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->getZoomMagnificationCoefficient()F

    move-result v10

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;-><init>(IIIFF)V

    aput-object v11, v1, v0

    aput-object v3, v1, v2

    .line 2656
    invoke-virtual {p1, v4, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_78

    .line 2663
    :cond_48
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$9;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p1

    sget-object v4, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ZOOM_PERFORM:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v11, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    const/16 v6, 0x3c6

    const/4 v7, 0x0

    const/16 v8, 0x198

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$9;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 2667
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getZoomUiProxy()Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->getBaseStateNumber()F

    move-result v9

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$9;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 2668
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getZoomUiProxy()Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->getZoomMagnificationCoefficient()F

    move-result v10

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;-><init>(IIIFF)V

    aput-object v11, v1, v0

    aput-object v3, v1, v2

    .line 2663
    invoke-virtual {p1, v4, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :goto_78
    return-void
.end method
