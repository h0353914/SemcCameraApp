.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$31;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->requestStartActivityForMessageDialog(Landroid/content/Intent;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$options:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 4

    .line 10051
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$31;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$31;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$31;->val$options:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 10054
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$31;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$31;->val$intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$31;->val$options:Landroid/os/Bundle;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->requestStartActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Landroid/content/Intent;Landroid/os/Bundle;)Z

    .line 10055
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$31;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->abort()V

    return-void
.end method
