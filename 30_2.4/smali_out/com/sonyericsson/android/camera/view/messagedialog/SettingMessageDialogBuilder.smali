.class public Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;
.super Ljava/lang/Object;
.source "SettingMessageDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$OnCheckStateConfirmedListener;,
        Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$OnSettingMessageDialogCheckBoxChangeListener;
    }
.end annotation


# instance fields
.field private mCheckBoxView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;->mCheckBoxView:Landroid/view/View;

    return-void
.end method

.method private isValid(I)Z
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    const/4 p1, 0x1

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    :goto_6
    return p1
.end method


# virtual methods
.method public attachCheckBoxIfNeeded(Landroid/content/Context;Landroid/app/AlertDialog;)V
    .registers 8

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;->mCheckBoxView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, ""

    .line 143
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v0, 0x102000b

    .line 145
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_4d

    .line 148
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 151
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    .line 152
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 153
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 154
    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 150
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 156
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;->mCheckBoxView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 163
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 166
    instance-of v1, p1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_44

    .line 168
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    .line 169
    check-cast p1, Landroid/view/View;

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    goto :goto_46

    .line 172
    :cond_44
    check-cast p1, Landroid/widget/ScrollView;

    .line 178
    :goto_46
    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    const/4 p2, -0x1

    .line 179
    invoke-virtual {p1, v0, p2, p2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    :cond_4d
    return-void
.end method

.method public create(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$OnCheckStateConfirmedListener;)Landroid/app/AlertDialog;
    .registers 12

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 54
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    iget-object p1, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->titleResourceID:I

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;->isValid(I)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 57
    iget-object p1, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->titleResourceID:I

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 60
    :cond_1a
    iget-object p1, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->messageResourceID:I

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;->isValid(I)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 61
    iget-object p1, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->messageResourceID:I

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 64
    :cond_2b
    iget-object p1, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->layoutResourceID:I

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;->isValid(I)Z

    move-result p1

    if-eqz p1, :cond_99

    .line 65
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$OnSettingMessageDialogCheckBoxChangeListener;

    const/4 v2, 0x0

    invoke-direct {p1, v2}, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$OnSettingMessageDialogCheckBoxChangeListener;-><init>(Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$1;)V

    .line 68
    iget-object v3, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget v3, v3, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->layoutResourceID:I

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;->mCheckBoxView:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;->mCheckBoxView:Landroid/view/View;

    const v2, 0x7f0900c5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 71
    iget-object v2, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget v2, v2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->messageResourceID:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 73
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;->mCheckBoxView:Landroid/view/View;

    const v2, 0x7f09006b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 75
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 76
    iget-object v2, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget-boolean v2, v2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->hasOnCheckBox:Z

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 78
    iget-object v0, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget v0, v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->positiveButtonResourceID:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 79
    iget-object v0, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget v0, v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->positiveButtonResourceID:I

    new-instance v2, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$1;

    invoke-direct {v2, p0, p7, p1, p3}, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$1;-><init>(Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$OnCheckStateConfirmedListener;Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$OnSettingMessageDialogCheckBoxChangeListener;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 90
    :cond_82
    iget-object p3, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget p3, p3, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->negativeButtonResourceID:I

    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;->isValid(I)Z

    move-result p3

    if-eqz p3, :cond_bb

    .line 91
    iget-object p3, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget p3, p3, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->negativeButtonResourceID:I

    new-instance v0, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$2;

    invoke-direct {v0, p0, p7, p1, p4}, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$2;-><init>(Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$OnCheckStateConfirmedListener;Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$OnSettingMessageDialogCheckBoxChangeListener;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, p3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_bb

    .line 102
    :cond_99
    iget-object p1, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->positiveButtonResourceID:I

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;->isValid(I)Z

    move-result p1

    if-eqz p1, :cond_aa

    .line 103
    iget-object p1, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->positiveButtonResourceID:I

    invoke-virtual {v1, p1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 107
    :cond_aa
    iget-object p1, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->negativeButtonResourceID:I

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;->isValid(I)Z

    move-result p1

    if-eqz p1, :cond_bb

    .line 108
    iget-object p1, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->negativeButtonResourceID:I

    invoke-virtual {v1, p1, p4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 113
    :cond_bb
    :goto_bb
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/KeyEventKiller;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/KeyEventKiller;-><init>()V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 114
    invoke-virtual {v1, p5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 115
    invoke-virtual {v1, p6}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 117
    iget-object p1, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->isCancelable:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    sget-object p3, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;->USE_DEFAULT:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    const/4 p4, 0x1

    const/4 p5, 0x0

    if-eq p1, p3, :cond_e1

    .line 118
    iget-object p1, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->isCancelable:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    sget-object p3, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;->TRUE:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    if-ne p1, p3, :cond_dd

    move p1, p4

    goto :goto_de

    :cond_dd
    move p1, p5

    :goto_de
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 121
    :cond_e1
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 122
    iget-object p3, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget-object p3, p3, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->isCancelableOnTouchOutside:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    sget-object p6, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;->USE_DEFAULT:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    if-eq p3, p6, :cond_fa

    .line 123
    iget-object p2, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget-object p2, p2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->isCancelableOnTouchOutside:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    sget-object p3, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;->TRUE:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    if-ne p2, p3, :cond_f6

    goto :goto_f7

    :cond_f6
    move p4, p5

    :goto_f7
    invoke-virtual {p1, p4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    :cond_fa
    return-object p1
.end method
