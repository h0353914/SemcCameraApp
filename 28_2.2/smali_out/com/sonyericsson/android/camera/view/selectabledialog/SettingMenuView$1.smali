.class Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$1;
.super Ljava/lang/Object;
.source "SettingMenuView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->selectTagItem(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;

.field final synthetic val$item:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;

.field final synthetic val$tag:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;Ljava/lang/Object;Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;)V
    .registers 4

    .line 74
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$1;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$1;->val$tag:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$1;->val$item:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$1;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mArranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;

    .line 79
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->computeHeight()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_a

    .line 81
    :cond_1c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$1;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->scrollTo(II)V

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$1;->val$tag:Ljava/lang/Object;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GEO_TAG:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3c

    .line 85
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$1;->val$item:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;->getView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 86
    instance-of v0, p0, Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    if-eqz v0, :cond_61

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    goto :goto_61

    .line 89
    :cond_3c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$1;->val$tag:Ljava/lang/Object;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    if-ne v0, v1, :cond_56

    .line 90
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$1;->val$item:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;->getView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 91
    instance-of v0, p0, Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    if-eqz v0, :cond_61

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    goto :goto_61

    .line 95
    :cond_56
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$1;->val$item:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$1;->val$item:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;->select(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V

    :cond_61
    :goto_61
    return-void
.end method
