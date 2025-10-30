.class Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$2;
.super Ljava/lang/Object;
.source "UserEventHandler.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker$OnEventTickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->prepareKeyZooming(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

.field final synthetic val$isZoomIn:Z


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;Z)V
    .registers 3

    .line 2333
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$2;->this$1:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$2;->val$isZoomIn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTicked(Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;)V
    .registers 3

    .line 2337
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$2;->this$1:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$2;->val$isZoomIn:Z

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->performKeyZooming(Z)Z
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->access$7300(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;Z)Z

    return-void
.end method
