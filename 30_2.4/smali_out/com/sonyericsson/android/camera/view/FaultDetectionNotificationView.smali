.class public Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;
.super Landroid/widget/FrameLayout;
.source "FaultDetectionNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$LoadImageCallback;,
        Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$AsyncLoadImageTask;
    }
.end annotation


# instance fields
.field private mAsyncLoadImageTask:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$AsyncLoadImageTask;

.field private mCloseTextView:Landroid/widget/TextView;

.field private mContainer:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;

.field private mContainerBaseSize:I

.field private mContainerLandscapeMinWidth:I

.field private mContentsMarginTotal:I

.field private mContentsPaddingTotal:I

.field private mDeleteTextView:Landroid/widget/TextView;

.field private mDeviceOrientation:I

.field private mImageHeight:I

.field private mImageOrientation:I

.field private mImageView:Landroid/widget/ImageView;

.field private mImageWidth:I

.field private mIsFixedPreviewArea:Z

.field private mIsShown:Z

.field private final mLoadImageCallback:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$LoadImageCallback;

.field private mMessageView:Landroid/widget/TextView;

.field private mMonitoredMessageViewHeight:I

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPreviewArea:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 38
    iput p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mContainerBaseSize:I

    .line 39
    iput p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mContainerLandscapeMinWidth:I

    .line 40
    iput p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mContentsMarginTotal:I

    .line 41
    iput p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mContentsPaddingTotal:I

    const/4 p2, -0x1

    .line 42
    iput p2, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mImageOrientation:I

    .line 43
    iput p2, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mImageHeight:I

    .line 44
    iput p2, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mImageWidth:I

    .line 45
    iput p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mDeviceOrientation:I

    .line 46
    iput p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mMonitoredMessageViewHeight:I

    .line 47
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mIsFixedPreviewArea:Z

    .line 51
    new-instance p1, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$1;-><init>(Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mLoadImageCallback:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$LoadImageCallback;

    .line 67
    new-instance p1, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$2;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$2;-><init>(Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;III)V
    .registers 4

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->setImageInfo(III)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;)I
    .registers 1

    .line 30
    iget p0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mDeviceOrientation:I

    return p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;I)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->setPreviewAreaLayout(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;)I
    .registers 1

    .line 30
    iget p0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mImageOrientation:I

    return p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;)I
    .registers 1

    .line 30
    iget p0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mImageHeight:I

    return p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;)I
    .registers 1

    .line 30
    iget p0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mImageWidth:I

    return p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;)Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mContainer:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;)Landroid/widget/TextView;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mMessageView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$802(Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;Z)Z
    .registers 2

    .line 30
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mIsShown:Z

    return p1
.end method

.method public static inflate(Landroid/content/Context;)Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;
    .registers 3

    const v0, 0x7f0b0040

    const/4 v1, 0x0

    .line 75
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;

    return-object p0
.end method

.method private setImageInfo(III)V
    .registers 4

    .line 196
    iput p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mImageOrientation:I

    .line 197
    iput p2, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mImageHeight:I

    .line 198
    iput p3, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mImageWidth:I

    return-void
.end method

.method private setPreviewAreaLayout(I)V
    .registers 7

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mPreviewArea:Landroid/widget/LinearLayout;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setRotation(F)V

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mPreviewArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 144
    iget v1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mContentsMarginTotal:I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mMessageView:Landroid/widget/TextView;

    .line 145
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mDeleteTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 150
    iget v2, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mImageOrientation:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2a

    iget v2, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mImageHeight:I

    if-ne v2, v3, :cond_2a

    iget v2, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mImageWidth:I

    if-ne v2, v3, :cond_2a

    return-void

    :cond_2a
    const/16 v2, -0x5a

    const/16 v3, 0x10e

    const/16 v4, 0x5a

    if-ne p1, v2, :cond_57

    .line 155
    iget v2, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mImageOrientation:I

    if-eq v2, v4, :cond_41

    if-ne v2, v3, :cond_39

    goto :goto_41

    .line 158
    :cond_39
    iget v2, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mImageHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mImageWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_48

    .line 156
    :cond_41
    :goto_41
    iget v2, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mImageWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mImageHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 160
    :goto_48
    iget v3, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mContainerBaseSize:I

    iget v4, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mContentsPaddingTotal:I

    sub-int v4, v3, v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v2, v4

    add-int/2addr v2, v1

    .line 161
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 162
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_84

    .line 164
    :cond_57
    iget v2, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mImageOrientation:I

    if-eq v2, v4, :cond_66

    if-ne v2, v3, :cond_5e

    goto :goto_66

    .line 167
    :cond_5e
    iget v2, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mImageWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mImageHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_6d

    .line 165
    :cond_66
    :goto_66
    iget v2, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mImageHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mImageWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 169
    :goto_6d
    iget v3, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mContainerBaseSize:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 170
    iget v2, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mContentsPaddingTotal:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 171
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mContainerLandscapeMinWidth:I

    if-ge v1, v2, :cond_80

    .line 172
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 174
    :cond_80
    iget v1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mContainerBaseSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 177
    :goto_84
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mPreviewArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mPreviewArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 181
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mIsFixedPreviewArea:Z

    if-eqz v0, :cond_9e

    iget v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mDeviceOrientation:I

    if-eq v0, p1, :cond_9e

    const/4 v0, 0x0

    .line 182
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mIsFixedPreviewArea:Z

    .line 184
    :cond_9e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mMonitoredMessageViewHeight:I

    .line 185
    iput p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mDeviceOrientation:I

    return-void
.end method


# virtual methods
.method public changeOrientation(I)V
    .registers 4

    .line 126
    iget v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mImageOrientation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1b

    iget v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mImageHeight:I

    if-ne v0, v1, :cond_1b

    iget v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mImageWidth:I

    if-ne v0, v1, :cond_1b

    .line 127
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mIsFixedPreviewArea:Z

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mDeviceOrientation:I

    if-eq v0, p1, :cond_18

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mIsFixedPreviewArea:Z

    .line 130
    :cond_18
    iput p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mDeviceOrientation:I

    goto :goto_1e

    .line 132
    :cond_1b
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->setPreviewAreaLayout(I)V

    :goto_1e
    return-void
.end method

.method public hide()V
    .registers 3

    .line 235
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mAsyncLoadImageTask:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$AsyncLoadImageTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$AsyncLoadImageTask;->cancel(Z)Z

    .line 236
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mMessageView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 238
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mDeleteTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mCloseTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mContainer:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 241
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mIsShown:Z

    return-void
.end method

.method public isShown()Z
    .registers 2

    .line 250
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mIsShown:Z

    return v0
.end method

.method protected onFinishInflate()V
    .registers 4

    .line 85
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f09012b

    .line 86
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mContainer:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;

    const v0, 0x7f09012a

    .line 87
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mPreviewArea:Landroid/widget/LinearLayout;

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mPreviewArea:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0900b2

    .line 89
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mMessageView:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0900b1

    .line 91
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mImageView:Landroid/widget/ImageView;

    .line 92
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0900b0

    .line 93
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mDeleteTextView:Landroid/widget/TextView;

    const v0, 0x7f0900ad

    .line 94
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mCloseTextView:Landroid/widget/TextView;

    .line 96
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700a3

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mContainerBaseSize:I

    const v1, 0x7f0700a4

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mContainerLandscapeMinWidth:I

    const v1, 0x7f0700a8

    .line 102
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0700a7

    .line 103
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mContentsMarginTotal:I

    const v1, 0x7f0700a5

    .line 104
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0700a6

    .line 106
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mContentsPaddingTotal:I

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 111
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 112
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mPreviewArea:Landroid/widget/LinearLayout;

    .line 113
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_21

    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mIsFixedPreviewArea:Z

    if-nez p1, :cond_21

    iget p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mMonitoredMessageViewHeight:I

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mMessageView:Landroid/widget/TextView;

    .line 114
    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p2

    if-eq p1, p2, :cond_21

    .line 115
    iget p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mDeviceOrientation:I

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->setPreviewAreaLayout(I)V

    const/4 p1, 0x1

    .line 116
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mIsFixedPreviewArea:Z

    :cond_21
    return-void
.end method

.method public show(ILandroid/net/Uri;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ILandroid/view/View$OnClickListener;)V
    .registers 10

    const/4 v0, -0x1

    if-eq p1, v0, :cond_15

    .line 215
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 216
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 218
    :cond_15
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 219
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mDeleteTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mCloseTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mContainer:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;

    invoke-virtual {p1, p6}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    invoke-direct {p0, v0, v0, v0}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->setImageInfo(III)V

    .line 224
    iput p5, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mDeviceOrientation:I

    .line 225
    new-instance p1, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$AsyncLoadImageTask;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object p4, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mLoadImageCallback:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$LoadImageCallback;

    invoke-direct {p1, p3, p2, p4}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$AsyncLoadImageTask;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$LoadImageCallback;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mAsyncLoadImageTask:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$AsyncLoadImageTask;

    .line 226
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mAsyncLoadImageTask:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$AsyncLoadImageTask;

    const/4 p2, 0x0

    new-array p3, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p3}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$AsyncLoadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 227
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mIsFixedPreviewArea:Z

    const/4 p1, 0x1

    .line 228
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mIsShown:Z

    return-void
.end method
