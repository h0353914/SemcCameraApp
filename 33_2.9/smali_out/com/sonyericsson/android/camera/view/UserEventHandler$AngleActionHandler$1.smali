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

    .line 2307
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$1;->this$1:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTicked(Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;)V
    .registers 4

    .line 2310
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$1;->this$1:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 2311
    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mSideTouchScrollDistance:I
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->access$7100(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 2310
    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->performZoom([Ljava/lang/Object;)Z
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->access$7200(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;[Ljava/lang/Object;)Z

    return-void
.end method
