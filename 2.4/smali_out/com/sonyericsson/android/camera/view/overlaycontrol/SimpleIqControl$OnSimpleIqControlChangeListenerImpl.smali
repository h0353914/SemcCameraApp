.class Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$OnSimpleIqControlChangeListenerImpl;
.super Ljava/lang/Object;
.source "SimpleIqControl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OnSimpleIqControlChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSimpleIqControlChangeListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;)V
    .registers 2

    .line 106
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$OnSimpleIqControlChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$1;)V
    .registers 3

    .line 106
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$OnSimpleIqControlChangeListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;)V

    return-void
.end method


# virtual methods
.method public onAmberBlueColorChanged(I)V
    .registers 4

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$OnSimpleIqControlChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;

    # getter for: Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->access$200(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;)Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$OnSimpleIqControlChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;

    # getter for: Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->access$200(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;)Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    move-result-object v0

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;->set(Ljava/lang/Object;)V

    :cond_19
    return-void
.end method

.method public onBokehStrengthChanged(I)V
    .registers 4

    .line 134
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$OnSimpleIqControlChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;

    # getter for: Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->mBokehStrength:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->access$300(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;)Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 135
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setBlur(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$OnSimpleIqControlChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;

    # getter for: Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->mBokehStrength:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->access$300(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;)Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    move-result-object v0

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;->set(Ljava/lang/Object;)V

    :cond_24
    return-void
.end method

.method public onBrightnessChanged(I)V
    .registers 4

    .line 120
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$OnSimpleIqControlChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;

    # getter for: Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->mBrightness:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->access$100(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;)Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$OnSimpleIqControlChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;

    # getter for: Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->mBrightness:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->access$100(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;)Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    move-result-object v0

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;->set(Ljava/lang/Object;)V

    :cond_19
    return-void
.end method

.method public onReset()V
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$OnSimpleIqControlChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;

    # getter for: Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->access$200(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;)Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$OnSimpleIqControlChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;

    # getter for: Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->access$200(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;)Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;->reset()Ljava/lang/Object;

    .line 155
    :cond_11
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$OnSimpleIqControlChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;

    # getter for: Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->mBrightness:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->access$100(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;)Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 156
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$OnSimpleIqControlChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;

    # getter for: Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->mBrightness:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->access$100(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;)Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;->reset()Ljava/lang/Object;

    .line 158
    :cond_22
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$OnSimpleIqControlChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;

    # getter for: Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->mBokehStrength:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->access$300(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;)Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 159
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$OnSimpleIqControlChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;

    # getter for: Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->mBokehStrength:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->access$300(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;)Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;->reset()Ljava/lang/Object;

    :cond_33
    return-void
.end method

.method public onSemiAutoControlStarted()V
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$OnSimpleIqControlChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->notifyValueUpdateStart()V

    return-void
.end method

.method public onSemiAutoControlStopped()V
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$OnSimpleIqControlChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->notifyValueUpdateEnd()V

    return-void
.end method

.method public onSemiAutoDisabled()V
    .registers 1

    return-void
.end method

.method public onSemiAutoEnabled()V
    .registers 1

    return-void
.end method
