.class Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$1;
.super Ljava/lang/Object;
.source "UserEventHandler.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker$OnEventTickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->prepareSideTouchZoom()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)V
    .registers 2

    .line 2253
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$1;->this$1:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTicked(Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;)V
    .registers 5

    .line 2256
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$1;->this$1:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2257
    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mSideTouchScrollDistance:I
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->access$7100(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2256
    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->performZoom([Ljava/lang/Object;)Z
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->access$7200(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;[Ljava/lang/Object;)Z

    return-void
.end method
