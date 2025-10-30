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

    .line 328
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 332
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->isShortcutButtonClickable()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 336
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09008d

    if-eq v0, v1, :cond_cb

    packed-switch v0, :pswitch_data_dc

    packed-switch v0, :pswitch_data_e4

    packed-switch v0, :pswitch_data_ec

    goto/16 :goto_da

    .line 368
    :pswitch_21
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result p1

    if-nez p1, :cond_36

    .line 369
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->showRestrictMessageDialog(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    goto/16 :goto_da

    .line 371
    :cond_36
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->VIDEO_HDR_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->openShorcutDialog(Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;)V

    goto/16 :goto_da

    .line 376
    :pswitch_43
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->switchSemiAutoAvailability()V

    goto/16 :goto_da

    .line 348
    :pswitch_4e
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->SELF_TIMER_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->openShorcutDialog(Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;)V

    goto/16 :goto_da

    .line 384
    :pswitch_5b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->isBokehEnabled()Z

    move-result p1

    if-eqz p1, :cond_71

    .line 385
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->showNightModeRejectedMessage()V

    goto :goto_da

    .line 387
    :cond_71
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->NIGHT_MODE_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->openShorcutDialog(Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;)V

    goto :goto_da

    .line 380
    :pswitch_7d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->HDR_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->openShorcutDialog(Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;)V

    goto :goto_da

    .line 360
    :pswitch_89
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result p1

    if-nez p1, :cond_9d

    .line 361
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->showRestrictMessageDialog(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    goto :goto_da

    .line 363
    :cond_9d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->FUSION_MODE_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->openShorcutDialog(Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;)V

    goto :goto_da

    .line 338
    :pswitch_a9
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->FLASH_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->openShorcutDialog(Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;)V

    goto :goto_da

    .line 352
    :pswitch_b5
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->switchBokehAvailability()V

    goto :goto_da

    .line 356
    :pswitch_bf
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ASPECT_RATIO_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->openShorcutDialog(Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;)V

    goto :goto_da

    .line 342
    :cond_cb
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_da

    .line 343
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->openSettingMenuDialog()V

    :cond_da
    :goto_da
    return-void

    nop

    :pswitch_data_dc
    .packed-switch 0x7f090123
        :pswitch_bf
        :pswitch_b5
    .end packed-switch

    :pswitch_data_e4
    .packed-switch 0x7f090126
        :pswitch_a9
        :pswitch_89
    .end packed-switch

    :pswitch_data_ec
    .packed-switch 0x7f090129
        :pswitch_7d
        :pswitch_5b
        :pswitch_4e
        :pswitch_43
        :pswitch_21
    .end packed-switch
.end method
