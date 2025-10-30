.class Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$1;
.super Ljava/lang/Object;
.source "CameraSettingsDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->updateViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;)V
    .registers 2

    .line 154
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$1;->this$0:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 157
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$1;->this$0:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;

    # invokes: Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->handleSwitchBarClicked(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->access$000(Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;Landroid/view/View;)V

    return-void
.end method
