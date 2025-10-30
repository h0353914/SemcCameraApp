.class Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleChangeButtonProcedure;
.super Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;
.source "UserEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AngleChangeButtonProcedure"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V
    .registers 3

    .line 1396
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleChangeButtonProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V
    .registers 3

    .line 1396
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleChangeButtonProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/graphics/Point;)V
    .registers 2

    .line 1400
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleChangeButtonProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeFaultPreviewIfShowing()Z

    .line 1401
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleChangeButtonProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$4200(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    move-result-object p1

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->switchFrontAngle()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->access$4300(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)V

    return-void
.end method
