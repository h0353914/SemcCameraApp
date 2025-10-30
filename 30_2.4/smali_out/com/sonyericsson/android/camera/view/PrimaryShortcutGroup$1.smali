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

    .line 279
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 283
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->isShortcutButtonClickable()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 287
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09008a

    if-eq v0, v1, :cond_105

    packed-switch v0, :pswitch_data_116

    packed-switch v0, :pswitch_data_124

    goto/16 :goto_114

    .line 337
    :pswitch_1e
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result p1

    if-eqz p1, :cond_33

    .line 338
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->VIDEO_HDR_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->openShorcutDialog(Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;)V

    goto/16 :goto_114

    .line 340
    :cond_33
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->showRestrictMessageDialog(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    goto/16 :goto_114

    .line 345
    :pswitch_40
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->switchSemiAutoAvailability()V

    goto/16 :goto_114

    .line 313
    :pswitch_4b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->SELF_TIMER_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->openShorcutDialog(Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;)V

    goto/16 :goto_114

    .line 349
    :pswitch_58
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 350
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->HDR_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->openShorcutDialog(Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;)V

    goto/16 :goto_114

    .line 352
    :cond_6d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->showRestrictMessageDialog(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    goto/16 :goto_114

    .line 329
    :pswitch_7a
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result p1

    if-eqz p1, :cond_8f

    .line 330
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->FUSION_MODE_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->openShorcutDialog(Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;)V

    goto/16 :goto_114

    .line 332
    :cond_8f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->showRestrictMessageDialog(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    goto/16 :goto_114

    .line 297
    :pswitch_9c
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result p1

    if-nez p1, :cond_c1

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DISPLAY_FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 298
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result p1

    if-nez p1, :cond_c1

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 299
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result p1

    if-eqz p1, :cond_b5

    goto :goto_c1

    .line 302
    :cond_b5
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->showRestrictMessageDialog(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    goto :goto_114

    .line 300
    :cond_c1
    :goto_c1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->FLASH_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->openShorcutDialog(Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;)V

    goto :goto_114

    :pswitch_cd
    const/4 v0, 0x0

    .line 291
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->switchCamera()V

    goto :goto_114

    .line 317
    :pswitch_db
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BOKEH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result p1

    if-eqz p1, :cond_ed

    .line 318
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->switchBokehAvailability()V

    goto :goto_114

    .line 320
    :cond_ed
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BOKEH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->showRestrictMessageDialog(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    goto :goto_114

    .line 325
    :pswitch_f9
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ASPECT_RATIO_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->openShorcutDialog(Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;)V

    goto :goto_114

    .line 307
    :cond_105
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_114

    .line 308
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;->this$0:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    # getter for: Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->openSettingMenuDialog()V

    :cond_114
    :goto_114
    return-void

    nop

    :pswitch_data_116
    .packed-switch 0x7f09012f
        :pswitch_f9
        :pswitch_db
        :pswitch_cd
        :pswitch_9c
        :pswitch_7a
    .end packed-switch

    :pswitch_data_124
    .packed-switch 0x7f090135
        :pswitch_58
        :pswitch_4b
        :pswitch_40
        :pswitch_1e
    .end packed-switch
.end method
