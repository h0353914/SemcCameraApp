.class Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$4;
.super Ljava/lang/Object;
.source "UserEventHandler.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker$OnEventTickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->switchFrontAngle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCount:I

.field final synthetic this$1:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

.field final synthetic val$newAngle:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;)V
    .registers 3

    .line 2538
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$4;->this$1:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$4;->val$newAngle:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2539
    iput p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$4;->mCount:I

    return-void
.end method


# virtual methods
.method public onTicked(Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;)V
    .registers 4

    .line 2542
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$4;->this$1:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$4;->val$newAngle:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->performFrontAngleChange(Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;)Z
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->access$7500(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;)Z

    .line 2543
    iget v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$4;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$4;->mCount:I

    .line 2544
    iget v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$4;->mCount:I

    if-gtz v0, :cond_19

    .line 2545
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->stop()V

    .line 2546
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$4;->this$1:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->finishZoom()Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->access$7600(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)Z

    :cond_19
    return-void
.end method
