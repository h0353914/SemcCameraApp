.class Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton$1;
.super Ljava/lang/Object;
.source "EyeDetectionButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;->setEyeDetectionOnClickListener(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton$EyeDetectionStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;

.field final synthetic val$eyeDetectionStateListener:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton$EyeDetectionStateListener;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton$EyeDetectionStateListener;)V
    .registers 3

    .line 39
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton$1;->val$eyeDetectionStateListener:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton$EyeDetectionStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 42
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;->mIsEyeDetectionEnabled:Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;->access$000(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 43
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;

    const/4 v0, 0x0

    # setter for: Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;->mIsEyeDetectionEnabled:Z
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;->access$002(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;Z)Z

    .line 44
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 46
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;

    const v0, 0x7f080153

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;->setBackgroundResource(I)V

    .line 47
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton$1;->val$eyeDetectionStateListener:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton$EyeDetectionStateListener;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton$EyeDetectionStateListener;->onEyeDetectionDisabled()V

    .line 48
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    const-string v0, "focus_eye"

    const-string v1, "EYE"

    const-string v2, "FACE"

    invoke-virtual {p1, v0, v1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEventChangedSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_71

    .line 50
    :cond_3d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;

    const/4 v0, 0x1

    # setter for: Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;->mIsEyeDetectionEnabled:Z
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;->access$002(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;Z)Z

    .line 51
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 53
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;

    const v0, 0x7f080156

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;->setBackgroundResource(I)V

    .line 54
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton$1;->val$eyeDetectionStateListener:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton$EyeDetectionStateListener;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton$EyeDetectionStateListener;->onEyeDetectionEnabled()V

    .line 55
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    const-string v0, "focus_eye"

    const-string v1, "FACE"

    const-string v2, "EYE"

    invoke-virtual {p1, v0, v1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEventChangedSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_71
    return-void
.end method
