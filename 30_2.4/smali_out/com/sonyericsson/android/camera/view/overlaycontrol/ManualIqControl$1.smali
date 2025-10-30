.class Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$1;
.super Ljava/lang/Object;
.source "ManualIqControl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$1;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlideStarted()V
    .registers 4

    .line 75
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$1;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;

    .line 76
    # getter for: Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mValueAccessor:Ljava/util/Map;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->access$100(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$1;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;

    # getter for: Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mSelectedTab:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->access$000(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;)Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 75
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setManualIqControlValueBeforeChange(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$1;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mIsSliderPressed:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->access$202(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;Z)Z

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$1;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->notifyValueUpdateStart()V

    return-void
.end method

.method public onSlideStopped()V
    .registers 4

    .line 83
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$1;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;

    .line 84
    # getter for: Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mValueAccessor:Ljava/util/Map;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->access$100(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$1;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;

    # getter for: Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mSelectedTab:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->access$000(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;)Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 83
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setManualIqControlValueAfterChange(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$1;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mIsSliderPressed:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->access$202(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;Z)Z

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$1;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->notifyValueUpdateEnd()V

    return-void
.end method
