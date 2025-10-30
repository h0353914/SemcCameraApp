.class public Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;
.super Ljava/lang/Object;
.source "SettingMessageDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$OnSettingMessageDialogCheckBoxChangeListener;,
        Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$OnCheckStateConfirmedListener;,
        Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$CustomClickUrlSpan;
    }
.end annotation


# instance fields
.field private mCheckBoxView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;->mCheckBoxView:Landroid/view/View;

    return-void
.end method

.method private adjustPadding(Landroid/content/Context;Landroid/view/View;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Landroid/view/View;
    .registers 5

    .line 314
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07008c

    .line 315
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 316
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 318
    iget-object p1, p3, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget-boolean p1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->hasOnCheckBox:Z

    if-eqz p1, :cond_16

    const/4 p0, 0x0

    .line 322
    :cond_16
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    invoke-virtual {p2, p1, v0, p3, p0}, Landroid/view/View;->setPadding(IIII)V

    return-object p2
.end method

.method private getLinkText(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .registers 10

    .line 169
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4b

    const/16 v0, 0x3f

    .line 170
    invoke-static {p2, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    .line 171
    instance-of v1, v0, Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_4b

    .line 172
    check-cast v0, Landroid/text/SpannableStringBuilder;

    .line 175
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    const-class v1, Landroid/text/style/URLSpan;

    const/4 v2, 0x0

    .line 174
    invoke-virtual {v0, v2, p2, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4a

    .line 176
    array-length v1, p2

    if-eqz v1, :cond_4a

    .line 177
    array-length v1, p2

    :goto_23
    if-ge v2, v1, :cond_4a

    aget-object v3, p2, v2

    .line 178
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 179
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 180
    instance-of v6, v3, Landroid/text/style/URLSpan;

    if-eqz v6, :cond_47

    .line 181
    move-object v6, v3

    check-cast v6, Landroid/text/style/URLSpan;

    .line 182
    invoke-virtual {v6}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v6

    .line 183
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 184
    new-instance v3, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$CustomClickUrlSpan;

    invoke-direct {v3, p0, p1, v6}, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$CustomClickUrlSpan;-><init>(Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;Landroid/content/Context;Ljava/lang/String;)V

    const/16 v6, 0x11

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_4a
    return-object v0

    .line 192
    :cond_4b
    new-instance p0, Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method private isValid(I)Z
    .registers 2

    const/4 p0, -0x1

    if-eq p1, p0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method


# virtual methods
.method public attachCheckBoxIfNeeded(Landroid/content/Context;Landroid/app/AlertDialog;)V
    .registers 7

    .line 235
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;->mCheckBoxView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 238
    :cond_5
    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v0, 0x102000b

    .line 240
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_4c

    .line 243
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 246
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    .line 247
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 248
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 249
    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 245
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 251
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;->mCheckBoxView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 258
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 261
    instance-of p1, p0, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_42

    .line 263
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    .line 264
    move-object p2, p0

    check-cast p2, Landroid/view/View;

    goto :goto_45

    .line 267
    :cond_42
    move-object p1, p0

    check-cast p1, Landroid/widget/ScrollView;

    .line 273
    :goto_45
    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    const/4 p0, -0x1

    .line 274
    invoke-virtual {p1, v0, p0, p0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    :cond_4c
    return-void
.end method

.method public create(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$OnCheckStateConfirmedListener;)Landroid/app/AlertDialog;
    .registers 13

    .line 65
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 66
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 68
    iget-object v2, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget v2, v2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->titleResourceID:I

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;->isValid(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 69
    iget-object v2, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget v2, v2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->titleResourceID:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 72
    :cond_1a
    iget-object v2, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget v2, v2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->messageResourceID:I

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;->isValid(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 73
    iget-object v2, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget v2, v2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->messageResourceID:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 76
    :cond_2b
    iget-object v2, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget v2, v2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->layoutResourceID:I

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;->isValid(I)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_99

    .line 77
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$OnSettingMessageDialogCheckBoxChangeListener;

    invoke-direct {p1, v4}, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$OnSettingMessageDialogCheckBoxChangeListener;-><init>(Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$OnSettingMessageDialogCheckBoxChangeListener-IA;)V

    .line 80
    iget-object v2, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget v2, v2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->layoutResourceID:I

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;->mCheckBoxView:Landroid/view/View;

    const v2, 0x7f0900e0

    .line 82
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 83
    iget-object v2, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget v2, v2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->messageResourceID:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;->mCheckBoxView:Landroid/view/View;

    const v2, 0x7f09008d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 87
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 88
    iget-object v2, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget-boolean v2, v2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->hasOnCheckBox:Z

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 90
    iget-object v0, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget v0, v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->positiveButtonResourceID:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 91
    iget-object v0, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget v0, v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->positiveButtonResourceID:I

    new-instance v2, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$1;

    invoke-direct {v2, p0, p7, p1, p3}, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$1;-><init>(Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$OnCheckStateConfirmedListener;Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$OnSettingMessageDialogCheckBoxChangeListener;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 102
    :cond_81
    iget-object p3, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget p3, p3, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->negativeButtonResourceID:I

    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;->isValid(I)Z

    move-result p3

    if-eqz p3, :cond_129

    .line 103
    iget-object p3, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget p3, p3, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->negativeButtonResourceID:I

    new-instance v0, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$2;

    invoke-direct {v0, p0, p7, p1, p4}, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$2;-><init>(Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$OnCheckStateConfirmedListener;Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$OnSettingMessageDialogCheckBoxChangeListener;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, p3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_129

    .line 114
    :cond_99
    iget-object p7, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget p7, p7, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->positiveButtonResourceID:I

    invoke-direct {p0, p7}, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;->isValid(I)Z

    move-result p7

    if-eqz p7, :cond_aa

    .line 115
    iget-object p7, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget p7, p7, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->positiveButtonResourceID:I

    invoke-virtual {v1, p7, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 119
    :cond_aa
    iget-object p3, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget p3, p3, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->negativeButtonResourceID:I

    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;->isValid(I)Z

    move-result p3

    if-eqz p3, :cond_bb

    .line 120
    iget-object p3, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget p3, p3, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->negativeButtonResourceID:I

    invoke-virtual {v1, p3, p4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 124
    :cond_bb
    iget-object p3, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    sget-object p4, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ACCESSIBILITY_COMPLIANCE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    if-ne p3, p4, :cond_129

    const p3, 0x7f0c003c

    .line 125
    invoke-virtual {v0, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const p4, 0x7f09011c

    .line 126
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    const/16 p7, 0xf

    .line 127
    invoke-virtual {p4, p7}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 128
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p7

    invoke-virtual {p4, p7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p7

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f006d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x7f0f0129

    .line 129
    invoke-virtual {p7, v2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p7

    invoke-direct {p0, p1, p7}, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;->getLinkText(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p7

    invoke-virtual {p4, p7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p7

    const v0, 0x7f07004b

    invoke-virtual {p7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p7

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07004d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f07004c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 133
    invoke-virtual {p4, p7, v0, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 141
    invoke-direct {p0, p1, p3, p2}, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;->adjustPadding(Landroid/content/Context;Landroid/view/View;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 145
    :cond_129
    :goto_129
    new-instance p0, Lcom/sonyericsson/android/camera/view/messagedialog/KeyEventKiller;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/messagedialog/KeyEventKiller;-><init>()V

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 146
    invoke-virtual {v1, p5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 147
    invoke-virtual {v1, p6}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 149
    iget-object p0, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->isCancelable:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    sget-object p1, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;->USE_DEFAULT:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    const/4 p3, 0x1

    if-eq p0, p1, :cond_14e

    .line 150
    iget-object p0, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->isCancelable:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    sget-object p1, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;->TRUE:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    if-ne p0, p1, :cond_14a

    move p0, p3

    goto :goto_14b

    :cond_14a
    move p0, v3

    :goto_14b
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 153
    :cond_14e
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 154
    iget-object p1, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->isCancelableOnTouchOutside:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    sget-object p4, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;->USE_DEFAULT:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    if-eq p1, p4, :cond_166

    .line 155
    iget-object p1, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->isCancelableOnTouchOutside:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    sget-object p2, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;->TRUE:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    if-ne p1, p2, :cond_163

    move v3, p3

    :cond_163
    invoke-virtual {p0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    :cond_166
    return-object p0
.end method
