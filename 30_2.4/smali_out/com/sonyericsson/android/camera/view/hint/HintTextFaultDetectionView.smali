.class public Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;
.super Lcom/sonyericsson/android/camera/view/hint/HintTextView;
.source "HintTextFaultDetectionView.java"


# instance fields
.field private mFaultDetectionCloseButton:Landroid/widget/ImageButton;

.field private mFaultDetectionConfirmationText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static inflate(Landroid/content/Context;)Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;
    .registers 3

    const v0, 0x7f0b004e

    const/4 v1, 0x0

    .line 30
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;

    return-object p0
.end method


# virtual methods
.method public initFaultDetectionButton()V
    .registers 4

    .line 38
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;->mFaultDetectionConfirmationText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;->mFaultDetectionConfirmationText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;->mFaultDetectionCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;->mFaultDetectionCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    .line 46
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->onFinishInflate()V

    const v0, 0x7f0900af

    .line 47
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;->mFaultDetectionConfirmationText:Landroid/widget/TextView;

    const v0, 0x7f0900ae

    .line 48
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;->mFaultDetectionCloseButton:Landroid/widget/ImageButton;

    return-void
.end method

.method public setContent(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V
    .registers 2

    .line 87
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setContent(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    .line 88
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;->mMessage:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestLayout()V

    .line 89
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;->mFaultDetectionConfirmationText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method public setFaultDetectionCheckButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;->mFaultDetectionConfirmationText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setFaultDetectionCheckButtonVisible()V
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;->mFaultDetectionConfirmationText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setFaultDetectionCloseButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;->mFaultDetectionCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setFaultDetectionCloseButtonVisibility(I)V
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;->mFaultDetectionCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method
