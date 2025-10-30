.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$35;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .registers 2

    .line 11025
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$35;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Float;
    .registers 2

    const/high16 v0, 0x3f000000    # 0.5f

    .line 11028
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 11025
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$35;->get()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public reset()Ljava/lang/Float;
    .registers 2

    .line 11039
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$35;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->disableSemiAutoControl()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$11800(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 11040
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reset()Ljava/lang/Object;
    .registers 2

    .line 11025
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$35;->reset()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Float;)V
    .registers 6

    .line 11033
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$35;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_BRIGHTNESS_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2

    .line 11025
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$35;->set(Ljava/lang/Float;)V

    return-void
.end method
