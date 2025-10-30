.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut$1;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->switchCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;)V
    .registers 2

    .line 11565
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 11568
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->onToggleCameraSwitch()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$12400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    .line 11569
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 11570
    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isFront()Z
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$6900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result v1

    .line 11569
    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setFrontAngleSwitchButtonClickable(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$12300(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Z)V

    return-void
.end method
