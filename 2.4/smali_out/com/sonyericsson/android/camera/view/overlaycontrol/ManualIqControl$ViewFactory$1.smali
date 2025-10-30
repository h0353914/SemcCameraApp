.class Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory$1;
.super Ljava/lang/Object;
.source "ManualIqControl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$OnDialogTabSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;->create()Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory$1;->this$1:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V
    .registers 3

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory$1;->this$1:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;

    # getter for: Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mIsSliderPressed:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->access$200(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 120
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory$1;->this$1:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;

    # invokes: Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->update(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->access$500(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    :cond_11
    return-void
.end method
