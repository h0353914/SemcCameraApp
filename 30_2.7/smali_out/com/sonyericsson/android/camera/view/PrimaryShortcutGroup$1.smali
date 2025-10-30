.class Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;
.super Ljava/lang/Object;
.source "PrimaryShortcutGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)V
    .registers 2

    .line 282
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 286
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->isShortcutButtonClickable()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 290
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09008c

    if-eq v0, v1, :cond_b3

    packed-switch v0, :pswitch_data_c4

    packed-switch v0, :pswitch_data_d2

    goto/16 :goto_c2

    .line 330
    :pswitch_1e
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result p1

    if-nez p1, :cond_33

    .line 331
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->showRestrictMessageDialog(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    goto/16 :goto_c2

    .line 333
    :cond_33
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->VIDEO_HDR_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->openShorcutDialog(Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;)V

    goto/16 :goto_c2

    .line 338
    :pswitch_40
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->switchSemiAutoAvailability()V

    goto/16 :goto_c2

    .line 310
    :pswitch_4b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->SELF_TIMER_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->openShorcutDialog(Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;)V

    goto :goto_c2

    .line 342
    :pswitch_57
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->HDR_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->openShorcutDialog(Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;)V

    goto :goto_c2

    .line 322
    :pswitch_63
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result p1

    if-nez p1, :cond_77

    .line 323
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->showRestrictMessageDialog(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    goto :goto_c2

    .line 325
    :cond_77
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->FUSION_MODE_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->openShorcutDialog(Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;)V

    goto :goto_c2

    .line 300
    :pswitch_83
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->FLASH_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->openShorcutDialog(Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;)V

    goto :goto_c2

    :pswitch_8f
    const/4 v0, 0x0

    .line 294
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->switchCamera()V

    goto :goto_c2

    .line 314
    :pswitch_9d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->switchBokehAvailability()V

    goto :goto_c2

    .line 318
    :pswitch_a7
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ASPECT_RATIO_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->openShorcutDialog(Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;)V

    goto :goto_c2

    .line 304
    :cond_b3
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_c2

    .line 305
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->openSettingMenuDialog()V

    :cond_c2
    :goto_c2
    return-void

    nop

    :pswitch_data_c4
    .packed-switch 0x7f090120
        :pswitch_a7
        :pswitch_9d
        :pswitch_8f
        :pswitch_83
        :pswitch_63
    .end packed-switch

    :pswitch_data_d2
    .packed-switch 0x7f090126
        :pswitch_57
        :pswitch_4b
        :pswitch_40
        :pswitch_1e
    .end packed-switch
.end method
