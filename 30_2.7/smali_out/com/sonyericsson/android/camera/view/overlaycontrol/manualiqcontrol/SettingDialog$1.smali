.class Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingDialog$1;
.super Ljava/lang/Object;
.source "SettingDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingDialog;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingDialog;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingDialog$1;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingDialog$1;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingDialog;

    # getter for: Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingDialog;->mParentView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingDialog;->access$000(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingDialog;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingDialog$1;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingDialog;

    # getter for: Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingDialog;->mParentView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingDialog;->access$000(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingDialog;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingDialog$1;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingDialog;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_13
    return-void
.end method
