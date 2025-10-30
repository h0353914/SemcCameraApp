.class Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruSmallModeButton;
.super Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;
.source "MruButtonContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MruSmallModeButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)V
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruSmallModeButton;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$1;)V
    .registers 3

    .line 192
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruSmallModeButton;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)V

    return-void
.end method


# virtual methods
.method setMode(Lcom/sonyericsson/android/camera/view/modeselector/Mode;)V
    .registers 3

    if-nez p1, :cond_28

    .line 197
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruSmallModeButton;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mMruSettings:Lcom/sonyericsson/android/camera/setting/MruSettings;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->access$400(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)Lcom/sonyericsson/android/camera/setting/MruSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/setting/MruSettings;->getMode()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1e

    .line 201
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruSmallModeButton;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GOOGLE_LENS"

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;->generateId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 205
    :cond_1e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruSmallModeButton;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mModeLoader:Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->access$500(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->findById(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/Mode;

    move-result-object p1

    .line 208
    :cond_28
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;->setMode(Lcom/sonyericsson/android/camera/view/modeselector/Mode;)V

    if-eqz p1, :cond_3a

    .line 211
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruSmallModeButton;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mMruSettings:Lcom/sonyericsson/android/camera/setting/MruSettings;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->access$400(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)Lcom/sonyericsson/android/camera/setting/MruSettings;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/Mode;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/setting/MruSettings;->setMode(Ljava/lang/String;)V

    :cond_3a
    return-void
.end method
