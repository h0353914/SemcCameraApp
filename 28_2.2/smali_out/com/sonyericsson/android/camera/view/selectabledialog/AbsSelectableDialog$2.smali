.class Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$2;
.super Ljava/lang/Object;
.source "AbsSelectableDialog.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->startCloseAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;)V
    .registers 2

    .line 254
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$2;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 262
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$2;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->animationType:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    sget-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;->SLIDER:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    if-ne p1, v0, :cond_2a

    .line 264
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$2;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->isPortrait()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    .line 265
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$2;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->getBackground()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_2a

    .line 267
    :cond_1f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$2;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->getBackground()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 270
    :cond_2a
    :goto_2a
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$2;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->closeImmediate()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
